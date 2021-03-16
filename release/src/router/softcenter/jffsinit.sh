#!/bin/sh


SPACE_AVAL=$(df|grep jffs | awk '{print $2}')
MODEL=`nvram get productid`

if [ ! -d /jffs/softcenter ]; then
	mkdir -p /jffs/softcenter
	cp -rf /rom/etc/softcenter/* /jffs/softcenter/
fi
mkdir -p /jffs/softcenter/init.d
mkdir -p /jffs/softcenter/bin
mkdir -p /jffs/softcenter/etc
mkdir -p /jffs/softcenter/scripts
mkdir -p /jffs/softcenter/webs
mkdir -p /jffs/softcenter/res
mkdir -p /jffs/softcenter/ss
mkdir -p /jffs/softcenter/lib
mkdir -p /jffs/configs/dnsmasq.d
mkdir -p /jffs/softcenter/configs


cp -rf /rom/etc/softcenter/scripts/* /jffs/softcenter/scripts/
cp -rf /rom/etc/softcenter/res/* /jffs/softcenter/res/
cp -rf /rom/etc/softcenter/webs/* /jffs/softcenter/webs/
cp -rf /rom/etc/softcenter/bin/* /jffs/softcenter/bin/
cp -rf /rom/etc/softcenter/perp /jffs/softcenter/
ln -sf /jffs/softcenter/bin/base64_encode /jffs/softcenter/bin/base64_decode
ln -sf /jffs/softcenter/scripts/ks_app_install.sh /jffs/softcenter/scripts/ks_app_remove.sh
chmod 755 /jffs/softcenter/scripts/*.sh
chmod 755 /jffs/softcenter/configs/*.sh
chmod 755 /jffs/softcenter/bin/*
chmod 755 /jffs/softcenter/init.d/*
chmod 755 /jffs/softcenter/perp/*
chmod 755 /jffs/softcenter/perp/.boot/*
chmod 755 /jffs/softcenter/perp/.control/*
echo 1.2.0 > /jffs/softcenter/.soft_ver
dbus set softcenter_firmware_version=`nvram get extendno|cut -d "_" -f2|cut -d "-" -f1|cut -c2-6`
ARCH=`uname -m`
KVER=`uname -r`
if [ "$ARCH" == "armv7l" ]; then
	if [ "$KVER" == "4.1.52" -o "$KVER" == "3.14.77" ];then
		dbus set softcenter_arch="armng"
	else
		dbus set softcenter_arch="$ARCH"
	fi
else
	if [ "$KVER" == "3.10.14" ];then
		dbus set softcenter_arch="mipsle"
	else
		dbus set softcenter_arch="$ARCH"
	fi
fi

dbus set softcenter_api=`cat /jffs/softcenter/.soft_ver`
if [ "$MODEL" == "GT-AC5300" ] || [ "$MODEL" == "GT-AC2900" ];then
	cp -rf /rom/etc/softcenter/ROG/webs/* /jffs/softcenter/webs/
	cp -rf /rom/etc/softcenter/ROG/res/* /jffs/softcenter/res/
elif [ "$MODEL" == "TUF-AX3000" ] ;then
	cp -rf /rom/etc/softcenter/TUF/webs/* /jffs/softcenter/webs/
	cp -rf /rom/etc/softcenter/TUF/res/* /jffs/softcenter/res/
fi
nvram set sc_installed=1
nvram commit
# creat wan-start file
mkdir -p /jffs/scripts

	if [ -z "$(dbus get softcenter_server_tcode)" ]; then
		modelname=`nvram get modelname`
		if [ "$modelname" == "K3" ]; then
			dbus set softcenter_server_tcode=CN
		elif [ "$modelname" == "SBRAC1900P" -o "$modelname" == "SBR-AC1900P" -o "$modelname" == "SBRAC3200P" -o "$modelname" == "SBR-AC3200P" -o "$modelname" == "R7900P" -o "$modelname" == "R8000P" ]; then
			dbus set softcenter_server_tcode=ALI
		elif [ "$modelname" == "GTAC2900" -o "$modelname" == "GTAC5300" -o "$modelname" == "RTAC86U" -o "$modelname" == "RTAX86U" -o "$modelname" == "RTAX68U" -o "$modelname" == "RTAX58U" -o "$modelname" == "RTAX82U" -o "$modelname" == "TUFAX3000" -o "$modelname" == "RTACRH17" -o "$modelname" == "RTAX56U" ]; then
			dbus set softcenter_server_tcode=CN1
		else
			dbus set softcenter_server_tcode=`nvram get territory_code |cut -c 1-2`
			[ -z "$(dbus get softcenter_server_tcode)" ] && dbus set softcenter_server_tcode=GB
		fi
	fi

# creat profile file
if [ ! -f /jffs/configs/profile.add ]; then
cat > /jffs/configs/profile.add <<EOF
alias ls='ls -Fp --color=auto'
alias ll='ls -lFp --color=auto'
alias l='ls -AlFp --color=auto'
source /jffs/softcenter/scripts/base.sh
export PERP_BASE=/softcenter/perp

EOF
fi



