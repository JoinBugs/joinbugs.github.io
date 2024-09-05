#! /bin/bash
#! -*- ENCODING: UTF-8 -*-

function launch_page_in_browser()
{
   while true;do
        procc=$(netstat -tulpn | grep -c "127.0.0.1:4000")
       echo process not fount 
	if [ $procc -gt 0 ];then
            echo process founded, starting chrome...
            echo $procc
            google-chrome 127.0.0.1:4000
	    break
        fi
   done
}

launch_page_in_browser&
bundle exec jekyll serve
