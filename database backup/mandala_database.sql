-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 12, 2014 at 06:39 PM
-- Server version: 5.5.16
-- PHP Version: 5.3.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `mandalaArts`
--

-- --------------------------------------------------------

--
-- Table structure for table `ma_commentmeta`
--

CREATE TABLE IF NOT EXISTS `ma_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ma_comments`
--

CREATE TABLE IF NOT EXISTS `ma_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext NOT NULL,
  `comment_author_email` varchar(100) NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) NOT NULL DEFAULT '',
  `comment_type` varchar(20) NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `ma_comments`
--

INSERT INTO `ma_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Mr WordPress', '', 'http://wordpress.org/', '', '2014-03-12 06:55:24', '2014-03-12 06:55:24', 'Hi, this is a comment.\nTo delete a comment, just log in and view the post&#039;s comments. There you will have the option to edit or delete them.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ma_links`
--

CREATE TABLE IF NOT EXISTS `ma_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) NOT NULL DEFAULT '',
  `link_name` varchar(255) NOT NULL DEFAULT '',
  `link_image` varchar(255) NOT NULL DEFAULT '',
  `link_target` varchar(25) NOT NULL DEFAULT '',
  `link_description` varchar(255) NOT NULL DEFAULT '',
  `link_visible` varchar(20) NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) NOT NULL DEFAULT '',
  `link_notes` mediumtext NOT NULL,
  `link_rss` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ma_options`
--

