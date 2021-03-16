# $Id: Makefile.in,v 1.111 2015/08/05 23:15:41 tom Exp $
##############################################################################
# Copyright (c) 1998-2014,2015 Free Software Foundation, Inc.                #
#                                                                            #
# Permission is hereby granted, free of charge, to any person obtaining a    #
# copy of this software and associated documentation files (the "Software"), #
# to deal in the Software without restriction, including without limitation  #
# the rights to use, copy, modify, merge, publish, distribute, distribute    #
# with modifications, sublicense, and/or sell copies of the Software, and to #
# permit persons to whom the Software is furnished to do so, subject to the  #
# following conditions:                                                      #
#                                                                            #
# The above copyright notice and this permission notice shall be included in #
# all copies or substantial portions of the Software.                        #
#                                                                            #
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR #
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,   #
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL    #
# THE ABOVE COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER      #
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING    #
# FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER        #
# DEALINGS IN THE SOFTWARE.                                                  #
#                                                                            #
# Except as contained in this notice, the name(s) of the above copyright     #
# holders shall not be used in advertising or otherwise to promote the sale, #
# use or other dealings in this Software without prior written               #
# authorization.                                                             #
##############################################################################
#
# Author: Thomas E. Dickey
#
#  Simple makefile for c++ window class demo

# turn off _all_ suffix rules; we'll generate our own
.SUFFIXES:

SHELL		= /bin/sh


CF_MFLAGS 	= -${MAKEFLAGS}

x		= 
o		= .o

MODEL		= ../obj_s
DESTDIR		= 
top_srcdir	= ..
srcdir		= .
prefix		= /usr
exec_prefix	= /usr
bindir		= /usr/bin
libdir		= ${exec_prefix}/lib
includedir	= ${prefix}/include
includesubdir	= 

INCLUDEDIR	= $(DESTDIR)$(includedir)$(includesubdir)

PACKAGE		= ncurses

LIBTOOL		= 
LIBTOOL_OPTS	= 
LIBTOOL_CLEAN	= 
LIBTOOL_COMPILE	= 
LIBTOOL_LINK	= ${CC}
LIBTOOL_INSTALL	= 
LIBTOOL_UNINSTALL = 
LIBTOOL_VERSION = -version-number
LT_UNDEF	= 

INSTALL		= /usr/bin/install -c
INSTALL_LIB	= /usr/bin/install -c -m 644
INSTALL_DATA	= ${INSTALL} -m 644

AR		= mipsel-uclibc-ar
ARFLAGS		= -curv
AWK		= mawk
LD		= mipsel-uclibc-ld
LN_S		= ln -s -f

CXX_AR		= $(AR)
CXX_ARFLAGS	= $(ARFLAGS)
RANLIB		= mipsel-uclibc-ranlib

CXX		= mipsel-uclibc-g++
CPP		= mipsel-uclibc-g++ -E
CXXFLAGS	= -g -O2 
CXXLIBS		= -lstdc++

INCDIR		= ../include
CPPFLAGS	= -DHAVE_CONFIG_H -I. -I../include  -D_GNU_SOURCE -D_FILE_OFFSET_BITS=64  -DNDEBUG

CTAGS		= 
ETAGS		= 

CC		= ${CXX}
CCFLAGS		= $(CPPFLAGS) $(CXXFLAGS)

CFLAGS_LIBTOOL	= $(CCFLAGS)
CFLAGS_NORMAL	= $(CCFLAGS)
CFLAGS_DEBUG	= $(CCFLAGS) -g -DTRACE
CFLAGS_PROFILE	= $(CCFLAGS) -pg
CFLAGS_SHARED	= $(CCFLAGS) -fPIC

CFLAGS_DEFAULT	= $(CFLAGS_SHARED)

NCURSES_MAJOR	= 6
NCURSES_MINOR	= 0
REL_VERSION     = 6.0
ABI_VERSION	= 6

LOCAL_LIBDIR	= /home/akito/rm2100-merlin/release/src/router/ncurses-6.0/lib

