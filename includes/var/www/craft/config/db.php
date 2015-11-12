<?php

/**
 * Database Configuration
 *
 * All of your system's database configuration settings go in here.
 * You can see a list of the default settings in craft/app/etc/config/defaults/db.php
 */
$env = getenv("MYSQL_ENV") ?: "MYSQL_URL";
$url = getenv($env) ?: 'mysql://root@localhost';
$url = parse_url($url);

return array(

	// The database server name or IP address. Usually this is 'localhost' or '127.0.0.1'.
	'server' => getenv('CRAFT_DB_SERVER') ?: $url["host"],

	// The database username to connect with.
	'user' =>  getenv('CRAFT_DB_USER') ?: $url["user"],

	// The database password to connect with.
	'password' =>  getenv('CRAFT_DB_PASSWORD') ?: $url["pass"],

	// The name of the database to select.
	'database' => getenv('CRAFT_DB_NAME') ?: substr($url["path"],1),

	// The prefix to use when naming tables. This can be no more than 5 characters.
	'tablePrefix' => getenv('CRAFT_DB_TABLE_PREFIX') ?: 'craft',

);
