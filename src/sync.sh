#!/bin/sh
echo default login $NEXT_USER password $NEXT_PASS > /.netrc
nextcloudcmd -h -n /data $NEXT_SERVER
echo > /.netrc
