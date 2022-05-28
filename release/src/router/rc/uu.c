#include "rc.h"
#include "swrt.h"

void start_uu(void)
{
	stop_uu();

	if(getpid()!=1) {
		notify_rc("start_uu");
		return;
	}

	if(nvram_get_int("uu_enable"))
#if defined(R8000P) || defined(RTAC3200) || defined(RTAC3100) || defined(EA6700) || defined(RAX20) || defined(SBRAC1900P) || defined(R7000P) || defined(RMAC2100) || defined(TY6201_BCM) || defined(TY6201_RTK) || defined(RTE8820S) || defined(RTMIR3P) || defined(RTMIR3G) || defined(RTNEWIFI2) || defined(RTRS1200P) || defined(RTXYC3) || defined(RTNEWIFI3) || defined(RTHIWIFI4) || defined(RTRM2100) || defined(RTR2100) || defined(RTA040WQ) || defined(RTMSG1500) || defined(RTJDC1) || defined(RTMT1300)
		exec_uu_swrt();
#else
		exec_uu();
#endif
}


void stop_uu(void)
{
	doSystem("killall uuplugin_monitor.sh");
	if (pidof("uuplugin") > 0)
		doSystem("killall uuplugin");
}
