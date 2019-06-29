-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Хост: localhost:3306
-- Время создания: Июн 30 2019 г., 02:07
-- Версия сервера: 5.7.26-0ubuntu0.18.04.1
-- Версия PHP: 7.1.26-1+ubuntu18.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `blog`
--

-- --------------------------------------------------------

--
-- Структура таблицы `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `categories`
--

INSERT INTO `categories` (`id`, `title`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Magento 2', 'afdsasdfasf', '2019-05-04 11:03:01', '2019-05-04 11:09:13');

-- --------------------------------------------------------

--
-- Структура таблицы `comments`
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

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migrations`
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
-- Структура таблицы `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `posts`
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
-- Дамп данных таблицы `posts`
--

INSERT INTO `posts` (`id`, `title`, `slug`, `content`, `category_id`, `user_id`, `status`, `views`, `is_featured`, `created_at`, `updated_at`, `dateOfPost`, `image`, `description`) VALUES
(2, 'How to Enable Persistent Shopping Cart in Magento 2', 'adfasfaf', '<p>In&nbsp;<a href=\"https://www.mageplaza.com/magento-2-extensions/\">Magento 2 store</a>, a&nbsp;<strong>persistent cart</strong>&nbsp;is one of the relatively effective features to decrease the&nbsp;<a href=\"https://www.mageplaza.com/magento-2-abandoned-cart-email/\">abandonment cart</a>. The persistent cart allows storing the product in the shopping cart the customers have not completed yet even when they sign out your site.</p>\r\n\r\n<h2>Reduce abandonment cart via the persistent cart</h2>\r\n\r\n<p>Almost of online customers will never have a final decision to buy although they are interested in your products. At that time, they will select the way to keep those items in their shopping cart. That is defined as the persistent shopping cart. With the persistent shopping cart, the&nbsp;<a href=\"https://www.mageplaza.com/magento-2-one-step-checkout-extension/\">incomplete checkout</a>&nbsp;will continue without&nbsp;<a href=\"https://www.mageplaza.com/magento-2-search-extension/\">searching</a>&nbsp;and interruption when the buyer come back.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Especially, don&rsquo;t care about what device is used to checkout, the persistent shopping cart follows the user id and update exactly their carts. Therefore, regardless of the device as tablet or mobile, the transactions are always on hold to enhance their shopping experience with this continuance.</p>\r\n\r\n<h2>How to enable persistent cart in Magento 2</h2>\r\n\r\n<p>To enable the persistent shopping cart in Magento 2 store, you need to do the following:</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Login to Magento 2 Admin, go to menu&nbsp;<code>Stores -&gt; Configuration -&gt; Customers -&gt; Persistent Shopping Cart</code>.</p>\r\n	</li>\r\n	<li>\r\n	<p>Leave the check box&nbsp;<code>Use system value</code>&nbsp;empty</p>\r\n	</li>\r\n	<li>\r\n	<p>Choose &ldquo;Yes&rdquo; option for this field.</p>\r\n	</li>\r\n	<li>\r\n	<p>Set the time for the updating of the persistent cookie in the&nbsp;<code>Persistence Lifetime</code>&nbsp;field. The used default value is 31,536,000 seconds.</p>\r\n	</li>\r\n	<li>\r\n	<p>Enable Remember Me to show a checkbox on&nbsp;<a href=\"https://www.mageplaza.com/magento-2-one-step-checkout-extension/checkout-login.html\">Login page</a>&nbsp;that allows saving the shopping cart information.</p>\r\n	</li>\r\n	<li>\r\n	<p>It is optional if you want to set default option &ldquo;Remember Me&rdquo; once they login to your site.</p>\r\n	</li>\r\n	<li>\r\n	<p>Set &ldquo;No&rdquo; option for&nbsp;<code>Clear Persistence on Sign Out</code>&nbsp;to ensure that all shopping cart information is saved.</p>\r\n	</li>\r\n	<li>\r\n	<p>Then, click on&nbsp;<code>Save</code>&nbsp;to enable the persistent shopping cart function on the storefront.</p>\r\n	</li>\r\n	<li>\r\n	<p>In the&nbsp;<code>Persist Shopping Cart</code>&nbsp;field, select &ldquo;Yes&rdquo; if you want to keep the persistent cookie when the&nbsp;<a href=\"https://www.mageplaza.com/devdocs/how-to-crete-update-delete-cookie-in-magento-2.html\">session cookie expires</a>.</p>\r\n	</li>\r\n</ul>\r\n\r\n<p><img alt=\"How to enable persistent cart in Magento 2\" src=\"https://cdn.mageplaza.com/media/general/Zsxfacs.png\" /></p>', 1, 1, 1, 0, 1, '2019-05-04 11:03:51', '2019-06-29 20:02:59', '2019-05-07', 'tcvYwHu49y.jpeg', '<p>In&nbsp;<a href=\"https://www.mageplaza.com/magento-2-extensions/\">Magento 2 store</a>, a&nbsp;<strong>persistent cart</strong>&nbsp;is one of the relatively effective features to decrease the&nbsp;<a href=\"https://www.mageplaza.com/magento-2-abandoned-cart-email/\">abandonment cart</a>. The persistent cart allows storing the product in the shopping cart the customers have not completed yet even when they sign out your site.</p>');

-- --------------------------------------------------------

--
-- Структура таблицы `post_tags`
--

CREATE TABLE `post_tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `post_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `post_tags`
--

INSERT INTO `post_tags` (`id`, `post_id`, `tag_id`, `created_at`, `updated_at`) VALUES
(1, 1, 2, NULL, NULL),
(2, 2, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `subscriptions`
--

CREATE TABLE `subscriptions` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `tags`
--

CREATE TABLE `tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `tags`
--

INSERT INTO `tags` (`id`, `title`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Magento 2', 'asdfasdfas', '2019-05-04 11:03:22', '2019-05-04 11:12:33');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
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
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `is_admin`, `status`, `remember_token`, `created_at`, `updated_at`, `avatar`) VALUES
(1, 'Andrej Pirog', 'pirog.andrej@gmail.com', '$2y$10$n53JQPto67ms8FcR0MwXj.alM0.H1WMZCtWSFE38/WSFqEPxnjeOK', 1, 0, 'FSOy2H0gKFASqrhMtkQTSajS73L4U2kc0CNkRwoAlZWRYG0cccynH75vvrva', '2019-05-04 11:00:19', '2019-06-29 19:19:21', 'kxrBj0ZNNI.jpeg');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Индексы таблицы `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `post_tags`
--
ALTER TABLE `post_tags`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `subscriptions`
--
ALTER TABLE `subscriptions`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;
--
-- AUTO_INCREMENT для таблицы `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT для таблицы `post_tags`
--
ALTER TABLE `post_tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT для таблицы `subscriptions`
--
ALTER TABLE `subscriptions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
