bash-utils
==========

A lightweight bash script organization system.

This is for those sysadmins and other bash power-users who find their **.bash_profile** cluttered by the aliases and functions they've collected over the years.

bash-utils also provides a handy way of organizing bash **aliases** (shortcut commands) and collections of related functions/aliases ("**plugins**").


# Installation

1. Clone this repo to wherever you want on your machine.

	`git clone git@bitbucket.org:ftsanjuan/bash-utils.git /path/to/bash-utils`	


2. Add a line to your *.bash-profile

	`source /path/to/bash-utils/bash-utils.sh`


3. Done.


# Customization


## Adding a new aliases file

bash-utils looks for and loads all files ending with **.aliases.sh** in **/bash-utils/aliases**.  To add a new aliases file

1.  Create a new file ending with `.alias.sh` (ex. `my-new-aliases.aliases.sh`)


2.  Save it to the **/bash-utils/aliases** folder


3.  Done.

## Adding a new plugin file

bash-utils looks for and loads all files ending with **.plugin.sh** in **/bash-utils/plugins**.  To add a new plugins file

1.  Create a new folder for your plugin in **/bash-utils/plugins** folder.

	**NOTE: Although this is not strictly required, it is highly recommended for the sake of avoiding the clutter that got you here in the first place!**


2.  Create a new file ending with `.plugin.sh` 
	
	(ex. `my-new-plugin.plugin.sh`)


3.  Save it to the **/bash-utils/plugins** folder (or the folder within **/bash-utils/plugins** which you created in Step 1)


4.  Done.