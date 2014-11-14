feed:
	while true; \
	  do echo '{"hello":"world'`date +%s`'"}' >> in/dpkg.log; \
	  sleep 1; \
	done
