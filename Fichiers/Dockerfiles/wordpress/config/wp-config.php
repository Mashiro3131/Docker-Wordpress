<?php
// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define('DB_NAME', 'wordpress');

/** MySQL database username */
define('DB_USER', 'wordpress');

/** MySQL database password */
define('DB_PASSWORDdefine', 'wordpress');

 /** MySQL hostname */
define('DB_HOST', 'mengisen-projetdocker-mysql-server');

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8mb4');

/** The Database Collate type. Don't change this if in doubt. */
define('DB_COLLATE', '');

/** WordPress debug mode for developers */
define('WP_DEBUG', false);

// Define additional paths for Apache
define('WP_CONTENT_DIR', '/var/www/html/wp-content');
define('WP_CONTENT_URL', 'http://localhost/wp-content');

// Path to the WP theme
define('TEMPLATEPATH', '/var/www/html/wp-content/themes/ctlg-wpcom/templates');
define('STYLESHEETPATH', '/var/www/html/wp-content/themes/ctlg-wpcom/styles');