LINK		=  $(LIBTOOL_LINK) 
SHLIB_DIRS	= -L../lib
SHLIB_LIST	= $(SHLIB_DIRS) -lform -lmenu -lpanel -lncurses 

LIBROOT		= ncurses++

LIBNAME_LIBTOOL	= lib$(LIBROOT).la
LIBNAME_NORMAL	= lib$(LIBROOT).a
LIBNAME		= lib$(LIBROOT).a

LIBRARIES	=  ../lib/libncurses++.a ../lib/libncurses++_g.a

LINK_FLAGS	= -Wl,-rpath,/home/akito/rm2100-merlin/release/src-ra-5010/router/mipsel-uclibc/stage/usr/local/lib  -L../lib -l$(LIBROOT)
RPATH_LIST	= ${libdir}
MK_SHARED_LIB	= ${CC} ${CFLAGS} -shared -Wl,-soname,`basename $@ .${REL_VERSION}`.${ABI_VERSION},-stats,-lc -o $@

LINK_LIBTOOL	= -Wl,-rpath,/home/akito/rm2100-merlin/release/src-ra-5010/router/mipsel-uclibc/stage/usr/local/lib  -L../lib $(LIBRARIES)
LINK_NORMAL	= $(LINK_FLAGS)
LINK_DEBUG	= $(LINK_FLAGS)
LINK_PROFILE	= $(LINK_FLAGS)
LINK_SHARED	= $(LINK_FLAGS)

# flags for test-programs
TEST_LIBS	= -lutil
TEST_ARGS	=  -L../lib -lform -lmenu -lpanel -lncurses   
TEST_LDFLAGS	= $(TEST_ARGS)  -L/home/akito/rm2100-merlin/release/src-ra-5010/router/mipsel-uclibc/stage/usr/local/lib -ldl -lpthread \
	 $(TEST_LIBS)  -Wl,-rpath,$(LOCAL_LIBDIR) $(CXXLIBS)

LDFLAGS_LIBTOOL	= $(TEST_LDFLAGS) $(CFLAGS_LIBTOOL)
LDFLAGS_NORMAL	= $(TEST_LDFLAGS) $(CFLAGS_NORMAL)
LDFLAGS_DEBUG	= $(TEST_LDFLAGS) $(CFLAGS_DEBUG)
LDFLAGS_PROFILE	= $(TEST_LDFLAGS) $(CFLAGS_PROFILE)
LDFLAGS_SHARED	= $(TEST_LDFLAGS) $(CFLAGS_SHARED) 

LDFLAGS_DEFAULT	= $(LINK_SHARED) $(LDFLAGS_SHARED)

# flags for library built by this makefile
LDFLAGS		= $(TEST_ARGS)  -L/home/akito/rm2100-merlin/release/src-ra-5010/router/mipsel-uclibc/stage/usr/local/lib -ldl -lpthread \
	 $(TEST_LIBS)  $(CXXLIBS)

AUTO_SRC	= \
		etip.h

all \
libs ::		$(AUTO_SRC) $(LIBRARIES)

#all ::		demo$x

sources :	$(AUTO_SRC)

depend :

tags:
	$(CTAGS) *.[h] *.cc

$(DESTDIR)$(libdir) :
	mkdir -p $@

mostlyclean ::
	-rm -f core tags TAGS *~ *.bak *.i *.ii *.ln *.atac trace

clean :: mostlyclean
	-$(SHELL) -c "if test -n '$x' ; then $(MAKE) clean x=''; fi"
	-rm -rf $(MODEL)/SunWS_cache
	-$(LIBTOOL_CLEAN) rm -f demo$x $(AUTO_SRC) $(LIBRARIES) $(OBJS_DEMO)
	-rm -rf .libs *.dSYM

distclean :: clean
	-rm -f Makefile

realclean :: distclean

###############################################################################

internal_h	= $(srcdir)/internal.h \
		  $(INCDIR)/ncurses_cfg.h \
		  $(INCDIR)/nc_mingw.h \
		  $(INCDIR)/nc_string.h