CREATE TABLE IF NOT EXISTS `ma_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(64) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=443 ;

--
-- Dumping data for table `ma_options`
--

INSERT INTO `ma_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/mandala', 'yes'),
(2, 'blogname', 'Mandala Arts and Kraft', 'yes'),
(3, 'blogdescription', 'A complete web portal for Nepalese handicraft', 'yes'),
(4, 'users_can_register', '1', 'yes'),
(5, 'admin_email', 'nizeshshakya@gmail.com', 'yes'),
(6, 'start_of_week', '0', 'yes'),
(7, 'use_balanceTags', '0', 'yes'),
(8, 'use_smilies', '1', 'yes'),
(9, 'require_name_email', '1', 'yes'),
(10, 'comments_notify', '1', 'yes'),
(11, 'posts_per_rss', '10', 'yes'),
(12, 'rss_use_excerpt', '0', 'yes'),
(13, 'mailserver_url', 'mail.example.com', 'yes'),
(14, 'mailserver_login', 'login@example.com', 'yes'),
(15, 'mailserver_pass', 'password', 'yes'),
(16, 'mailserver_port', '110', 'yes'),
(17, 'default_category', '1', 'yes'),
(18, 'default_comment_status', 'open', 'yes'),
(19, 'default_ping_status', 'open', 'yes'),
(20, 'default_pingback_flag', '1', 'yes'),
(21, 'posts_per_page', '10', 'yes'),
(22, 'date_format', 'F j, Y', 'yes'),
(23, 'time_format', 'g:i a', 'yes'),
(24, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(25, 'links_recently_updated_prepend', '<em>', 'yes'),
(26, 'links_recently_updated_append', '</em>', 'yes'),
(27, 'links_recently_updated_time', '120', 'yes'),
(28, 'comment_moderation', '0', 'yes'),
(29, 'moderation_notify', '1', 'yes'),
(30, 'permalink_structure', '', 'yes'),
(31, 'gzipcompression', '0', 'yes'),
(32, 'hack_file', '0', 'yes'),
(33, 'blog_charset', 'UTF-8', 'yes'),
(34, 'moderation_keys', '', 'no'),
(35, 'active_plugins', 'a:1:{i:0;s:27:"woocommerce/woocommerce.php";}', 'yes'),
(36, 'home', 'http://localhost/mandala', 'yes'),
(37, 'category_base', '', 'yes'),
(38, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(39, 'advanced_edit', '0', 'yes'),
(40, 'comment_max_links', '2', 'yes'),
(41, 'gmt_offset', '5.5', 'yes'),
(42, 'default_email_category', '1', 'yes'),
(43, 'recently_edited', '', 'no'),
(44, 'template', 'woostore', 'yes'),
(45, 'stylesheet', 'woostore', 'yes'),
(46, 'comment_whitelist', '1', 'yes'),
(47, 'blacklist_keys', '', 'no'),
(48, 'comment_registration', '0', 'yes'),
(49, 'html_type', 'text/html', 'yes'),
(50, 'use_trackback', '0', 'yes'),
(51, 'default_role', 'subscriber', 'yes'),
(52, 'db_version', '26691', 'yes'),
(53, 'uploads_use_yearmonth_folders', '1', 'yes'),
(54, 'upload_path', '', 'yes'),
(55, 'blog_public', '1', 'yes'),
(56, 'default_link_category', '2', 'yes'),
(57, 'show_on_front', 'posts', 'yes'),
(58, 'tag_base', '', 'yes'),
(59, 'show_avatars', '1', 'yes'),
(60, 'avatar_rating', 'G', 'yes'),
(61, 'upload_url_path', '', 'yes'),
(62, 'thumbnail_size_w', '150', 'yes'),
(63, 'thumbnail_size_h', '150', 'yes'),
(64, 'thumbnail_crop', '1', 'yes'),
(65, 'medium_size_w', '300', 'yes'),
(66, 'medium_size_h', '300', 'yes'),
(67, 'avatar_default', 'mystery', 'yes'),
(68, 'large_size_w', '1024', 'yes'),
(69, 'large_size_h', '1024', 'yes'),
(70, 'image_default_link_type', 'file', 'yes'),
(71, 'image_default_size', '', 'yes'),
(72, 'image_default_align', '', 'yes'),
(73, 'close_comments_for_old_posts', '0', 'yes'),
(74, 'close_comments_days_old', '14', 'yes'),
(75, 'thread_comments', '1', 'yes'),
(76, 'thread_comments_depth', '5', 'yes'),
(77, 'page_comments', '0', 'yes'),
(78, 'comments_per_page', '50', 'yes'),
(79, 'default_comments_page', 'newest', 'yes'),
(80, 'comment_order', 'asc', 'yes'),
(81, 'sticky_posts', 'a:0:{}', 'yes'),
(82, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(83, 'widget_text', 'a:0:{}', 'yes'),
(84, 'widget_rss', 'a:0:{}', 'yes'),
(85, 'uninstall_plugins', 'a:0:{}', 'no'),
(86, 'timezone_string', '', 'yes'),
(87, 'page_for_posts', '0', 'yes'),
(88, 'page_on_front', '0', 'yes'),
(89, 'default_post_format', '0', 'yes'),
(90, 'link_manager_enabled', '0', 'yes'),
(91, 'initial_db_version', '26691', 'yes'),
(92, 'ma_user_roles', 'a:7:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:115:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:9:"add_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;s:18:"manage_woocommerce";b:1;s:24:"view_woocommerce_reports";b:1;s:12:"edit_product";b:1;s:12:"read_product";b:1;s:14:"delete_product";b:1;s:13:"edit_products";b:1;s:20:"edit_others_products";b:1;s:16:"publish_products";b:1;s:21:"read_private_products";b:1;s:15:"delete_products";b:1;s:23:"delete_private_products";b:1;s:25:"delete_published_products";b:1;s:22:"delete_others_products";b:1;s:21:"edit_private_products";b:1;s:23:"edit_published_products";b:1;s:20:"manage_product_terms";b:1;s:18:"edit_product_terms";b:1;s:20:"delete_product_terms";b:1;s:20:"assign_product_terms";b:1;s:15:"edit_shop_order";b:1;s:15:"read_shop_order";b:1;s:17:"delete_shop_order";b:1;s:16:"edit_shop_orders";b:1;s:23:"edit_others_shop_orders";b:1;s:19:"publish_shop_orders";b:1;s:24:"read_private_shop_orders";b:1;s:18:"delete_shop_orders";b:1;s:26:"delete_private_shop_orders";b:1;s:28:"delete_published_shop_orders";b:1;s:25:"delete_others_shop_orders";b:1;s:24:"edit_private_shop_orders";b:1;s:26:"edit_published_shop_orders";b:1;s:23:"manage_shop_order_terms";b:1;s:21:"edit_shop_order_terms";b:1;s:23:"delete_shop_order_terms";b:1;s:23:"assign_shop_order_terms";b:1;s:16:"edit_shop_coupon";b:1;s:16:"read_shop_coupon";b:1;s:18:"delete_shop_coupon";b:1;s:17:"edit_shop_coupons";b:1;s:24:"edit_others_shop_coupons";b:1;s:20:"publish_shop_coupons";b:1;s:25:"read_private_shop_coupons";b:1;s:19:"delete_shop_coupons";b:1;s:27:"delete_private_shop_coupons";b:1;s:29:"delete_published_shop_coupons";b:1;s:26:"delete_others_shop_coupons";b:1;s:25:"edit_private_shop_coupons";b:1;s:27:"edit_published_shop_coupons";b:1;s:24:"manage_shop_coupon_terms";b:1;s:22:"edit_shop_coupon_terms";b:1;s:24:"delete_shop_coupon_terms";b:1;s:24:"assign_shop_coupon_terms";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}s:8:"customer";a:2:{s:4:"name";s:8:"Customer";s:12:"capabilities";a:3:{s:4:"read";b:1;s:10:"edit_posts";b:0;s:12:"delete_posts";b:0;}}s:12:"shop_manager";a:2:{s:4:"name";s:12:"Shop Manager";s:12:"capabilities";a:93:{s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:4:"read";b:1;s:18:"read_private_pages";b:1;s:18:"read_private_posts";b:1;s:10:"edit_users";b:1;s:10:"edit_posts";b:1;s:10:"edit_pages";b:1;s:20:"edit_published_posts";b:1;s:20:"edit_published_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"edit_private_posts";b:1;s:17:"edit_others_posts";b:1;s:17:"edit_others_pages";b:1;s:13:"publish_posts";b:1;s:13:"publish_pages";b:1;s:12:"delete_posts";b:1;s:12:"delete_pages";b:1;s:20:"delete_private_pages";b:1;s:20:"delete_private_posts";b:1;s:22:"delete_published_pages";b:1;s:22:"delete_published_posts";b:1;s:19:"delete_others_posts";b:1;s:19:"delete_others_pages";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:17:"moderate_comments";b:1;s:15:"unfiltered_html";b:1;s:12:"upload_files";b:1;s:6:"export";b:1;s:6:"import";b:1;s:10:"list_users";b:1;s:18:"manage_woocommerce";b:1;s:24:"view_woocommerce_reports";b:1;s:12:"edit_product";b:1;s:12:"read_product";b:1;s:14:"delete_product";b:1;s:13:"edit_products";b:1;s:20:"edit_others_products";b:1;s:16:"publish_products";b:1;s:21:"read_private_products";b:1;s:15:"delete_products";b:1;s:23:"delete_private_products";b:1;s:25:"delete_published_products";b:1;s:22:"delete_others_products";b:1;s:21:"edit_private_products";b:1;s:23:"edit_published_products";b:1;s:20:"manage_product_terms";b:1;s:18:"edit_product_terms";b:1;s:20:"delete_product_terms";b:1;s:20:"assign_product_terms";b:1;s:15:"edit_shop_order";b:1;s:15:"read_shop_order";b:1;s:17:"delete_shop_order";b:1;s:16:"edit_shop_orders";b:1;s:23:"edit_others_shop_orders";b:1;s:19:"publish_shop_orders";b:1;s:24:"read_private_shop_orders";b:1;s:18:"delete_shop_orders";b:1;s:26:"delete_private_shop_orders";b:1;s:28:"delete_published_shop_orders";b:1;s:25:"delete_others_shop_orders";b:1;s:24:"edit_private_shop_orders";b:1;s:26:"edit_published_shop_orders";b:1;s:23:"manage_shop_order_terms";b:1;s:21:"edit_shop_order_terms";b:1;s:23:"delete_shop_order_terms";b:1;s:23:"assign_shop_order_terms";b:1;s:16:"edit_shop_coupon";b:1;s:16:"read_shop_coupon";b:1;s:18:"delete_shop_coupon";b:1;s:17:"edit_shop_coupons";b:1;s:24:"edit_others_shop_coupons";b:1;s:20:"publish_shop_coupons";b:1;s:25:"read_private_shop_coupons";b:1;s:19:"delete_shop_coupons";b:1;s:27:"delete_private_shop_coupons";b:1;s:29:"delete_published_shop_coupons";b:1;s:26:"delete_others_shop_coupons";b:1;s:25:"edit_private_shop_coupons";b:1;s:27:"edit_published_shop_coupons";b:1;s:24:"manage_shop_coupon_terms";b:1;s:22:"edit_shop_coupon_terms";b:1;s:24:"delete_shop_coupon_terms";b:1;s:24:"assign_shop_coupon_terms";b:1;}}}', 'yes'),
(93, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(94, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(95, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(96, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(97, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(98, 'sidebars_widgets', 'a:7:{s:19:"wp_inactive_widgets";a:0:{}s:7:"primary";a:5:{i:0;s:14:"recent-posts-2";i:1;s:17:"recent-comments-2";i:2;s:10:"archives-2";i:3;s:12:"categories-2";i:4;s:6:"meta-2";}s:8:"footer-1";a:0:{}s:8:"footer-2";a:0:{}s:8:"footer-3";N;s:8:"footer-4";N;s:13:"array_version";i:3;}', 'yes'),
(99, 'cron', 'a:7:{i:1394650570;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1394651805;a:1:{s:28:"woocommerce_cleanup_sessions";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1394652180;a:1:{s:20:"wp_maybe_auto_update";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1394668800;a:1:{s:27:"woocommerce_scheduled_sales";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1394693867;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1394695127;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(101, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:2:{i:0;O:8:"stdClass":10:{s:8:"response";s:7:"upgrade";s:8:"download";s:41:"https://wordpress.org/wordpress-3.8.1.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:41:"https://wordpress.org/wordpress-3.8.1.zip";s:10:"no_content";s:52:"https://wordpress.org/wordpress-3.8.1-no-content.zip";s:11:"new_bundled";s:53:"https://wordpress.org/wordpress-3.8.1-new-bundled.zip";s:7:"partial";s:51:"https://wordpress.org/wordpress-3.8.1-partial-0.zip";s:8:"rollback";b:0;}s:7:"current";s:5:"3.8.1";s:7:"version";s:5:"3.8.1";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"3.8";s:15:"partial_version";s:3:"3.8";}i:1;O:8:"stdClass":10:{s:8:"response";s:10:"autoupdate";s:8:"download";s:41:"https://wordpress.org/wordpress-3.8.1.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:41:"https://wordpress.org/wordpress-3.8.1.zip";s:10:"no_content";s:52:"https://wordpress.org/wordpress-3.8.1-no-content.zip";s:11:"new_bundled";s:53:"https://wordpress.org/wordpress-3.8.1-new-bundled.zip";s:7:"partial";s:51:"https://wordpress.org/wordpress-3.8.1-partial-0.zip";s:8:"rollback";s:52:"https://wordpress.org/wordpress-3.8.1-rollback-0.zip";}s:7:"current";s:5:"3.8.1";s:7:"version";s:5:"3.8.1";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"3.8";s:15:"partial_version";s:3:"3.8";}}s:12:"last_checked";i:1394607573;s:15:"version_checked";s:3:"3.8";s:12:"translations";a:0:{}}', 'yes'),
(104, '_site_transient_update_plugins', 'O:8:"stdClass":4:{s:12:"last_checked";i:1394608584;s:7:"checked";a:3:{s:19:"akismet/akismet.php";s:5:"2.5.9";s:9:"hello.php";s:3:"1.6";s:27:"woocommerce/woocommerce.php";s:5:"2.1.5";}s:8:"response";a:0:{}s:12:"translations";a:0:{}}', 'yes'),
(105, '_site_transient_timeout_theme_roots', '1394609780', 'yes'),
(106, '_site_transient_theme_roots', 'a:4:{s:14:"twentyfourteen";s:7:"/themes";s:14:"twentythirteen";s:7:"/themes";s:12:"twentytwelve";s:7:"/themes";s:8:"woostore";s:7:"/themes";}', 'yes'),
(107, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1394607998;s:7:"checked";a:4:{s:14:"twentyfourteen";s:3:"1.0";s:14:"twentythirteen";s:3:"1.1";s:12:"twentytwelve";s:3:"1.3";s:8:"woostore";s:5:"1.2.1";}s:8:"response";a:0:{}s:12:"translations";a:0:{}}', 'yes'),
(108, '_site_transient_timeout_browser_113b8ea79b600d9e3f532ca400c62ae8', '1395212271', 'yes'),
(109, '_site_transient_browser_113b8ea79b600d9e3f532ca400c62ae8', 'a:9:{s:8:"platform";s:5:"Linux";s:4:"name";s:6:"Chrome";s:7:"version";s:12:"31.0.1650.63";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(111, 'can_compress_scripts', '1', 'yes'),
(112, '_transient_timeout_feed_b9388c83948825c1edaef0d856b7b109', '1394650706', 'no'),
(113, '_transient_feed_b9388c83948825c1edaef0d856b7b109', 'a:4:{s:5:"child";a:1:{s:0:"";a:1:{s:3:"rss";a:1:{i:0;a:6:{s:4:"data";s:3:"\n	\n";s:7:"attribs";a:1:{s:0:"";a:1:{s:7:"version";s:3:"2.0";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:1:{s:0:"";a:1:{s:7:"channel";a:1:{i:0;a:6:{s:4:"data";s:72:"\n		\n		\n		\n		\n		\n		\n				\n\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n\n	";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:39:"WordPress Plugins » View: Most Popular";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:44:"http://wordpress.org/plugins/browse/popular/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:39:"WordPress Plugins » View: Most Popular";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"language";a:1:{i:0;a:5:{s:4:"data";s:5:"en-US";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 12 Mar 2014 06:46:41 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:9:"generator";a:1:{i:0;a:5:{s:4:"data";s:25:"http://bbpress.org/?v=1.1";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"item";a:15:{i:0;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:14:"Contact Form 7";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:54:"http://wordpress.org/plugins/contact-form-7/#post-2141";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 02 Aug 2007 12:45:03 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"2141@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:54:"Just another contact form plugin. Simple but flexible.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:16:"Takayuki Miyoshi";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:1;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:24:"Jetpack by WordPress.com";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:48:"http://wordpress.org/plugins/jetpack/#post-23862";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 20 Jan 2011 02:21:38 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"23862@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:104:"Supercharge your WordPress site with powerful features previously only available to WordPress.com users.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:9:"Tim Moore";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:2;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:22:"WordPress SEO by Yoast";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:53:"http://wordpress.org/plugins/wordpress-seo/#post-8321";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 01 Jan 2009 20:34:44 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"8321@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:131:"Improve your WordPress SEO: Write better content and have a fully optimized WordPress site using the WordPress SEO plugin by Yoast.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Joost de Valk";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:3;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:33:"WooCommerce - excelling eCommerce";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:52:"http://wordpress.org/plugins/woocommerce/#post-29860";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 05 Sep 2011 08:13:36 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"29860@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:97:"WooCommerce is a powerful, extendable eCommerce plugin that helps you sell anything. Beautifully.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:9:"WooThemes";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:4;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:15:"NextGEN Gallery";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:55:"http://wordpress.org/plugins/nextgen-gallery/#post-1169";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 23 Apr 2007 20:08:06 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"1169@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:120:"The most popular WordPress gallery plugin and one of the most popular plugins of all time with over 9 million downloads.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:9:"Alex Rabe";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:5;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:19:"All in One SEO Pack";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:58:"http://wordpress.org/plugins/all-in-one-seo-pack/#post-753";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 30 Mar 2007 20:08:18 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:33:"753@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:126:"All in One SEO Pack is a WordPress SEO plugin to automatically optimize your WordPress blog for Search Engines such as Google.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:8:"uberdose";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:6;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:18:"WordPress Importer";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:59:"http://wordpress.org/plugins/wordpress-importer/#post-18101";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 20 May 2010 17:42:45 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"18101@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:101:"Import posts, pages, comments, custom fields, categories, tags and more from a WordPress export file.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:14:"Brian Colinger";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:7;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:21:"WPtouch Mobile Plugin";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:47:"http://wordpress.org/plugins/wptouch/#post-5468";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 01 May 2008 04:58:09 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"5468@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:63:"Create a slick mobile WordPress website with just a few clicks.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:17:"BraveNewCode Inc.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:8;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:19:"Google XML Sitemaps";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:63:"http://wordpress.org/plugins/google-sitemap-generator/#post-132";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 09 Mar 2007 22:31:32 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:33:"132@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:105:"This plugin will generate a special XML sitemap which will help search engines to better index your blog.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:5:"Arnee";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:9;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:7:"Akismet";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:45:"http://wordpress.org/plugins/akismet/#post-15";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 09 Mar 2007 22:11:30 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:32:"15@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:98:"Akismet checks your comments against the Akismet web service to see if they look like spam or not.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:14:"Matt Mullenweg";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:10;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:18:"Better WP Security";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:59:"http://wordpress.org/plugins/better-wp-security/#post-21738";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 22 Oct 2010 22:06:05 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"21738@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:107:"The easiest, most effective way to secure WordPress. Improve the security of any WordPress site in seconds.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Chris Wiegman";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:11;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:30:"Google Analytics for WordPress";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:70:"http://wordpress.org/plugins/google-analytics-for-wordpress/#post-2316";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 14 Sep 2007 12:15:27 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"2316@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:145:"Track your WordPress site easily and with lots of metadata: views per author &#38; category, automatic tracking of outbound clicks and pageviews.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Joost de Valk";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:12;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:12:"Contact Form";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:60:"http://wordpress.org/plugins/contact-form-plugin/#post-26890";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 26 May 2011 07:34:58 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"26890@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:43:"Add Contact Form to your WordPress website.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:11:"bestwebsoft";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:13;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:33:"Google Analytics Dashboard for WP";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:74:"http://wordpress.org/plugins/google-analytics-dashboard-for-wp/#post-50539";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Sun, 10 Mar 2013 17:07:11 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"50539@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:148:"Displays Google Analytics Reports and Real-Time Statistics in your Dashboard. Automatically inserts the tracking code in every page of your website.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:10:"Alin Marcu";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:14;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:11:"WP-PageNavi";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:50:"http://wordpress.org/plugins/wp-pagenavi/#post-363";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 09 Mar 2007 23:17:57 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:33:"363@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:49:"Adds a more advanced paging navigation interface.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:11:"Lester Chan";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}}}s:27:"http://www.w3.org/2005/Atom";a:1:{s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:0:"";a:3:{s:4:"href";s:45:"http://wordpress.org/plugins/rss/view/popular";s:3:"rel";s:4:"self";s:4:"type";s:19:"application/rss+xml";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}}}}}}}}s:4:"type";i:128;s:7:"headers";a:7:{s:6:"server";s:5:"nginx";s:4:"date";s:29:"Wed, 12 Mar 2014 06:58:21 GMT";s:12:"content-type";s:23:"text/xml; charset=UTF-8";s:10:"connection";s:5:"close";s:4:"vary";s:15:"Accept-Encoding";s:13:"last-modified";s:29:"Thu, 02 Aug 2007 12:45:03 GMT";s:4:"x-nc";s:11:"HIT lax 250";}s:5:"build";s:14:"20130911040210";}', 'no'),
(114, '_transient_timeout_feed_mod_b9388c83948825c1edaef0d856b7b109', '1394650706', 'no'),
(115, '_transient_feed_mod_b9388c83948825c1edaef0d856b7b109', '1394607506', 'no'),
(116, '_transient_timeout_plugin_slugs', '1394695007', 'no'),
(117, '_transient_plugin_slugs', 'a:3:{i:0;s:19:"akismet/akismet.php";i:1;s:9:"hello.php";i:2;s:27:"woocommerce/woocommerce.php";}', 'no'),
(118, '_transient_timeout_dash_4077549d03da2e451c8b5f002294ff51', '1394650706', 'no'),
(119, '_transient_dash_4077549d03da2e451c8b5f002294ff51', '<div class="rss-widget"><p><strong>RSS Error</strong>: WP HTTP Error: Operation timed out after 10000 milliseconds with 14480 bytes received</p></div><div class="rss-widget"><p><strong>RSS Error</strong>: WP HTTP Error: Operation timed out after 10001 milliseconds with 53576 out of 189441 bytes received</p></div><div class="rss-widget"><ul><li class=''dashboard-news-plugin''><span>Popular Plugin:</span> <a href=''http://wordpress.org/plugins/better-wp-security/'' class=''dashboard-news-plugin-link''>Better WP Security</a></h5>&nbsp;<span>(<a href=''plugin-install.php?tab=plugin-information&amp;plugin=better-wp-security&amp;_wpnonce=67d2e64bdd&amp;TB_iframe=true&amp;width=600&amp;height=800'' class=''thickbox'' title=''Better WP Security''>Install</a>)</span></li></ul></div>', 'no'),
(120, 'ftp_credentials', 'a:3:{s:8:"hostname";s:9:"localhost";s:8:"username";s:7:"neaGaze";s:15:"connection_type";s:3:"ftp";}', 'yes'),
(121, '_site_transient_timeout_wporg_theme_feature_list', '1394618656', 'yes'),
(122, '_site_transient_wporg_theme_feature_list', 'a:5:{s:6:"Colors";a:15:{i:0;s:5:"black";i:1;s:4:"blue";i:2;s:5:"brown";i:3;s:4:"gray";i:4;s:5:"green";i:5;s:6:"orange";i:6;s:4:"pink";i:7;s:6:"purple";i:8;s:3:"red";i:9;s:6:"silver";i:10;s:3:"tan";i:11;s:5:"white";i:12;s:6:"yellow";i:13;s:4:"dark";i:14;s:5:"light";}s:7:"Columns";a:6:{i:0;s:10:"one-column";i:1;s:11:"two-columns";i:2;s:13:"three-columns";i:3;s:12:"four-columns";i:4;s:12:"left-sidebar";i:5;s:13:"right-sidebar";}s:6:"Layout";a:3:{i:0;s:12:"fixed-layout";i:1;s:12:"fluid-layout";i:2;s:17:"responsive-layout";}s:8:"Features";a:20:{i:0;s:19:"accessibility-ready";i:1;s:8:"blavatar";i:2;s:10:"buddypress";i:3;s:17:"custom-background";i:4;s:13:"custom-colors";i:5;s:13:"custom-header";i:6;s:11:"custom-menu";i:7;s:12:"editor-style";i:8;s:21:"featured-image-header";i:9;s:15:"featured-images";i:10;s:15:"flexible-header";i:11;s:20:"front-page-post-form";i:12;s:19:"full-width-template";i:13;s:12:"microformats";i:14;s:12:"post-formats";i:15;s:20:"rtl-language-support";i:16;s:11:"sticky-post";i:17;s:13:"theme-options";i:18;s:17:"threaded-comments";i:19;s:17:"translation-ready";}s:7:"Subject";a:3:{i:0;s:7:"holiday";i:1;s:13:"photoblogging";i:2;s:8:"seasonal";}}', 'yes'),
(123, 'theme_mods_twentyfourteen', 'a:1:{s:16:"sidebars_widgets";a:2:{s:4:"time";i:1394607998;s:4:"data";a:4:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}}}}', 'yes'),
(124, 'current_theme', 'WooStore', 'yes'),
(125, 'theme_mods_woostore', 'a:1:{i:0;b:0;}', 'yes'),
(126, 'theme_switched', '', 'yes'),
(127, 'woo_timthumb_update', '', 'yes'),
(128, 'woocommerce_thumbnail_image_width', '180', 'yes'),
(129, 'woocommerce_thumbnail_image_height', '180', 'yes'),
(130, 'woocommerce_single_image_width', '320', 'yes'),
(131, 'woocommerce_single_image_height', '320', 'yes'),
(132, 'woocommerce_catalog_image_width', '180', 'yes'),
(133, 'woocommerce_catalog_image_height', '180', 'yes'),
(134, 'woo_framework_version', '4.8.3', 'yes'),
(135, 'woo_custom_seo_template', 'a:3:{i:0;a:5:{s:4:"name";s:10:"seo_info_1";s:3:"std";s:0:"";s:5:"label";s:4:"SEO ";s:4:"type";s:4:"info";s:4:"desc";s:190:"Additional SEO custom fields available: <strong>Custom Page Titles</strong>. Go to <a href="http://localhost/mandala/wp-admin/admin.php?page=woothemes_seo">SEO Settings</a> page to activate.";}i:1;a:5:{s:4:"name";s:10:"seo_follow";s:3:"std";s:5:"false";s:5:"label";s:16:"SEO - Set follow";s:4:"type";s:8:"checkbox";s:4:"desc";s:77:"Make links from this post/page <strong>followable</strong> by search engines.";}i:2;a:5:{s:4:"name";s:11:"seo_noindex";s:3:"std";s:5:"false";s:5:"label";s:13:"SEO - Noindex";s:4:"type";s:8:"checkbox";s:4:"desc";s:56:"Set the Page/Post to not be indexed by a search engines.";}}', 'yes'),
(136, 'woo_options', 'a:84:{s:18:"woo_alt_stylesheet";s:11:"default.css";s:8:"woo_logo";s:0:"";s:13:"woo_texttitle";s:5:"false";s:19:"woo_font_site_title";a:5:{s:4:"size";s:2:"30";s:4:"unit";s:2:"px";s:4:"face";s:11:"Droid Serif";s:5:"style";s:4:"bold";s:5:"color";s:7:"#333333";}s:11:"woo_tagline";s:5:"false";s:16:"woo_font_tagline";a:5:{s:4:"size";s:2:"12";s:4:"unit";s:2:"px";s:4:"face";s:10:"Droid Sans";s:5:"style";s:6:"normal";s:5:"color";s:7:"#999999";}s:18:"woo_custom_favicon";s:0:"";s:20:"woo_google_analytics";s:0:"";s:12:"woo_feed_url";s:0:"";s:19:"woo_subscribe_email";s:0:"";s:21:"woo_contactform_email";s:0:"";s:14:"woo_custom_css";s:0:"";s:12:"woo_comments";s:4:"post";s:16:"woo_post_content";s:7:"excerpt";s:15:"woo_post_author";s:4:"true";s:20:"woo_breadcrumbs_show";s:5:"false";s:19:"woo_pagination_type";s:15:"paginated_links";s:14:"woo_body_color";s:7:"#bed3ed";s:12:"woo_body_img";s:0:"";s:15:"woo_body_repeat";s:9:"no-repeat";s:12:"woo_body_pos";s:8:"top left";s:14:"woo_link_color";s:0:"";s:20:"woo_link_hover_color";s:0:"";s:16:"woo_button_color";s:0:"";s:14:"woo_typography";s:5:"false";s:13:"woo_font_body";a:5:{s:4:"size";s:2:"12";s:4:"unit";s:2:"px";s:4:"face";s:17:"Arial, sans-serif";s:5:"style";s:6:"normal";s:5:"color";s:7:"#555555";}s:12:"woo_font_nav";a:5:{s:4:"size";s:2:"14";s:4:"unit";s:2:"px";s:4:"face";s:17:"Arial, sans-serif";s:5:"style";s:6:"normal";s:5:"color";s:7:"#555555";}s:19:"woo_font_post_title";a:5:{s:4:"size";s:2:"24";s:4:"unit";s:2:"px";s:4:"face";s:17:"Arial, sans-serif";s:5:"style";s:4:"bold";s:5:"color";s:7:"#222222";}s:18:"woo_font_post_meta";a:5:{s:4:"size";s:2:"12";s:4:"unit";s:2:"px";s:4:"face";s:17:"Arial, sans-serif";s:5:"style";s:6:"normal";s:5:"color";s:7:"#999999";}s:19:"woo_font_post_entry";a:5:{s:4:"size";s:2:"14";s:4:"unit";s:2:"px";s:4:"face";s:17:"Arial, sans-serif";s:5:"style";s:6:"normal";s:5:"color";s:7:"#555555";}s:22:"woo_font_widget_titles";a:5:{s:4:"size";s:2:"16";s:4:"unit";s:2:"px";s:4:"face";s:17:"Arial, sans-serif";s:5:"style";s:4:"bold";s:5:"color";s:7:"#555555";}s:10:"woo_slider";s:4:"true";s:20:"woo_homepage_content";s:8:"Disabled";s:26:"woo_featured_product_style";s:6:"slider";s:28:"woo_featured_product_entries";s:1:"4";s:26:"woo_recent_product_entries";s:1:"6";s:18:"woo_slider_entries";s:1:"3";s:17:"woo_slider_effect";s:5:"slide";s:16:"woo_slider_speed";s:3:"0.6";s:16:"woo_slider_hover";s:5:"false";s:17:"woo_slider_random";s:5:"false";s:21:"woo_slider_autoheight";s:5:"false";s:23:"woo_slider_fixed_height";s:3:"320";s:15:"woo_slider_auto";s:4:"true";s:19:"woo_slider_interval";s:1:"6";s:16:"woo_slider_title";s:4:"true";s:18:"woo_slider_content";s:4:"true";s:19:"woo_slider_nextprev";s:4:"true";s:21:"woo_slider_pagination";s:4:"true";s:15:"woo_site_layout";s:19:"layout-left-content";s:18:"woo_wpthumb_notice";s:0:"";s:22:"woo_post_image_support";s:4:"true";s:14:"woo_pis_resize";s:4:"true";s:17:"woo_pis_hard_crop";s:4:"true";s:10:"woo_resize";s:4:"true";s:12:"woo_auto_img";s:5:"false";s:11:"woo_thumb_w";s:3:"100";s:11:"woo_thumb_h";s:3:"100";s:15:"woo_thumb_align";s:9:"alignleft";s:16:"woo_thumb_single";s:5:"false";s:12:"woo_single_w";s:3:"200";s:12:"woo_single_h";s:3:"200";s:22:"woo_thumb_single_align";s:10:"alignright";s:13:"woo_rss_thumb";s:5:"false";s:19:"woo_footer_sidebars";s:1:"4";s:19:"woo_footer_aff_link";s:0:"";s:15:"woo_footer_left";s:5:"false";s:20:"woo_footer_left_text";s:0:"";s:16:"woo_footer_right";s:5:"false";s:21:"woo_footer_right_text";s:0:"";s:11:"woo_connect";s:5:"false";s:17:"woo_connect_title";s:0:"";s:19:"woo_connect_content";s:0:"";s:25:"woo_connect_newsletter_id";s:0:"";s:30:"woo_connect_mailchimp_list_url";s:0:"";s:15:"woo_connect_rss";s:4:"true";s:19:"woo_connect_twitter";s:0:"";s:20:"woo_connect_facebook";s:0:"";s:19:"woo_connect_youtube";s:0:"";s:18:"woo_connect_flickr";s:0:"";s:20:"woo_connect_linkedin";s:0:"";s:21:"woo_connect_delicious";s:0:"";s:22:"woo_connect_googleplus";s:0:"";s:19:"woo_connect_related";s:4:"true";}', 'yes');
INSERT INTO `ma_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(137, 'woo_template', 'a:91:{i:0;a:3:{s:4:"name";s:16:"General Settings";s:4:"type";s:7:"heading";s:4:"icon";s:7:"general";}i:1;a:6:{s:4:"name";s:16:"Theme Stylesheet";s:4:"desc";s:44:"Select your themes alternative color scheme.";s:2:"id";s:18:"woo_alt_stylesheet";s:3:"std";s:11:"default.css";s:4:"type";s:6:"select";s:7:"options";a:5:{i:0;s:13:"pink-blue.css";i:1;s:15:"green-brown.css";i:2;s:11:"default.css";i:3;s:15:"blue-orange.css";i:4;s:15:"black-white.css";}}i:2;a:5:{s:4:"name";s:11:"Custom Logo";s:4:"desc";s:63:"Upload a logo for your theme, or specify an image URL directly.";s:2:"id";s:8:"woo_logo";s:3:"std";s:0:"";s:4:"type";s:6:"upload";}i:3;a:6:{s:4:"name";s:10:"Text Title";s:4:"desc";s:152:"Enable text-based Site Title and Tagline. Setup title & tagline in <a href=''http://localhost/mandala/wp-admin/options-general.php''>General Settings</a>.";s:2:"id";s:13:"woo_texttitle";s:3:"std";s:5:"false";s:5:"class";s:9:"collapsed";s:4:"type";s:8:"checkbox";}i:4;a:6:{s:4:"name";s:10:"Site Title";s:4:"desc";s:33:"Change the site title typography.";s:2:"id";s:19:"woo_font_site_title";s:3:"std";a:5:{s:4:"size";s:2:"30";s:4:"unit";s:2:"px";s:4:"face";s:11:"Droid Serif";s:5:"style";s:4:"bold";s:5:"color";s:7:"#333333";}s:5:"class";s:6:"hidden";s:4:"type";s:10:"typography";}i:5;a:6:{s:4:"name";s:16:"Site Description";s:4:"desc";s:53:"Enable the site description/tagline under site title.";s:2:"id";s:11:"woo_tagline";s:5:"class";s:6:"hidden";s:3:"std";s:5:"false";s:4:"type";s:8:"checkbox";}i:6;a:6:{s:4:"name";s:16:"Site Description";s:4:"desc";s:39:"Change the site description typography.";s:2:"id";s:16:"woo_font_tagline";s:3:"std";a:5:{s:4:"size";s:2:"12";s:4:"unit";s:2:"px";s:4:"face";s:10:"Droid Sans";s:5:"style";s:0:"";s:5:"color";s:7:"#999999";}s:5:"class";s:11:"hidden last";s:4:"type";s:10:"typography";}i:7;a:5:{s:4:"name";s:14:"Custom Favicon";s:4:"desc";s:113:"Upload a 16px x 16px <a href=''http://www.faviconr.com/''>ico image</a> that will represent your website''s favicon.";s:2:"id";s:18:"woo_custom_favicon";s:3:"std";s:0:"";s:4:"type";s:6:"upload";}i:8;a:5:{s:4:"name";s:13:"Tracking Code";s:4:"desc";s:117:"Paste your Google Analytics (or other) tracking code here. This will be added into the footer template of your theme.";s:2:"id";s:20:"woo_google_analytics";s:3:"std";s:0:"";s:4:"type";s:8:"textarea";}i:9;a:5:{s:4:"name";s:7:"RSS URL";s:4:"desc";s:51:"Enter your preferred RSS URL. (Feedburner or other)";s:2:"id";s:12:"woo_feed_url";s:3:"std";s:0:"";s:4:"type";s:4:"text";}i:10;a:5:{s:4:"name";s:23:"E-Mail Subscription URL";s:4:"desc";s:67:"Enter your preferred E-mail subscription URL. (Feedburner or other)";s:2:"id";s:19:"woo_subscribe_email";s:3:"std";s:0:"";s:4:"type";s:4:"text";}i:11;a:5:{s:4:"name";s:19:"Contact Form E-Mail";s:4:"desc";s:156:"Enter your E-mail address to use on the Contact Form Page Template. Add the contact form by adding a new page and selecting ''Contact Form'' as page template.";s:2:"id";s:21:"woo_contactform_email";s:3:"std";s:0:"";s:4:"type";s:4:"text";}i:12;a:5:{s:4:"name";s:10:"Custom CSS";s:4:"desc";s:62:"Quickly add some CSS to your theme by adding it to this block.";s:2:"id";s:14:"woo_custom_css";s:3:"std";s:0:"";s:4:"type";s:8:"textarea";}i:13;a:5:{s:4:"name";s:18:"Post/Page Comments";s:4:"desc";s:69:"Select if you want to enable/disable comments on posts and/or pages. ";s:2:"id";s:12:"woo_comments";s:4:"type";s:7:"select2";s:7:"options";a:4:{s:4:"post";s:10:"Posts Only";s:4:"page";s:10:"Pages Only";s:4:"both";s:13:"Pages / Posts";s:4:"none";s:4:"None";}}i:14;a:5:{s:4:"name";s:12:"Post Content";s:4:"desc";s:69:"Select if you want to show the full content or the excerpt on posts. ";s:2:"id";s:16:"woo_post_content";s:4:"type";s:7:"select2";s:7:"options";a:2:{s:7:"excerpt";s:11:"The Excerpt";s:7:"content";s:12:"Full Content";}}i:15;a:5:{s:4:"name";s:15:"Post Author Box";s:4:"desc";s:151:"This will enable the post author box on the single posts page. Edit description in <a href=''http://localhost/mandala/wp-admin/profile.php''>Profile</a>.";s:2:"id";s:15:"woo_post_author";s:3:"std";s:4:"true";s:4:"type";s:8:"checkbox";}i:16;a:5:{s:4:"name";s:19:"Display Breadcrumbs";s:4:"desc";s:57:"Display dynamic breadcrumbs on each page of your website.";s:2:"id";s:20:"woo_breadcrumbs_show";s:3:"std";s:5:"false";s:4:"type";s:8:"checkbox";}i:17;a:5:{s:4:"name";s:16:"Pagination Style";s:4:"desc";s:65:"Select the style of pagination you would like to use on the blog.";s:2:"id";s:19:"woo_pagination_type";s:4:"type";s:7:"select2";s:7:"options";a:2:{s:15:"paginated_links";s:7:"Numbers";s:6:"simple";s:13:"Next/Previous";}}i:18;a:3:{s:4:"name";s:15:"Styling Options";s:4:"type";s:7:"heading";s:4:"icon";s:7:"styling";}i:19;a:5:{s:4:"name";s:16:"Background Color";s:4:"desc";s:66:"Pick a custom color for background color of the theme e.g. #697e09";s:2:"id";s:14:"woo_body_color";s:3:"std";s:0:"";s:4:"type";s:5:"color";}i:20;a:5:{s:4:"name";s:16:"Background Image";s:4:"desc";s:42:"Upload an image for the theme''s background";s:2:"id";s:12:"woo_body_img";s:3:"std";s:0:"";s:4:"type";s:6:"upload";}i:21;a:6:{s:4:"name";s:23:"Background Image Repeat";s:4:"desc";s:56:"Select how you would like to repeat the background-image";s:2:"id";s:15:"woo_body_repeat";s:3:"std";s:9:"no-repeat";s:4:"type";s:6:"select";s:7:"options";a:4:{i:0;s:9:"no-repeat";i:1;s:8:"repeat-x";i:2;s:8:"repeat-y";i:3;s:6:"repeat";}}i:22;a:6:{s:4:"name";s:25:"Background Image Position";s:4:"desc";s:52:"Select how you would like to position the background";s:2:"id";s:12:"woo_body_pos";s:3:"std";s:3:"top";s:4:"type";s:6:"select";s:7:"options";a:9:{i:0;s:8:"top left";i:1;s:10:"top center";i:2;s:9:"top right";i:3;s:11:"center left";i:4;s:13:"center center";i:5;s:12:"center right";i:6;s:11:"bottom left";i:7;s:13:"bottom center";i:8;s:12:"bottom right";}}i:23;a:5:{s:4:"name";s:10:"Link Color";s:4:"desc";s:66:"Pick a custom color for links or add a hex color code e.g. #697e09";s:2:"id";s:14:"woo_link_color";s:3:"std";s:0:"";s:4:"type";s:5:"color";}i:24;a:5:{s:4:"name";s:16:"Link Hover Color";s:4:"desc";s:72:"Pick a custom color for links hover or add a hex color code e.g. #697e09";s:2:"id";s:20:"woo_link_hover_color";s:3:"std";s:0:"";s:4:"type";s:5:"color";}i:25;a:5:{s:4:"name";s:12:"Button Color";s:4:"desc";s:68:"Pick a custom color for buttons or add a hex color code e.g. #697e09";s:2:"id";s:16:"woo_button_color";s:3:"std";s:0:"";s:4:"type";s:5:"color";}i:26;a:3:{s:4:"name";s:10:"Typography";s:4:"type";s:7:"heading";s:4:"icon";s:10:"typography";}i:27;a:5:{s:4:"name";s:24:"Enable Custom Typography";s:4:"desc";s:100:"Enable the use of custom typography for your site. Custom styling will be output in your sites HEAD.";s:2:"id";s:14:"woo_typography";s:3:"std";s:5:"false";s:4:"type";s:8:"checkbox";}i:28;a:5:{s:4:"name";s:18:"General Typography";s:4:"desc";s:24:"Change the general font.";s:2:"id";s:13:"woo_font_body";s:3:"std";a:5:{s:4:"size";s:2:"12";s:4:"unit";s:2:"px";s:4:"face";s:5:"Arial";s:5:"style";s:0:"";s:5:"color";s:7:"#555555";}s:4:"type";s:10:"typography";}i:29;a:5:{s:4:"name";s:10:"Navigation";s:4:"desc";s:27:"Change the navigation font.";s:2:"id";s:12:"woo_font_nav";s:3:"std";a:5:{s:4:"size";s:2:"14";s:4:"unit";s:2:"px";s:4:"face";s:5:"Arial";s:5:"style";s:0:"";s:5:"color";s:7:"#555555";}s:4:"type";s:10:"typography";}i:30;a:5:{s:4:"name";s:10:"Post Title";s:4:"desc";s:22:"Change the post title.";s:2:"id";s:19:"woo_font_post_title";s:3:"std";a:5:{s:4:"size";s:2:"24";s:4:"unit";s:2:"px";s:4:"face";s:5:"Arial";s:5:"style";s:4:"bold";s:5:"color";s:7:"#222222";}s:4:"type";s:10:"typography";}i:31;a:5:{s:4:"name";s:9:"Post Meta";s:4:"desc";s:21:"Change the post meta.";s:2:"id";s:18:"woo_font_post_meta";s:3:"std";a:5:{s:4:"size";s:2:"12";s:4:"unit";s:2:"px";s:4:"face";s:5:"Arial";s:5:"style";s:0:"";s:5:"color";s:7:"#999999";}s:4:"type";s:10:"typography";}i:32;a:5:{s:4:"name";s:10:"Post Entry";s:4:"desc";s:22:"Change the post entry.";s:2:"id";s:19:"woo_font_post_entry";s:3:"std";a:5:{s:4:"size";s:2:"14";s:4:"unit";s:2:"px";s:4:"face";s:5:"Arial";s:5:"style";s:0:"";s:5:"color";s:7:"#555555";}s:4:"type";s:10:"typography";}i:33;a:5:{s:4:"name";s:13:"Widget Titles";s:4:"desc";s:25:"Change the widget titles.";s:2:"id";s:22:"woo_font_widget_titles";s:3:"std";a:5:{s:4:"size";s:2:"16";s:4:"unit";s:2:"px";s:4:"face";s:5:"Arial";s:5:"style";s:4:"bold";s:5:"color";s:7:"#555555";}s:4:"type";s:10:"typography";}i:34;a:3:{s:4:"name";s:15:"Homepage Layout";s:4:"icon";s:8:"homepage";s:4:"type";s:7:"heading";}i:35;a:5:{s:4:"name";s:22:"Enable Homepage Slider";s:4:"desc";s:69:"Enable the slider on the homepage. Setup slider in ''Slider Settings''.";s:2:"id";s:10:"woo_slider";s:3:"std";s:4:"true";s:4:"type";s:8:"checkbox";}i:36;a:6:{s:4:"name";s:16:"Homepage content";s:4:"desc";s:122:"(Optional) Select a page or latest blog post which will show on the front page <strong>below</strong> the homepage slider.";s:2:"id";s:20:"woo_homepage_content";s:3:"std";s:14:"Select a page:";s:4:"type";s:6:"select";s:7:"options";a:7:{i:0;s:8:"Disabled";i:1;s:21:"Show latest blog post";i:2;s:11:"sample-page";i:3;s:4:"shop";i:4;s:4:"cart";i:5;s:8:"checkout";i:6;s:10:"my-account";}}i:37;a:5:{s:4:"name";s:26:"Homepage Featured Products";s:4:"desc";s:54:"Display featured products as a slider or a static grid";s:2:"id";s:26:"woo_featured_product_style";s:4:"type";s:7:"select2";s:7:"options";a:2:{s:6:"slider";s:6:"Slider";s:6:"simple";s:11:"Static grid";}}i:38;a:6:{s:4:"name";s:34:"Homepage Featured Products Entries";s:4:"desc";s:87:"Select the number of entries that should appear in the Homepage Featured Products area.";s:2:"id";s:28:"woo_featured_product_entries";s:3:"std";s:1:"4";s:4:"type";s:6:"select";s:7:"options";a:20:{i:0;s:16:"Select a number:";i:1;s:1:"1";i:2;s:1:"2";i:3;s:1:"3";i:4;s:1:"4";i:5;s:1:"5";i:6;s:1:"6";i:7;s:1:"7";i:8;s:1:"8";i:9;s:1:"9";i:10;s:2:"10";i:11;s:2:"11";i:12;s:2:"12";i:13;s:2:"13";i:14;s:2:"14";i:15;s:2:"15";i:16;s:2:"16";i:17;s:2:"17";i:18;s:2:"18";i:19;s:2:"19";}}i:39;a:6:{s:4:"name";s:32:"Homepage Recent Products Entries";s:4:"desc";s:85:"Select the number of entries that should appear in the Homepage Recent Products area.";s:2:"id";s:26:"woo_recent_product_entries";s:3:"std";s:1:"6";s:4:"type";s:6:"select";s:7:"options";a:20:{i:0;s:16:"Select a number:";i:1;s:1:"1";i:2;s:1:"2";i:3;s:1:"3";i:4;s:1:"4";i:5;s:1:"5";i:6;s:1:"6";i:7;s:1:"7";i:8;s:1:"8";i:9;s:1:"9";i:10;s:2:"10";i:11;s:2:"11";i:12;s:2:"12";i:13;s:2:"13";i:14;s:2:"14";i:15;s:2:"15";i:16;s:2:"16";i:17;s:2:"17";i:18;s:2:"18";i:19;s:2:"19";}}i:40;a:3:{s:4:"name";s:15:"Slider Settings";s:4:"icon";s:6:"slider";s:4:"type";s:7:"heading";}i:41;a:6:{s:4:"name";s:14:"Slider Entries";s:4:"desc";s:71:"Select the number of entries that should appear in the homepage slider.";s:2:"id";s:18:"woo_slider_entries";s:3:"std";s:1:"3";s:4:"type";s:6:"select";s:7:"options";a:20:{i:0;s:16:"Select a number:";i:1;s:1:"1";i:2;s:1:"2";i:3;s:1:"3";i:4;s:1:"4";i:5;s:1:"5";i:6;s:1:"6";i:7;s:1:"7";i:8;s:1:"8";i:9;s:1:"9";i:10;s:2:"10";i:11;s:2:"11";i:12;s:2:"12";i:13;s:2:"13";i:14;s:2:"14";i:15;s:2:"15";i:16;s:2:"16";i:17;s:2:"17";i:18;s:2:"18";i:19;s:2:"19";}}i:42;a:5:{s:4:"name";s:6:"Effect";s:4:"desc";s:29:"Select the animation effect. ";s:2:"id";s:17:"woo_slider_effect";s:4:"type";s:7:"select2";s:7:"options";a:2:{s:5:"slide";s:5:"Slide";s:4:"fade";s:4:"Fade";}}i:43;a:6:{s:4:"name";s:15:"Animation Speed";s:4:"desc";s:66:"The time in <b>seconds</b> the animation between frames will take.";s:2:"id";s:16:"woo_slider_speed";s:3:"std";s:3:"0.6";s:4:"type";s:6:"select";s:7:"options";a:21:{i:0;s:3:"0.0";i:1;s:3:"0.1";i:2;s:3:"0.2";i:3;s:3:"0.3";i:4;s:3:"0.4";i:5;s:3:"0.5";i:6;s:3:"0.6";i:7;s:3:"0.7";i:8;s:3:"0.8";i:9;s:3:"0.9";i:10;s:3:"1.0";i:11;s:3:"1.1";i:12;s:3:"1.2";i:13;s:3:"1.3";i:14;s:3:"1.4";i:15;s:3:"1.5";i:16;s:3:"1.6";i:17;s:3:"1.7";i:18;s:3:"1.8";i:19;s:3:"1.9";i:20;s:3:"2.0";}}i:44;a:5:{s:4:"name";s:11:"Hover Pause";s:4:"desc";s:37:"Hovering over slideshow will pause it";s:2:"id";s:16:"woo_slider_hover";s:3:"std";s:5:"false";s:4:"type";s:8:"checkbox";}i:45;a:5:{s:4:"name";s:9:"Randomize";s:4:"desc";s:27:"Select to randomize slides.";s:2:"id";s:17:"woo_slider_random";s:3:"std";s:5:"false";s:4:"type";s:8:"checkbox";}i:46;a:5:{s:4:"name";s:11:"Auto Height";s:4:"desc";s:93:"Set the slider to adjust automatically depending on the height of the current slide contents.";s:2:"id";s:21:"woo_slider_autoheight";s:3:"std";s:5:"false";s:4:"type";s:8:"checkbox";}i:47;a:5:{s:4:"name";s:13:"Slider Height";s:4:"desc";s:80:"The fixed height in pixels of the slider if the Auto Height feature is disabled.";s:2:"id";s:23:"woo_slider_fixed_height";s:3:"std";s:3:"320";s:4:"type";s:4:"text";}i:48;a:5:{s:4:"name";s:10:"Auto Start";s:4:"desc";s:46:"Set the slider to start sliding automatically.";s:2:"id";s:15:"woo_slider_auto";s:3:"std";s:5:"false";s:4:"type";s:8:"checkbox";}i:49;a:6:{s:4:"name";s:19:"Auto Slide Interval";s:4:"desc";s:77:"The time in <b>seconds</b> each slide pauses for, before sliding to the next.";s:2:"id";s:19:"woo_slider_interval";s:3:"std";s:1:"6";s:4:"type";s:6:"select";s:7:"options";a:10:{i:0;s:1:"1";i:1;s:1:"2";i:2;s:1:"3";i:3;s:1:"4";i:4;s:1:"5";i:5;s:1:"6";i:6;s:1:"7";i:7;s:1:"8";i:8;s:1:"9";i:9;s:2:"10";}}i:50;a:5:{s:4:"name";s:21:"Featured Slider Title";s:4:"desc";s:30:"Show the post title in slider.";s:2:"id";s:16:"woo_slider_title";s:3:"std";s:4:"true";s:4:"type";s:8:"checkbox";}i:51;a:5:{s:4:"name";s:23:"Featured Slider Content";s:4:"desc";s:32:"Show the post content in slider.";s:2:"id";s:18:"woo_slider_content";s:3:"std";s:4:"true";s:4:"type";s:8:"checkbox";}i:52;a:5:{s:4:"name";s:13:"Next/Previous";s:4:"desc";s:40:"Select to display next/previous buttons.";s:2:"id";s:19:"woo_slider_nextprev";s:3:"std";s:4:"true";s:4:"type";s:8:"checkbox";}i:53;a:5:{s:4:"name";s:10:"Pagination";s:4:"desc";s:29:"Select to display pagination.";s:2:"id";s:21:"woo_slider_pagination";s:3:"std";s:4:"true";s:4:"type";s:8:"checkbox";}i:54;a:3:{s:4:"name";s:14:"Layout Options";s:4:"type";s:7:"heading";s:4:"icon";s:6:"layout";}i:55;a:6:{s:4:"name";s:11:"Main Layout";s:4:"desc";s:43:"Select which layout you want for your site.";s:2:"id";s:15:"woo_site_layout";s:3:"std";s:19:"layout-left-content";s:4:"type";s:6:"images";s:7:"options";a:2:{s:19:"layout-left-content";s:76:"http://localhost/mandala/wp-content/themes/woostore/functions/images/2cl.png";s:20:"layout-right-content";s:76:"http://localhost/mandala/wp-content/themes/woostore/functions/images/2cr.png";}}i:56;a:3:{s:4:"name";s:14:"Dynamic Images";s:4:"type";s:7:"heading";s:4:"icon";s:5:"image";}i:57;a:5:{s:4:"name";s:22:"Dynamic Image Resizing";s:4:"desc";s:0:"";s:2:"id";s:18:"woo_wpthumb_notice";s:3:"std";s:220:"There are two alternative methods of dynamically resizing the thumbnails in the theme, <strong>WP Post Thumbnail</strong> or <strong>TimThumb - Custom Settings panel</strong>. We recommend using WP Post Thumbnail option.";s:4:"type";s:4:"info";}i:58;a:6:{s:4:"name";s:17:"WP Post Thumbnail";s:4:"desc";s:170:"Use WordPress post thumbnail to assign a post thumbnail. Will enable the <strong>Featured Image panel</strong> in your post sidebar where you can assign a post thumbnail.";s:2:"id";s:22:"woo_post_image_support";s:3:"std";s:4:"true";s:5:"class";s:9:"collapsed";s:4:"type";s:8:"checkbox";}i:59;a:6:{s:4:"name";s:42:"WP Post Thumbnail - Dynamic Image Resizing";s:4:"desc";s:113:"The post thumbnail will be dynamically resized using native WP resize functionality. <em>(Requires PHP 5.2+)</em>";s:2:"id";s:14:"woo_pis_resize";s:3:"std";s:4:"true";s:5:"class";s:6:"hidden";s:4:"type";s:8:"checkbox";}i:60;a:6:{s:4:"name";s:29:"WP Post Thumbnail - Hard Crop";s:4:"desc";s:119:"The post thumbnail will be cropped to match the target aspect ratio (only used if ''Dynamic Image Resizing'' is enabled).";s:2:"id";s:17:"woo_pis_hard_crop";s:3:"std";s:4:"true";s:5:"class";s:11:"hidden last";s:4:"type";s:8:"checkbox";}i:61;a:5:{s:4:"name";s:32:"TimThumb - Custom Settings Panel";s:4:"desc";s:358:"This will enable the <a href=''http://code.google.com/p/timthumb/''>TimThumb</a> (thumb.php) script which dynamically resizes images added through the <strong>custom settings panel below the post</strong>. Make sure your themes <em>cache</em> folder is writable. <a href=''http://www.woothemes.com/2008/10/troubleshooting-image-resizer-thumbphp/''>Need help?</a>";s:2:"id";s:10:"woo_resize";s:3:"std";s:4:"true";s:4:"type";s:8:"checkbox";}i:62;a:5:{s:4:"name";s:25:"Automatic Image Thumbnail";s:4:"desc";s:81:"If no thumbnail is specifified then the first uploaded image in the post is used.";s:2:"id";s:12:"woo_auto_img";s:3:"std";s:5:"false";s:4:"type";s:8:"checkbox";}i:63;a:5:{s:4:"name";s:26:"Thumbnail Image Dimensions";s:4:"desc";s:109:"Enter an integer value i.e. 250 for the desired size which will be used when dynamically creating the images.";s:2:"id";s:20:"woo_image_dimensions";s:3:"std";s:0:"";s:4:"type";a:2:{i:0;a:4:{s:2:"id";s:11:"woo_thumb_w";s:4:"type";s:4:"text";s:3:"std";i:100;s:4:"meta";s:5:"Width";}i:1;a:4:{s:2:"id";s:11:"woo_thumb_h";s:4:"type";s:4:"text";s:3:"std";i:100;s:4:"meta";s:6:"Height";}}}i:64;a:6:{s:4:"name";s:19:"Thumbnail Alignment";s:4:"desc";s:47:"Select how to align your thumbnails with posts.";s:2:"id";s:15:"woo_thumb_align";s:3:"std";s:9:"alignleft";s:4:"type";s:7:"select2";s:7:"options";a:3:{s:9:"alignleft";s:4:"Left";s:10:"alignright";s:5:"Right";s:11:"aligncenter";s:6:"Center";}}i:65;a:6:{s:4:"name";s:28:"Single Post - Show Thumbnail";s:4:"desc";s:43:"Show the thumbnail in the single post page.";s:2:"id";s:16:"woo_thumb_single";s:5:"class";s:9:"collapsed";s:3:"std";s:5:"false";s:4:"type";s:8:"checkbox";}i:66;a:6:{s:4:"name";s:34:"Single Post - Thumbnail Dimensions";s:4:"desc";s:69:"Enter an integer value i.e. 250 for the image size. Max width is 576.";s:2:"id";s:20:"woo_image_dimensions";s:3:"std";s:0:"";s:5:"class";s:11:"hidden last";s:4:"type";a:2:{i:0;a:4:{s:2:"id";s:12:"woo_single_w";s:4:"type";s:4:"text";s:3:"std";i:200;s:4:"meta";s:5:"Width";}i:1;a:4:{s:2:"id";s:12:"woo_single_h";s:4:"type";s:4:"text";s:3:"std";i:200;s:4:"meta";s:6:"Height";}}}i:67;a:7:{s:4:"name";s:33:"Single Post - Thumbnail Alignment";s:4:"desc";s:53:"Select how to align your thumbnail with single posts.";s:2:"id";s:22:"woo_thumb_single_align";s:3:"std";s:10:"alignright";s:4:"type";s:7:"select2";s:5:"class";s:6:"hidden";s:7:"options";a:3:{s:9:"alignleft";s:4:"Left";s:10:"alignright";s:5:"Right";s:11:"aligncenter";s:6:"Center";}}i:68;a:5:{s:4:"name";s:25:"Add thumbnail to RSS feed";s:4:"desc";s:74:"Add the the image uploaded via your Custom Settings panel to your RSS feed";s:2:"id";s:13:"woo_rss_thumb";s:3:"std";s:5:"false";s:4:"type";s:8:"checkbox";}i:69;a:3:{s:4:"name";s:20:"Footer Customization";s:4:"type";s:7:"heading";s:4:"icon";s:6:"footer";}i:70;a:6:{s:4:"name";s:19:"Footer Widget Areas";s:4:"desc";s:56:"Select how many footer widget areas you want to display.";s:2:"id";s:19:"woo_footer_sidebars";s:3:"std";s:1:"4";s:4:"type";s:6:"images";s:7:"options";a:5:{i:0;s:83:"http://localhost/mandala/wp-content/themes/woostore/functions/images/layout-off.png";i:1;s:89:"http://localhost/mandala/wp-content/themes/woostore/functions/images/footer-widgets-1.png";i:2;s:89:"http://localhost/mandala/wp-content/themes/woostore/functions/images/footer-widgets-2.png";i:3;s:89:"http://localhost/mandala/wp-content/themes/woostore/functions/images/footer-widgets-3.png";i:4;s:89:"http://localhost/mandala/wp-content/themes/woostore/functions/images/footer-widgets-4.png";}}i:71;a:5:{s:4:"name";s:21:"Custom Affiliate Link";s:4:"desc";s:71:"Add an affiliate link to the WooThemes logo in the footer of the theme.";s:2:"id";s:19:"woo_footer_aff_link";s:3:"std";s:0:"";s:4:"type";s:4:"text";}i:72;a:5:{s:4:"name";s:27:"Enable Custom Footer (Left)";s:4:"desc";s:58:"Activate to add the custom text below to the theme footer.";s:2:"id";s:15:"woo_footer_left";s:3:"std";s:5:"false";s:4:"type";s:8:"checkbox";}i:73;a:5:{s:4:"name";s:18:"Custom Text (Left)";s:4:"desc";s:66:"Custom HTML and Text that will appear in the footer of your theme.";s:2:"id";s:20:"woo_footer_left_text";s:3:"std";s:0:"";s:4:"type";s:8:"textarea";}i:74;a:5:{s:4:"name";s:28:"Enable Custom Footer (Right)";s:4:"desc";s:58:"Activate to add the custom text below to the theme footer.";s:2:"id";s:16:"woo_footer_right";s:3:"std";s:5:"false";s:4:"type";s:8:"checkbox";}i:75;a:5:{s:4:"name";s:19:"Custom Text (Right)";s:4:"desc";s:66:"Custom HTML and Text that will appear in the footer of your theme.";s:2:"id";s:21:"woo_footer_right_text";s:3:"std";s:0:"";s:4:"type";s:8:"textarea";}i:76;a:3:{s:4:"name";s:19:"Subscribe & Connect";s:4:"type";s:7:"heading";s:4:"icon";s:7:"connect";}i:77;a:5:{s:4:"name";s:40:"Enable Subscribe & Connect - Single Post";s:4:"desc";s:163:"Enable the subscribe & connect area on single posts. You can also add this as a <a href=''http://localhost/mandala/wp-admin/widgets.php''>widget</a> in your sidebar.";s:2:"id";s:11:"woo_connect";s:3:"std";s:5:"false";s:4:"type";s:8:"checkbox";}i:78;a:5:{s:4:"name";s:15:"Subscribe Title";s:4:"desc";s:57:"Enter the title to show in your subscribe & connect area.";s:2:"id";s:17:"woo_connect_title";s:3:"std";s:0:"";s:4:"type";s:4:"text";}i:79;a:5:{s:4:"name";s:4:"Text";s:4:"desc";s:37:"Change the default text in this area.";s:2:"id";s:19:"woo_connect_content";s:3:"std";s:0:"";s:4:"type";s:8:"textarea";}i:80;a:5:{s:4:"name";s:35:"Subscribe By E-mail ID (Feedburner)";s:4:"desc";s:146:"Enter your <a href=''http://www.google.com/support/feedburner/bin/answer.py?hl=en&answer=78982''>Feedburner ID</a> for the e-mail subscription form.";s:2:"id";s:25:"woo_connect_newsletter_id";s:3:"std";s:0:"";s:4:"type";s:4:"text";}i:81;a:6:{s:4:"name";s:32:"Subscribe By E-mail to MailChimp";i:0;s:9:"woothemes";s:4:"desc";s:189:"If you have a MailChimp account you can enter the <a href="http://woochimp.heroku.com" target="_blank">MailChimp List Subscribe URL</a> to allow your users to subscribe to a MailChimp List.";s:2:"id";s:30:"woo_connect_mailchimp_list_url";s:3:"std";s:0:"";s:4:"type";s:4:"text";}i:82;a:5:{s:4:"name";s:10:"Enable RSS";s:4:"desc";s:34:"Enable the subscribe and RSS icon.";s:2:"id";s:15:"woo_connect_rss";s:3:"std";s:4:"true";s:4:"type";s:8:"checkbox";}i:83;a:5:{s:4:"name";s:11:"Twitter URL";s:4:"desc";s:99:"Enter your  <a href=''http://www.twitter.com/''>Twitter</a> URL e.g. http://www.twitter.com/woothemes";s:2:"id";s:19:"woo_connect_twitter";s:3:"std";s:0:"";s:4:"type";s:4:"text";}i:84;a:5:{s:4:"name";s:12:"Facebook URL";s:4:"desc";s:102:"Enter your  <a href=''http://www.facebook.com/''>Facebook</a> URL e.g. http://www.facebook.com/woothemes";s:2:"id";s:20:"woo_connect_facebook";s:3:"std";s:0:"";s:4:"type";s:4:"text";}i:85;a:5:{s:4:"name";s:11:"YouTube URL";s:4:"desc";s:99:"Enter your  <a href=''http://www.youtube.com/''>YouTube</a> URL e.g. http://www.youtube.com/woothemes";s:2:"id";s:19:"woo_connect_youtube";s:3:"std";s:0:"";s:4:"type";s:4:"text";}i:86;a:5:{s:4:"name";s:10:"Flickr URL";s:4:"desc";s:96:"Enter your  <a href=''http://www.flickr.com/''>Flickr</a> URL e.g. http://www.flickr.com/woothemes";s:2:"id";s:18:"woo_connect_flickr";s:3:"std";s:0:"";s:4:"type";s:4:"text";}i:87;a:5:{s:4:"name";s:12:"LinkedIn URL";s:4:"desc";s:113:"Enter your  <a href=''http://www.www.linkedin.com.com/''>LinkedIn</a> URL e.g. http://www.linkedin.com/in/woothemes";s:2:"id";s:20:"woo_connect_linkedin";s:3:"std";s:0:"";s:4:"type";s:4:"text";}i:88;a:5:{s:4:"name";s:13:"Delicious URL";s:4:"desc";s:104:"Enter your <a href=''http://www.delicious.com/''>Delicious</a> URL e.g. http://www.delicious.com/woothemes";s:2:"id";s:21:"woo_connect_delicious";s:3:"std";s:0:"";s:4:"type";s:4:"text";}i:89;a:5:{s:4:"name";s:11:"Google+ URL";s:4:"desc";s:112:"Enter your <a href=''http://plus.google.com/''>Google+</a> URL e.g. https://plus.google.com/104560124403688998123/";s:2:"id";s:22:"woo_connect_googleplus";s:3:"std";s:0:"";s:4:"type";s:4:"text";}i:90;a:5:{s:4:"name";s:20:"Enable Related Posts";s:4:"desc";s:158:"Enable related posts in the subscribe area. Uses posts with the same <strong>tags</strong> to find related posts. Note: Will not show in the Subscribe widget.";s:2:"id";s:19:"woo_connect_related";s:3:"std";s:4:"true";s:4:"type";s:8:"checkbox";}}', 'yes'),
(138, 'woo_themename', 'WooStore', 'yes'),
(139, 'woo_shortname', 'woo', 'yes'),
(140, 'woo_manual', 'http://www.woothemes.com/support/theme-documentation/woostore/', 'yes'),
(141, 'woo_custom_template', 'a:1:{i:0;a:6:{s:4:"name";s:7:"_layout";s:3:"std";s:6:"normal";s:5:"label";s:6:"Layout";s:4:"type";s:6:"images";s:4:"desc";s:54:"Select the layout you want on this specific post/page.";s:7:"options";a:4:{s:14:"layout-default";s:83:"http://localhost/mandala/wp-content/themes/woostore/functions/images/layout-off.png";s:11:"layout-full";s:75:"http://localhost/mandala/wp-content/themes/woostore/functions/images/1c.png";s:19:"layout-left-content";s:76:"http://localhost/mandala/wp-content/themes/woostore/functions/images/2cl.png";s:20:"layout-right-content";s:76:"http://localhost/mandala/wp-content/themes/woostore/functions/images/2cr.png";}}}', 'yes'),
(142, '_transient_timeout_wooframework_version_data', '1394694409', 'no'),
(143, '_transient_wooframework_version_data', 'a:2:{s:7:"version";s:5:"5.5.5";s:11:"is_critical";b:0;}', 'no'),
(144, '_transient_timeout_woo_framework_critical_update', '1395817609', 'no'),
(145, '_transient_woo_framework_critical_update', '1', 'no'),
(146, '_transient_timeout_woo_framework_critical_update_data', '1395817609', 'no'),
(147, '_transient_woo_framework_critical_update_data', 'a:4:{s:9:"is_update";b:1;s:7:"version";s:5:"5.5.5";s:6:"status";s:4:"none";s:11:"is_critical";b:0;}', 'no'),
(148, 'recently_activated', 'a:0:{}', 'yes'),
(149, '_site_transient_timeout_poptags_40cd750bba9870f18aada2478b24840a', '1394618877', 'yes'),
(150, '_site_transient_poptags_40cd750bba9870f18aada2478b24840a', 'a:40:{s:6:"widget";a:3:{s:4:"name";s:6:"widget";s:4:"slug";s:6:"widget";s:5:"count";s:4:"3898";}s:4:"post";a:3:{s:4:"name";s:4:"Post";s:4:"slug";s:4:"post";s:5:"count";s:4:"2456";}s:6:"plugin";a:3:{s:4:"name";s:6:"plugin";s:4:"slug";s:6:"plugin";s:5:"count";s:4:"2344";}s:5:"admin";a:3:{s:4:"name";s:5:"admin";s:4:"slug";s:5:"admin";s:5:"count";s:4:"1930";}s:5:"posts";a:3:{s:4:"name";s:5:"posts";s:4:"slug";s:5:"posts";s:5:"count";s:4:"1856";}s:7:"sidebar";a:3:{s:4:"name";s:7:"sidebar";s:4:"slug";s:7:"sidebar";s:5:"count";s:4:"1583";}s:7:"twitter";a:3:{s:4:"name";s:7:"twitter";s:4:"slug";s:7:"twitter";s:5:"count";s:4:"1329";}s:6:"google";a:3:{s:4:"name";s:6:"google";s:4:"slug";s:6:"google";s:5:"count";s:4:"1325";}s:8:"comments";a:3:{s:4:"name";s:8:"comments";s:4:"slug";s:8:"comments";s:5:"count";s:4:"1310";}s:6:"images";a:3:{s:4:"name";s:6:"images";s:4:"slug";s:6:"images";s:5:"count";s:4:"1260";}s:4:"page";a:3:{s:4:"name";s:4:"page";s:4:"slug";s:4:"page";s:5:"count";s:4:"1225";}s:5:"image";a:3:{s:4:"name";s:5:"image";s:4:"slug";s:5:"image";s:5:"count";s:4:"1121";}s:9:"shortcode";a:3:{s:4:"name";s:9:"shortcode";s:4:"slug";s:9:"shortcode";s:5:"count";s:4:"1000";}s:8:"facebook";a:3:{s:4:"name";s:8:"Facebook";s:4:"slug";s:8:"facebook";s:5:"count";s:3:"982";}s:5:"links";a:3:{s:4:"name";s:5:"links";s:4:"slug";s:5:"links";s:5:"count";s:3:"974";}s:3:"seo";a:3:{s:4:"name";s:3:"seo";s:4:"slug";s:3:"seo";s:5:"count";s:3:"950";}s:9:"wordpress";a:3:{s:4:"name";s:9:"wordpress";s:4:"slug";s:9:"wordpress";s:5:"count";s:3:"844";}s:7:"gallery";a:3:{s:4:"name";s:7:"gallery";s:4:"slug";s:7:"gallery";s:5:"count";s:3:"821";}s:6:"social";a:3:{s:4:"name";s:6:"social";s:4:"slug";s:6:"social";s:5:"count";s:3:"780";}s:3:"rss";a:3:{s:4:"name";s:3:"rss";s:4:"slug";s:3:"rss";s:5:"count";s:3:"722";}s:7:"widgets";a:3:{s:4:"name";s:7:"widgets";s:4:"slug";s:7:"widgets";s:5:"count";s:3:"686";}s:6:"jquery";a:3:{s:4:"name";s:6:"jquery";s:4:"slug";s:6:"jquery";s:5:"count";s:3:"681";}s:5:"pages";a:3:{s:4:"name";s:5:"pages";s:4:"slug";s:5:"pages";s:5:"count";s:3:"678";}s:5:"email";a:3:{s:4:"name";s:5:"email";s:4:"slug";s:5:"email";s:5:"count";s:3:"623";}s:4:"ajax";a:3:{s:4:"name";s:4:"AJAX";s:4:"slug";s:4:"ajax";s:5:"count";s:3:"615";}s:5:"media";a:3:{s:4:"name";s:5:"media";s:4:"slug";s:5:"media";s:5:"count";s:3:"595";}s:10:"javascript";a:3:{s:4:"name";s:10:"javascript";s:4:"slug";s:10:"javascript";s:5:"count";s:3:"572";}s:5:"video";a:3:{s:4:"name";s:5:"video";s:4:"slug";s:5:"video";s:5:"count";s:3:"570";}s:10:"buddypress";a:3:{s:4:"name";s:10:"buddypress";s:4:"slug";s:10:"buddypress";s:5:"count";s:3:"541";}s:4:"feed";a:3:{s:4:"name";s:4:"feed";s:4:"slug";s:4:"feed";s:5:"count";s:3:"539";}s:7:"content";a:3:{s:4:"name";s:7:"content";s:4:"slug";s:7:"content";s:5:"count";s:3:"530";}s:5:"photo";a:3:{s:4:"name";s:5:"photo";s:4:"slug";s:5:"photo";s:5:"count";s:3:"522";}s:4:"link";a:3:{s:4:"name";s:4:"link";s:4:"slug";s:4:"link";s:5:"count";s:3:"506";}s:6:"photos";a:3:{s:4:"name";s:6:"photos";s:4:"slug";s:6:"photos";s:5:"count";s:3:"505";}s:5:"login";a:3:{s:4:"name";s:5:"login";s:4:"slug";s:5:"login";s:5:"count";s:3:"471";}s:4:"spam";a:3:{s:4:"name";s:4:"spam";s:4:"slug";s:4:"spam";s:5:"count";s:3:"458";}s:5:"stats";a:3:{s:4:"name";s:5:"stats";s:4:"slug";s:5:"stats";s:5:"count";s:3:"453";}s:8:"category";a:3:{s:4:"name";s:8:"category";s:4:"slug";s:8:"category";s:5:"count";s:3:"452";}s:7:"youtube";a:3:{s:4:"name";s:7:"youtube";s:4:"slug";s:7:"youtube";s:5:"count";s:3:"436";}s:7:"comment";a:3:{s:4:"name";s:7:"comment";s:4:"slug";s:7:"comment";s:5:"count";s:3:"432";}}', 'yes'),
(151, 'woocommerce_default_country', 'GB', 'yes'),
(152, 'woocommerce_allowed_countries', 'all', 'yes'),
(153, 'woocommerce_specific_allowed_countries', '', 'yes'),
(154, 'woocommerce_demo_store', 'no', 'yes'),
(155, 'woocommerce_demo_store_notice', 'This is a demo store for testing purposes &mdash; no orders shall be fulfilled.', 'no'),
(156, 'woocommerce_api_enabled', 'yes', 'yes'),
(157, 'woocommerce_currency', 'GBP', 'yes'),
(158, 'woocommerce_currency_pos', 'left', 'yes'),
(159, 'woocommerce_price_thousand_sep', ',', 'yes'),
(160, 'woocommerce_price_decimal_sep', '.', 'yes'),
(161, 'woocommerce_price_num_decimals', '2', 'yes'),
(162, 'woocommerce_enable_lightbox', 'yes', 'yes'),
(163, 'woocommerce_enable_chosen', 'yes', 'no'),
(164, 'woocommerce_shop_page_id', '7', 'yes'),
(165, 'woocommerce_shop_page_display', '', 'yes'),
(166, 'woocommerce_category_archive_display', '', 'yes'),
(167, 'woocommerce_default_catalog_orderby', 'title', 'yes'),
(168, 'woocommerce_cart_redirect_after_add', 'no', 'yes'),
(169, 'woocommerce_enable_ajax_add_to_cart', 'yes', 'yes'),
(170, 'woocommerce_weight_unit', 'kg', 'yes'),
(171, 'woocommerce_dimension_unit', 'cm', 'yes'),
(172, 'woocommerce_enable_review_rating', 'yes', 'no'),
(173, 'woocommerce_review_rating_required', 'yes', 'no'),
(174, 'woocommerce_review_rating_verification_label', 'yes', 'no'),
(175, 'woocommerce_review_rating_verification_required', 'no', 'no'),
(176, 'shop_catalog_image_size', 'a:3:{s:5:"width";s:3:"150";s:6:"height";s:3:"150";s:4:"crop";b:1;}', 'yes'),
(177, 'shop_single_image_size', 'a:3:{s:5:"width";s:3:"300";s:6:"height";s:3:"300";s:4:"crop";i:1;}', 'yes'),
(178, 'shop_thumbnail_image_size', 'a:3:{s:5:"width";s:2:"90";s:6:"height";s:2:"90";s:4:"crop";i:1;}', 'yes'),
(179, 'woocommerce_file_download_method', 'force', 'no'),
(180, 'woocommerce_downloads_require_login', 'no', 'no'),
(181, 'woocommerce_downloads_grant_access_after_payment', 'yes', 'no'),
(182, 'woocommerce_manage_stock', 'yes', 'yes'),
(183, 'woocommerce_hold_stock_minutes', '60', 'no'),
(184, 'woocommerce_notify_low_stock', 'yes', 'no'),
(185, 'woocommerce_notify_no_stock', 'yes', 'no'),
(186, 'woocommerce_stock_email_recipient', 'nizeshshakya@gmail.com', 'no'),
(187, 'woocommerce_notify_low_stock_amount', '2', 'no'),
(188, 'woocommerce_notify_no_stock_amount', '0', 'no'),
(189, 'woocommerce_hide_out_of_stock_items', 'no', 'yes'),
(190, 'woocommerce_stock_format', '', 'yes'),
(191, 'woocommerce_calc_taxes', 'no', 'yes'),
(192, 'woocommerce_prices_include_tax', 'no', 'yes'),
(193, 'woocommerce_tax_based_on', 'shipping', 'yes'),
(194, 'woocommerce_default_customer_address', 'base', 'yes'),
(195, 'woocommerce_shipping_tax_class', 'title', 'yes'),
(196, 'woocommerce_tax_round_at_subtotal', 'no', 'yes'),
(197, 'woocommerce_tax_classes', 'Reduced Rate\nZero Rate', 'yes'),
(198, 'woocommerce_tax_display_shop', 'excl', 'yes'),
(199, 'woocommerce_price_display_suffix', '', 'yes'),
(200, 'woocommerce_tax_display_cart', 'excl', 'no'),
(201, 'woocommerce_tax_total_display', 'itemized', 'no'),
(202, 'woocommerce_enable_coupons', 'yes', 'no'),
(203, 'woocommerce_enable_guest_checkout', 'yes', 'no'),
(204, 'woocommerce_force_ssl_checkout', 'no', 'yes'),
(205, 'woocommerce_unforce_ssl_checkout', 'no', 'yes'),
(206, 'woocommerce_cart_page_id', '8', 'yes'),
(207, 'woocommerce_checkout_page_id', '9', 'yes'),
(208, 'woocommerce_terms_page_id', '', 'no'),
(209, 'woocommerce_checkout_pay_endpoint', 'order-pay', 'yes'),
(210, 'woocommerce_checkout_order_received_endpoint', 'order-received', 'yes'),
(211, 'woocommerce_myaccount_add_payment_method_endpoint', 'add-payment-method', 'yes'),
(212, 'woocommerce_calc_shipping', 'yes', 'yes'),
(213, 'woocommerce_enable_shipping_calc', 'yes', 'no'),
(214, 'woocommerce_shipping_cost_requires_address', 'no', 'no'),
(215, 'woocommerce_shipping_method_format', '', 'no'),
(216, 'woocommerce_ship_to_billing', 'yes', 'no'),
(217, 'woocommerce_ship_to_billing_address_only', 'no', 'no'),
(218, 'woocommerce_ship_to_countries', '', 'yes'),
(219, 'woocommerce_specific_ship_to_countries', '', 'yes'),
(220, 'woocommerce_myaccount_page_id', '10', 'yes'),
(221, 'woocommerce_myaccount_view_order_endpoint', 'view-order', 'yes'),
(222, 'woocommerce_myaccount_edit_account_endpoint', 'edit-account', 'yes'),
(223, 'woocommerce_myaccount_edit_address_endpoint', 'edit-address', 'yes'),
(224, 'woocommerce_myaccount_lost_password_endpoint', 'lost-password', 'yes'),
(225, 'woocommerce_logout_endpoint', 'customer-logout', 'yes'),
(226, 'woocommerce_enable_signup_and_login_from_checkout', 'yes', 'no'),
(227, 'woocommerce_enable_myaccount_registration', 'no', 'no'),
(228, 'woocommerce_enable_checkout_login_reminder', 'yes', 'no'),
(229, 'woocommerce_registration_generate_username', 'yes', 'no'),
(230, 'woocommerce_registration_generate_password', 'no', 'no'),
(231, 'woocommerce_email_from_name', 'Mandala Arts and Kraft', 'no'),
(232, 'woocommerce_email_from_address', 'nizeshshakya@gmail.com', 'no'),
(233, 'woocommerce_email_header_image', '', 'no'),
(234, 'woocommerce_email_footer_text', 'Mandala Arts and Kraft - Powered by WooCommerce', 'no'),
(235, 'woocommerce_email_base_color', '#557da1', 'no'),
(236, 'woocommerce_email_background_color', '#f5f5f5', 'no'),
(237, 'woocommerce_email_body_background_color', '#fdfdfd', 'no'),
(238, 'woocommerce_email_text_color', '#505050', 'no'),
(239, '_transient_woocommerce_processing_order_count', '0', 'yes'),
(241, 'woocommerce_db_version', '2.1.5', 'yes'),
(242, 'woocommerce_version', '2.1.5', 'yes'),
(248, '_transient_random_seed', '647278c601ebd7e04e529c47834351a7', 'yes'),
(251, '_transient_timeout_wc_report_79f21b56e2c45db3ef4fdc23b27f3955', '1394695202', 'no'),
(252, '_transient_wc_report_79f21b56e2c45db3ef4fdc23b27f3955', 'a:0:{}', 'no'),
(253, '_transient_woocommerce_cache_excluded_uris', 'a:6:{i:0;s:3:"p=8";i:1;s:3:"p=9";i:2;s:4:"p=10";i:3;s:5:"/cart";i:4;s:9:"/checkout";i:5;s:11:"/my-account";}', 'yes'),
(254, 'woo_alt_stylesheet', 'default.css', 'yes'),
(255, 'woo_logo', '', 'yes'),
(256, 'woo_texttitle', 'false', 'yes'),
(257, 'woo_font_site_title', 'a:5:{s:4:"size";s:2:"30";s:4:"unit";s:2:"px";s:4:"face";s:11:"Droid Serif";s:5:"style";s:4:"bold";s:5:"color";s:7:"#333333";}', 'yes'),
(258, 'woo_tagline', 'false', 'yes'),
(259, 'woo_font_tagline', 'a:5:{s:4:"size";s:2:"12";s:4:"unit";s:2:"px";s:4:"face";s:10:"Droid Sans";s:5:"style";s:6:"normal";s:5:"color";s:7:"#999999";}', 'yes'),
(260, 'woo_custom_favicon', '', 'yes'),
(261, 'woo_google_analytics', '', 'yes'),
(262, 'woo_feed_url', '', 'yes'),
(263, 'woo_subscribe_email', '', 'yes'),
(264, 'woo_contactform_email', '', 'yes'),
(265, 'woo_custom_css', '', 'yes'),
(266, 'woo_comments', 'post', 'yes'),
(267, 'woo_post_content', 'excerpt', 'yes'),
(268, 'woo_post_author', 'true', 'yes'),
(269, 'woo_breadcrumbs_show', 'false', 'yes'),
(270, 'woo_pagination_type', 'paginated_links', 'yes'),
(271, 'woo_body_color', '#bed3ed', 'yes'),
(272, 'woo_body_img', '', 'yes'),
(273, 'woo_body_repeat', 'no-repeat', 'yes'),
(274, 'woo_body_pos', 'top left', 'yes'),
(275, 'woo_link_color', '', 'yes'),
(276, 'woo_link_hover_color', '', 'yes'),
(277, 'woo_button_color', '', 'yes'),
(278, 'woo_typography', 'false', 'yes'),
(279, 'woo_font_body', 'a:5:{s:4:"size";s:2:"12";s:4:"unit";s:2:"px";s:4:"face";s:17:"Arial, sans-serif";s:5:"style";s:6:"normal";s:5:"color";s:7:"#555555";}', 'yes'),
(280, 'woo_font_nav', 'a:5:{s:4:"size";s:2:"14";s:4:"unit";s:2:"px";s:4:"face";s:17:"Arial, sans-serif";s:5:"style";s:6:"normal";s:5:"color";s:7:"#555555";}', 'yes'),
(281, 'woo_font_post_title', 'a:5:{s:4:"size";s:2:"24";s:4:"unit";s:2:"px";s:4:"face";s:17:"Arial, sans-serif";s:5:"style";s:4:"bold";s:5:"color";s:7:"#222222";}', 'yes'),
(282, 'woo_font_post_meta', 'a:5:{s:4:"size";s:2:"12";s:4:"unit";s:2:"px";s:4:"face";s:17:"Arial, sans-serif";s:5:"style";s:6:"normal";s:5:"color";s:7:"#999999";}', 'yes'),
(283, 'woo_font_post_entry', 'a:5:{s:4:"size";s:2:"14";s:4:"unit";s:2:"px";s:4:"face";s:17:"Arial, sans-serif";s:5:"style";s:6:"normal";s:5:"color";s:7:"#555555";}', 'yes'),
(284, 'woo_font_widget_titles', 'a:5:{s:4:"size";s:2:"16";s:4:"unit";s:2:"px";s:4:"face";s:17:"Arial, sans-serif";s:5:"style";s:4:"bold";s:5:"color";s:7:"#555555";}', 'yes'),
(285, 'woo_slider', 'true', 'yes'),
(286, 'woo_homepage_content', 'Disabled', 'yes'),
(287, 'woo_featured_product_style', 'slider', 'yes'),
(288, 'woo_featured_product_entries', '4', 'yes'),
(289, 'woo_recent_product_entries', '6', 'yes'),
(290, 'woo_slider_entries', '3', 'yes'),
(291, 'woo_slider_effect', 'slide', 'yes'),
(292, 'woo_slider_speed', '0.6', 'yes'),
(293, 'woo_slider_hover', 'false', 'yes'),
(294, 'woo_slider_random', 'false', 'yes'),
(295, 'woo_slider_autoheight', 'false', 'yes'),
(296, 'woo_slider_fixed_height', '320', 'yes'),
(297, 'woo_slider_auto', 'true', 'yes'),
(298, 'woo_slider_interval', '6', 'yes'),
(299, 'woo_slider_title', 'true', 'yes'),
(300, 'woo_slider_content', 'true', 'yes'),
(301, 'woo_slider_nextprev', 'true', 'yes'),
(302, 'woo_slider_pagination', 'true', 'yes'),
(303, 'woo_site_layout', 'layout-left-content', 'yes'),
(304, 'woo_wpthumb_notice', '', 'yes'),
(305, 'woo_post_image_support', 'true', 'yes'),
(306, 'woo_pis_resize', 'true', 'yes'),
(307, 'woo_pis_hard_crop', 'true', 'yes'),
(308, 'woo_resize', 'true', 'yes'),
(309, 'woo_auto_img', 'false', 'yes'),
(310, 'woo_thumb_w', '100', 'yes'),
(311, 'woo_thumb_h', '100', 'yes'),
(312, 'woo_thumb_align', 'alignleft', 'yes'),
(313, 'woo_thumb_single', 'false', 'yes'),
(314, 'woo_single_w', '200', 'yes'),
(315, 'woo_single_h', '200', 'yes'),
(316, 'woo_thumb_single_align', 'alignright', 'yes'),
(317, 'woo_rss_thumb', 'false', 'yes'),
(318, 'woo_footer_sidebars', '4', 'yes'),
(319, 'woo_footer_aff_link', '', 'yes'),
(320, 'woo_footer_left', 'false', 'yes'),
(321, 'woo_footer_left_text', '', 'yes'),
(322, 'woo_footer_right', 'false', 'yes'),
(323, 'woo_footer_right_text', '', 'yes'),
(324, 'woo_connect', 'false', 'yes'),
(325, 'woo_connect_title', '', 'yes'),
(326, 'woo_connect_content', '', 'yes'),
(327, 'woo_connect_newsletter_id', '', 'yes'),
(328, 'woo_connect_mailchimp_list_url', '', 'yes'),
(329, 'woo_connect_rss', 'true', 'yes'),
(330, 'woo_connect_twitter', '', 'yes'),
(331, 'woo_connect_facebook', '', 'yes'),
(332, 'woo_connect_youtube', '', 'yes'),
(333, 'woo_connect_flickr', '', 'yes'),
(334, 'woo_connect_linkedin', '', 'yes'),
(335, 'woo_connect_delicious', '', 'yes'),
(336, 'woo_connect_googleplus', '', 'yes'),
(337, 'woo_connect_related', 'true', 'yes'),
(338, '_wc_session_1', 'a:22:{s:4:"cart";s:6:"a:0:{}";s:15:"applied_coupons";s:6:"a:0:{}";s:10:"wc_notices";N;s:23:"chosen_shipping_methods";s:31:"a:1:{i:0;s:13:"free_shipping";}";s:22:"shipping_method_counts";s:14:"a:1:{i:0;i:1;}";s:21:"chosen_payment_method";s:4:"bacs";s:8:"customer";s:387:"a:14:{s:7:"country";s:2:"GB";s:5:"state";s:0:"";s:8:"postcode";s:6:"DA FAF";s:4:"city";s:0:"";s:7:"address";s:0:"";s:9:"address_2";s:0:"";s:16:"shipping_country";s:2:"GB";s:14:"shipping_state";s:0:"";s:17:"shipping_postcode";s:6:"DA FAF";s:13:"shipping_city";s:0:"";s:16:"shipping_address";s:0:"";s:18:"shipping_address_2";s:0:"";s:13:"is_vat_exempt";b:0;s:19:"calculated_shipping";b:0;}";s:23:"coupon_discount_amounts";s:6:"a:0:{}";s:19:"cart_contents_total";i:0;s:20:"cart_contents_weight";i:0;s:19:"cart_contents_count";i:0;s:17:"cart_contents_tax";i:0;s:5:"total";i:0;s:8:"subtotal";i:0;s:15:"subtotal_ex_tax";i:0;s:9:"tax_total";i:0;s:5:"taxes";s:6:"a:0:{}";s:14:"shipping_taxes";s:6:"a:0:{}";s:13:"discount_cart";i:0;s:14:"discount_total";i:0;s:14:"shipping_total";i:0;s:18:"shipping_tax_total";i:0;}', 'no'),
(339, '_wc_session_expires_1', '1394784899', 'no'),
(349, 'woo_custom_upload_tracking', 'a:0:{}', 'yes'),
(357, 'woocommerce_meta_box_errors', 'a:0:{}', 'yes'),
(380, '_transient_wc_attribute_taxonomies', 'a:0:{}', 'yes'),
(381, '_transient_wc_rating_count_21', '0', 'yes'),
(382, '_transient_wc_average_rating_21', '', 'yes'),
(386, 'slurp_page_installed', '1', 'yes'),
(388, '_transient_timeout_wc_ship_5b3bdf5573536e9382fd2993ee8fd2ba', '1394620223', 'no'),
(389, '_transient_wc_ship_5b3bdf5573536e9382fd2993ee8fd2ba', 'a:1:{s:13:"free_shipping";O:16:"WC_Shipping_Rate":5:{s:2:"id";s:13:"free_shipping";s:5:"label";s:13:"Free Shipping";s:4:"cost";i:0;s:5:"taxes";a:0:{}s:9:"method_id";s:13:"free_shipping";}}', 'no'),
(390, '_transient_timeout_wc_ship_50221087a666299ccaed270232a6f0b5', '1394620224', 'no'),
(391, '_transient_wc_ship_50221087a666299ccaed270232a6f0b5', 'a:1:{s:13:"free_shipping";O:16:"WC_Shipping_Rate":5:{s:2:"id";s:13:"free_shipping";s:5:"label";s:13:"Free Shipping";s:4:"cost";i:0;s:5:"taxes";a:0:{}s:9:"method_id";s:13:"free_shipping";}}', 'no'),
(392, '_transient_timeout_wc_ship_2b85385af2020981e5860d8683507abb', '1394620239', 'no'),
(393, '_transient_wc_ship_2b85385af2020981e5860d8683507abb', 'a:1:{s:13:"free_shipping";O:16:"WC_Shipping_Rate":5:{s:2:"id";s:13:"free_shipping";s:5:"label";s:13:"Free Shipping";s:4:"cost";i:0;s:5:"taxes";a:0:{}s:9:"method_id";s:13:"free_shipping";}}', 'no'),
(394, '_transient_timeout_wc_ship_a0a1ab9938298ab1bb082b3165346af8', '1394620240', 'no'),
(395, '_transient_wc_ship_a0a1ab9938298ab1bb082b3165346af8', 'a:1:{s:13:"free_shipping";O:16:"WC_Shipping_Rate":5:{s:2:"id";s:13:"free_shipping";s:5:"label";s:13:"Free Shipping";s:4:"cost";i:0;s:5:"taxes";a:0:{}s:9:"method_id";s:13:"free_shipping";}}', 'no'),
(396, '_transient_timeout_wc_ship_54e0fc794dba0c5eb41972a1edcacf47', '1394620240', 'no'),
(397, '_transient_wc_ship_54e0fc794dba0c5eb41972a1edcacf47', 'a:1:{s:13:"free_shipping";O:16:"WC_Shipping_Rate":5:{s:2:"id";s:13:"free_shipping";s:5:"label";s:13:"Free Shipping";s:4:"cost";i:0;s:5:"taxes";a:0:{}s:9:"method_id";s:13:"free_shipping";}}', 'no'),
(398, '_transient_timeout_wc_ship_f2fed9009c316f3da0874f1f0af3a2eb', '1394620241', 'no'),
(399, '_transient_wc_ship_f2fed9009c316f3da0874f1f0af3a2eb', 'a:1:{s:13:"free_shipping";O:16:"WC_Shipping_Rate":5:{s:2:"id";s:13:"free_shipping";s:5:"label";s:13:"Free Shipping";s:4:"cost";i:0;s:5:"taxes";a:0:{}s:9:"method_id";s:13:"free_shipping";}}', 'no'),
(400, '_transient_timeout_wc_ship_0ec81e2819107278949e969d2c44c052', '1394620253', 'no'),
(401, '_transient_wc_ship_0ec81e2819107278949e969d2c44c052', 'a:1:{s:13:"free_shipping";O:16:"WC_Shipping_Rate":5:{s:2:"id";s:13:"free_shipping";s:5:"label";s:13:"Free Shipping";s:4:"cost";i:0;s:5:"taxes";a:0:{}s:9:"method_id";s:13:"free_shipping";}}', 'no'),
(402, '_transient_timeout_wc_ship_e07e0e464d4da0a446c73e112e499f74', '1394620253', 'no'),
(403, '_transient_wc_ship_e07e0e464d4da0a446c73e112e499f74', 'a:1:{s:13:"free_shipping";O:16:"WC_Shipping_Rate":5:{s:2:"id";s:13:"free_shipping";s:5:"label";s:13:"Free Shipping";s:4:"cost";i:0;s:5:"taxes";a:0:{}s:9:"method_id";s:13:"free_shipping";}}', 'no'),
(404, '_transient_timeout_wc_ship_f3e709eb008db9afc1493c8d4ac91ad1', '1394620254', 'no'),
(405, '_transient_wc_ship_f3e709eb008db9afc1493c8d4ac91ad1', 'a:1:{s:13:"free_shipping";O:16:"WC_Shipping_Rate":5:{s:2:"id";s:13:"free_shipping";s:5:"label";s:13:"Free Shipping";s:4:"cost";i:0;s:5:"taxes";a:0:{}s:9:"method_id";s:13:"free_shipping";}}', 'no'),
(406, '_transient_timeout_wc_ship_82021d7226973248440645e2254c678f', '1394620266', 'no'),
(407, '_transient_wc_ship_82021d7226973248440645e2254c678f', 'a:1:{s:13:"free_shipping";O:16:"WC_Shipping_Rate":5:{s:2:"id";s:13:"free_shipping";s:5:"label";s:13:"Free Shipping";s:4:"cost";i:0;s:5:"taxes";a:0:{}s:9:"method_id";s:13:"free_shipping";}}', 'no'),
(408, '_transient_timeout_wc_ship_3379a47da4ddfc6f32d518f57a778111', '1394620297', 'no'),
(409, '_transient_wc_ship_3379a47da4ddfc6f32d518f57a778111', 'a:1:{s:13:"free_shipping";O:16:"WC_Shipping_Rate":5:{s:2:"id";s:13:"free_shipping";s:5:"label";s:13:"Free Shipping";s:4:"cost";i:0;s:5:"taxes";a:0:{}s:9:"method_id";s:13:"free_shipping";}}', 'no'),
(410, '_transient_timeout_wc_ship_8bc1cb7994242ec0174ea6f25f0c7e9b', '1394620298', 'no'),
(411, '_transient_wc_ship_8bc1cb7994242ec0174ea6f25f0c7e9b', 'a:1:{s:13:"free_shipping";O:16:"WC_Shipping_Rate":5:{s:2:"id";s:13:"free_shipping";s:5:"label";s:13:"Free Shipping";s:4:"cost";i:0;s:5:"taxes";a:0:{}s:9:"method_id";s:13:"free_shipping";}}', 'no'),
(412, '_transient_timeout_wc_ship_007fea8ce2600c28d0b8af2eb953b7fe', '1394620298', 'no'),
(413, '_transient_wc_ship_007fea8ce2600c28d0b8af2eb953b7fe', 'a:1:{s:13:"free_shipping";O:16:"WC_Shipping_Rate":5:{s:2:"id";s:13:"free_shipping";s:5:"label";s:13:"Free Shipping";s:4:"cost";i:0;s:5:"taxes";a:0:{}s:9:"method_id";s:13:"free_shipping";}}', 'no'),
(414, '_transient_timeout_wc_ship_6ac99dcfbc33c51739b7587b917f2386', '1394620298', 'no'),
(415, '_transient_wc_ship_6ac99dcfbc33c51739b7587b917f2386', 'a:1:{s:13:"free_shipping";O:16:"WC_Shipping_Rate":5:{s:2:"id";s:13:"free_shipping";s:5:"label";s:13:"Free Shipping";s:4:"cost";i:0;s:5:"taxes";a:0:{}s:9:"method_id";s:13:"free_shipping";}}', 'no'),
(416, '_transient_timeout_wc_ship_dd1c7dfe33d7aed27898d54267fa1444', '1394620311', 'no'),
(417, '_transient_wc_ship_dd1c7dfe33d7aed27898d54267fa1444', 'a:1:{s:13:"free_shipping";O:16:"WC_Shipping_Rate":5:{s:2:"id";s:13:"free_shipping";s:5:"label";s:13:"Free Shipping";s:4:"cost";i:0;s:5:"taxes";a:0:{}s:9:"method_id";s:13:"free_shipping";}}', 'no'),
(418, '_transient_timeout_wc_ship_ed0057991a0177c91b3e4a791f6dbe8e', '1394620311', 'no'),
(419, '_transient_timeout_wc_ship_724c42aeb80ff92f5760771325881fd3', '1394620311', 'no'),
(420, '_transient_wc_ship_ed0057991a0177c91b3e4a791f6dbe8e', 'a:1:{s:13:"free_shipping";O:16:"WC_Shipping_Rate":5:{s:2:"id";s:13:"free_shipping";s:5:"label";s:13:"Free Shipping";s:4:"cost";i:0;s:5:"taxes";a:0:{}s:9:"method_id";s:13:"free_shipping";}}', 'no'),
(421, '_transient_timeout_wc_ship_81f2ed4df983192c337a5d98d05e955e', '1394620311', 'no'),
(422, '_transient_timeout_wc_ship_baadd9b577b08f162cf96af34ac60bc9', '1394620311', 'no'),
(423, '_transient_wc_ship_724c42aeb80ff92f5760771325881fd3', 'a:1:{s:13:"free_shipping";O:16:"WC_Shipping_Rate":5:{s:2:"id";s:13:"free_shipping";s:5:"label";s:13:"Free Shipping";s:4:"cost";i:0;s:5:"taxes";a:0:{}s:9:"method_id";s:13:"free_shipping";}}', 'no'),
(424, '_transient_wc_ship_81f2ed4df983192c337a5d98d05e955e', 'a:1:{s:13:"free_shipping";O:16:"WC_Shipping_Rate":5:{s:2:"id";s:13:"free_shipping";s:5:"label";s:13:"Free Shipping";s:4:"cost";i:0;s:5:"taxes";a:0:{}s:9:"method_id";s:13:"free_shipping";}}', 'no'),
(425, '_transient_wc_ship_baadd9b577b08f162cf96af34ac60bc9', 'a:1:{s:13:"free_shipping";O:16:"WC_Shipping_Rate":5:{s:2:"id";s:13:"free_shipping";s:5:"label";s:13:"Free Shipping";s:4:"cost";i:0;s:5:"taxes";a:0:{}s:9:"method_id";s:13:"free_shipping";}}', 'no'),
(426, '_transient_timeout_wc_ship_62f667066955d9df2d639a91522eae10', '1394620377', 'no'),
(427, '_transient_wc_ship_62f667066955d9df2d639a91522eae10', 'a:1:{s:13:"free_shipping";O:16:"WC_Shipping_Rate":5:{s:2:"id";s:13:"free_shipping";s:5:"label";s:13:"Free Shipping";s:4:"cost";i:0;s:5:"taxes";a:0:{}s:9:"method_id";s:13:"free_shipping";}}', 'no'),
(430, '_transient_timeout_wc_ship_6652e1233f0edae264f7034901abbd79', '1394647936', 'no'),
(431, '_transient_wc_ship_6652e1233f0edae264f7034901abbd79', 'a:1:{s:13:"free_shipping";O:16:"WC_Shipping_Rate":5:{s:2:"id";s:13:"free_shipping";s:5:"label";s:13:"Free Shipping";s:4:"cost";i:0;s:5:"taxes";a:0:{}s:9:"method_id";s:13:"free_shipping";}}', 'no'),
(432, '_transient_wc_uf_pid_98445f98e21fece4c092bccf3dc7ac25', 'a:1:{i:0;s:2:"21";}', 'yes'),
(435, 'category_children', 'a:0:{}', 'yes'),
(437, '_transient_timeout_wc_ship_b1639d5adbc6e6932792e82a4c88ddd4', '1394649076', 'no'),
(438, '_transient_wc_ship_b1639d5adbc6e6932792e82a4c88ddd4', 'a:1:{s:13:"free_shipping";O:16:"WC_Shipping_Rate":5:{s:2:"id";s:13:"free_shipping";s:5:"label";s:13:"Free Shipping";s:4:"cost";i:0;s:5:"taxes";a:0:{}s:9:"method_id";s:13:"free_shipping";}}', 'no'),
(439, '_wc_session_9aFeUi8ShobuEPEhDiij0BdMggMJK6lm', 'a:20:{s:4:"cart";s:6:"a:0:{}";s:15:"applied_coupons";s:6:"a:0:{}";s:23:"chosen_shipping_methods";s:31:"a:1:{i:0;s:13:"free_shipping";}";s:22:"shipping_method_counts";s:14:"a:1:{i:0;i:1;}";s:10:"wc_notices";N;s:23:"coupon_discount_amounts";s:6:"a:0:{}";s:19:"cart_contents_total";i:0;s:20:"cart_contents_weight";i:0;s:19:"cart_contents_count";i:0;s:17:"cart_contents_tax";i:0;s:5:"total";i:0;s:8:"subtotal";i:0;s:15:"subtotal_ex_tax";i:0;s:9:"tax_total";i:0;s:5:"taxes";s:6:"a:0:{}";s:14:"shipping_taxes";s:6:"a:0:{}";s:13:"discount_cart";i:0;s:14:"discount_total";i:0;s:14:"shipping_total";i:0;s:18:"shipping_tax_total";i:0;}', 'no'),
(440, '_wc_session_expires_9aFeUi8ShobuEPEhDiij0BdMggMJK6lm', '1394818321', 'no'),
(441, '_transient_timeout_wc_ship_4fdf9d3ce2a5a821623e2ac6966831db', '1394649125', 'no');
INSERT INTO `ma_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(442, '_transient_wc_ship_4fdf9d3ce2a5a821623e2ac6966831db', 'a:1:{s:13:"free_shipping";O:16:"WC_Shipping_Rate":5:{s:2:"id";s:13:"free_shipping";s:5:"label";s:13:"Free Shipping";s:4:"cost";i:0;s:5:"taxes";a:0:{}s:9:"method_id";s:13:"free_shipping";}}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `ma_postmeta`
--

CREATE TABLE IF NOT EXISTS `ma_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=70 ;

--
-- Dumping data for table `ma_postmeta`
--

INSERT INTO `ma_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 11, '_edit_last', '1'),
(3, 11, '_edit_lock', '1394614043:1'),
(4, 12, '_wp_attached_file', '2014/03/8.5ganesh-antq-Rs.630.jpg'),
(5, 12, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:3648;s:6:"height";i:2736;s:4:"file";s:33:"2014/03/8.5ganesh-antq-Rs.630.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:33:"8.5ganesh-antq-Rs.630-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:33:"8.5ganesh-antq-Rs.630-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:34:"8.5ganesh-antq-Rs.630-1024x768.jpg";s:5:"width";i:1024;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:31:"8.5ganesh-antq-Rs.630-90x90.jpg";s:5:"width";i:90;s:6:"height";i:90;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:33:"8.5ganesh-antq-Rs.630-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:33:"8.5ganesh-antq-Rs.630-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";d:2.79999999999999982236431605997495353221893310546875;s:6:"credit";s:0:"";s:6:"camera";s:6:"DSC-N2";s:7:"caption";s:0:"";s:17:"created_timestamp";i:1307725806;s:9:"copyright";s:0:"";s:12:"focal_length";s:3:"7.9";s:3:"iso";s:3:"160";s:13:"shutter_speed";s:5:"0.025";s:5:"title";s:0:"";}}'),
(6, 12, '_wp_attachment_image_alt', '8.5 inch ganesh antique'),
(7, 11, 'image', 'http://localhost/mandala/wp-content/uploads/2014/03/8.5ganesh-antq-Rs.6301-300x225.jpg'),
(8, 11, 'slide_layout', 'right'),
(9, 11, 'seo_follow', 'false'),
(10, 11, 'seo_noindex', 'false'),
(11, 14, '_wp_attached_file', '2014/03/8.5ganesh-antq-Rs.6301.jpg'),
(12, 14, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:3648;s:6:"height";i:2736;s:4:"file";s:34:"2014/03/8.5ganesh-antq-Rs.6301.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:34:"8.5ganesh-antq-Rs.6301-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:34:"8.5ganesh-antq-Rs.6301-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:35:"8.5ganesh-antq-Rs.6301-1024x768.jpg";s:5:"width";i:1024;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:32:"8.5ganesh-antq-Rs.6301-90x90.jpg";s:5:"width";i:90;s:6:"height";i:90;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:34:"8.5ganesh-antq-Rs.6301-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:34:"8.5ganesh-antq-Rs.6301-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";d:2.79999999999999982236431605997495353221893310546875;s:6:"credit";s:0:"";s:6:"camera";s:6:"DSC-N2";s:7:"caption";s:0:"";s:17:"created_timestamp";i:1307725806;s:9:"copyright";s:0:"";s:12:"focal_length";s:3:"7.9";s:3:"iso";s:3:"160";s:13:"shutter_speed";s:5:"0.025";s:5:"title";s:0:"";}}'),
(13, 14, '_wp_attachment_image_alt', '8.5 inch ganesh antique'),
(14, 11, '_layout', 'layout-left-content'),
(15, 11, 'slide-url', ''),
(16, 19, '_edit_last', '1'),
(17, 19, '_edit_lock', '1394614532:1'),
(18, 20, '_wp_attached_file', '2014/03/12-carvin-buddha-antq-Rs.1100.jpg'),
(19, 20, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2736;s:6:"height";i:3648;s:4:"file";s:41:"2014/03/12-carvin-buddha-antq-Rs.1100.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:41:"12-carvin-buddha-antq-Rs.1100-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:41:"12-carvin-buddha-antq-Rs.1100-225x300.jpg";s:5:"width";i:225;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:42:"12-carvin-buddha-antq-Rs.1100-768x1024.jpg";s:5:"width";i:768;s:6:"height";i:1024;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:39:"12-carvin-buddha-antq-Rs.1100-90x90.jpg";s:5:"width";i:90;s:6:"height";i:90;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:41:"12-carvin-buddha-antq-Rs.1100-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:41:"12-carvin-buddha-antq-Rs.1100-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";d:2.79999999999999982236431605997495353221893310546875;s:6:"credit";s:0:"";s:6:"camera";s:6:"DSC-N2";s:7:"caption";s:0:"";s:17:"created_timestamp";i:1307724902;s:9:"copyright";s:0:"";s:12:"focal_length";s:3:"7.9";s:3:"iso";s:3:"160";s:13:"shutter_speed";s:5:"0.025";s:5:"title";s:0:"";}}'),
(20, 20, '_wp_attachment_image_alt', '12 Inch Carving Buddha Antique'),
(21, 19, 'image', 'http://localhost/mandala/wp-content/uploads/2014/03/12-carvin-buddha-antq-Rs.1100-225x300.jpg'),
(22, 19, '_layout', 'layout-right-content'),
(23, 19, 'slide_layout', 'right'),
(24, 19, 'seo_follow', 'false'),
(25, 19, 'seo_noindex', 'false'),
(26, 21, '_edit_last', '1'),
(27, 21, '_edit_lock', '1394616392:1'),
(28, 21, '_product_attributes', 'a:2:{s:5:"color";a:6:{s:4:"name";s:5:"color";s:5:"value";s:41:"Antique, HK, RB, Torquoise, Black, Copper";s:8:"position";s:1:"0";s:10:"is_visible";i:1;s:12:"is_variation";i:0;s:11:"is_taxonomy";i:0;}s:6:"height";a:6:{s:4:"name";s:6:"height";s:5:"value";s:9:"12 Inches";s:8:"position";s:1:"2";s:10:"is_visible";i:1;s:12:"is_variation";i:0;s:11:"is_taxonomy";i:0;}}'),
(29, 21, '_visibility', 'visible'),
(30, 21, '_stock_status', 'instock'),
(31, 21, 'seo_follow', 'false'),
(32, 21, 'seo_noindex', 'false'),
(33, 21, 'total_sales', '10'),
(34, 21, '_downloadable', 'no'),
(35, 21, '_virtual', 'no'),
(36, 21, '_regular_price', '1300'),
(37, 21, '_sale_price', '1100'),
(38, 21, '_purchase_note', ''),
(39, 21, '_featured', 'no'),
(40, 21, '_weight', ''),
(41, 21, '_length', ''),
(42, 21, '_width', ''),
(43, 21, '_height', ''),
(44, 21, '_sku', ''),
(45, 21, '_sale_price_dates_from', ''),
(46, 21, '_sale_price_dates_to', ''),
(47, 21, '_price', '1100'),
(48, 21, '_sold_individually', ''),
(49, 21, '_manage_stock', 'no'),
(50, 21, '_backorders', 'no'),
(51, 21, '_stock', ''),
(52, 21, '_default_attributes', 'a:0:{}'),
(53, 21, '_product_image_gallery', ''),
(54, 21, '_min_variation_price', ''),
(55, 21, '_max_variation_price', ''),
(56, 21, '_min_price_variation_id', ''),
(57, 21, '_max_price_variation_id', ''),
(59, 21, '_thumbnail_id', '20'),
(60, 29, '_edit_last', '1'),
(61, 29, '_edit_lock', '1394645283:1'),
(64, 29, 'image', ''),
(65, 29, 'seo_follow', 'false'),
(66, 29, 'seo_noindex', 'true'),
(69, 8, '_edit_lock', '1394645824:1');

-- --------------------------------------------------------

--
-- Table structure for table `ma_posts`
--

CREATE TABLE IF NOT EXISTS `ma_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext NOT NULL,
  `post_title` text NOT NULL,
  `post_excerpt` text NOT NULL,
  `post_status` varchar(20) NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) NOT NULL DEFAULT 'open',
  `post_password` varchar(20) NOT NULL DEFAULT '',
  `post_name` varchar(200) NOT NULL DEFAULT '',
  `to_ping` text NOT NULL,
  `pinged` text NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=32 ;

--
-- Dumping data for table `ma_posts`
--

INSERT INTO `ma_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2014-03-12 06:55:24', '2014-03-12 06:55:24', 'Welcome to WordPress. This is your first post. Edit or delete it, then start blogging!', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2014-03-12 06:55:24', '2014-03-12 06:55:24', '', 0, 'http://localhost/mandala/?p=1', 0, 'post', '', 1),
(2, 1, '2014-03-12 06:55:24', '2014-03-12 06:55:24', 'This is an example page. It''s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I''m a bike messenger by day, aspiring actor by night, and this is my blog. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin'' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href="http://localhost/mandala/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'publish', 'open', 'open', '', 'sample-page', '', '', '2014-03-12 06:55:24', '2014-03-12 06:55:24', '', 0, 'http://localhost/mandala/?page_id=2', 0, 'page', '', 0),
(3, 1, '2014-03-12 06:57:51', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2014-03-12 06:57:51', '0000-00-00 00:00:00', '', 0, 'http://localhost/mandala/?p=3', 0, 'post', '', 0),
(4, 1, '2014-03-12 07:18:47', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2014-03-12 07:18:47', '0000-00-00 00:00:00', '', 0, 'http://localhost/mandala/?post_type=product&p=4', 0, 'product', '', 0),
(5, 1, '2014-03-12 07:19:55', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2014-03-12 07:19:55', '0000-00-00 00:00:00', '', 0, 'http://localhost/mandala/?p=5', 0, 'post', '', 0),
(6, 1, '2014-03-12 07:21:29', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2014-03-12 07:21:29', '0000-00-00 00:00:00', '', 0, 'http://localhost/mandala/?page_id=6', 0, 'page', '', 0),
(7, 1, '2014-03-12 07:22:24', '2014-03-12 07:22:24', '', 'Shop', '', 'publish', 'closed', 'open', '', 'shop', '', '', '2014-03-12 07:22:24', '2014-03-12 07:22:24', '', 0, 'http://localhost/mandala/?page_id=7', 0, 'page', '', 0),
(8, 1, '2014-03-12 07:22:25', '2014-03-12 07:22:25', '[woocommerce_cart]', 'Cart', '', 'publish', 'closed', 'open', '', 'cart', '', '', '2014-03-12 07:22:25', '2014-03-12 07:22:25', '', 0, 'http://localhost/mandala/?page_id=8', 0, 'page', '', 0),
(9, 1, '2014-03-12 07:22:25', '2014-03-12 07:22:25', '[woocommerce_checkout]', 'Checkout', '', 'publish', 'closed', 'open', '', 'checkout', '', '', '2014-03-12 07:22:25', '2014-03-12 07:22:25', '', 0, 'http://localhost/mandala/?page_id=9', 0, 'page', '', 0),
(10, 1, '2014-03-12 07:22:25', '2014-03-12 07:22:25', '[woocommerce_my_account]', 'My Account', '', 'publish', 'closed', 'open', '', 'my-account', '', '', '2014-03-12 07:22:25', '2014-03-12 07:22:25', '', 0, 'http://localhost/mandala/?page_id=10', 0, 'page', '', 0),
(11, 1, '2014-03-12 13:56:52', '2014-03-12 08:26:52', 'Regarded as the one of the most worshipped god in Hinduism, Ganesh always comes first before commencing any sacred rituals', '8.5 inch Antique Ganesh', '', 'publish', 'closed', 'closed', '', '8-5-inch-antique-ganesh', '', '', '2014-03-12 14:15:09', '2014-03-12 08:45:09', '', 0, 'http://localhost/mandala/?post_type=slide&#038;p=11', 0, 'slide', '', 0),
(12, 1, '2014-03-12 13:53:37', '2014-03-12 08:23:37', 'Regarded as the one of the most worshipped god in Hinduism, Ganesh always comes first before commencing any sacred rituals', '8.5 inch ganesh antique ', '', 'inherit', 'open', 'open', '', '8-5ganesh-antq-rs-630', '', '', '2014-03-12 13:53:37', '2014-03-12 08:23:37', '', 11, 'http://localhost/mandala/wp-content/uploads/2014/03/8.5ganesh-antq-Rs.630.jpg', 0, 'attachment', 'image/jpeg', 0),
(13, 1, '2014-03-12 13:57:41', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2014-03-12 13:57:41', '0000-00-00 00:00:00', '', 0, 'http://localhost/mandala/?post_type=slide&p=13', 0, 'slide', '', 0),
(14, 1, '2014-03-12 13:58:06', '2014-03-12 08:28:06', 'Regarded as the one of the most worshipped god in Hinduism, Ganesh always comes first before commencing any sacred rituals', '8.5 inch ganesh antique', 'ganesh', 'inherit', 'open', 'open', '', '8-5ganesh-antq-rs-630-2', '', '', '2014-03-12 13:58:06', '2014-03-12 08:28:06', '', 11, 'http://localhost/mandala/wp-content/uploads/2014/03/8.5ganesh-antq-Rs.6301.jpg', 0, 'attachment', 'image/jpeg', 0),
(15, 1, '2014-03-12 14:15:04', '2014-03-12 08:45:04', 'Regarded as the one of the most worshipped god in Hinduism, Ganesh always comes first before commencing any sacred rituals', '8.5 inch Antique Ganesh', '', 'inherit', 'open', 'open', '', '11-autosave-v1', '', '', '2014-03-12 14:15:04', '2014-03-12 08:45:04', '', 11, 'http://localhost/mandala/?p=15', 0, 'revision', '', 0),
(16, 1, '2014-03-12 13:59:21', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2014-03-12 13:59:21', '0000-00-00 00:00:00', '', 0, 'http://localhost/mandala/?p=16', 0, 'post', '', 0),
(17, 1, '2014-03-12 14:01:06', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2014-03-12 14:01:06', '0000-00-00 00:00:00', '', 0, 'http://localhost/mandala/?post_type=slide&p=17', 0, 'slide', '', 0),
(18, 1, '2014-03-12 14:17:10', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2014-03-12 14:17:10', '0000-00-00 00:00:00', '', 0, 'http://localhost/mandala/?post_type=slide&p=18', 0, 'slide', '', 0),
(19, 1, '2014-03-12 14:24:39', '2014-03-12 08:54:39', 'Beautifully crafted Buddha stands above other normal statue with exuberant emboss and is sure to enlighten the place as the Buddha himself is', '12 Inch Carving Buddha Antique', '', 'publish', 'closed', 'closed', '', '12-inch-carving-buddha-antique', '', '', '2014-03-12 14:24:39', '2014-03-12 08:54:39', '', 0, 'http://localhost/mandala/?post_type=slide&#038;p=19', 0, 'slide', '', 0),
(20, 1, '2014-03-12 14:22:09', '2014-03-12 08:52:09', 'Beautifully crafted Buddha stands above other normal statue with exuberant emboss and is sure to enlighten the place as the Buddha himself is', '12 Inch Carving Buddha Antique ', 'Buddha', 'inherit', 'open', 'open', '', '12-carvin-buddha-antq-rs-1100', '', '', '2014-03-12 14:22:09', '2014-03-12 08:52:09', '', 19, 'http://localhost/mandala/wp-content/uploads/2014/03/12-carvin-buddha-antq-Rs.1100.jpg', 0, 'attachment', 'image/jpeg', 0),
(21, 1, '2014-03-12 14:29:41', '2014-03-12 08:59:41', 'Beautifully crafted Buddha stands above other normal statue with exuberant emboss and is sure to enlighten the place as the Buddha himself is', '12 Inch Carving Buddha Antique', 'Beautifully crafted Buddha stands above other normal statue with exuberant emboss and is sure to enlighten the place as the Buddha himself is', 'publish', 'open', 'closed', '', '12-inch-carving-buddha-antique', '', '', '2014-03-12 14:46:39', '2014-03-12 09:16:39', '', 0, 'http://localhost/mandala/?post_type=product&#038;p=21', 0, 'product', '', 0),
(22, 1, '2014-03-12 14:31:18', '2014-03-12 09:01:18', '', 'Product #21 Variation', '', 'publish', 'open', 'open', '', 'product-21-variation', '', '', '2014-03-12 14:31:18', '2014-03-12 09:01:18', '', 21, 'http://localhost/mandala/?product_variation=product-21-variation', 0, 'product_variation', '', 0),
(26, 1, '2014-03-12 14:47:41', '2014-03-12 09:17:41', 'Beautifully crafted Buddha stands above other normal statue with exuberant emboss and is sure to enlighten the place as the Buddha himself is', '12 Inch Carving Buddha Antique', 'Beautifully crafted Buddha stands above other normal statue with exuberant emboss and is sure to enlighten the place as the Buddha himself is', 'inherit', 'open', 'open', '', '21-autosave-v1', '', '', '2014-03-12 14:47:41', '2014-03-12 09:17:41', '', 21, 'http://localhost/mandala/?p=26', 0, 'revision', '', 0),
(27, 1, '2014-03-12 14:58:48', '2014-03-12 09:28:48', '<h1>Checkout</h1>\n\n{{mj-checkout-form}}', 'Mijireh Secure Checkout', '', 'private', 'closed', 'closed', '', 'mijireh-secure-checkout', '', '', '2014-03-12 14:58:48', '2014-03-12 09:28:48', '', 0, 'http://localhost/mandala/?page_id=27', 0, 'page', '', 0),
(28, 1, '2014-03-12 22:52:40', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2014-03-12 22:52:40', '0000-00-00 00:00:00', '', 0, 'http://localhost/mandala/?post_type=shop_coupon&p=28', 0, 'shop_coupon', '', 0),
(29, 1, '2014-03-12 22:54:56', '2014-03-12 17:24:56', 'Hi Everyone. We''ve live now. Eager to serve you :D', 'Welcome', '', 'publish', 'open', 'open', '', 'welcome', '', '', '2014-03-12 22:58:01', '2014-03-12 17:28:01', '', 0, 'http://localhost/mandala/?p=29', 0, 'post', '', 0),
(30, 1, '2014-03-12 22:54:56', '2014-03-12 17:24:56', 'Hi Everyone. We''ve live now. Eager to serve you :D', 'Welcome', '', 'inherit', 'open', 'open', '', '29-revision-v1', '', '', '2014-03-12 22:54:56', '2014-03-12 17:24:56', '', 29, 'http://localhost/mandala/?p=30', 0, 'revision', '', 0),
(31, 1, '2014-03-12 22:55:17', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2014-03-12 22:55:17', '0000-00-00 00:00:00', '', 0, 'http://localhost/mandala/?p=31', 0, 'post', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `ma_terms`
--

CREATE TABLE IF NOT EXISTS `ma_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  UNIQUE KEY `slug` (`slug`),
  KEY `name` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `ma_terms`
--

INSERT INTO `ma_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'simple', 'simple', 0),
(3, 'grouped', 'grouped', 0),
(4, 'variable', 'variable', 0),
(5, 'external', 'external', 0),
(6, 'pending', 'pending', 0),
(7, 'failed', 'failed', 0),
(8, 'on-hold', 'on-hold', 0),
(9, 'processing', 'processing', 0),
(10, 'completed', 'completed', 0),
(11, 'refunded', 'refunded', 0),
(12, 'cancelled', 'cancelled', 0),
(13, 'buddha', 'buddha', 0),
(14, 'antique', 'antique', 0),
(15, 'Update', 'update', 0);

-- --------------------------------------------------------

--
-- Table structure for table `ma_term_relationships`
--

CREATE TABLE IF NOT EXISTS `ma_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ma_term_relationships`
--

INSERT INTO `ma_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(21, 2, 0),
(21, 13, 0),
(21, 14, 0),
(29, 15, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ma_term_taxonomy`
--

CREATE TABLE IF NOT EXISTS `ma_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `ma_term_taxonomy`
--

INSERT INTO `ma_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'product_type', '', 0, 1),
(3, 3, 'product_type', '', 0, 0),
(4, 4, 'product_type', '', 0, 0),
(5, 5, 'product_type', '', 0, 0),
(6, 6, 'shop_order_status', '', 0, 0),
(7, 7, 'shop_order_status', '', 0, 0),
(8, 8, 'shop_order_status', '', 0, 0),
(9, 9, 'shop_order_status', '', 0, 0),
(10, 10, 'shop_order_status', '', 0, 0),
(11, 11, 'shop_order_status', '', 0, 0),
(12, 12, 'shop_order_status', '', 0, 0),
(13, 13, 'product_tag', '', 0, 1),
(14, 14, 'product_tag', '', 0, 1),
(15, 15, 'category', 'This post is to notify about updates in sites or products', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ma_usermeta`
--

CREATE TABLE IF NOT EXISTS `ma_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=42 ;

--
-- Dumping data for table `ma_usermeta`
--

INSERT INTO `ma_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'first_name', ''),
(2, 1, 'last_name', ''),
(3, 1, 'nickname', 'neaGaze'),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'fresh'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, 'ma_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(11, 1, 'ma_user_level', '10'),
(12, 1, 'dismissed_wp_pointers', 'wp330_toolbar,wp330_saving_widgets,wp340_choose_image_from_library,wp340_customize_current_theme_link,wp350_media,wp360_revisions,wp360_locks'),
(13, 1, 'show_welcome_panel', '1'),
(14, 1, 'ma_dashboard_quick_press_last_post_id', '3'),
(15, 1, 'managenav-menuscolumnshidden', 'a:4:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";}'),
(16, 1, 'metaboxhidden_nav-menus', 'a:5:{i:0;s:8:"add-post";i:1;s:11:"add-product";i:2;s:12:"add-post_tag";i:3;s:15:"add-product_cat";i:4;s:15:"add-product_tag";}'),
(17, 1, '_woocommerce_persistent_cart', 'a:1:{s:4:"cart";a:0:{}}'),
(18, 1, 'ma_user-settings', 'editor=tinymce&uploader=1&libraryContent=browse&align=right'),
(19, 1, 'ma_user-settings-time', '1394615048'),
(20, 1, 'closedpostboxes_product', 'a:0:{}'),
(21, 1, 'metaboxhidden_product', 'a:1:{i:0;s:7:"slugdiv";}'),
(22, 1, 'billing_country', 'NP'),
(23, 1, 'billing_first_name', 'Nigesh'),
(24, 1, 'billing_last_name', 'Shakya'),
(25, 1, 'billing_company', 'IT CHULHO PVT. LTD.'),
(26, 1, 'billing_address_1', 'Yangal Manjushree Tole'),
(27, 1, 'billing_address_2', ''),
(28, 1, 'billing_city', 'Kathmandu'),
(29, 1, 'billing_state', 'Nepal'),
(30, 1, 'billing_postcode', '00977'),
(31, 1, 'billing_email', 'nizeshshakya@gmail.com'),
(32, 1, 'billing_phone', '9803472561'),
(33, 1, 'shipping_country', 'NP'),
(34, 1, 'shipping_first_name', 'Nigesh'),
(35, 1, 'shipping_last_name', 'Shakya'),
(36, 1, 'shipping_company', 'IT CHULHO PVT. LTD.'),
(37, 1, 'shipping_address_1', 'Yangal Manjushree Tole'),
(38, 1, 'shipping_address_2', ''),
(39, 1, 'shipping_city', 'Kathmandu'),
(40, 1, 'shipping_state', 'Nepal'),
(41, 1, 'shipping_postcode', '00977');

-- --------------------------------------------------------

--
-- Table structure for table `ma_users`
--

CREATE TABLE IF NOT EXISTS `ma_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) NOT NULL DEFAULT '',
  `user_pass` varchar(64) NOT NULL DEFAULT '',
  `user_nicename` varchar(50) NOT NULL DEFAULT '',
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `user_url` varchar(100) NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(60) NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `ma_users`
--

INSERT INTO `ma_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'neaGaze', '$P$BIdsaFQouyXMisXZRW17XMUYGBwczB0', 'neagaze', 'nizeshshakya@gmail.com', '', '2014-03-12 06:55:23', '', 0, 'neaGaze');

-- --------------------------------------------------------

--
-- Table structure for table `ma_woocommerce_attribute_taxonomies`
--

CREATE TABLE IF NOT EXISTS `ma_woocommerce_attribute_taxonomies` (
  `attribute_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `attribute_name` varchar(200) NOT NULL,
  `attribute_label` longtext,
  `attribute_type` varchar(200) NOT NULL,
  `attribute_orderby` varchar(200) NOT NULL,
  PRIMARY KEY (`attribute_id`),
  KEY `attribute_name` (`attribute_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ma_woocommerce_downloadable_product_permissions`
--

CREATE TABLE IF NOT EXISTS `ma_woocommerce_downloadable_product_permissions` (
  `permission_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `download_id` varchar(32) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `order_id` bigint(20) NOT NULL DEFAULT '0',
  `order_key` varchar(200) NOT NULL,
  `user_email` varchar(200) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `downloads_remaining` varchar(9) DEFAULT NULL,
  `access_granted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access_expires` datetime DEFAULT NULL,
  `download_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`permission_id`),
  KEY `download_order_key_product` (`product_id`,`order_id`,`order_key`,`download_id`),
  KEY `download_order_product` (`download_id`,`order_id`,`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ma_woocommerce_order_itemmeta`
--

CREATE TABLE IF NOT EXISTS `ma_woocommerce_order_itemmeta` (
  `meta_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `order_item_id` bigint(20) NOT NULL,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `order_item_id` (`order_item_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ma_woocommerce_order_items`
--

CREATE TABLE IF NOT EXISTS `ma_woocommerce_order_items` (
  `order_item_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `order_item_name` longtext NOT NULL,
  `order_item_type` varchar(200) NOT NULL DEFAULT '',
  `order_id` bigint(20) NOT NULL,
  PRIMARY KEY (`order_item_id`),
  KEY `order_id` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ma_woocommerce_tax_rates`
--

CREATE TABLE IF NOT EXISTS `ma_woocommerce_tax_rates` (
  `tax_rate_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `tax_rate_country` varchar(200) NOT NULL DEFAULT '',
  `tax_rate_state` varchar(200) NOT NULL DEFAULT '',
  `tax_rate` varchar(200) NOT NULL DEFAULT '',
  `tax_rate_name` varchar(200) NOT NULL DEFAULT '',
  `tax_rate_priority` bigint(20) NOT NULL,
  `tax_rate_compound` int(1) NOT NULL DEFAULT '0',
  `tax_rate_shipping` int(1) NOT NULL DEFAULT '1',
  `tax_rate_order` bigint(20) NOT NULL,
  `tax_rate_class` varchar(200) NOT NULL DEFAULT '',
  PRIMARY KEY (`tax_rate_id`),
  KEY `tax_rate_country` (`tax_rate_country`),
  KEY `tax_rate_state` (`tax_rate_state`),
  KEY `tax_rate_class` (`tax_rate_class`),
  KEY `tax_rate_priority` (`tax_rate_priority`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ma_woocommerce_tax_rate_locations`
--

CREATE TABLE IF NOT EXISTS `ma_woocommerce_tax_rate_locations` (
  `location_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `location_code` varchar(255) NOT NULL,
  `tax_rate_id` bigint(20) NOT NULL,
  `location_type` varchar(40) NOT NULL,
  PRIMARY KEY (`location_id`),
  KEY `tax_rate_id` (`tax_rate_id`),
  KEY `location_type` (`location_type`),
  KEY `location_type_code` (`location_type`,`location_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ma_woocommerce_termmeta`
--

CREATE TABLE IF NOT EXISTS `ma_woocommerce_termmeta` (
  `meta_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `woocommerce_term_id` bigint(20) NOT NULL,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `woocommerce_term_id` (`woocommerce_term_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `ma_woocommerce_termmeta`
--

INSERT INTO `ma_woocommerce_termmeta` (`meta_id`, `woocommerce_term_id`, `meta_key`, `meta_value`) VALUES
(1, 13, 'product_count_product_tag', '1'),
(2, 14, 'product_count_product_tag', '1');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
