#!/system/bin/sh

#
# Systemless Hosts by the
# open source loving GL-DP and all contributors;
# Consolidating and extending hosts files from several well-curated sources
#

# Checking for installation environment
if [ $BOOTMODE = true ]; then
 ROOT=$(find `magisk --path` -type d -name "mirror" | head -n 1)
	ui_print "- Root path: $ROOT"
else
 ROOT=""
fi

# Patch default hosts file
PATH=/system/etc
	ui_print "- Patching hosts file"
mkdir -p $MODPATH$PATH
mv -f $MODPATH/hosts $MODPATH$PATH

# Clean up
rm -rf $MODPATH/hosts
rm -rf $MODPATH/LICENSE