etip_h		= etip.h \
		  $(INCDIR)/ncurses_dll.h

cursesw_h	= $(srcdir)/cursesw.h \
		  $(etip_h) \
		  $(INCDIR)/curses.h

cursesp_h	= $(srcdir)/cursesp.h \
		  $(cursesw_h) \
		  $(INCDIR)/panel.h

cursesf_h	= $(srcdir)/cursesf.h \
		  $(cursesp_h) \
		  $(INCDIR)/form.h

cursesm_h	= $(srcdir)/cursesm.h \
		  $(cursesp_h) \
		  $(INCDIR)/menu.h

cursslk_h	= $(srcdir)/cursslk.h \
		  $(cursesw_h)

cursesapp_h	= $(srcdir)/cursesapp.h \
		  $(cursslk_h)

$(INCDIR)/form.h :
	cd ../form && $(MAKE) $@

$(INCDIR)/menu.h :
	cd ../menu && $(MAKE) $@

$(INCDIR)/panel.h :
	cd ../panel && $(MAKE) $@

###############################################################################

OBJS_DEMO = $(MODEL)/demo$o

$(MODEL)/demo$o : $(srcdir)/demo.cc \
		$(internal_h) \
		$(cursesf_h) \
		$(cursesm_h) \
		$(cursesapp_h)
	@echo 'compiling demo (obj_s)'
	@$(LIBTOOL_COMPILE) $(CXX) $(CFLAGS_DEFAULT) -c $(srcdir)/demo.cc -o $@

demo$x:	$(OBJS_DEMO) \
	$(LIBRARIES)  \
	../lib/libform.so ../lib/libmenu.so ../lib/libpanel.so ../lib/libncurses.so 
	 $(LINK) -o $@ $(OBJS_DEMO) $(LDFLAGS_DEFAULT)

etip.h:	$(srcdir)/etip.h.in $(srcdir)/edit_cfg.sh
	cp $(srcdir)/etip.h.in $@
	$(SHELL) $(srcdir)/edit_cfg.sh ../include/ncurses_cfg.h $@

###############################################################################
# The remainder of this file is automatically generated during configuration
###############################################################################

# Generated by CF_LIB_RULES
resulting.map: 
	sed  -e "s/NCURSES\([WT]\+\)\?_/NCURSES\16_/g" -e "/deprecated in ABI6/d" <  >$@

clean::
	rm -f resulting.map

# generated by mk-0th.awk
#   libname:    c++
#   subsets:    termlib+ext_tinfo+base+ext_funcs

.SUFFIXES: .c .cc .h .i .ii
.c.i :
	$(CPP) $(CPPFLAGS) $< >$@
.cc.ii :
	$(CPP) $(CPPFLAGS) $< >$@
.h.i :
	$(CPP) $(CPPFLAGS) $< >$@

C_SRC = \
	$(srcdir)/cursesf.cc \
	$(srcdir)/cursesm.cc \
	$(srcdir)/cursesw.cc \
	$(srcdir)/cursespad.cc \
	$(srcdir)/cursesp.cc \
	$(srcdir)/cursslk.cc \
	$(srcdir)/cursesapp.cc \
	$(srcdir)/cursesmain.cc

lintlib :
	@echo no action needed

# overriding model from SHARED to match CXX_MODEL

# generated by mk-1st.awk (subset=termlib+ext_tinfo+base+ext_funcs)
#  name:          ncurses++
#  traces:        DEBUG
#  MODEL:         NORMAL
#  CXX_MODEL:     NORMAL
#  model:         obj_s
#  prefix:        lib
#  suffix:        .a
#  subset:        termlib+ext_tinfo+base+ext_funcs
#  driver:        no
#  ShlibVer:      rel
#  ShlibVerInfix: no
#  SymLink:       ln -s -f
#  TermlibRoot:   ncurses
#  TermlibSuffix: .so
#  ReLink:        yes
#  DoLinks:       no
#  rmSoLocs:      no
#  ldconfig:      :
#  overwrite:     yes
#  depend:        ../include/ncurses_cfg.h
#  host:          mipsel-unknown-linux-gnu

