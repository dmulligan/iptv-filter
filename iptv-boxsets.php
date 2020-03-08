<?php 
exec('/var/www/html/iptv-boxsets.sh > /tmp/iptv-boxsets.m3u');

header("Content-Description: File Transfer");
header("Content-Type: application/octet-stream");
header("Content-Disposition: attachment; filename=\"iptv-boxsets.m3u\"");
readfile("/tmp/iptv-boxsets.m3u");
?>