b2d_host=192.168.59.103
post:
	curl -XPOST $(b2d_host):9880/dpkg.log -d 'json={"name":"hello"}'

feed:
	while true; do echo '{"hello":"world'`date +%s`'"}' >> in/dpkg.log; done
