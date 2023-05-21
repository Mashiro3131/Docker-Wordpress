<?php


// define( 'DB_NAME', 'wordpress' );
// define( 'DB_USER', 'wordpress' );
// define( 'DB_PASSWORD', 'wordpress' );
// define( 'DB_HOST', 'mysql:3306' );


/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the installation.
 * You don't have to use the web site, you can copy this file to "wp-config.php"
 * and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * Database settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://wordpress.org/documentation/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** Database settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'wordpress' );

/** Database username */
define( 'DB_USER', 'wordpress' );

/** Database password */
define( 'DB_PASSWORD', 'wordpress' );

/** Database hostname */
define( 'DB_HOST', 'mysql' );

/** Database charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8' );

/** The database collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication unique keys and salts.
 *
 * Change these to different unique phrases! You can generate these using
 * the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}.
 *
 * You can change these at any point in time to invalidate all existing cookies.
 * This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         'Adv=( U)i!i_4oN<q>rPQX[P$|=mzv |~.xZ} ;anh;x[J8KgBx2Ac7dZfJILQXL');
define('SECURE_AUTH_KEY',  'Sg`yWc~4nteX${Iq/b3e20,94@2E:4oX-#T3ZQ`rjw?pf%*FaKUG<WC+^stZK(+T');
define('LOGGED_IN_KEY',    'XLPaMCz[QAZ=F~3+^*m0-ZP[urmCbO`!+>9@gsln9-LXSCE+-:[(i=E|$2j`dBH~');
define('NONCE_KEY',        'BKidR!2%ng<IDi2,CwDZz%5M|kAxhl#-$.A=!JWJSod+jMs.<,fv>+F;r=W:Ghi-');
define('AUTH_SALT',        'hQ=^cCCjk*.6iQsznDx~@*=-8bR,VwGPh,hugHHFV^lRS|=wff1OJP?4%OGR{PTM');
define('SECURE_AUTH_SALT', 'eP.wLX3s#FNeU6TFvFg/>gi4QPXJ)pJE!R;+~0,i[lm3NmPP`rn6<l@IibQsQHDe');
define('LOGGED_IN_SALT',   ',lA UtZuKzLJS?o8(Gk+@>:H9|h(T3ZM4/}b|?6J}{Zr%&v3A|-*.-&5],%$)+B!');
define('NONCE_SALT',       '|[^(Zz8y$v!E%9?NzQ!y|15F/sh3e]L8aH lccf[li.La%3(@h_t_HGloihEV+aU');

/**#@-*/

/**
 * WordPress database table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the documentation.
 *
 * @link https://wordpress.org/documentation/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', false );

/* Add any custom values between this line and the "stop editing" line. */

define('WP_ALLOW_REPAIR', true);

/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';