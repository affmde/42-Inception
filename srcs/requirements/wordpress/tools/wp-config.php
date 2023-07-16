<?php
// MySQL database settings
define( 'DB_NAME', 'db' );
define( 'DB_USER', 'user' );
define( 'DB_PASSWORD', 'db_passwd' );
define( 'DB_HOST', 'mariadb' );

// Database table prefix (optional but recommended for added security)
$table_prefix = 'wp_';

// Authentication unique keys and salts (you can generate new keys from https://api.wordpress.org/secret-key/1.1/salt/)
define( 'AUTH_KEY',         'put your unique phrase here' );
define( 'SECURE_AUTH_KEY',  'put your unique phrase here' );
define( 'LOGGED_IN_KEY',    'put your unique phrase here' );
define( 'NONCE_KEY',        'put your unique phrase here' );
define( 'AUTH_SALT',        'put your unique phrase here' );
define( 'SECURE_AUTH_SALT', 'put your unique phrase here' );
define( 'LOGGED_IN_SALT',   'put your unique phrase here' );
define( 'NONCE_SALT',       'put your unique phrase here' );

// WordPress database collation type (leave it as the default unless necessary)
define( 'DB_COLLATE', '' );

define( 'WPLANG', 'en_US' );
