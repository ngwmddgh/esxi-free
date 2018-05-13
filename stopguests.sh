# stopguests.sh / ngwmddgh / 2018-05-12
# get all vmid numbers and attempt vmware tools-dependent shutdowns of each guest
# useful when you need to quickly shutdown a host

for i in `vim-cmd vmsvc/getallvms | cut -d ' ' -f 1`
do vim-cmd vmsvc/power.shutdown $i
done