NORMAL_OBJS = \
	../obj_s/cursesf$o \
	../obj_s/cursesm$o \
	../obj_s/cursesw$o \
	../obj_s/cursespad$o \
	../obj_s/cursesp$o \
	../obj_s/cursslk$o \
	../obj_s/cursesapp$o \
	../obj_s/cursesmain$o

$(NORMAL_OBJS) : ../include/ncurses_cfg.h

../lib/libncurses++.a : $(NORMAL_OBJS)
	$(CXX_AR) $(CXX_ARFLAGS) $@ $?
	$(RANLIB) $@

install \
install.libs \
install.ncurses++ :: $(DESTDIR)$(libdir) ../lib/libncurses++.a
	@echo installing ../lib/libncurses++.a as $(DESTDIR)$(libdir)/libncurses++.a
	$(INSTALL_DATA) ../lib/libncurses++.a $(DESTDIR)$(libdir)/libncurses++.a
	$(RANLIB) $(DESTDIR)$(libdir)/libncurses++.a

uninstall \
uninstall.libs \
uninstall.ncurses++ ::
	@echo uninstalling $(DESTDIR)$(libdir)/libncurses++.a
	-@rm -f $(DESTDIR)$(libdir)/libncurses++.a

clean ::
	-rm -f ../lib/libncurses++.a

mostlyclean::
	-rm -f $(NORMAL_OBJS)

# generated by mk-2nd.awk
#   model:      obj_s
#   MODEL:      SHARED
#   echo:       yes
#   subset:     termlib+ext_tinfo+base+ext_funcs
#   crenames:   yes
#   cxxrenames: yes
#   traces:     DEBUG
#   srcdir:     .

../obj_s/cursesf$o :	$(srcdir)/cursesf.cc \
			$(internal_h) \
			$(cursesf_h) \
			$(cursesapp_h)
	$(LIBTOOL_COMPILE) $(CXX) $(CFLAGS_SHARED) -c ../c++/cursesf.cc -o ../obj_s/cursesf$o

../obj_s/cursesm$o :	$(srcdir)/cursesm.cc \
			$(internal_h) \
			$(cursesm_h) \
			$(cursesapp_h)
	$(LIBTOOL_COMPILE) $(CXX) $(CFLAGS_SHARED) -c ../c++/cursesm.cc -o ../obj_s/cursesm$o

../obj_s/cursesw$o :	$(srcdir)/cursesw.cc \
			$(internal_h) \
			$(cursesw_h)
	$(LIBTOOL_COMPILE) $(CXX) $(CFLAGS_SHARED) -c ../c++/cursesw.cc -o ../obj_s/cursesw$o

../obj_s/cursespad$o :	$(srcdir)/cursespad.cc \
			$(internal_h) \
			$(cursesw_h)
	$(LIBTOOL_COMPILE) $(CXX) $(CFLAGS_SHARED) -c ../c++/cursespad.cc -o ../obj_s/cursespad$o

../obj_s/cursesp$o :	$(srcdir)/cursesp.cc \
			$(internal_h) \
			$(cursesp_h)
	$(LIBTOOL_COMPILE) $(CXX) $(CFLAGS_SHARED) -c ../c++/cursesp.cc -o ../obj_s/cursesp$o

../obj_s/cursslk$o :	$(srcdir)/cursslk.cc \
			$(internal_h) \
			$(cursesapp_h)
	$(LIBTOOL_COMPILE) $(CXX) $(CFLAGS_SHARED) -c ../c++/cursslk.cc -o ../obj_s/cursslk$o

../obj_s/cursesapp$o :	$(srcdir)/cursesapp.cc \
			$(internal_h) \
			$(cursesapp_h)
	$(LIBTOOL_COMPILE) $(CXX) $(CFLAGS_SHARED) -c ../c++/cursesapp.cc -o ../obj_s/cursesapp$o

