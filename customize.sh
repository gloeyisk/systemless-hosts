#!/system/bin/sh

#
# Systemless Hosts by the
# open source loving 'GL-DP' and all contributors;
# Essential repack for latest Unified hosts, with 3 additional extensions
#

# Patch the hosts file and placed the modified one to the original directory
sleep 1
ui_print "- Patching needed files"
if [ -f /system/etc/hosts ]; then
	mkdir -p `dirname $MODPATH/system/etc/hosts`
	cp -af $MODPATH/hosts $MODPATH/system/etc/
	chmod 0644 $MODPATH/system/etc/hosts
fi

# Clean up
sleep 1
ui_print "- Cleaning up"
clean_up() {
	rm -rf $MODPATH/hosts
	rm -rf $MODPATH/LICENSE
}
clean_up

# Executing...
# Done
sleep 1
