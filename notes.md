
Custom php.ini Settings

~~~
post_max_size = 30M
upload_max_filesize = 30M
allow_url_fopen = Off
expose_php = Off
mysql.allow_persistent = Off
output_buffering = Off
disabled_functions = mail
~~~


nginx Directives

~~~
location / {
  try_files $uri $uri/ /index.php?q=$uri&$args;
}

client_max_body_size 30M;
~~~
