<?php
/**
 * La configuration de base de votre installation WordPress.
 *
 * Ce fichier contient les réglages de configuration suivants : réglages MySQL,
 * préfixe de table, clés secrètes, langue utilisée, et ABSPATH.
 * Vous pouvez en savoir plus à leur sujet en allant sur
 * {@link http://codex.wordpress.org/fr:Modifier_wp-config.php Modifier
 * wp-config.php}. C’est votre hébergeur qui doit vous donner vos
 * codes MySQL.
 *
 * Ce fichier est utilisé par le script de création de wp-config.php pendant
 * le processus d’installation. Vous n’avez pas à utiliser le site web, vous
 * pouvez simplement renommer ce fichier en "wp-config.php" et remplir les
 * valeurs.
 *
 * @package WordPress
 */

// ** Réglages MySQL - Votre hébergeur doit vous fournir ces informations. ** //
/** Nom de la base de données de WordPress. */
define( 'DB_NAME', 'wordpress' );

/** Utilisateur de la base de données MySQL. */
define( 'DB_USER', 'wp_user' );

/** Mot de passe de la base de données MySQL. */
define( 'DB_PASSWORD', 'wp_pass' );

/** Adresse de l’hébergement MySQL. */
define( 'DB_HOST', 'mysql:3306' );

/** Jeu de caractères à utiliser par la base de données lors de la création des tables. */
define( 'DB_CHARSET', 'utf8mb4' );

/** Type de collation de la base de données.
  * N’y touchez que si vous savez ce que vous faites.
  */
define('DB_COLLATE', '');

/**#@+
 * Clés uniques d’authentification et salage.
 *
 * Remplacez les valeurs par défaut par des phrases uniques !
 * Vous pouvez générer des phrases aléatoires en utilisant
 * {@link https://api.wordpress.org/secret-key/1.1/salt/ le service de clefs secrètes de WordPress.org}.
 * Vous pouvez modifier ces phrases à n’importe quel moment, afin d’invalider tous les cookies existants.
 * Cela forcera également tous les utilisateurs à se reconnecter.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         'zGsT-^h@jcvcS0-1xx?AaQgpzGzDmzu,0:cR<nPkSoKkC`Ai0d&I[;8=+Z?.dY@8' );
define( 'SECURE_AUTH_KEY',  'fXh#Fr-Q4f4ddresrfLLpw]3yn[bI|->uAG,U?609c-=mX@Y4ERckB%`LnBvK:*q' );
define( 'LOGGED_IN_KEY',    'j:vDEU? g=O%5}o@o9!R^U}Ti!k&-A3I-M`SlB+Slump$WFvy]neh6kyq;]pR>WS' );
define( 'NONCE_KEY',        'BSJ0J$TjHW]J/m$/?K@3rD%+{CA4lHPpSgc7<n3XMd6)X@+h3blaK(>dTNQszkkJ' );
define( 'AUTH_SALT',        'pi#e(4/WSw=rd19S%?/XWzUmS/l{(pKnphDWs^Vxj;z~ZEVOT$}BRC<bqrZ5z{^6' );
define( 'SECURE_AUTH_SALT', 'C_<J:[om2!/V#baiR<k!q)]|Hv1:k~}0^6b/eM-.^6/1eu3}bJkDDz HdPBY9>Pt' );
define( 'LOGGED_IN_SALT',   'TYEBn(;uiWS2YHFTr~j/lfX_sI1hB:P)ir?3{El^wwm[f_&f5giWFkv|hVQb$%t_' );
define( 'NONCE_SALT',       'hKUpNl27/Nd^cejm{L`p1q&47s0iuH#m0NPU1A1#n6j$Lt9ZzAIq%6eM~*Hwaxg/' );
/**#@-*/

/**
 * Préfixe de base de données pour les tables de WordPress.
 *
 * Vous pouvez installer plusieurs WordPress sur une seule base de données
 * si vous leur donnez chacune un préfixe unique.
 * N’utilisez que des chiffres, des lettres non-accentuées, et des caractères soulignés !
 */
$table_prefix = 'wp_';

/**
 * Pour les développeurs : le mode déboguage de WordPress.
 *
 * En passant la valeur suivante à "true", vous activez l’affichage des
 * notifications d’erreurs pendant vos essais.
 * Il est fortemment recommandé que les développeurs d’extensions et
 * de thèmes se servent de WP_DEBUG dans leur environnement de
 * développement.
 *
 * Pour plus d’information sur les autres constantes qui peuvent être utilisées
 * pour le déboguage, rendez-vous sur le Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define('WP_DEBUG', false);

/* C’est tout, ne touchez pas à ce qui suit ! Bonne publication. */

/** Chemin absolu vers le dossier de WordPress. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Réglage des variables de WordPress et de ses fichiers inclus. */
require_once(ABSPATH . 'wp-settings.php');