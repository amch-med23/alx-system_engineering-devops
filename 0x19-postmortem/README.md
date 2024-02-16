				Post-Mortem

* Issue Summary:
  	Today at 03:45am GMT, an issue with the Eastern Datacenter was detected,
	an API endpoint keeps failing to return the expected data. randering the
	system unusable for all our Eastern users, the regional load balancer switched
	this traffic to the other Datacenter (the Central one) resulting in over loaded and
	this leaded in the whole system shutdown. evantually our engineers solved the
	issue. The outage duration was 40 min, starting at 03:45am GMT and was solved at
	aprox 04:25am GMT.

* Events time line:
        The issue was detected at 03:45am GMT by one of our monitoring softwares. the last
	was tasked with testing the API responses, the software was doing this by making
	repeated calls to the resource API end-points(the one responsible for the data resources).
	The OnCall engineer (Amouch Mohamed) was fast at debugging this. first he looked at the
	server that hosts the back-end API service and discovered that the log file of one system
	service is too large (Gigabytes in size) caused by a crashing tool agent. this was
	taking out a huge load of memory and disk space from the system. making the backend server unresponsive.
	 the issue ws fixed by restarting the monitoring agent service. and reloading the api server.
	a quick reboot of all the servers in the Eastern Datacenter was done to ensure the proper
	cleaning of the temp / log files.

* Prevantive Measures:
  	after the incident we have developed a stand-alone tool to monitor the logging behaviour
	of the base system apps (except for the Host OS), this will result in a well monitored clusters
	this way we can prevant a similar issue from happening. and we increased the internal network
	bandwith by using new networking equipmrents.
