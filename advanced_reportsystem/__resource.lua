resource_manifest_version '44febabe-d386-4d18-afbe-5e627f4af937'



description 'Advanced Reporting System'

version '1.2.0'

client_script 'client.lua'


server_scripts {
	'config/cfg.lua',
	'server.lua',
	'@mysql-async/lib/MySQL.lua'
}
