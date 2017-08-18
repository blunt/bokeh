<?php

/**
 * Database Configuration
 *
 * All of your system's database configuration settings go in here.
 * You can see a list of the default settings in craft/app/etc/config/defaults/db.php
 */

return array(

	// The database server name or IP address. Usually this is 'localhost' or '127.0.0.1'.
	'server' => 'localhost',
	// 'server' => '127.0.0.1',

	// The name of the database to select.

	// Local
	'database' => 'bokeh',

	// Live
	// 'database' => 'bokeh_main',

	// The database username to connect with.

	//Local
	'user' => 'root',

	//Live
	// 'user' => 'bokeh_admin',

	// The database password to connect with.

	//Local
	'password' => 'root',

	//Live
	// 'password' => 'dcK4pKqU/D3',

	// The prefix to use when naming tables. This can be no more than 5 characters.
	'tablePrefix' => 'craft',

);
