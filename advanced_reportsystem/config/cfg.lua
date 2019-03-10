Locale 		= 'en'
txt 		= false --change to true if you want to have everything saved into a log.txt file.
--commands
command		= 'reportit' --command that is used to make a report
list		= 'rlist' --command to show all reports
delete		= 'rdelete' --command to delete ALL reports from the databank.
call		= 'call' --write an player, that sends a report a preprogrammed message. (/call james)(calls james in the chat to come in support etc.)

--end of config.

-----------------------------------------------------------------------------


if Locale 	== 'de' then

send_message 	= 'Danke für dein Report! Die Admins werden sich möglichst früh um dich kümmern @'
announce 		= 'REPORT: '
bot				= 'BOT: '
report			= '*Nächster Report:*'
err				= '^1Report SQL ist leer.'
table_delete	= '^3Daten aus der Datenbank erfolgreich ^1gelöscht.^0'
hey 			= 'hey'
support			= 'du wirst in den Support gerufen.'
ts3				= 'solltest du Ts3 nicht Heruntergeladen haben, dann lade es dir jetzt herunter und joine unseren Teamspeak auf: teamspeak.com'
permissions		= '^1Du hast keine Berechtigungen hierfür!'
end

if Locale 	== 'en' then

send_message 	= 'Thanks for your report! The admins will take care of you as soon as possible @'
announce 		= 'REPORT: '
bot				= 'BOT: '
report			= '*Next Report:*'
err				= '^1report SQL is empty.'
table_delete	= '^3reports from databank succesfully ^1deleted.^0'
hey 			= 'hello'
support			= 'come in the support.'
ts3				= 'If you have not downloaded Ts3 yet, then download it now and join our Teamspeak at: teamspeak.com'
permissions		= '^1You have no permissions thatfor!'
end

if Locale 	== 'fr' then

send_message 	= 'Merci pour votre rapport! Les administrateurs prendront soin de vous dès que possible @'
announce 		= 'REPORT: '
bot				= 'BOT: '
report			= '*Prochain rapport:*'
err				= '^1Le rapport SQL est vide.'
table_delete	= '^3Données de la base de données ^1supprimées ^3avec succès.^0'
hey 			= 'hé'
support			= 'vous serez appelé à soutenir.'
ts3				= "Si vous n'avez pas téléchargé Ts3, téléchargez-le maintenant et rejoignez notre équipe à l'adresse: teamspeak.com"
permissions		= "^1Vous n'avez aucune permission pour cela!"
end