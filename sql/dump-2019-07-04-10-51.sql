-- MySQL dump 10.13  Distrib 5.7.26, for Linux (x86_64)
--
-- Host: localhost    Database: blog
-- ------------------------------------------------------
-- Server version	5.7.26-0ubuntu0.16.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Magento 2','afdsasdfasf','2019-05-04 11:03:01','2019-05-04 11:09:13'),(2,'SQL','sql','2019-07-04 03:54:24','2019-07-04 03:54:24');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (45,'2014_10_12_000000_create_users_table',1),(46,'2014_10_12_100000_create_password_resets_table',1),(47,'2018_10_16_080518_create_categories_table',1),(48,'2018_10_16_083703_create_tags_table',1),(49,'2018_10_16_083853_create_comments_table',1),(50,'2018_10_16_083909_create_posts_table',1),(51,'2018_10_16_085606_create_posts_tags_table',1),(52,'2018_10_17_110259_add_avatar_column_to_users',1),(53,'2018_10_17_130951_make_password_nullable',1),(54,'2018_11_13_082913_create_subscriptions_table',1),(55,'2018_11_21_152636_add_date_to_posts',1),(56,'2018_11_22_152310_add_image_to_posts',1),(57,'2018_12_07_152715_add_description_to_posts',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_tags`
--

DROP TABLE IF EXISTS `post_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `post_tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_tags`
--

LOCK TABLES `post_tags` WRITE;
/*!40000 ALTER TABLE `post_tags` DISABLE KEYS */;
INSERT INTO `post_tags` VALUES (1,1,2,NULL,NULL),(2,2,1,NULL,NULL),(3,3,2,NULL,NULL);
/*!40000 ALTER TABLE `post_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `posts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `views` int(11) NOT NULL DEFAULT '0',
  `is_featured` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `dateOfPost` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (2,'How to Enable Persistent Shopping Cart in Magento 2','adfasfaf','<p>In&nbsp;<a href=\"https://www.mageplaza.com/magento-2-extensions/\">Magento 2 store</a>, a&nbsp;<strong>persistent cart</strong>&nbsp;is one of the relatively effective features to decrease the&nbsp;<a href=\"https://www.mageplaza.com/magento-2-abandoned-cart-email/\">abandonment cart</a>. The persistent cart allows storing the product in the shopping cart the customers have not completed yet even when they sign out your site.</p>\r\n\r\n<h2>Reduce abandonment cart via the persistent cart</h2>\r\n\r\n<p>Almost of online customers will never have a final decision to buy although they are interested in your products. At that time, they will select the way to keep those items in their shopping cart. That is defined as the persistent shopping cart. With the persistent shopping cart, the&nbsp;<a href=\"https://www.mageplaza.com/magento-2-one-step-checkout-extension/\">incomplete checkout</a>&nbsp;will continue without&nbsp;<a href=\"https://www.mageplaza.com/magento-2-search-extension/\">searching</a>&nbsp;and interruption when the buyer come back.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Especially, don&rsquo;t care about what device is used to checkout, the persistent shopping cart follows the user id and update exactly their carts. Therefore, regardless of the device as tablet or mobile, the transactions are always on hold to enhance their shopping experience with this continuance.</p>\r\n\r\n<h2>How to enable persistent cart in Magento 2</h2>\r\n\r\n<p>To enable the persistent shopping cart in Magento 2 store, you need to do the following:</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Login to Magento 2 Admin, go to menu&nbsp;<code>Stores -&gt; Configuration -&gt; Customers -&gt; Persistent Shopping Cart</code>.</p>\r\n	</li>\r\n	<li>\r\n	<p>Leave the check box&nbsp;<code>Use system value</code>&nbsp;empty</p>\r\n	</li>\r\n	<li>\r\n	<p>Choose &ldquo;Yes&rdquo; option for this field.</p>\r\n	</li>\r\n	<li>\r\n	<p>Set the time for the updating of the persistent cookie in the&nbsp;<code>Persistence Lifetime</code>&nbsp;field. The used default value is 31,536,000 seconds.</p>\r\n	</li>\r\n	<li>\r\n	<p>Enable Remember Me to show a checkbox on&nbsp;<a href=\"https://www.mageplaza.com/magento-2-one-step-checkout-extension/checkout-login.html\">Login page</a>&nbsp;that allows saving the shopping cart information.</p>\r\n	</li>\r\n	<li>\r\n	<p>It is optional if you want to set default option &ldquo;Remember Me&rdquo; once they login to your site.</p>\r\n	</li>\r\n	<li>\r\n	<p>Set &ldquo;No&rdquo; option for&nbsp;<code>Clear Persistence on Sign Out</code>&nbsp;to ensure that all shopping cart information is saved.</p>\r\n	</li>\r\n	<li>\r\n	<p>Then, click on&nbsp;<code>Save</code>&nbsp;to enable the persistent shopping cart function on the storefront.</p>\r\n	</li>\r\n	<li>\r\n	<p>In the&nbsp;<code>Persist Shopping Cart</code>&nbsp;field, select &ldquo;Yes&rdquo; if you want to keep the persistent cookie when the&nbsp;<a href=\"https://www.mageplaza.com/devdocs/how-to-crete-update-delete-cookie-in-magento-2.html\">session cookie expires</a>.</p>\r\n	</li>\r\n</ul>\r\n\r\n<p><img alt=\"How to enable persistent cart in Magento 2\" src=\"https://cdn.mageplaza.com/media/general/Zsxfacs.png\" /></p>',1,1,1,0,1,'2019-05-04 11:03:51','2019-06-29 20:02:59','2019-05-07','tcvYwHu49y.jpeg','<p>In&nbsp;<a href=\"https://www.mageplaza.com/magento-2-extensions/\">Magento 2 store</a>, a&nbsp;<strong>persistent cart</strong>&nbsp;is one of the relatively effective features to decrease the&nbsp;<a href=\"https://www.mageplaza.com/magento-2-abandoned-cart-email/\">abandonment cart</a>. The persistent cart allows storing the product in the shopping cart the customers have not completed yet even when they sign out your site.</p>'),(3,'SQL команды часто используемые','sql-komandy-chasto-ispolzuemye','<p><strong>Sql-comands</strong></p>\r\n\r\n<p><strong>========================================================================</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>mysql -u admin -p magento04 &lt; /var/www/magento04.loc/magento04.sql</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>mysqldump -u admin -p magento04 &gt; /var/www/magento04.loc/magento04.sql</strong></p>\r\n\r\n<p><strong>=========================================================================</strong></p>\r\n\r\n<p><strong>example</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>mysql -u admin -p lampa-test &lt; /home/dev01/Downloads/magento/project/lampa227/lampa11042019.sql</strong></p>\r\n\r\n<p><strong>=========================================================================</strong></p>\r\n\r\n<p>&nbsp;</p>',2,1,1,0,1,'2019-07-04 03:56:37','2019-07-04 03:56:55','2019-07-04','MXufUpPKwC.jpeg','<p>SQL команды часто используемые</p>');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subscriptions`
