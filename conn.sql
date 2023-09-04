--drop database link site_link;
drop PUBLIC database link site2;
create PUBLIC DATABASE link site2
CONNECT to system IDENTIFIED BY "957466"
USING '(description =
(address_list =
(address = (protocol = tcp)
(host = 172.16.111.252)
(port = 1521))
)
(connect_data = (sid = xe)
)
)'
;
