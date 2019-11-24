-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 24, 2019 at 02:10 PM
-- Server version: 5.7.28-cll-lve
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `yavkcbyq_pirog000`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `title`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Magento 2', 'afdsasdfasf', '2019-05-04 11:03:01', '2019-05-04 11:09:13'),
(2, 'SQL', 'sql', '2019-07-04 03:54:24', '2019-07-04 03:54:24'),
(3, 'Test', 'test', '2019-07-09 02:20:27', '2019-07-09 02:20:27');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `text`, `user_id`, `post_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Хорошая статья', 1, 4, 1, '2019-07-09 02:57:48', '2019-07-09 02:58:43');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(45, '2014_10_12_000000_create_users_table', 1),
(46, '2014_10_12_100000_create_password_resets_table', 1),
(47, '2018_10_16_080518_create_categories_table', 1),
(48, '2018_10_16_083703_create_tags_table', 1),
(49, '2018_10_16_083853_create_comments_table', 1),
(50, '2018_10_16_083909_create_posts_table', 1),
(51, '2018_10_16_085606_create_posts_tags_table', 1),
(52, '2018_10_17_110259_add_avatar_column_to_users', 1),
(53, '2018_10_17_130951_make_password_nullable', 1),
(54, '2018_11_13_082913_create_subscriptions_table', 1),
(55, '2018_11_21_152636_add_date_to_posts', 1),
(56, '2018_11_22_152310_add_image_to_posts', 1),
(57, '2018_12_07_152715_add_description_to_posts', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
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
  `description` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `slug`, `content`, `category_id`, `user_id`, `status`, `views`, `is_featured`, `created_at`, `updated_at`, `dateOfPost`, `image`, `description`) VALUES
(2, 'How to Enable Persistent Shopping Cart in Magento 2', 'adfasfaf', '<p>In&nbsp;<a href=\"https://www.mageplaza.com/magento-2-extensions/\">Magento 2 store</a>, a&nbsp;<strong>persistent cart</strong>&nbsp;is one of the relatively effective features to decrease the&nbsp;<a href=\"https://www.mageplaza.com/magento-2-abandoned-cart-email/\">abandonment cart</a>. The persistent cart allows storing the product in the shopping cart the customers have not completed yet even when they sign out your site.</p>\r\n\r\n<h2>Reduce abandonment cart via the persistent cart</h2>\r\n\r\n<p>Almost of online customers will never have a final decision to buy although they are interested in your products. At that time, they will select the way to keep those items in their shopping cart. That is defined as the persistent shopping cart. With the persistent shopping cart, the&nbsp;<a href=\"https://www.mageplaza.com/magento-2-one-step-checkout-extension/\">incomplete checkout</a>&nbsp;will continue without&nbsp;<a href=\"https://www.mageplaza.com/magento-2-search-extension/\">searching</a>&nbsp;and interruption when the buyer come back.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Especially, don&rsquo;t care about what device is used to checkout, the persistent shopping cart follows the user id and update exactly their carts. Therefore, regardless of the device as tablet or mobile, the transactions are always on hold to enhance their shopping experience with this continuance.</p>\r\n\r\n<h2>How to enable persistent cart in Magento 2</h2>\r\n\r\n<p>To enable the persistent shopping cart in Magento 2 store, you need to do the following:</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Login to Magento 2 Admin, go to menu&nbsp;<code>Stores -&gt; Configuration -&gt; Customers -&gt; Persistent Shopping Cart</code>.</p>\r\n	</li>\r\n	<li>\r\n	<p>Leave the check box&nbsp;<code>Use system value</code>&nbsp;empty</p>\r\n	</li>\r\n	<li>\r\n	<p>Choose &ldquo;Yes&rdquo; option for this field.</p>\r\n	</li>\r\n	<li>\r\n	<p>Set the time for the updating of the persistent cookie in the&nbsp;<code>Persistence Lifetime</code>&nbsp;field. The used default value is 31,536,000 seconds.</p>\r\n	</li>\r\n	<li>\r\n	<p>Enable Remember Me to show a checkbox on&nbsp;<a href=\"https://www.mageplaza.com/magento-2-one-step-checkout-extension/checkout-login.html\">Login page</a>&nbsp;that allows saving the shopping cart information.</p>\r\n	</li>\r\n	<li>\r\n	<p>It is optional if you want to set default option &ldquo;Remember Me&rdquo; once they login to your site.</p>\r\n	</li>\r\n	<li>\r\n	<p>Set &ldquo;No&rdquo; option for&nbsp;<code>Clear Persistence on Sign Out</code>&nbsp;to ensure that all shopping cart information is saved.</p>\r\n	</li>\r\n	<li>\r\n	<p>Then, click on&nbsp;<code>Save</code>&nbsp;to enable the persistent shopping cart function on the storefront.</p>\r\n	</li>\r\n	<li>\r\n	<p>In the&nbsp;<code>Persist Shopping Cart</code>&nbsp;field, select &ldquo;Yes&rdquo; if you want to keep the persistent cookie when the&nbsp;<a href=\"https://www.mageplaza.com/devdocs/how-to-crete-update-delete-cookie-in-magento-2.html\">session cookie expires</a>.</p>\r\n	</li>\r\n</ul>\r\n\r\n<p><img alt=\"How to enable persistent cart in Magento 2\" src=\"https://cdn.mageplaza.com/media/general/Zsxfacs.png\" /></p>', 3, 1, 1, 0, 1, '2019-05-04 11:03:51', '2019-07-09 02:20:52', '2019-05-07', 'aeAIdfvWy4.jpeg', '<p>In&nbsp;Magento 2 store, a&nbsp;<strong>persistent cart</strong>&nbsp;is one of the relatively effective features to decrease the&nbsp;abandonment cart.</p>'),
(3, 'SQL команды часто используемые', 'sql-komandy-chasto-ispolzuemye', '<p><strong>Sql-comands</strong></p>\r\n\r\n<p><strong>========================================================================</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>mysql -u admin -p magento04 &lt; /var/www/magento04.loc/magento04.sql</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>mysqldump -u admin -p magento04 &gt; /var/www/magento04.loc/magento04.sql</strong></p>\r\n\r\n<p><strong>=========================================================================</strong></p>\r\n\r\n<p><strong>example</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>mysql -u admin -p lampa-test &lt; /home/dev01/Downloads/magento/project/lampa227/lampa11042019.sql</strong></p>\r\n\r\n<p><strong>=========================================================================</strong></p>\r\n\r\n<p>In this article, we will find <strong><a href=\"https://www.mageplaza.com/magento-2-module-development/create-admin-grid-magento-2.html\">how to create an Admin Grid in Magento 2</a></strong> backend. As you know, <strong>Magento 2 Grid</strong> is a kind of table which listing the items in your database table and provide you some features like: sort, filter, delete, update item, etc. The helloWorld for this is the grid of products, grid of customer.</p>\r\n\r\n<p>Magento 2 provide two ways to <strong>create Admin Grid</strong>: using layout and using component. We will find out the detail for both of them. Before we continue please follow this articles to create a <a href=\"https://www.mageplaza.com/magento-2-module-development/\">simple module</a> with admin menu, router which we will use to learn about grid. In this article, I will use the sample module <code>Mageplaza_HelloWorld</code> with some demo data:</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2>To Create Admin Grid</h2>\r\n\r\n<ul>\r\n	<li><a href=\"#step-1-create-database-schema\">Step 1: Create database schema</a></li>\r\n	<li><a href=\"#step-2-create-routes-admin\">Step 2: Create routes admin</a></li>\r\n	<li><a href=\"#step-3-create-admin-menu\">Step 3: Create admin menu</a></li>\r\n	<li><a href=\"#step-4-create-controller\">Step 4: Create Controller</a></li>\r\n	<li><a href=\"#step-5-method-1---create-admin-grid-using-component\">Step 5: Create Admin Grid using Component</a></li>\r\n	<li><a href=\"#step-6-method-2---create-admin-grid-using-layout\">Step 6: Create Admin Grid using Layout</a></li>\r\n</ul>\r\n\r\n<h3>Step 1: Create database schema</h3>\r\n\r\n<p>Database: We will use a simple database</p>\r\n\r\n<pre>\r\n<code>app/code/Mageplaza/HelloWorld/Setup/InstallSchema.php\r\n</code></pre>\r\n\r\n<p>This file will execute only one time when <a href=\"https://www.mageplaza.com/install-magento-2-extension/\">install the module</a>. Let put this content for this file to create above table:</p>\r\n\r\n<pre>\r\n<code>&lt;?php\r\n\r\nnamespace Mageplaza\\HelloWorld\\Setup;\r\n\r\nclass InstallSchema implements \\Magento\\Framework\\Setup\\InstallSchemaInterface\r\n{\r\n\r\n	public function install(\\Magento\\Framework\\Setup\\SchemaSetupInterface $setup, \\Magento\\Framework\\Setup\\ModuleContextInterface $context)\r\n	{\r\n		$installer = $setup;\r\n		$installer-&gt;startSetup();\r\n		if (!$installer-&gt;tableExists(&#39;mageplaza_helloworld_post&#39;)) {\r\n			$table = $installer-&gt;getConnection()-&gt;newTable(\r\n				$installer-&gt;getTable(&#39;mageplaza_helloworld_post&#39;)\r\n			)\r\n				-&gt;addColumn(\r\n					&#39;post_id&#39;,\r\n					\\Magento\\Framework\\DB\\Ddl\\Table::TYPE_INTEGER,\r\n					null,\r\n					[\r\n						&#39;identity&#39; =&gt; true,\r\n						&#39;nullable&#39; =&gt; false,\r\n						&#39;primary&#39;  =&gt; true,\r\n						&#39;unsigned&#39; =&gt; true,\r\n					],\r\n					&#39;Post ID&#39;\r\n				)\r\n				-&gt;addColumn(\r\n					&#39;name&#39;,\r\n					\\Magento\\Framework\\DB\\Ddl\\Table::TYPE_TEXT,\r\n					255,\r\n					[&#39;nullable =&gt; false&#39;],\r\n					&#39;Post Name&#39;\r\n				)\r\n				-&gt;addColumn(\r\n					&#39;url_key&#39;,\r\n					\\Magento\\Framework\\DB\\Ddl\\Table::TYPE_TEXT,\r\n					255,\r\n					[],\r\n					&#39;Post URL Key&#39;\r\n				)\r\n				-&gt;addColumn(\r\n					&#39;post_content&#39;,\r\n					\\Magento\\Framework\\DB\\Ddl\\Table::TYPE_TEXT,\r\n					&#39;64k&#39;,\r\n					[],\r\n					&#39;Post Post Content&#39;\r\n				)\r\n				-&gt;addColumn(\r\n					&#39;tags&#39;,\r\n					\\Magento\\Framework\\DB\\Ddl\\Table::TYPE_TEXT,\r\n					255,\r\n					[],\r\n					&#39;Post Tags&#39;\r\n				)\r\n				-&gt;addColumn(\r\n					&#39;status&#39;,\r\n					\\Magento\\Framework\\DB\\Ddl\\Table::TYPE_INTEGER,\r\n					1,\r\n					[],\r\n					&#39;Post Status&#39;\r\n				)\r\n				-&gt;addColumn(\r\n					&#39;featured_image&#39;,\r\n					\\Magento\\Framework\\DB\\Ddl\\Table::TYPE_TEXT,\r\n					255,\r\n					[],\r\n					&#39;Post Featured Image&#39;\r\n				)\r\n				-&gt;addColumn(\r\n					&#39;created_at&#39;,\r\n					\\Magento\\Framework\\DB\\Ddl\\Table::TYPE_TIMESTAMP,\r\n					null,\r\n					[&#39;nullable&#39; =&gt; false, &#39;default&#39; =&gt; \\Magento\\Framework\\DB\\Ddl\\Table::TIMESTAMP_INIT],\r\n					&#39;Created At&#39;\r\n				)-&gt;addColumn(\r\n					&#39;updated_at&#39;,\r\n					\\Magento\\Framework\\DB\\Ddl\\Table::TYPE_TIMESTAMP,\r\n					null,\r\n					[&#39;nullable&#39; =&gt; false, &#39;default&#39; =&gt; \\Magento\\Framework\\DB\\Ddl\\Table::TIMESTAMP_INIT_UPDATE],\r\n					&#39;Updated At&#39;)\r\n				-&gt;setComment(&#39;Post Table&#39;);\r\n			$installer-&gt;getConnection()-&gt;createTable($table);\r\n\r\n			$installer-&gt;getConnection()-&gt;addIndex(\r\n				$installer-&gt;getTable(&#39;mageplaza_helloworld_post&#39;),\r\n				$setup-&gt;getIdxName(\r\n					$installer-&gt;getTable(&#39;mageplaza_helloworld_post&#39;),\r\n					[&#39;name&#39;, &#39;url_key&#39;, &#39;post_content&#39;, &#39;tags&#39;, &#39;featured_image&#39;],\r\n					\\Magento\\Framework\\DB\\Adapter\\AdapterInterface::INDEX_TYPE_FULLTEXT\r\n				),\r\n				[&#39;name&#39;, &#39;url_key&#39;, &#39;post_content&#39;, &#39;tags&#39;, &#39;featured_image&#39;],\r\n				\\Magento\\Framework\\DB\\Adapter\\AdapterInterface::INDEX_TYPE_FULLTEXT\r\n			);\r\n		}\r\n		$installer-&gt;endSetup();\r\n	}\r\n}\r\n</code></pre>\r\n\r\n<p>We have done this in <a href=\"https://www.mageplaza.com/magento-2-module-development/how-to-create-crud-model-magento-2.html\">CRUD Models - Create Resource Model and Model Collection</a></p>\r\n\r\n<p><a name=\"step-2-create-routes-admin\"></a></p>\r\n\r\n<h3>Step 2: Create routes admin</h3>\r\n\r\n<p>File: <code>app/code/Mageplaza/HelloWorld/etc/adminhtml/routes.xml</code></p>\r\n\r\n<pre>\r\n<code>&lt;?xml version=&quot;1.0&quot;?&gt;\r\n&lt;config xmlns:xsi=&quot;<a href=\"http://www.w3.org/2001/XMLSchema-instance\">http://www.w3.org/2001/XMLSchema-instance</a>&quot; xsi:noNamespaceSchemaLocation=&quot;urn:magento:framework:App/etc/routes.xsd&quot;&gt;\r\n    &lt;router id=&quot;admin&quot;&gt;\r\n        &lt;route id=&quot;mageplaza_helloworld&quot; frontName=&quot;mageplaza_helloworld&quot;&gt;\r\n            &lt;module name=&quot;Mageplaza_HelloWorld&quot;/&gt;\r\n        &lt;/route&gt;\r\n    &lt;/router&gt;\r\n&lt;/config&gt;\r\n</code></pre>\r\n\r\n<h3>Step 3: Create admin menu</h3>\r\n\r\n<p>Admin menu/Route: we will use the route <code>mageplaza_helloworld</code> for our admin page and the menu link to:</p>\r\n\r\n<pre>\r\n<code>mageplaza_helloworld/post/index\r\n</code></pre>\r\n\r\n<p>Read <a href=\"https://www.mageplaza.com/magento-2-module-development/create-admin-menu-magento-2.html\">How to create admin menu</a></p>\r\n\r\n<p>Step 6.2: Create layout file</p>\r\n\r\n<p>Now we will need a layout file to connect with Grid Block and render the grid. Let&rsquo;s create this file:</p>\r\n\r\n<p>File: <code>app/code/Mageplaza/HelloWorld/view/adminhtml/layout/mageplaza_helloworld_post_index.xml</code></p>\r\n\r\n<pre>\r\n<code>&lt;?xml version=&quot;1.0&quot;?&gt;\r\n&lt;page xmlns:xsi=&quot;<a href=\"http://www.w3.org/2001/XMLSchema-instance\">http://www.w3.org/2001/XMLSchema-instance</a>&quot; xsi:noNamespaceSchemaLocation=&quot;urn:magento:framework:View/Layout/etc/page_configuration.xsd&quot;&gt;\r\n    &lt;update handle=&quot;styles&quot;/&gt;\r\n    &lt;body&gt;\r\n        &lt;referenceContainer name=&quot;content&quot;&gt;\r\n            &lt;block class=&quot;Mageplaza\\HelloWorld\\Block\\Adminhtml\\Post&quot; name=&quot;mageplaza_post_grid&quot;&gt;\r\n                &lt;block class=&quot;Magento\\Backend\\Block\\Widget\\Grid&quot; name=&quot;mageplaza_post_grid.grid&quot; as=&quot;grid&quot;&gt;\r\n                    &lt;arguments&gt;\r\n                        &lt;argument name=&quot;id&quot; xsi:type=&quot;string&quot;&gt;post_id&lt;/argument&gt;\r\n                        &lt;argument name=&quot;dataSource&quot; xsi:type=&quot;object&quot;&gt;Mageplaza\\HelloWorld\\Model\\ResourceModel\\Post\\Collection&lt;/argument&gt;\r\n                        &lt;argument name=&quot;default_sort&quot; xsi:type=&quot;string&quot;&gt;id&lt;/argument&gt;\r\n                        &lt;argument name=&quot;default_dir&quot; xsi:type=&quot;string&quot;&gt;ASC&lt;/argument&gt;\r\n                        &lt;argument name=&quot;save_parameters_in_session&quot; xsi:type=&quot;string&quot;&gt;1&lt;/argument&gt;\r\n                    &lt;/arguments&gt;\r\n                    &lt;block class=&quot;Magento\\Backend\\Block\\Widget\\Grid\\ColumnSet&quot; name=&quot;mageplaza_post_grid.grid.columnSet&quot; as=&quot;grid.columnSet&quot;&gt;\r\n                        &lt;arguments&gt;\r\n                            &lt;argument name=&quot;rowUrl&quot; xsi:type=&quot;array&quot;&gt;\r\n                                &lt;item name=&quot;path&quot; xsi:type=&quot;string&quot;&gt;*/*/edit&lt;/item&gt;\r\n                            &lt;/argument&gt;\r\n                        &lt;/arguments&gt;\r\n                        &lt;block class=&quot;Magento\\Backend\\Block\\Widget\\Grid\\Column&quot; as=&quot;post_id&quot;&gt;\r\n                            &lt;arguments&gt;\r\n                                &lt;argument name=&quot;header&quot; xsi:type=&quot;string&quot; translate=&quot;true&quot;&gt;ID&lt;/argument&gt;\r\n                                &lt;argument name=&quot;index&quot; xsi:type=&quot;string&quot;&gt;post_id&lt;/argument&gt;\r\n                                &lt;argument name=&quot;type&quot; xsi:type=&quot;string&quot;&gt;text&lt;/argument&gt;\r\n                                &lt;argument name=&quot;column_css_class&quot; xsi:type=&quot;string&quot;&gt;col-id&lt;/argument&gt;\r\n                                &lt;argument name=&quot;header_css_class&quot; xsi:type=&quot;string&quot;&gt;col-id&lt;/argument&gt;\r\n                            &lt;/arguments&gt;\r\n                        &lt;/block&gt;\r\n                        &lt;block class=&quot;Magento\\Backend\\Block\\Widget\\Grid\\Column&quot; as=&quot;name&quot;&gt;\r\n                            &lt;arguments&gt;\r\n                                &lt;argument name=&quot;header&quot; xsi:type=&quot;string&quot; translate=&quot;true&quot;&gt;Name&lt;/argument&gt;\r\n                                &lt;argument name=&quot;index&quot; xsi:type=&quot;string&quot;&gt;name&lt;/argument&gt;\r\n                                &lt;argument name=&quot;type&quot; xsi:type=&quot;string&quot;&gt;text&lt;/argument&gt;\r\n                                &lt;argument name=&quot;column_css_class&quot; xsi:type=&quot;string&quot;&gt;col-id&lt;/argument&gt;\r\n                                &lt;argument name=&quot;header_css_class&quot; xsi:type=&quot;string&quot;&gt;col-id&lt;/argument&gt;\r\n                            &lt;/arguments&gt;\r\n                        &lt;/block&gt;\r\n                        &lt;block class=&quot;Magento\\Backend\\Block\\Widget\\Grid\\Column&quot; as=&quot;created_at&quot;&gt;\r\n                            &lt;arguments&gt;\r\n                                &lt;argument name=&quot;header&quot; xsi:type=&quot;string&quot; translate=&quot;true&quot;&gt;Created&lt;/argument&gt;\r\n                                &lt;argument name=&quot;index&quot; xsi:type=&quot;string&quot;&gt;created_at&lt;/argument&gt;\r\n                                &lt;argument name=&quot;type&quot; xsi:type=&quot;string&quot;&gt;date&lt;/argument&gt;\r\n                                &lt;argument name=&quot;column_css_class&quot; xsi:type=&quot;string&quot;&gt;col-id&lt;/argument&gt;\r\n                                &lt;argument name=&quot;header_css_class&quot; xsi:type=&quot;string&quot;&gt;col-id&lt;/argument&gt;\r\n                            &lt;/arguments&gt;\r\n                        &lt;/block&gt;\r\n                        &lt;block class=&quot;Magento\\Backend\\Block\\Widget\\Grid\\Column&quot; as=&quot;updated_at&quot;&gt;\r\n                            &lt;arguments&gt;\r\n                                &lt;argument name=&quot;header&quot; xsi:type=&quot;string&quot; translate=&quot;true&quot;&gt;Modified&lt;/argument&gt;\r\n                                &lt;argument name=&quot;index&quot; xsi:type=&quot;string&quot;&gt;updated_at&lt;/argument&gt;\r\n                                &lt;argument name=&quot;type&quot; xsi:type=&quot;string&quot;&gt;date&lt;/argument&gt;\r\n                                &lt;argument name=&quot;column_css_class&quot; xsi:type=&quot;string&quot;&gt;col-id&lt;/argument&gt;\r\n                                &lt;argument name=&quot;header_css_class&quot; xsi:type=&quot;string&quot;&gt;col-id&lt;/argument&gt;\r\n                            &lt;/arguments&gt;\r\n                        &lt;/block&gt;\r\n                    &lt;/block&gt;\r\n                &lt;/block&gt;\r\n            &lt;/block&gt;\r\n        &lt;/referenceContainer&gt;\r\n    &lt;/body&gt;\r\n&lt;/page&gt;\r\n</code></pre>\r\n\r\n<p>In this layout file, we will define some argument for the grid. The main argument is the dataSource. This argument will link with the dataSource which we declare in the di.xml file above to connect to the database and get data for this grid.</p>\r\n\r\n<p>Step 6.4: Add Column</p>\r\n\r\n<p>The Column set will define the columns which will be display in the grid. If you want to use massAction, you can add this block to the grid element:</p>\r\n\r\n<pre>\r\n<code>&lt;block class=&quot;Magento\\Backend\\Block\\Widget\\Grid\\Massaction&quot; name=&quot;mageplaza.helloWorld.massaction&quot; as=&quot;grid.massaction&quot;&gt;\r\n    &lt;arguments&gt;\r\n        &lt;argument name=&quot;massaction_id_field&quot; xsi:type=&quot;string&quot;&gt;post_id&lt;/argument&gt;\r\n        &lt;argument name=&quot;form_field_name&quot; xsi:type=&quot;string&quot;&gt;ids&lt;/argument&gt;\r\n        &lt;argument name=&quot;use_select_all&quot; xsi:type=&quot;string&quot;&gt;1&lt;/argument&gt;\r\n        &lt;argument name=&quot;options&quot; xsi:type=&quot;array&quot;&gt;\r\n            &lt;item name=&quot;disable&quot; xsi:type=&quot;array&quot;&gt;\r\n                &lt;item name=&quot;label&quot; xsi:type=&quot;string&quot; translate=&quot;true&quot;&gt;Delete&lt;/item&gt;\r\n                &lt;item name=&quot;url&quot; xsi:type=&quot;string&quot;&gt;*/*/massDelete&lt;/item&gt;\r\n            &lt;/item&gt;\r\n        &lt;/argument&gt;\r\n    &lt;/arguments&gt;\r\n&lt;/block&gt;\r\n\r\n</code></pre>\r\n\r\n<p>After this, please refresh the cache and go to grid page to see the result. It may display like this:</p>\r\n\r\n<p><img alt=\"admin grid\" src=\"https://cdn.mageplaza.com/media/general/4cr0IXl.png\" /></p>\r\n\r\n<p><strong>Related</strong></p>\r\n\r\n<ul>\r\n	<li><a href=\"https://www.mageplaza.com/kb/magento-2-tutorial/\">Magento 2 tutorials for beginner</a></li>\r\n	<li><a href=\"https://www.mageplaza.com/download-magento/\">Download Magento 2</a></li>\r\n	<li><a href=\"https://www.mageplaza.com/magento-2-extensions/\">Best Magento 2 extensions</a></li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><a href=\"/magento-2-module-development/magento-2-acl-access-control-lists.html\">Admin ACL</a></p>\r\n\r\n<p><a href=\"/magento-2-module-development/magento-2-how-to-create-sql-setup-script.html\">Install / Upgrade script </a></p>\r\n\r\n<ul>\r\n	<li>\r\n	<p><a href=\"https://www.mageplaza.com/magento-2-module-development/\">10 Basic Tutorials</a></p>\r\n	</li>\r\n	<li><a href=\"https://www.mageplaza.com/magento-2-module-development/\">Magento 2 Module Development</a></li>\r\n	<li><a href=\"https://www.mageplaza.com/magento-2-module-development/magento-2-layout-block-template.html\">Magento 2 Block Template Ultimate Guides</a></li>\r\n	<li><a href=\"https://www.mageplaza.com/kb/how-create-hello-world-module-magento-2.html\">How to Create Module in Magento 2</a></li>\r\n	<li><a href=\"https://www.mageplaza.com/magento-2-module-development/how-to-create-controllers-magento-2.html\">Create Controller</a></li>\r\n	<li><a href=\"https://www.mageplaza.com/magento-2-module-development/how-to-create-crud-model-magento-2.html\">Models (CRUD)</a></li>\r\n	<li><a href=\"https://www.mageplaza.com/magento-2-module-development/view-block-layout-template-magento-2.html\">View: Layouts, Block and Templates</a></li>\r\n	<li><a href=\"https://www.mageplaza.com/magento-2-module-development/create-system-xml-configuration-magento-2.html\">Configuration - System.xml</a></li>\r\n	<li><a href=\"https://www.mageplaza.com/magento-2-module-development/create-admin-menu-magento-2.html\">Admin Menu</a></li>\r\n	<li><a href=\"https://www.mageplaza.com/magento-2-module-development/magento-2-acl-access-control-lists.html\">Admin ACL</a></li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><a href=\"https://www.mageplaza.com/magento-2-one-step-checkout-extension/?utm_source=mageplaza&amp;utm_medium=banner&amp;utm_campaign=kb\"><img alt=\"One Step Checkout for Magento 2 by Mageplaza\" src=\"https://cdn2.mageplaza.com/media/general2/JzvQvQF.jpg\" /> </a></p>\r\n\r\n<p>&nbsp;</p>', 3, 1, 1, 0, 1, '2019-07-04 03:56:37', '2019-07-09 02:21:05', '2019-07-04', 'yU3r8yhUAI.jpeg', '<p>SQL команды часто используемые</p>'),
(4, 'MySQL команды часто используемые', 'mysql-komandy-chasto-ispolzuemye', '<p>В этой статье хотел бы поделиться командами MySQL, которые мне приходилось более часто использовать.</p>\r\n\r\n<p>----------------</p>\r\n\r\n<p>1 - Сохранить дамп базы данных на диске</p>\r\n\r\n<p><strong><code>mysqldump -u username&nbsp;-p dbname&nbsp;&gt; /var/www/project.loc/dump-2019-06-23.sql</code></strong></p>\r\n\r\n<p><strong>username - имя пользователя базы данных</strong></p>\r\n\r\n<p><strong>dbname - название базы данных</strong></p>\r\n\r\n<p><strong>/var/www/project.loc/dump-2019-06-23.sql - путь и имя файла, в котором будет сохранен дамп базы данных</strong></p>\r\n\r\n<p><strong>после ввода этой команды необходимо будет ввести свой пароль&nbsp;</strong></p>\r\n\r\n<p>-----------------</p>\r\n\r\n<p>2 - Загрузить базу данных из дампа на диске</p>\r\n\r\n<p><strong><code>mysql -u username&nbsp;-p dbname&nbsp;&lt; /var/www/project.loc/dump-2019-06-23.sql</code></strong></p>\r\n\r\n<p><strong>username - имя пользователя базы данных</strong></p>\r\n\r\n<p><strong>dbname - название базы данных (предварительно эта база данных должна быть создана)</strong></p>\r\n\r\n<p><strong>/var/www/project.loc/dump-2019-06-23.sql - путь и имя файла, с&nbsp;которого&nbsp;будет загружен&nbsp;дамп базы данных</strong></p>\r\n\r\n<p><strong>после ввода этой команды необходимо будет ввести свой пароль&nbsp;</strong></p>\r\n\r\n<p><strong>-------------------</strong></p>\r\n\r\n<p>&nbsp;</p>', 2, 1, 1, 0, 1, '2019-07-09 02:49:00', '2019-07-09 02:57:17', '2019-07-08', 'Dz1vOSrOsW.png', '<p>В этой статье хотел бы поделиться часто используемыми командами MySQL ...</p>');

-- --------------------------------------------------------

--
-- Table structure for table `post_tags`
--

CREATE TABLE `post_tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `post_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_tags`
--

