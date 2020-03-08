<?php 
exec('/var/www/html/iptv-tv.sh > /tmp/iptv-tv.m3u');

header("Content-Description: File Transfer");
header("Content-Type: application/octet-stream");
header("Content-Disposition: attachment; filename=\"iptv-tv.m3u\"");
readfile("/tmp/iptv-tv.m3u");
?>