serverkit  
=========

This repository contains a skeleton directory structure for a new ToolTwist server.

#### Setting up a new server
These instructions will set up a generic server, ready to receive a deployment from ToolTwist.

In most cases this procedure is used to create a server from which a snapshot is taken. This _image_ is then
used to instantiate new servers as required.

The starting point for these instructions is a [Level 1 Server](https://github.com/tooltwist/documentation/wiki/Server-Levels#level-1---os-with-pre-requisites-installed).

1. Create a user named tooltwist with a home directory of _/home/tooltwist_. The default Linux command works fine:

        $ adduser tooltwist

  You will also need to set up SSH keys so you can log into this user with `ssh tooltwist@<hostname>` without a password.

2. Log on as `tooltwist`.

3. Clone this project (_note the version_).

        $ git clone -b v8.3 https://github.com/tooltwist/serverkit.git

3. Move all the files (except this README and 'extras') into $HOME.

        $ cd serverkit
        $ mv fip logs server site-conf tooltwist_rc ..
        $ rm -rf .git*

4. Add '. tooltwist_rc' to end end of ___.profile___ (for OSX replace _.profile_ with _.bash_profile_).

        $ echo ". tooltwist_rc" >> ~/.profile

5. Got the the tomcat website [http://tomcat.apache.org] and get the URL for downloading, then install as follows:

	$ cd ~/server
        $ curl -O http://psg.mtu.edu/pub/apache/tomcat/tomcat-8/v8.0.12/bin/apache-tomcat-8.0.12.tar.gz
	$ tar xzf apache-tomcat-8.0.12.tar.gz 
        $ mv apache-tomcat-8.0.12 tomcat
        $ rm -rf apache-tomcat-8.0.12.tar.gz tomcat/webapps/[a-qs-z]*

6. Log out and back in.


At this point you have [Level 2 Server](https://github.com/tooltwist/documentation/wiki/Server-Levels#level-2---blank-server).
If you shut down the machine and take a snapshot it will be an official level 2 image.

#### Upgrading to level 3

A [level 3 server](https://github.com/tooltwist/documentation/wiki/Server-Levels#level-3---preloaded) is the
same as a level 2 server except that it has the ttdemo project installed. It is intended to
be used as an image for instantiating new server.
During the first application install FIP will remove the unneeded files, however the underlying web assets required for
ToolTwist are already installed. This makes the first application install much faster.

Another advantage is that you can quickly verify the operation of a new server cloned from a level 3 image:

        http://<hostname>:8080/ttsvr/n/ttdemo-1

To upgrade to level 3, go to ___some other machine___ with the Tooltwist CLI installed and run:

        $ tooltwist init deploy
	$ tooltwist

After the deployment is complete, tidy up this new machine:

	$ rm ~/server/.fip-destination
	$ cp /dev/null ~/logs/tooltwist.log
	$ cp /dev/null ~/logs/fipserver.log

Shut down the machine and create a snaphot as a ___Level 3 Image___.

## A WARNING
*Note that the _site-config_ directory contains a _default_ configuration. You MUST confirm or
modify these files before using them in any production environment.*


## Alternate Locations
It is expected that this setup is installed under `/home/tooltwist`. If you install in a different
directory you'll need to update that path wherever it is used. You can find the effected files
with the following command.

        $ find . -type f -exec grep /home/tooltwist {} /dev/null \;

## FIP (File Installation Protocol)

#### Pairing the source machine with this server
The FIP protocol is used to install files on the server. To do this the source machine and this
server need to be paired.

This can be done automatically when you run `tooltwist init deploy` on the publishing machine.

Creating the files manually is a little fiddly, using the instructions in fip/README.txt.

#### Starting FIP manually

To start the server manually:

        $ cd ~/fip
        $ nohup ./fipserver -v 39393 > ~/logs/fipserver.log &

## Extras
The extras directory contains extra resources that might be useful while setting up a server.


#### Newrelic (application monitoring)  
https://github.com/twistresources/company/wiki/Installing-newrelic-agent  
https://newrelic.com/docs/server/server-monitor-installation-other-linux  
