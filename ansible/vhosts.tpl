{# https://httpd.apache.org/docs/current/configuring.html - Jinj2 mit Template arbeiten - dynamisieren d. Variablen #}
<VirtualHost *:80>
DocumentRoot {{ doc_root }}

<Directory {{ doc_root }}>
AllowOverride All
Require all granted
</Directory>
</VirtualHost>
