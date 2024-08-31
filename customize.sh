#!/system/bin/sh

#
# Systemless Hosts by the
# open source loving GL-DP and all contributors;
# An efficient ad blocker, with no user interface
#

# Check root implementation
ui_print "- Checking root implementation"
if [ "$BOOTMODE" ] && [ "$KSU" ]; then
ui_print "- Installing from KernelSU app"
ui_print "   KernelSU version: $KSU_KERNEL_VER_CODE (kernel) + $KSU_VER_CODE (ksud)"
if [ "$(which magisk)" ]; then
ui_print "   Multiple root implementation is NOT supported"
abort    "   Aborting!"
fi
elif [ "$BOOTMODE" ] && [ "$MAGISK_VER_CODE" ]; then
ui_print "- Installing from Magisk app"
else
ui_print "   Installation from recovery is NOT supported"
ui_print "   Please install from Magisk / KernelSU app"
abort    "   Aborting!"
fi

# Patch default hosts file
PATH=/system/etc
ui_print "- Patching hosts file"
mkdir -p $MODPATH$PATH
mv -f $MODPATH/hosts $MODPATH$PATH

# Clean up
rm -rf $MODPATH/hosts
rm -rf $MODPATH/LICENSE
