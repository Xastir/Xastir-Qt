# Process this file with autoconf to produce a configure script.
#
#
# Copyright (C) 2000-2018 The Xastir Group


#########################################################################
# SET VERSION HERE!
#
# Note that the most standard OSS method of doing numbering is:
#       Major.Minor.PatchLevel
#
# If we are only doing patches, change the PATCHLEVEL number.
# If we add new features, change the MINOR number.
# If we feel we've added enough new features or rewritten enough
#   code to warrant it, change the MAJOR number.
#
# Also:  We adopted the convention of using odd numbers for development
#   or development releases, even numbers for STABLE releases.
#
#
# AC_INIT():
# It should look something like this:  ([xastir], [2.0.8], [xastir@xastir.org])
# The revision number must contain at least one '.' and two digits.
AC_INIT([xastir], [2.1.1], [xastir@xastir.org])
AM_INIT_AUTOMAKE
#########################################################################


AC_PREREQ(2.53)

AC_CONFIG_SRCDIR([callpass.c])
#AM_CONFIG_HEADER(config.h)
AC_CONFIG_HEADERS(config.h)
AM_INIT_AUTOMAKE([subdir-objects])


echo ""
echo "Configuring AC_PACKAGE_NAME AC_PACKAGE_VERSION"
echo ""

# Take out the dots in order to create the TOCALL
AC_DEFINE_UNQUOTED(XASTIR_TOCALL, "`echo AC_PACKAGE_VERSION | sed -e 's/^/APX/' -e 's/\.//g'`", [Defines the version tocall])

# Check for host type
AC_CANONICAL_HOST

# Define _GNU_SOURCE if appropriate
# doesn't work with older (heh) autoconfs
AC_GNU_SOURCE

# Checks for programs.
AC_PROG_CC
AC_PROG_CPP
AC_PROG_INSTALL
AC_PROG_LN_S
AC_PROG_MAKE_SET
AC_PROG_AWK
AC_PROG_RANLIB
#AC_PROG_YACC

AM_PROG_CC_C_O

# add compiler flags 
XASTIR_COMPILER_FLAGS

# Check for binaries

# JMT - XXX - what is this and why is it relevant?
#AC_DEFINE(_REENTRANT, 1, [Use reentrant code if available.]) 
AC_DEFINE_UNQUOTED(STIPPLE, 1, [Legacy stuff, use crowbar and lets keep going]) 

# Check for endian 
AC_C_BIGENDIAN 
 


# Our old stuff.  Doesn't work in all cases.
# Checks for header files. 
#AC_CHECK_HEADERS([Xm/Xm.h],MOTIF_INC="yes", AC_MSG_ERROR(*** Cannot find Motif include files:  Please install one of Motif/OpenMotif/Lesstif development packages. ***))

AC_SUBST(LDFLAGS) 
AC_SUBST(LIBS) 


#
AC_FUNC_ALLOCA 
AC_HEADER_DIRENT 
AC_HEADER_STDC 
AC_HEADER_SYS_WAIT 


# Remove duplicate entries.  Thanks to Paul Lutt, ke7xt, for this! 
#
# Don't get rid of dupes on the LIBS line.  We may need the same
# "-Llibdir" called out several times, immediately prior to each
# "-llibrary" that needs it.
# 
changequote(,) 
CFLAGS=`echo  "$CFLAGS" | awk '{for(i=1;i<=NF;++i) {if (arg[$i]++ == 0) s = s " " $i} print s}'`
CPPFLAGS=`echo  "$CPPFLAGS" | awk '{for(i=1;i<=NF;++i) {if (arg[$i]++ == 0) s = s " " $i} print s}'`
LDFLAGS=`echo "$LDFLAGS" | awk '{for(i=1;i<=NF;++i) {if (arg[$i]++ == 0) s = s " " $i} print s}'`
#LIBS=`echo "$LIBS" | awk '{for(i=1;i<=NF;++i) {if (arg[$i]++ == 0) s = s " " $i} print s}'`
changequote([,]) 


# 
# Remove "-g" CFLAGS/CPPFLAGS entries.  Note:  This is a _bad_ idea
# as debuggers won't have a symbol table to work from!
#
#changequote(,) 
#CFLAGS=`echo  "$CFLAGS" | awk '{for(i=1;i<=NF;++i) {if ($i != "-g") s = s " " $i} print s}'`
#CPPFLAGS=`echo  "$CPPFLAGS" | awk '{for(i=1;i<=NF;++i) {if ($i != "-g") s = s " " $i} print s}'`
#changequote([,]) 


# 
# Remove extraneous spaces from output variables (asthetic) 
# 
 
CC=`echo $CC | sed -e 's/  */ /g'` 
CFLAGS=`echo $CFLAGS | sed -e 's/  */ /g'`
CPPFLAGS=`echo $CPPFLAGS | sed -e 's/  */ /g'` 
CXXFLAGS=`echo $CXXFLAGS | sed -e 's/  */ /g'` 
LDFLAGS=`echo $LDFLAGS | sed -e 's/  */ /g'` 
TESTED_LIBS=`echo $LIBS | sed -e 's/  */ /g'` 
LIBS=`echo $LIBS | sed -e 's/  */ /g'` 



tmp_path="$ac_default_prefix"
tmp_bin_path="$ac_default_prefix"
if test "x$prefix" != xNONE; then
  tmp_path="$prefix"
  tmp_bin_path="$prefix"
fi
if test "x$exec_prefix" != xNONE; then
  tmp_bin_path="$exec_prefix"
fi
AC_DEFINE_UNQUOTED(XASTIR_PATH, "`echo $tmp_path`", [Path to installed Xastir files.])
AC_DEFINE_UNQUOTED(XASTIR_BIN_PATH, "`echo $tmp_bin_path`", [Path to installed Xastir binaries.])



AC_DEFINE_UNQUOTED(XASTIR_INSTALLED_LIBS, "`echo $ILIBS`", [Defines the installed libs])


AC_SUBST(LDFLAGS) 
AC_SUBST(LIBS) 
#AC_SUBST(CPPFLAGS) 
AC_SUBST(X_CFLAGS) 
#AC_SUBST(LDFLAGS) 
#AC_SUBST(X_PRE_LIBS) 
#AC_SUBST(X_LIBS) 
#AC_SUBST(X_EXTRA_LIBS) 

AC_CONFIG_FILES([Makefile])
 
AC_OUTPUT 

# Please leave these in as they're very useful for debug when we
# port to new platforms!  Leave them commented out unless doing
# debugging on the configure scripts.
#
#echo "" 
#echo "        LIBS: $LIBS" 
#echo "     LDFLAGS: $LDFLAGS" 
#echo "      CFLAGS: $CFLAGS" 
#echo "    CPPFLAGS: $CPPFLAGS" 
#echo "      X_LIBS: $X_LIBS" 
#echo "  X_PRE_LIBS: $X_PRE_LIBS" 
#echo "X_EXTRA_LIBS: $X_EXTRA_LIBS" 


echo "Type 'make' to build (Use 'gmake' instead on some systems)." 


