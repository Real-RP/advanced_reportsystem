
-- This is a template! It does NOT give you permissions to use the commands and only shows how to give permissions to someone!


add_ace group.report.cmds report.cmds allow --add this to your server.cfg at the very top. It gives everyone in group 'report.cmds' the permission to use the commands.
-- You can change the group above to something else, for example: 'add_ace group.admin' will give everyone with the group permissions of admin the permission to use the report commands.


add_principal identifier.steam:HEXID group.report.cmds --this gives to a specified person, the permissions to use the commands.
-- if you use the example above: 'add_ace group.admin' You need to change that in the 'add_principal' line too. Example: HEXID group.admin

--You can find your HexID like this:

--[[

		Open your Steam. then hover over you steam name and click on 'profile'.
		under your Steam name is link. Copy it and go to: http://vacbanned.com/
		then paste your link into the search bar and enter. If everything is correctly,
		then you've got a table, in that table look for: 'Steam3 ID (64bit)' and copy
		'110000121adea03 (Hex)' line. clear (Hex) from name and replace HEXID with your Hex.

--]]