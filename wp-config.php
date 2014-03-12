<?php
/**
 * The base configurations of the WordPress.
 *
 * This file has the following configurations: MySQL settings, Table Prefix,
 * Secret Keys, WordPress Language, and ABSPATH. You can find more information
 * by visiting {@link http://codex.wordpress.org/Editing_wp-config.php Editing
 * wp-config.php} Codex page. You can get the MySQL settings from your web host.
 *
 * This file is used by the wp-config.php creation script during the
 * installation. You don't have to use the web site, you can just copy this file
 * to "wp-config.php" and fill in the values.
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define('DB_NAME', 'mandalaArts');

/** MySQL database username */
define('DB_USER', 'root');

/** MySQL database password */
define('DB_PASSWORD', '');

/** MySQL hostname */
define('DB_HOST', 'localhost');

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8');

/** The Database Collate type. Don't change this if in doubt. */
define('DB_COLLATE', '');

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         '9+}l-An@(<W!xzSM=DP>WkTp3(02fzv[dBY ,Dp=R1oi|5mJIrr/UeQ0/848OY]X');
define('SECURE_AUTH_KEY',  '_d|be66+/l>X)g|F3[mX@}V%pa.l)01 x7n+{TI.tZ=ZO+pNFiy-Y.d|C>mu3_m+');
define('LOGGED_IN_KEY',    'v2=F+I)Rs-i1R6`g;Ijs~*@Ne~JMO-!+KA%-I4`k?s)57I-DFXf9Ow$3`tU*$/8-');
define('NONCE_KEY',        '#ajI$/?sO!*62C;RL@qCsI|b;U|d1W<+@4=JVhTG?.W+b|pK7#z1[uKK*&AW/ct+');
define('AUTH_SALT',        'F,j-_f_y:BlRE_&kxUQxm+vL4CIFEaIp[wZ9x_[#0Wv5J[0|Q-QD~J1G;Qc*-=5$');
define('SECURE_AUTH_SALT', 'n>^=Zh3njAxYd< fa| x`m159+g7R_Gbkx$S~--sa;5ctv9TRA2@:OmOjVn#$B/z');
define('LOGGED_IN_SALT',   '/DE|ln{D*fPS4bi2Vv1i$?I0u8;qwWI&T^^qy}|4Oe~sgjB4rVZudz.:qgrDQ0-$');
define('NONCE_SALT',       '7uup5FKp*^~|`hGkDhemW<7BN:`>eiW%!xase4TYU!3Z.66)h~(wW)-*xItsMDB!');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each a unique
 * prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'ma_';

/**
 * WordPress Localized Language, defaults to English.
 *
 * Change this to localize WordPress. A corresponding MO file for the chosen
 * language must be installed to wp-content/languages. For example, install
 * de_DE.mo to wp-content/languages and set WPLANG to 'de_DE' to enable German
 * language support.
 */
define('WPLANG', '');

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 */
define('WP_DEBUG', false);

/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');
