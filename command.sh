# /bin/bash
cat default.xml | while read line;do  name=`echo $line | cut -d "\"" -f 4`; path=`echo $line | cut -d "\"" -f 2`; echo $name; echo $path; git clone ssh://192.168.1.10:29418/edas/android/$name  $path;  done;
