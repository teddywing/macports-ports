MacPorts Ports
==============

A collection of ports for various projects.


## Adding this repository source
Clone the repository to the local filesystem:

	$ cd /opt/local/var/macports/sources/
	$ sudo mkdir -p github.com/teddywing/macports-ports/
	$ sudo chown -R $USER:admin github.com
	$ git clone https://github.com/teddywing/macports-ports.git github.com/teddywing/macports-ports

Edit the `/opt/local/etc/macports/sources.conf` and add the following line
_above_ the default MacPorts source:

	file:///opt/local/var/macports/sources/github.com/teddywing/macports-ports

Synchronize the ports tree:

	sudo port -v sync


## License
Licensed under the Mozilla Public License v. 2.0 (see the included LICENSE
file).
