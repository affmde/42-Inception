<?php

define( 'DB_NAME', 'db1' );
define( 'DB_USER', 'user' );
define( 'DB_PASSWORD', 'db_passwd' );
define( 'DB_HOST', 'mariadb' );


$table_prefix = 'wp_';

define('AUTH_KEY',         'tuk{|i9XL i6w.Y k*=Rt2RvG54OBRCw ^zR:QK~ 11]9Q6D+N]aX+|_L(`Q<znb');
define('SECURE_AUTH_KEY',  'gc01>qbYUL|H4fEP-#kV`n!.YgeBIgz9-U5>2tx9;,Gk7_u%5<PB Y{q>SJ]A.br');
define('LOGGED_IN_KEY',    'V#Eog?^8n#IVB]|c}J7:Z#6MRYneDKS2xX(mW?Sf3d`yaEFC:cq~(x#*}O/3L|L!');
define('NONCE_KEY',        '0_VW#h p> F5ES<TiQ=eb(HzA>?)Dwy|-.o~uP#=Suv*:]}#[jFpSF_?Ae(d@Wg|');
define('AUTH_SALT',        '=.l^2w#X{uy:%%WC!.`_S@@lJ#]/Fgj&@e 3krZ:_Nf&+Y{%cR_(HpqZay4DIe`F');
define('SECURE_AUTH_SALT', '*>(-R6Wjtb$|.XF DiQ($[36dJ4VsfW95n2d:3/<mr-#YDRt2p~wHQV*)5_lX-U6');
define('LOGGED_IN_SALT',   'a5W1>:xE5ma@sLoVDsKf6Q86kKS|M%~tsM`=yGAlM5K9}Fv:l1z=nF v|-o)lF+-');
define('NONCE_SALT',       'Kswr`eL+:iv.5vv1.mBtqk%sc7-s17jl5pF~J{_#0b!MWCS9kvdt|oY$x6~xB%! ');

define( 'DB_COLLATE', '' );

define( 'WPLANG', 'en_US' );

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
    define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';