INSERT INTO `post_tags` (`id`, `post_id`, `tag_id`, `created_at`, `updated_at`) VALUES
(1, 1, 2, NULL, NULL),
(4, 4, 2, NULL, NULL),
(5, 2, 3, NULL, NULL),
(6, 3, 3, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subscriptions`
--

CREATE TABLE `subscriptions` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subscriptions`
--

INSERT INTO `subscriptions` (`id`, `email`, `token`, `created_at`, `updated_at`) VALUES
(1, 'pirog.andrej@gmail.com', 'RlHTG6bMtGbw9P0A5fRZAxkFkpoZKusxEmohNpu6VB1ZW7M52PrG2AvDH7u2IIb84rYLbmxHS7ZLnuCgRe8iRldAuntm8Rr21KNT', '2019-07-09 03:02:16', '2019-07-09 03:02:16');

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `title`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Magento 2', 'asdfasdfas', '2019-05-04 11:03:22', '2019-05-04 11:12:33'),
(2, 'SQL', 'sql', '2019-07-04 03:54:37', '2019-07-04 03:54:37'),
(3, 'Test', 'test', '2019-07-09 02:54:46', '2019-07-09 02:54:46');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_admin` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '0',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `is_admin`, `status`, `remember_token`, `created_at`, `updated_at`, `avatar`) VALUES
(1, 'Andrey Pirog', 'pirog.andrej@gmail.com', '$2y$10$lp.8FYEFXzZ9TJRttJC0l.I3Qb1V3f.KW6LdaGlb.wv0yA7pIbWNG', 1, 0, 'FSOy2H0gKFASqrhMtkQTSajS73L4U2kc0CNkRwoAlZWRYG0cccynH75vvrva', '2019-05-04 11:00:19', '2019-07-09 02:59:56', 'kxrBj0ZNNI.jpeg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post_tags`
--
ALTER TABLE `post_tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscriptions`
--
ALTER TABLE `subscriptions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `post_tags`
--
ALTER TABLE `post_tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `subscriptions`
--
ALTER TABLE `subscriptions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