--

DROP TABLE IF EXISTS `subscriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subscriptions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subscriptions`
--

LOCK TABLES `subscriptions` WRITE;
/*!40000 ALTER TABLE `subscriptions` DISABLE KEYS */;
/*!40000 ALTER TABLE `subscriptions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
INSERT INTO `tags` VALUES (1,'Magento 2','asdfasdfas','2019-05-04 11:03:22','2019-05-04 11:12:33'),(2,'SQL','sql','2019-07-04 03:54:37','2019-07-04 03:54:37');
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_admin` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '0',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Andrej Pirog','pirog.andrej@gmail.com','$2y$10$n53JQPto67ms8FcR0MwXj.alM0.H1WMZCtWSFE38/WSFqEPxnjeOK',1,0,'FSOy2H0gKFASqrhMtkQTSajS73L4U2kc0CNkRwoAlZWRYG0cccynH75vvrva','2019-05-04 11:00:19','2019-06-29 19:19:21','kxrBj0ZNNI.jpeg'),(2,'Жора','a@gmail.com','$2y$10$SGBVlPtCgY/PA0XnYNfQ3OLshb9FUJAGwmH9w4tKGLLD93cQb8CSC',0,0,'0uOWZqFou5PB5Gn9i8iSVyPvJwUBeO6Fu57ZDzmqiVr49n4yOAcUjey7UmS1','2019-07-03 03:04:02','2019-07-04 03:52:41','DZWSh1DwM5.jpeg');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-07-04 10:52:19
