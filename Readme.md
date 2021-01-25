## MEDAN - Media Analytics

1- Acces super Admin <br>
   USERNAME dan PASSWORD : admin : admin <br>


### Requidment
* PHP 7.3.13 (cli) (built: Dec 17 2019 10:29:15) ( NTS )
Copyright (c) 1997-2018 The PHP Group
Zend Engine v3.3.13, Copyright (c) 1998-2018 Zend Technologies
    with Zend OPcache v7.3.13, Copyright (c) 1999-2018, by Zend Technologies
* mysql  Ver 8.0.17 for Linux on x86_64 (MySQL Community Server - GPL)
* Server version: Apache/2.4.41 (Fedora)
Server built:   Nov 22 2019 17:22:05
Server's Module Magic Number: 20120211:88
Server loaded:  APR 1.6.5, APR-UTIL 1.6.1
Compiled using: APR 1.6.5, APR-UTIL 1.6.1
Architecture:   64-bit
Server MPM:     event
  threaded:     yes (fixed thread count)
    forked:     yes (variable process count)
Server compiled with....
 -D APR_HAS_SENDFILE
 -D APR_HAS_MMAP
 -D APR_HAVE_IPV6 (IPv4-mapped addresses enabled)
 -D APR_USE_SYSVSEM_SERIALIZE
 -D APR_USE_PTHREAD_SERIALIZE
 -D SINGLE_LISTEN_UNSERIALIZED_ACCEPT
 -D APR_HAS_OTHER_CHILD
 -D AP_HAVE_RELIABLE_PIPED_LOGS
 -D DYNAMIC_MODULE_LIMIT=256
 -D HTTPD_ROOT="/etc/httpd"
 -D SUEXEC_BIN="/usr/sbin/suexec"
 -D DEFAULT_PIDLOG="run/httpd.pid"
 -D DEFAULT_SCOREBOARD="logs/apache_runtime_status"
 -D DEFAULT_ERRORLOG="logs/error_log"
 -D AP_TYPES_CONFIG_FILE="conf/mime.types"
 -D SERVER_CONFIG_FILE="conf/httpd.conf"

### config max file size upload mp4 file
1. setting php.ini <br>
  a. Maximum allowed size for uploaded files.<br>
  http://php.net/upload-max-filesize<br>
  `upload_max_filesize = 100M`<br>
  b. Maximum size of POST data that PHP will accept. <br>
  Its value may be 0 to disable the limit. It is ignored if POST data reading is disabled through enable_post_data_reading.
  http://php.net/post-max-size<br>
  `post_max_size = 0` set 0 to limit.
2. Restart http.service <br>
    `systemctl restart httpd.service` <br>
   Restart php-fpm <br>
   `sudo systemctl restart php-fpm.service`
3. Check modify on phpinfo.


### Author

**heriipurnama**

* [github/heriipurnama](https://github.com/heriipurnama)

### Preview

![ no image ](template/coreui/img/loginPage2.png)

### License

Copyright © 2020, [ MIS - Pt.Globalindo ](https://github.com/Globalindo-intimates/E-CLEAN.git).

Released under the [MIT License](LICENSE).