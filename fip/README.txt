The following commands are used to configure a source and destination
for using FIP. In each case, the command is run on the appropriate machine.

Step 1 (only required on OSX machines)

	# sh ./osx_fix_permissions


Step 2 - Define the source (only if it's new)

	# ./newSource /pathToDirectory
	Creating /pathToDirectory/.fip-source...
	
	Please note the following UUID for this source, which will be used
	when you create destinations using the newDestination' command:
	
		Source UUID: 82F7E1CB-CE86-478C-8399-0879182A87B0B
	
	
Step 3 - Define the destination

	# ./newdestination /pathToDirectory
	Source UUID? E5F7EECB-C886-478C-8399-0874BFA87B0B
	Passphrase? Hello my friends
	Creating /pathToDirectory/.fip-destination...
	
	Please note the following string, which will be used when adding this
	destination to the source configuration using 'addDestinationToSource':
	
	    3FE98999-3E47-4A9F-B16D-677261DF041A=Hello my friends


Step 4 - Register the destination with the source

	# ./registerDestinationWithSource  /pathToDirectory
	Please enter the string displayed by the newDestination command. It should
	look something like:    54FE181-FBD7-4831-9441-724C96FDFA27=passphrase
	
	String? 3FE98999-3E47-4A9F-B16D-677261DF041A=Hello my friends
	
	/pathToDirectory/.fip-source updated.
	
The fip and fipserver commands may then be used to copy files between these directories.