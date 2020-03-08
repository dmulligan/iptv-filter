#!/bin/bash

m3u_src="http://iptv.example.com/iptv.m3u"
m3u_file=/tmp/iptv-`date +%Y%m%d`.m3u

if [ ! -f "$m3u_file" ]; then
  # Delete files downloaded over seven days ago.
  find /tmp/iptv-* -mtime +7 -exec rm {} \;

  # Download the m3u files.
  curl -s $m3u_src --output $m3u_file
fi

echo "#EXTM3U"
grep -E '^#EXTINF.*group\-title=\"IRE'  -A 1 $m3u_file | sed "/^--$/d"
grep -E '^#EXTINF.*group\-title=\"UK\|' -A 1 $m3u_file | sed "/^--$/d"
grep -E '^#EXTINF.*group\-title=\"USA'  -A 1 $m3u_file | sed "/^--$/d"
grep -E '^#EXTINF.*group\-title=\"CA'   -A 1 $m3u_file | sed "/^--$/d"
grep -E '^#EXTINF.*group\-title=\"SP'   -A 1 $m3u_file | sed "/^--$/d"

exit 0