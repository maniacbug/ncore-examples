#
# To use:
#
# ls -d */*/. | gawk -f makejamfiles.awk | /bin/sh
#

BEGIN { FS="/" }
{
  print "sed \"s/#GROUP#/" $1 "/g;s/#SKETCH#/" $2 "/g\" Jamfile.template > " $1 "/" $2 "/Jamfile"
  print "sed \"s/#GROUP#/" $1 "/g;s/#SKETCH#/" $2 "/g\" Jamfile.top.template >> Jamfile"
}