../obj_s/cursesmain$o :	$(srcdir)/cursesmain.cc \
			$(internal_h) \
			$(cursesapp_h) \
			$(INCDIR)/nc_alloc.h
	$(LIBTOOL_COMPILE) $(CXX) $(CFLAGS_SHARED) -c ../c++/cursesmain.cc -o ../obj_s/cursesmain$o


# generated by mk-1st.awk (subset=termlib+ext_tinfo+base+ext_funcs)
#  name:          ncurses++
#  traces:        DEBUG
#  MODEL:         DEBUG
#  CXX_MODEL:     DEBUG
#  model:         obj_g
#  prefix:        lib
#  suffix:        _g.a
#  subset:        termlib+ext_tinfo+base+ext_funcs
#  driver:        no
#  ShlibVer:      rel
#  ShlibVerInfix: no
#  SymLink:       ln -s -f
#  TermlibRoot:   ncurses
#  TermlibSuffix: .so
#  ReLink:        yes
#  DoLinks:       yes
#  rmSoLocs:      no
#  ldconfig:      :
#  overwrite:     yes
#  depend:        ../include/ncurses_cfg.h
#  host:          mipsel-unknown-linux-gnu

DEBUG_OBJS = \
	../obj_g/cursesf$o \
	../obj_g/cursesm$o \
	../obj_g/cursesw$o \
	../obj_g/cursespad$o \
	../obj_g/cursesp$o \
	../obj_g/cursslk$o \
	../obj_g/cursesapp$o \
	../obj_g/cursesmain$o

$(DEBUG_OBJS) : ../include/ncurses_cfg.h

../lib/libncurses++_g.a : $(DEBUG_OBJS)
	$(CXX_AR) $(CXX_ARFLAGS) $@ $?
	$(RANLIB) $@

install \
install.libs \
install.ncurses++ :: $(DESTDIR)$(libdir) ../lib/libncurses++_g.a
	@echo installing ../lib/libncurses++_g.a as $(DESTDIR)$(libdir)/libncurses++_g.a
	$(INSTALL_DATA) ../lib/libncurses++_g.a $(DESTDIR)$(libdir)/libncurses++_g.a
	$(RANLIB) $(DESTDIR)$(libdir)/libncurses++_g.a

uninstall \
uninstall.libs \
uninstall.ncurses++ ::
	@echo uninstalling $(DESTDIR)$(libdir)/libncurses++_g.a
	-@rm -f $(DESTDIR)$(libdir)/libncurses++_g.a

clean ::
	-rm -f ../lib/libncurses++_g.a

mostlyclean::
	-rm -f $(DEBUG_OBJS)

# generated by mk-2nd.awk
#   model:      obj_g
#   MODEL:      DEBUG
#   echo:       yes
#   subset:     termlib+ext_tinfo+base+ext_funcs
#   crenames:   yes
#   cxxrenames: yes
#   traces:     DEBUG
#   srcdir:     .

../obj_g/cursesf$o :	$(srcdir)/cursesf.cc \
			$(internal_h) \
			$(cursesf_h) \
			$(cursesapp_h)
	$(LIBTOOL_COMPILE) $(CXX) $(CFLAGS_DEBUG) -c ../c++/cursesf.cc -o ../obj_g/cursesf$o

../obj_g/cursesm$o :	$(srcdir)/cursesm.cc \
			$(internal_h) \
			$(cursesm_h) \
			$(cursesapp_h)
	$(LIBTOOL_COMPILE) $(CXX) $(CFLAGS_DEBUG) -c ../c++/cursesm.cc -o ../obj_g/cursesm$o

../obj_g/cursesw$o :	$(srcdir)/cursesw.cc \
			$(internal_h) \
			$(cursesw_h)
	$(LIBTOOL_COMPILE) $(CXX) $(CFLAGS_DEBUG) -c ../c++/cursesw.cc -o ../obj_g/cursesw$o

../obj_g/cursespad$o :	$(srcdir)/cursespad.cc \
			$(internal_h) \
			$(cursesw_h)
	$(LIBTOOL_COMPILE) $(CXX) $(CFLAGS_DEBUG) -c ../c++/cursespad.cc -o ../obj_g/cursespad$o

