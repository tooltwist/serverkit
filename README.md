serverkit  
=========

This repository contains a skeleton directory structure for a new ToolTwist server.

#### Setting up a new server

1. Create a user named tooltwist with a home directory of _/home/tooltwist_. The default Linux command works fine:

        $ adduser tooltwist

2. Log on as `tooltwist`

3. Clone this project (_note the version_).

        $ git clone -b v8.3 https://github.com/tooltwist/serverkit.git

3. Move all the files (except this README and 'extras') into $HOME.

        $ cd serverkit
        $ mv fip logs server site-conf tooltwist_rc ..

4. Add '. tooltwist_rc' to end end of ___.profile___ (for OSX replace _.profile_ with _.bash_profile_).

        $ echo ". tooltwist_rc >> .profile



## Alternate Locations
It is expected that this setup is installed under `/home/tooltwist`. If you install in a different
directory you'll need to update that path wherever it is used. You can find the effected files
with the following command.

        $ find . -type f -exec grep /home/tooltwist {} /dev/null \;

## Extras
The extras directory contains extra resources that might be useful while setting up a server.


#### Newrelic (application monitoring)  
https://github.com/twistresources/company/wiki/Installing-newrelic-agent  
https://newrelic.com/docs/server/server-monitor-installation-other-linux  
