The following commands are used to configure a source and destination
for using FIP. In each case, the command is run on the appropriate machine.

Step 1 (only required on OSX machines)

	$ sh ./osx_fix_permissions


Step 2 - Define the source and destination config files

	$ ./newFipSourceAndDestination
	
This creates two files:

	.fip-source		Copy this file to the source machine, into the directory
				from which you are installing.

	.fip-destination	Copy this file into the destination directory, for
				example in ~/server.
	
If you install the same source to multiple destinations, you can edit the .fip-source file
and add details of the other destinations using information from their .fip-destination files.