../obj_g/cursesp$o :	$(srcdir)/cursesp.cc \
			$(internal_h) \
			$(cursesp_h)
	$(LIBTOOL_COMPILE) $(CXX) $(CFLAGS_DEBUG) -c ../c++/cursesp.cc -o ../obj_g/cursesp$o

../obj_g/cursslk$o :	$(srcdir)/cursslk.cc \
			$(internal_h) \
			$(cursesapp_h)
	$(LIBTOOL_COMPILE) $(CXX) $(CFLAGS_DEBUG) -c ../c++/cursslk.cc -o ../obj_g/cursslk$o

../obj_g/cursesapp$o :	$(srcdir)/cursesapp.cc \
			$(internal_h) \
			$(cursesapp_h)
	$(LIBTOOL_COMPILE) $(CXX) $(CFLAGS_DEBUG) -c ../c++/cursesapp.cc -o ../obj_g/cursesapp$o

../obj_g/cursesmain$o :	$(srcdir)/cursesmain.cc \
			$(internal_h) \
			$(cursesapp_h) \
			$(INCDIR)/nc_alloc.h
	$(LIBTOOL_COMPILE) $(CXX) $(CFLAGS_DEBUG) -c ../c++/cursesmain.cc -o ../obj_g/cursesmain$o


# generated by mk-hdr.awk
#  subset:     termlib+ext_tinfo+base+ext_funcs
#  compat:     yes

${INCLUDEDIR} :
	mkdir -p $@

install \
install.libs \
install.includes :: ${AUTO_SRC} ${INCLUDEDIR} \
		$(srcdir)/cursesapp.h \
		$(srcdir)/cursesf.h \
		$(srcdir)/cursesm.h \
		$(srcdir)/cursesp.h \
		$(srcdir)/cursesw.h \
		$(srcdir)/cursslk.h \
		etip.h
	@ (cd ${INCLUDEDIR} && rm -f cursesapp.h) ; ../headers.sh ${INSTALL_DATA} ${INCLUDEDIR} ${srcdir} $(srcdir)/cursesapp.h
	@ (cd ${INCLUDEDIR} && rm -f cursesf.h) ; ../headers.sh ${INSTALL_DATA} ${INCLUDEDIR} ${srcdir} $(srcdir)/cursesf.h
	@ (cd ${INCLUDEDIR} && rm -f cursesm.h) ; ../headers.sh ${INSTALL_DATA} ${INCLUDEDIR} ${srcdir} $(srcdir)/cursesm.h
	@ (cd ${INCLUDEDIR} && rm -f cursesp.h) ; ../headers.sh ${INSTALL_DATA} ${INCLUDEDIR} ${srcdir} $(srcdir)/cursesp.h
	@ (cd ${INCLUDEDIR} && rm -f cursesw.h) ; ../headers.sh ${INSTALL_DATA} ${INCLUDEDIR} ${srcdir} $(srcdir)/cursesw.h
	@ (cd ${INCLUDEDIR} && rm -f cursslk.h) ; ../headers.sh ${INSTALL_DATA} ${INCLUDEDIR} ${srcdir} $(srcdir)/cursslk.h
	@ (cd ${INCLUDEDIR} && rm -f etip.h) ; ../headers.sh ${INSTALL_DATA} ${INCLUDEDIR} ${srcdir} etip.h

uninstall \
uninstall.libs \
uninstall.includes ::
	-@ (cd ${INCLUDEDIR} && rm -f cursesapp.h)
	-@ (cd ${INCLUDEDIR} && rm -f cursesf.h)
	-@ (cd ${INCLUDEDIR} && rm -f cursesm.h)
	-@ (cd ${INCLUDEDIR} && rm -f cursesp.h)
	-@ (cd ${INCLUDEDIR} && rm -f cursesw.h)
	-@ (cd ${INCLUDEDIR} && rm -f cursslk.h)
	-@ (cd ${INCLUDEDIR} && rm -f etip.h)
