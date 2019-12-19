/*
 Navicat Premium Data Transfer

 Source Server         : Temp
 Source Server Type    : MySQL
 Source Server Version : 50645
 Source Host           : eu-cdbr-west-02.cleardb.net:3306
 Source Schema         : heroku_382551b9042cafe

 Target Server Type    : MySQL
 Target Server Version : 50645
 File Encoding         : 65001

 Date: 01/12/2019 21:38:32
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for box_products
-- ----------------------------
DROP TABLE IF EXISTS `box_products`;
CREATE TABLE `box_products` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `box_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `wining_chance` double(11,8) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of box_products
-- ----------------------------
BEGIN;
INSERT INTO `box_products` VALUES (1, 1, 1, 0.14054470, '2019-11-01 02:58:35', NULL);
INSERT INTO `box_products` VALUES (2, 1, 2, 0.14271650, '2019-11-01 02:58:35', NULL);
INSERT INTO `box_products` VALUES (3, 1, 3, 0.16318050, '2019-11-01 02:58:35', NULL);
INSERT INTO `box_products` VALUES (4, 1, 4, 0.21550190, '2019-11-01 02:58:35', NULL);
INSERT INTO `box_products` VALUES (5, 1, 5, 0.23117010, '2019-11-01 02:58:35', NULL);
INSERT INTO `box_products` VALUES (8, 1, 8, 0.69516740, '2019-11-01 02:58:35', NULL);
INSERT INTO `box_products` VALUES (9, 1, 9, 0.97673520, '2019-11-01 02:58:35', NULL);
INSERT INTO `box_products` VALUES (10, 1, 10, 3.23252830, '2019-11-01 02:58:35', NULL);
INSERT INTO `box_products` VALUES (11, 1, 11, 15.56368900, '2019-11-01 02:58:35', NULL);
INSERT INTO `box_products` VALUES (13, 1, 13, 30.50483040, '2019-11-01 02:58:35', NULL);
INSERT INTO `box_products` VALUES (14, 1, 14, 30.50483040, '2019-11-01 02:58:35', NULL);
INSERT INTO `box_products` VALUES (37, 14, 15, 0.10979430, '2019-11-17 17:23:07', NULL);
INSERT INTO `box_products` VALUES (38, 14, 16, 0.13862910, '2019-11-17 17:23:08', NULL);
INSERT INTO `box_products` VALUES (39, 14, 18, 0.17263250, '2019-11-17 17:23:09', NULL);
INSERT INTO `box_products` VALUES (40, 14, 19, 0.18299040, '2019-11-17 17:23:10', NULL);
INSERT INTO `box_products` VALUES (41, 14, 20, 0.19747170, '2019-11-17 17:23:11', NULL);
INSERT INTO `box_products` VALUES (42, 14, 21, 0.28008740, '2019-11-17 17:23:11', NULL);
INSERT INTO `box_products` VALUES (43, 14, 22, 1.84218540, '2019-11-17 17:23:13', NULL);
INSERT INTO `box_products` VALUES (44, 14, 23, 2.12779550, '2019-11-17 17:23:13', NULL);
INSERT INTO `box_products` VALUES (45, 14, 24, 3.11915480, '2019-11-17 17:23:16', NULL);
INSERT INTO `box_products` VALUES (46, 14, 25, 43.43620830, '2019-11-17 17:23:16', NULL);
INSERT INTO `box_products` VALUES (47, 14, 26, 43.43620830, '2019-11-17 17:23:18', NULL);
INSERT INTO `box_products` VALUES (48, 14, 17, 0.15334390, '2019-11-17 17:23:18', NULL);
INSERT INTO `box_products` VALUES (53, 16, 27, 10.00000000, NULL, '2019-11-29 13:55:35');
INSERT INTO `box_products` VALUES (54, 16, 28, 10.00000000, NULL, '2019-11-29 13:55:35');
INSERT INTO `box_products` VALUES (55, 16, 29, 10.00000000, NULL, '2019-11-29 13:55:35');
INSERT INTO `box_products` VALUES (56, 16, 32, 10.00000000, '2019-11-19 17:44:24', '2019-11-29 13:55:35');
INSERT INTO `box_products` VALUES (57, 16, 31, 10.00000000, '2019-11-19 17:44:25', '2019-11-29 13:55:35');
INSERT INTO `box_products` VALUES (58, 16, 30, 10.00000000, '2019-11-19 17:44:26', '2019-11-29 13:55:35');
INSERT INTO `box_products` VALUES (61, 16, 51, 40.00000000, '2019-11-29 13:55:35', '2019-11-29 13:55:35');
COMMIT;

-- ----------------------------
-- Table structure for boxes
-- ----------------------------
DROP TABLE IF EXISTS `boxes`;
CREATE TABLE `boxes` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_path` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `is_published` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of boxes
-- ----------------------------
BEGIN;
INSERT INTO `boxes` VALUES (1, 'Apple Selection eBox\r\n', 'images/boxes/nz6xu7UgPvenE2caovqQvXabNHjFKJ6xjIyBsI94.png', 4999, 1, '2019-10-31 07:40:57', NULL);
INSERT INTO `boxes` VALUES (14, 'Bags & Handbags eBox', 'images/boxes/74iMvDu079snJTiPVw1zRZiULTVFyx8zhMMSOjgS.png', 5900, 1, NULL, NULL);
INSERT INTO `boxes` VALUES (16, 'SAMSUNG BOX', 'images/boxes/UTkMCqH8BHHXyJvR6d9YGtkSog2WncrsrD1WQMaq.png', 1500, 1, NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for failed_jobs
-- ----------------------------
DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of migrations
-- ----------------------------
BEGIN;
INSERT INTO `migrations` VALUES (16, '2014_10_12_000000_create_users_table', 1);
INSERT INTO `migrations` VALUES (17, '2014_10_12_100000_create_password_resets_table', 1);
INSERT INTO `migrations` VALUES (29, '2019_08_19_000000_create_failed_jobs_table', 1);
INSERT INTO `migrations` VALUES (31, '2019_10_30_221220_create_products_table', 1);
INSERT INTO `migrations` VALUES (32, '2019_10_30_221234_create_boxes_table', 1);
INSERT INTO `migrations` VALUES (33, '2019_10_30_221300_create_box_products_table', 1);
INSERT INTO `migrations` VALUES (36, '2018_11_06_222923_create_transactions_table', 2);
INSERT INTO `migrations` VALUES (37, '2018_11_07_192923_create_transfers_table', 2);
INSERT INTO `migrations` VALUES (38, '2018_11_07_202152_update_transfers_table', 2);
INSERT INTO `migrations` VALUES (39, '2018_11_15_124230_create_wallets_table', 2);
INSERT INTO `migrations` VALUES (40, '2018_11_19_164609_update_transactions_table', 2);
INSERT INTO `migrations` VALUES (41, '2018_11_20_133759_add_fee_transfers_table', 2);
INSERT INTO `migrations` VALUES (42, '2018_11_22_131953_add_status_transfers_table', 2);
INSERT INTO `migrations` VALUES (43, '2018_11_22_133438_drop_refund_transfers_table', 2);
INSERT INTO `migrations` VALUES (44, '2019_05_03_000001_create_customer_columns', 2);
INSERT INTO `migrations` VALUES (45, '2019_05_03_000002_create_subscriptions_table', 2);
INSERT INTO `migrations` VALUES (46, '2019_05_13_111553_update_status_transfers_table', 2);
INSERT INTO `migrations` VALUES (47, '2019_06_25_103755_add_exchange_status_transfers_table', 2);
INSERT INTO `migrations` VALUES (48, '2019_07_29_184926_decimal_places_wallets_table', 2);
INSERT INTO `migrations` VALUES (49, '2019_10_02_193759_add_discount_transfers_table', 2);
INSERT INTO `migrations` VALUES (51, '2019_11_21_153442_create_complete_database', 3);
COMMIT;

-- ----------------------------
-- Table structure for order_details
-- ----------------------------
DROP TABLE IF EXISTS `order_details`;
CREATE TABLE `order_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `size` varchar(50) DEFAULT NULL,
  `color` varchar(50) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of order_details
-- ----------------------------
BEGIN;
INSERT INTO `order_details` VALUES (1, 1, 1, NULL, NULL, NULL, NULL);
INSERT INTO `order_details` VALUES (2, 1, 2, NULL, NULL, NULL, NULL);
INSERT INTO `order_details` VALUES (11, 11, 26, NULL, NULL, '2019-11-28 17:12:18', '2019-11-28 17:12:18');
INSERT INTO `order_details` VALUES (21, 21, 14, NULL, NULL, '2019-11-28 17:45:29', '2019-11-28 17:45:29');
INSERT INTO `order_details` VALUES (31, 31, 30, NULL, NULL, '2019-11-28 17:47:22', '2019-11-28 17:47:22');
INSERT INTO `order_details` VALUES (41, 31, 30, NULL, NULL, '2019-11-28 17:47:22', '2019-11-28 17:47:22');
INSERT INTO `order_details` VALUES (51, 31, 13, NULL, NULL, '2019-11-28 17:47:22', '2019-11-28 17:47:22');
INSERT INTO `order_details` VALUES (61, 41, 24, NULL, NULL, '2019-11-28 17:58:59', '2019-11-28 17:58:59');
INSERT INTO `order_details` VALUES (71, 51, 30, NULL, NULL, '2019-11-28 20:02:44', '2019-11-28 20:02:44');
COMMIT;

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of orders
-- ----------------------------
BEGIN;
INSERT INTO `orders` VALUES (1, 1, 1, '2019-11-25 19:22:38', '2019-11-28 20:13:13');
INSERT INTO `orders` VALUES (11, 1, 1, '2019-11-28 17:12:18', '2019-11-28 17:13:23');
INSERT INTO `orders` VALUES (21, 21, 1, '2019-11-28 17:45:29', '2019-11-28 17:47:46');
INSERT INTO `orders` VALUES (31, 21, 1, '2019-11-28 17:47:22', '2019-11-28 20:13:12');
INSERT INTO `orders` VALUES (41, 21, 1, '2019-11-28 17:58:59', '2019-11-28 20:13:11');
INSERT INTO `orders` VALUES (51, 21, 1, '2019-11-28 20:02:44', '2019-11-28 20:04:04');
COMMIT;

-- ----------------------------
-- Table structure for pages
-- ----------------------------
DROP TABLE IF EXISTS `pages`;
CREATE TABLE `pages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `slug` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pages
-- ----------------------------
BEGIN;
INSERT INTO `pages` VALUES (1, 'faq', 'FAQs', '<h1>How it Works</h1>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2>01.&nbsp;How does it work?</h2>\r\n\r\n<p>There are many&nbsp;<strong>eBoxes</strong>&nbsp;on this website. When you open one, you will find a random prize, chosen among the available items according to their chances. If you like what you just found, get it shipped straight to your house, or get the value of the item back as account credit.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2>02.&nbsp;Are the prizes truly random?</h2>\r\n\r\n<p>Of course. We use a&nbsp;<a href=\"https://en.wikipedia.org/wiki/Cryptographically_secure_pseudorandom_number_generator\"><strong>Cryptographically secure pseudorandom number generator</strong></a>. This means that nobody, not even us, can predict what the next chosen item will be.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2>03.&nbsp;Can I get my money back?</h2>\r\n\r\n<p>Once you deposit a sum on your account, you cannot get it back. Don&#39;t worry, though! Just buy a box and then get the prize shipped at your house, or try your luck again with another box if you don&#39;t like what you got!</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>', '2019-11-26 19:14:56', '2019-11-26 19:15:00');
COMMIT;

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of password_resets
-- ----------------------------
BEGIN;
INSERT INTO `password_resets` VALUES ('mahmud@gmail.com', '$2y$10$pVbKpEGyUKEe6FGmHVdPg.RgjPlp513IgLq2kdtLqScHpvZBpL2.m', '2019-11-24 11:03:32');
INSERT INTO `password_resets` VALUES ('mahmudbappy.pri@gmail.com', '$2y$10$PK5cRjwmEKIc/k/iZy3rHOna9VBokY/wi2Xmv5n26vNeUZ1pq3ceu', '2019-11-28 17:14:01');
INSERT INTO `password_resets` VALUES ('gunnfill@hotmail.com', '$2y$10$xAEiMVBBJE5q.vgEyHzHJOZkv6tEYqNwZ.77KQegoooiYjSYuwOcO', '2019-11-28 18:27:30');
COMMIT;

-- ----------------------------
-- Table structure for products
-- ----------------------------
DROP TABLE IF EXISTS `products`;
CREATE TABLE `products` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sell_back_price` bigint(20) NOT NULL,
  `delivery_fee` float(5,2) NOT NULL DEFAULT '0.00',
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sizes` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `colors` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of products
-- ----------------------------
BEGIN;
INSERT INTO `products` VALUES (1, 'MacBook Air 13\' Touch-ID 128 GB', 138000, 0.00, 'images/products/hHTf7SAPyHTWnaujVsIwfViJfMfn2Z91FVfwHCNF.png', NULL, NULL, '2019-10-31 07:44:18', '2019-11-10 02:09:16');
INSERT INTO `products` VALUES (2, 'iPhone 11 Pro', 135900, 0.00, 'images/products/4OQ5d9iB1ZxkfWcpSpmac29ZLNRzU72f36181Vow.png', NULL, NULL, '2019-10-31 07:45:34', '2019-11-10 02:09:04');
INSERT INTO `products` VALUES (3, 'iPhone XS', 118900, 0.00, 'images/products/65idWtPd10OYHvGtuk021V9wtlvwNg0FkAvLtEVI.png', NULL, NULL, '2019-10-31 07:46:15', '2019-11-10 02:08:48');
INSERT INTO `products` VALUES (4, 'iPad Pro 11', 90000, 0.00, 'images/products/jH9d2HuIsjdmNJXUf8ffp1WerMYcKrkvRkZ8G7Ji.png', NULL, NULL, '2019-10-31 07:46:15', '2019-11-10 02:08:38');
INSERT INTO `products` VALUES (5, 'iPhone 11', 83900, 0.00, 'images/products/6P8TBkk5SaEJCwphmEIHFV1plvFU3UNWZtW7kDdh.png', NULL, NULL, '2019-10-31 07:47:02', '2019-11-10 02:08:25');
INSERT INTO `products` VALUES (6, 'Apple Watch Series 5', 80900, 0.00, 'images/products/lVRPQBEMfdFnYuYiz811WcHExRLiOjNOmpPrTmaW.png', NULL, NULL, '2019-10-31 07:47:18', '2019-11-10 02:08:11');
INSERT INTO `products` VALUES (7, 'Apple Watch Nike', 43900, 0.00, 'images/products/9UaF8j87L4AVrtSrwgVAXLGml294XwjGME5tqAdH.png', NULL, NULL, '2019-10-31 07:47:18', '2019-11-10 02:05:23');
INSERT INTO `products` VALUES (8, 'AirPods Pro', 27900, 0.00, 'images/products/34SMyrQxSrWA6938mQgfuYsuajUJWqH4i6gqz9rj.png', NULL, NULL, '2019-10-31 07:48:32', '2019-11-10 02:05:14');
INSERT INTO `products` VALUES (9, 'Apple TV 4k', 19900, 0.00, 'images/products/B4VR2Jkp4zz9P2q3QJRR9d1VqulIfjYNXj8oAS74.png', NULL, NULL, '2019-10-31 07:48:31', '2019-11-10 02:05:03');
INSERT INTO `products` VALUES (10, 'Belkin Wireless Charging Pad', 6000, 0.00, 'images/products/urnbUtqHzXUbiT7oS7ycHq96G4rfQVwmoq9AYjkN.png', NULL, NULL, '2019-10-31 07:48:52', '2019-11-10 02:04:47');
INSERT INTO `products` VALUES (11, 'Apple Loop', 4900, 0.00, 'images/products/vSsginUXjJjh7UWr7T5rxCb7KmvhNI5KtikcCOHO.png', NULL, NULL, '2019-10-31 07:49:12', '2019-11-10 02:04:32');
INSERT INTO `products` VALUES (13, 'Adapter from USBC to USB', 2500, 0.00, 'images/products/KPJ4TQPGaTYwix3dDzpuZDNm2wgljpXfd7nvhVn7.png', NULL, NULL, '2019-10-31 07:49:51', '2019-11-10 02:02:27');
INSERT INTO `products` VALUES (14, 'Cable From Lightning to USBC', 2500, 0.00, 'images/products/m2DQtJFlR7tGrPONmF7Bp2jQp892NJES0NRSSeWl.png', NULL, NULL, '2019-10-31 07:50:10', '2019-11-10 02:00:08');
INSERT INTO `products` VALUES (15, 'Classic Chanel Bag small', 250000, 0.00, 'images/products/E9LnognaAksu0jrLnbOXgdFr6g8dSZRrzJNwXNUP.png', NULL, NULL, NULL, NULL);
INSERT INTO `products` VALUES (16, 'Shoulder Bag GG Marmont Medium', 198000, 0.00, 'images/products/fH0y32F3szX0Hdv4M1aWBWSqCLWUPT6MdN3ZLq7X.png', NULL, NULL, NULL, NULL);
INSERT INTO `products` VALUES (17, 'Saint Lauren Loulou medium', 179000, 0.00, 'images/products/sEBMBjVlxiuECnHIxV0lTDbEYly78n9GZLggSRJJ.png', NULL, NULL, NULL, NULL);
INSERT INTO `products` VALUES (18, 'Chloé Faye bag medium', 159000, 0.00, 'images/products/bPvBaGbYZZH3K57a1dkiJrdvAALZjPHtG0byzfcs.png', NULL, NULL, NULL, NULL);
INSERT INTO `products` VALUES (19, 'Prada Bag Odette in Leather', 150000, 0.00, 'images/products/CLvO1Lzgn1rpU8cbZpsuJWfvYt3eL0KUCDgMbJyG.png', NULL, NULL, NULL, NULL);
INSERT INTO `products` VALUES (20, 'Shopping Bag Gucci Ophidia Supreme', 139000, 0.00, 'images/products/U5Xagt9rbAj4OLMpukoZ4WRm6qtaVTcCee75woX1.png', NULL, NULL, NULL, NULL);
INSERT INTO `products` VALUES (21, 'Gucci Bag Marmont Matelassé Small', 98000, 0.00, 'images/products/b4Rdz5A6FqH7k5QnrAXApxYwxDejTNMhQbysnPZc.png', NULL, NULL, NULL, NULL);
INSERT INTO `products` VALUES (22, 'Anne Marie Guess Bag Crocodile Effect', 14900, 0.00, 'images/products/53IryuZjLrpMZBTz6kjlhXHZpa9aAQBvfRrKwvAZ.png', NULL, NULL, NULL, NULL);
INSERT INTO `products` VALUES (23, 'Guess Bag Shopper Bobbi Reversible', 12900, 0.00, 'images/products/4pgJ2PmSfapHEDLDEy36BONfRpSJI9WBbRmC8HjJ.png', NULL, NULL, NULL, NULL);
INSERT INTO `products` VALUES (24, 'O Bag', 8800, 0.00, 'images/products/XuVhcmj2kKz7AXUe1zIRLagsJCM7MKdZmOnWvF9E.png', NULL, NULL, NULL, NULL);
INSERT INTO `products` VALUES (25, 'Natural Material Zara Bag', 3000, 0.00, 'images/products/nnxeiAuUFFCVx0Chmdzq06I1XbJtLvy8bjB1yGlh.png', NULL, NULL, NULL, NULL);
INSERT INTO `products` VALUES (26, 'Shoulder Bag Zara', 3000, 0.00, 'images/products/tXgQZhhgVIBhBixarGv2riG6zjhEWLhaPWhq8UmG.png', NULL, NULL, NULL, NULL);
INSERT INTO `products` VALUES (27, 'Samsung Galaxy S10+128GB Sort', 100000, 0.00, 'images/products/U9XhHHxy0j52X5fPbYkhhPftGVLKyIUoJ3j1BYgp.webp', NULL, NULL, NULL, '2019-11-19 14:51:59');
INSERT INTO `products` VALUES (28, 'Samsung Galaxy S10 128GB Hvit', 90000, 0.00, 'images/products/Fu0cysaj5yD7eTMW8BJD7ckL7BsFJo2bdOqPRrUg.jpeg', NULL, NULL, NULL, NULL);
INSERT INTO `products` VALUES (29, 'Samsung Galaxy Buds, Sort', 10000, 0.00, 'images/products/xjTvpw0s76vmYWUcgllTpGbHqvKLiOmNQcxwshsa.webp', NULL, NULL, NULL, NULL);
INSERT INTO `products` VALUES (30, 'SAMSUNG CHARGER', 600, 0.00, 'images/products/G5GsgkKgaRXcsihx12mzANbyXzoGmDbaLHYbSaWf.jpeg', NULL, NULL, NULL, '2019-11-19 17:37:05');
INSERT INTO `products` VALUES (31, 'SAMSUNG 12\" 3D Phone Screen Magnifier', 1900, 0.00, 'images/products/r6ZUA0EIGnF9tXYCdBZWXg7JIDJDMXRhIm4fWUfc.webp', NULL, NULL, NULL, NULL);
INSERT INTO `products` VALUES (32, 'SAMSUNG StickDriv 32 GB', 500, 0.00, 'images/products/LFyLMz4WJpXrutbFFaWdAvMBkE2N5185M6cxdyGL.jpeg', NULL, NULL, NULL, NULL);
INSERT INTO `products` VALUES (51, 'ssdfsdffsd', 22200, 100.00, 'images/products/jPb2Kaz1R6yewAUpBttyV3mw9Mg3TaldMU4belrP.png', '234,2345,444', 'ewr,wer,wrf', '2019-11-29 13:54:43', '2019-11-29 13:54:43');
COMMIT;

-- ----------------------------
-- Table structure for settings
-- ----------------------------
DROP TABLE IF EXISTS `settings`;
CREATE TABLE `settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `value` mediumtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of settings
-- ----------------------------
BEGIN;
INSERT INTO `settings` VALUES (1, 'stripe_public_key', 'pk_test_p6MeAPWtukspEelUeRLgSEFj');
INSERT INTO `settings` VALUES (2, 'stripe_secret_key', 'sk_test_SWDHDxcF9Y81guBTCxUb6Tx3');
COMMIT;

-- ----------------------------
-- Table structure for subscriptions
-- ----------------------------
DROP TABLE IF EXISTS `subscriptions`;
CREATE TABLE `subscriptions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stripe_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stripe_status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stripe_plan` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int(11) NOT NULL,
  `trial_ends_at` timestamp NULL DEFAULT NULL,
  `ends_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `subscriptions_user_id_stripe_status_index` (`user_id`,`stripe_status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Table structure for transactions
-- ----------------------------
DROP TABLE IF EXISTS `transactions`;
CREATE TABLE `transactions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `payable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payable_id` bigint(20) unsigned NOT NULL,
  `wallet_id` int(10) unsigned DEFAULT NULL,
  `type` enum('deposit','withdraw') COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` bigint(20) NOT NULL,
  `confirmed` tinyint(1) NOT NULL,
  `meta` text COLLATE utf8mb4_unicode_ci,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `transactions_uuid_unique` (`uuid`),
  KEY `transactions_payable_type_payable_id_index` (`payable_type`,`payable_id`),
  KEY `payable_type_ind` (`payable_type`,`payable_id`,`type`),
  KEY `payable_confirmed_ind` (`payable_type`,`payable_id`,`confirmed`),
  KEY `payable_type_confirmed_ind` (`payable_type`,`payable_id`,`type`,`confirmed`),
  KEY `transactions_type_index` (`type`),
  KEY `transactions_wallet_id_foreign` (`wallet_id`),
  CONSTRAINT `transactions_wallet_id_foreign` FOREIGN KEY (`wallet_id`) REFERENCES `wallets` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=2651 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of transactions
-- ----------------------------
BEGIN;
INSERT INTO `transactions` VALUES (1, 'App\\Models\\User', 1, 1, 'deposit', 3000, 1, NULL, '194eb318-9114-4f78-92bf-a7f24172ad5e', '2019-11-17 15:25:58', '2019-11-17 15:25:58');
INSERT INTO `transactions` VALUES (2, 'App\\Models\\User', 1, 1, 'deposit', 3000, 1, NULL, '831d0816-8b0b-4ff1-a7c0-ccf87d672917', '2019-11-17 15:26:41', '2019-11-17 15:26:41');
INSERT INTO `transactions` VALUES (3, 'App\\Models\\User', 1, 1, 'withdraw', -5900, 1, '{\"title\":\"Bags & Handbags eBox\",\"description\":\"Purchase of Product #14\"}', '81b797d4-4f80-493b-984b-7d20880784b9', '2019-11-17 15:26:55', '2019-11-17 15:26:55');
INSERT INTO `transactions` VALUES (4, 'App\\Models\\Box', 14, 10, 'deposit', 5900, 1, '{\"title\":\"Bags & Handbags eBox\",\"description\":\"Purchase of Product #14\"}', '73fddf69-e8d0-481e-9b5a-34a3f118d7d6', '2019-11-17 15:26:55', '2019-11-17 15:26:55');
INSERT INTO `transactions` VALUES (5, 'App\\Models\\User', 1, 1, 'deposit', 3000, 1, NULL, '18d32c08-c544-485d-8754-feaf10424bba', '2019-11-17 15:27:07', '2019-11-17 15:27:07');
INSERT INTO `transactions` VALUES (6, 'App\\Models\\User', 1, 1, 'deposit', 10000, 1, NULL, '4c1667ab-a809-4a14-8514-8eb1eb122fa2', '2019-11-19 12:16:58', '2019-11-19 12:16:58');
INSERT INTO `transactions` VALUES (7, 'App\\Models\\User', 1, 1, 'withdraw', -4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', '00b91cfb-db8f-46ca-96c6-d4d40bc06733', '2019-11-19 12:17:26', '2019-11-19 12:17:26');
INSERT INTO `transactions` VALUES (8, 'App\\Models\\Box', 1, 5, 'deposit', 4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', '98a5c2ce-76bc-4f5e-8a68-68e9919734e3', '2019-11-19 12:17:26', '2019-11-19 12:17:26');
INSERT INTO `transactions` VALUES (9, 'App\\Models\\User', 1, 1, 'withdraw', -4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', 'd4f33f4e-461a-4685-ae91-377d057de947', '2019-11-19 12:17:40', '2019-11-19 12:17:40');
INSERT INTO `transactions` VALUES (10, 'App\\Models\\Box', 1, 5, 'deposit', 4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', '50f7111f-23d0-48e9-8c8f-bd09af711df3', '2019-11-19 12:17:40', '2019-11-19 12:17:40');
INSERT INTO `transactions` VALUES (11, 'App\\Models\\User', 1, 1, 'deposit', 2500, 1, NULL, '922cb7cf-3335-4cf5-a6a7-bd747f5eb673', '2019-11-19 12:18:02', '2019-11-19 12:18:02');
INSERT INTO `transactions` VALUES (12, 'App\\Models\\User', 6, 11, 'deposit', 100000, 1, NULL, '130ddd23-af6f-4f6b-b88d-e99fbf8543a4', '2019-11-19 12:35:03', '2019-11-19 12:35:03');
INSERT INTO `transactions` VALUES (13, 'App\\Models\\User', 6, 11, 'withdraw', -4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', 'fb732db8-746e-40bf-bda2-5cac7ac44e85', '2019-11-19 12:35:49', '2019-11-19 12:35:49');
INSERT INTO `transactions` VALUES (14, 'App\\Models\\Box', 1, 5, 'deposit', 4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', '4854f937-178f-4396-a018-4da136d48314', '2019-11-19 12:35:49', '2019-11-19 12:35:49');
INSERT INTO `transactions` VALUES (15, 'App\\Models\\User', 6, 11, 'withdraw', -4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', '3d34bf8f-c190-4e2a-b701-d83956f93872', '2019-11-19 12:36:08', '2019-11-19 12:36:08');
INSERT INTO `transactions` VALUES (16, 'App\\Models\\Box', 1, 5, 'deposit', 4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', 'cf421c9c-793a-4ec1-8f8c-d4d5bb337191', '2019-11-19 12:36:09', '2019-11-19 12:36:09');
INSERT INTO `transactions` VALUES (17, 'App\\Models\\User', 6, 11, 'deposit', 2500, 1, NULL, 'dd1fdbf9-214d-45c5-8dc8-3b2e294685cc', '2019-11-19 13:01:41', '2019-11-19 13:01:41');
INSERT INTO `transactions` VALUES (18, 'App\\Models\\User', 6, 11, 'deposit', 2500, 1, NULL, '4a03461e-3b2b-4b57-a997-cfd3ee76d9e0', '2019-11-19 13:01:45', '2019-11-19 13:01:45');
INSERT INTO `transactions` VALUES (19, 'App\\Models\\User', 6, 11, 'deposit', 2500, 1, NULL, '5455be35-6c90-4851-9fa5-dd55afd17c76', '2019-11-19 13:01:47', '2019-11-19 13:01:47');
INSERT INTO `transactions` VALUES (20, 'App\\Models\\User', 6, 11, 'deposit', 2500, 1, NULL, '710d2ff9-89bf-4da7-bbb0-2afb48aeab5d', '2019-11-19 13:01:55', '2019-11-19 13:01:55');
INSERT INTO `transactions` VALUES (21, 'App\\Models\\User', 6, 11, 'deposit', 2500, 1, NULL, '484790a6-4d1f-4eb9-87c4-d3d0ea9a795e', '2019-11-19 13:02:02', '2019-11-19 13:02:02');
INSERT INTO `transactions` VALUES (22, 'App\\Models\\User', 6, 11, 'deposit', 2500, 1, NULL, 'ca9b5e74-b48f-4ec2-8cf8-65601dac5c4a', '2019-11-19 13:02:06', '2019-11-19 13:02:06');
INSERT INTO `transactions` VALUES (23, 'App\\Models\\User', 6, 11, 'deposit', 2500, 1, NULL, '1bbadfb5-3887-4c5b-96a4-a0a5fb17de43', '2019-11-19 13:02:10', '2019-11-19 13:02:10');
INSERT INTO `transactions` VALUES (24, 'App\\Models\\User', 6, 11, 'withdraw', -5900, 1, '{\"title\":\"Bags & Handbags eBox\",\"description\":\"Purchase of Product #14\"}', 'a23eaad2-f30b-48bc-90e2-2f7d18bd69a3', '2019-11-19 13:04:48', '2019-11-19 13:04:48');
INSERT INTO `transactions` VALUES (25, 'App\\Models\\Box', 14, 10, 'deposit', 5900, 1, '{\"title\":\"Bags & Handbags eBox\",\"description\":\"Purchase of Product #14\"}', 'a4a5db2f-bb87-46b1-9e06-b8f04a43dba3', '2019-11-19 13:04:48', '2019-11-19 13:04:48');
INSERT INTO `transactions` VALUES (26, 'App\\Models\\User', 6, 11, 'withdraw', -5900, 1, '{\"title\":\"Bags & Handbags eBox\",\"description\":\"Purchase of Product #14\"}', 'cb9b2fa6-beae-4810-a484-e572511591f7', '2019-11-19 13:05:32', '2019-11-19 13:05:32');
INSERT INTO `transactions` VALUES (27, 'App\\Models\\Box', 14, 10, 'deposit', 5900, 1, '{\"title\":\"Bags & Handbags eBox\",\"description\":\"Purchase of Product #14\"}', 'fb58503a-9255-487c-8323-6e12a58aaba2', '2019-11-19 13:05:32', '2019-11-19 13:05:32');
INSERT INTO `transactions` VALUES (28, 'App\\Models\\User', 6, 11, 'withdraw', -5900, 1, '{\"title\":\"Bags & Handbags eBox\",\"description\":\"Purchase of Product #14\"}', 'cfb92995-ef56-4c63-ac5e-7c852e13bb91', '2019-11-19 13:05:43', '2019-11-19 13:05:43');
INSERT INTO `transactions` VALUES (29, 'App\\Models\\Box', 14, 10, 'deposit', 5900, 1, '{\"title\":\"Bags & Handbags eBox\",\"description\":\"Purchase of Product #14\"}', 'b6db1242-905e-4fd6-bafd-a785b02fbfa3', '2019-11-19 13:05:43', '2019-11-19 13:05:43');
INSERT INTO `transactions` VALUES (30, 'App\\Models\\User', 6, 11, 'withdraw', -5900, 1, '{\"title\":\"Bags & Handbags eBox\",\"description\":\"Purchase of Product #14\"}', '8c4c050a-4783-4354-8a14-c393002fa532', '2019-11-19 13:15:31', '2019-11-19 13:15:31');
INSERT INTO `transactions` VALUES (31, 'App\\Models\\Box', 14, 10, 'deposit', 5900, 1, '{\"title\":\"Bags & Handbags eBox\",\"description\":\"Purchase of Product #14\"}', 'c6376606-78b2-4f0e-a5ec-ddef325e0592', '2019-11-19 13:15:32', '2019-11-19 13:15:32');
INSERT INTO `transactions` VALUES (32, 'App\\Models\\User', 1, 1, 'deposit', 1000000, 1, NULL, '9de68852-d50d-4b9c-b486-2a8178d3ebe3', '2019-11-19 13:24:41', '2019-11-19 13:24:41');
INSERT INTO `transactions` VALUES (33, 'App\\Models\\User', 1, 1, 'withdraw', -4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', 'e0dfb758-a51a-49b9-b1b9-f280da44d1bf', '2019-11-19 13:25:47', '2019-11-19 13:25:47');
INSERT INTO `transactions` VALUES (34, 'App\\Models\\Box', 1, 5, 'deposit', 4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', '294f6a2f-b1e5-468f-b840-6fd08397d719', '2019-11-19 13:25:47', '2019-11-19 13:25:47');
INSERT INTO `transactions` VALUES (35, 'App\\Models\\User', 1, 1, 'withdraw', -4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', '60fdb6b6-ce30-40f2-b27a-44c25e1b27a5', '2019-11-19 13:26:01', '2019-11-19 13:26:01');
INSERT INTO `transactions` VALUES (36, 'App\\Models\\Box', 1, 5, 'deposit', 4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', 'db8b4903-dc29-4bef-a454-48eb4619fcd5', '2019-11-19 13:26:01', '2019-11-19 13:26:01');
INSERT INTO `transactions` VALUES (37, 'App\\Models\\User', 1, 1, 'withdraw', -4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', '5e39e0a3-971d-44ef-8750-c68dbce86010', '2019-11-19 13:26:13', '2019-11-19 13:26:13');
INSERT INTO `transactions` VALUES (38, 'App\\Models\\Box', 1, 5, 'deposit', 4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', 'c15c3b05-141c-4275-8b46-f6ec068f038d', '2019-11-19 13:26:13', '2019-11-19 13:26:13');
INSERT INTO `transactions` VALUES (39, 'App\\Models\\User', 1, 1, 'withdraw', -4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', '3d6db9f2-3b3d-494e-ab92-e45fdb150531', '2019-11-19 13:26:27', '2019-11-19 13:26:27');
INSERT INTO `transactions` VALUES (40, 'App\\Models\\Box', 1, 5, 'deposit', 4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', '80d64c40-8f9a-485e-a2cf-b59b93b8a90b', '2019-11-19 13:26:27', '2019-11-19 13:26:27');
INSERT INTO `transactions` VALUES (41, 'App\\Models\\User', 1, 1, 'withdraw', -4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', '0fcefaea-af81-42a5-b691-88c319d1696d', '2019-11-19 13:26:46', '2019-11-19 13:26:46');
INSERT INTO `transactions` VALUES (42, 'App\\Models\\Box', 1, 5, 'deposit', 4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', 'f83e2b1a-d84a-492f-a749-81d410b75bac', '2019-11-19 13:26:46', '2019-11-19 13:26:46');
INSERT INTO `transactions` VALUES (43, 'App\\Models\\User', 1, 1, 'withdraw', -4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', '4ead736a-5258-4bc9-9d1b-44aedae03da4', '2019-11-19 13:27:14', '2019-11-19 13:27:14');
INSERT INTO `transactions` VALUES (44, 'App\\Models\\Box', 1, 5, 'deposit', 4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', '9556e290-bad7-45c0-9e89-12d2b8e7996c', '2019-11-19 13:27:14', '2019-11-19 13:27:14');
INSERT INTO `transactions` VALUES (45, 'App\\Models\\User', 1, 1, 'withdraw', -4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', '9ed1f30f-00bf-4608-bcee-f4c79ca10dd8', '2019-11-19 13:27:33', '2019-11-19 13:27:33');
INSERT INTO `transactions` VALUES (46, 'App\\Models\\Box', 1, 5, 'deposit', 4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', 'ae004b21-5191-4de3-9704-e3d422a82a41', '2019-11-19 13:27:34', '2019-11-19 13:27:34');
INSERT INTO `transactions` VALUES (47, 'App\\Models\\User', 1, 1, 'withdraw', -4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', 'd16c9511-ccd5-4fa4-b56c-97bd2feab782', '2019-11-19 13:27:44', '2019-11-19 13:27:44');
INSERT INTO `transactions` VALUES (48, 'App\\Models\\Box', 1, 5, 'deposit', 4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', '45edb4bd-2c5f-4540-b3e9-d3b00579717a', '2019-11-19 13:27:44', '2019-11-19 13:27:44');
INSERT INTO `transactions` VALUES (49, 'App\\Models\\User', 1, 1, 'withdraw', -4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', 'a715b5e9-0975-4432-a256-ab54a376411c', '2019-11-19 13:27:55', '2019-11-19 13:27:55');
INSERT INTO `transactions` VALUES (50, 'App\\Models\\Box', 1, 5, 'deposit', 4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', 'f6fdb678-027e-4675-9029-1ba8af46a027', '2019-11-19 13:27:55', '2019-11-19 13:27:55');
INSERT INTO `transactions` VALUES (51, 'App\\Models\\User', 1, 1, 'withdraw', -4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', '1f568084-5115-46a0-9fec-58a2a6863c0c', '2019-11-19 13:28:07', '2019-11-19 13:28:07');
INSERT INTO `transactions` VALUES (52, 'App\\Models\\Box', 1, 5, 'deposit', 4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', '5d950026-e1df-4c4b-bd64-d1cde52fd455', '2019-11-19 13:28:07', '2019-11-19 13:28:07');
INSERT INTO `transactions` VALUES (53, 'App\\Models\\User', 1, 1, 'withdraw', -4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', '01d39fa3-4bba-49cc-900e-3f6c9752e242', '2019-11-19 13:28:20', '2019-11-19 13:28:20');
INSERT INTO `transactions` VALUES (54, 'App\\Models\\Box', 1, 5, 'deposit', 4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', 'd44e7685-08a2-4ca3-9847-57c765725bf1', '2019-11-19 13:28:20', '2019-11-19 13:28:20');
INSERT INTO `transactions` VALUES (55, 'App\\Models\\User', 1, 1, 'withdraw', -4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', '8eb4b404-850a-4e0b-be91-6bf1deb39cac', '2019-11-19 13:28:40', '2019-11-19 13:28:40');
INSERT INTO `transactions` VALUES (56, 'App\\Models\\Box', 1, 5, 'deposit', 4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', '18656d3b-6bbe-4fd2-9827-db288ad2f0e0', '2019-11-19 13:28:40', '2019-11-19 13:28:40');
INSERT INTO `transactions` VALUES (57, 'App\\Models\\User', 6, 11, 'withdraw', -4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', 'c92057ec-43f9-4e86-bacf-844ba15c288d', '2019-11-19 13:31:43', '2019-11-19 13:31:43');
INSERT INTO `transactions` VALUES (58, 'App\\Models\\Box', 1, 5, 'deposit', 4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', 'c2fd2ad3-a64e-473a-806d-6b4bb6b1435a', '2019-11-19 13:31:43', '2019-11-19 13:31:43');
INSERT INTO `transactions` VALUES (59, 'App\\Models\\User', 6, 11, 'withdraw', -4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', 'e5d1dd12-a482-42ce-85c6-5db0a2280e4c', '2019-11-19 13:31:56', '2019-11-19 13:31:56');
INSERT INTO `transactions` VALUES (60, 'App\\Models\\Box', 1, 5, 'deposit', 4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', 'ecb34715-14db-4c92-a79e-fa00a05889b0', '2019-11-19 13:31:56', '2019-11-19 13:31:56');
INSERT INTO `transactions` VALUES (61, 'App\\Models\\User', 6, 11, 'withdraw', -4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', 'fa721468-a664-45be-981c-8c2f710b33e3', '2019-11-19 13:32:10', '2019-11-19 13:32:10');
INSERT INTO `transactions` VALUES (62, 'App\\Models\\Box', 1, 5, 'deposit', 4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', '66958162-3373-4681-82b7-c95f916c3a08', '2019-11-19 13:32:10', '2019-11-19 13:32:10');
INSERT INTO `transactions` VALUES (63, 'App\\Models\\User', 6, 11, 'withdraw', -4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', '35196c19-046a-4186-828a-e7e5e3910a1e', '2019-11-19 13:32:24', '2019-11-19 13:32:24');
INSERT INTO `transactions` VALUES (64, 'App\\Models\\Box', 1, 5, 'deposit', 4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', '4b043cec-77ed-4f20-932f-fefc75b63207', '2019-11-19 13:32:24', '2019-11-19 13:32:24');
INSERT INTO `transactions` VALUES (65, 'App\\Models\\User', 6, 11, 'withdraw', -4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', '74ec4ee3-5132-4786-b7af-7c290aaf869e', '2019-11-19 13:32:39', '2019-11-19 13:32:39');
INSERT INTO `transactions` VALUES (66, 'App\\Models\\Box', 1, 5, 'deposit', 4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', 'f4f28985-5ee9-461e-86df-cb2ec252e85f', '2019-11-19 13:32:39', '2019-11-19 13:32:39');
INSERT INTO `transactions` VALUES (67, 'App\\Models\\User', 6, 11, 'withdraw', -4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', '8d124ced-9bc3-46c0-b5d5-2b616911a06f', '2019-11-19 13:32:50', '2019-11-19 13:32:50');
INSERT INTO `transactions` VALUES (68, 'App\\Models\\Box', 1, 5, 'deposit', 4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', 'bb9672ac-ac1d-463a-b57e-6735680f12ed', '2019-11-19 13:32:50', '2019-11-19 13:32:50');
INSERT INTO `transactions` VALUES (69, 'App\\Models\\User', 6, 11, 'withdraw', -4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', '6aedb772-7cd6-43e9-9a7d-e8076c13c5e3', '2019-11-19 13:32:50', '2019-11-19 13:32:50');
INSERT INTO `transactions` VALUES (70, 'App\\Models\\Box', 1, 5, 'deposit', 4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', '24d8ec18-f7f4-4e9c-b48b-3607f73fd046', '2019-11-19 13:32:50', '2019-11-19 13:32:50');
INSERT INTO `transactions` VALUES (71, 'App\\Models\\User', 6, 11, 'withdraw', -4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', '1f5d1fc5-93c2-422a-8365-c8016f9c7094', '2019-11-19 13:33:00', '2019-11-19 13:33:00');
INSERT INTO `transactions` VALUES (72, 'App\\Models\\Box', 1, 5, 'deposit', 4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', 'e97e261c-6647-4d74-8854-640819dfadc1', '2019-11-19 13:33:00', '2019-11-19 13:33:00');
INSERT INTO `transactions` VALUES (73, 'App\\Models\\User', 6, 11, 'withdraw', -4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', '1deb5747-b445-4ce4-9564-e4874ac2767e', '2019-11-19 13:33:00', '2019-11-19 13:33:00');
INSERT INTO `transactions` VALUES (74, 'App\\Models\\Box', 1, 5, 'deposit', 4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', '964dcd36-3d71-48fc-9522-a6020e0fc29c', '2019-11-19 13:33:00', '2019-11-19 13:33:00');
INSERT INTO `transactions` VALUES (75, 'App\\Models\\User', 6, 11, 'withdraw', -4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', 'bd72146e-b7c8-4f13-bec4-5731e2a734e3', '2019-11-19 13:33:01', '2019-11-19 13:33:01');
INSERT INTO `transactions` VALUES (76, 'App\\Models\\Box', 1, 5, 'deposit', 4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', '41e41433-c957-4a82-9273-a9eddb2e2b14', '2019-11-19 13:33:01', '2019-11-19 13:33:01');
INSERT INTO `transactions` VALUES (77, 'App\\Models\\User', 6, 11, 'withdraw', -4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', 'a5838048-bcd3-4b4e-a7a7-f5277e76d64d', '2019-11-19 13:33:02', '2019-11-19 13:33:02');
INSERT INTO `transactions` VALUES (78, 'App\\Models\\Box', 1, 5, 'deposit', 4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', '8b38d518-bf44-4b98-affd-31bae363612d', '2019-11-19 13:33:02', '2019-11-19 13:33:02');
INSERT INTO `transactions` VALUES (79, 'App\\Models\\User', 6, 11, 'withdraw', -4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', 'df423967-090a-405f-8c9d-5dfebec91711', '2019-11-19 13:33:03', '2019-11-19 13:33:03');
INSERT INTO `transactions` VALUES (80, 'App\\Models\\Box', 1, 5, 'deposit', 4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', '395ac0f7-7ecc-44fc-ab9f-ca7547f96749', '2019-11-19 13:33:03', '2019-11-19 13:33:03');
INSERT INTO `transactions` VALUES (81, 'App\\Models\\User', 6, 11, 'withdraw', -4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', '904a92a3-496c-439f-9086-8bb953df0166', '2019-11-19 13:33:04', '2019-11-19 13:33:04');
INSERT INTO `transactions` VALUES (82, 'App\\Models\\Box', 1, 5, 'deposit', 4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', '6654b01a-ac04-49d8-9a0d-890c1a13c66f', '2019-11-19 13:33:04', '2019-11-19 13:33:04');
INSERT INTO `transactions` VALUES (83, 'App\\Models\\User', 6, 11, 'withdraw', -4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', 'b3b8b419-54d6-45b5-977a-5f72fdaa0a33', '2019-11-19 13:33:04', '2019-11-19 13:33:04');
INSERT INTO `transactions` VALUES (84, 'App\\Models\\Box', 1, 5, 'deposit', 4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', 'e4f656fa-de0e-4d4b-a090-00586f700801', '2019-11-19 13:33:04', '2019-11-19 13:33:04');
INSERT INTO `transactions` VALUES (85, 'App\\Models\\User', 6, 11, 'withdraw', -4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', '91b50602-db4f-432d-87dc-b7627ca61bb0', '2019-11-19 13:33:05', '2019-11-19 13:33:05');
INSERT INTO `transactions` VALUES (86, 'App\\Models\\Box', 1, 5, 'deposit', 4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', '089befdd-ecc9-4e13-bf7b-2cb308d93215', '2019-11-19 13:33:05', '2019-11-19 13:33:05');
INSERT INTO `transactions` VALUES (87, 'App\\Models\\User', 6, 11, 'withdraw', -4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', '6c37af3b-0e53-4f5b-8d1d-23031c0da9f2', '2019-11-19 13:33:05', '2019-11-19 13:33:05');
INSERT INTO `transactions` VALUES (88, 'App\\Models\\Box', 1, 5, 'deposit', 4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', '59efdd59-f70c-40d6-b159-a00a9740ca41', '2019-11-19 13:33:05', '2019-11-19 13:33:05');
INSERT INTO `transactions` VALUES (89, 'App\\Models\\User', 1, 1, 'withdraw', -4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', 'b7042119-1700-47c2-8a13-616688f32fd9', '2019-11-19 13:33:35', '2019-11-19 13:33:35');
INSERT INTO `transactions` VALUES (90, 'App\\Models\\Box', 1, 5, 'deposit', 4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', '2219ca57-bc50-4a08-b091-27430e394cdd', '2019-11-19 13:33:35', '2019-11-19 13:33:35');
INSERT INTO `transactions` VALUES (91, 'App\\Models\\User', 1, 1, 'withdraw', -4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', '2a69a42a-7361-412e-a997-8b97f4afe075', '2019-11-19 13:33:45', '2019-11-19 13:33:45');
INSERT INTO `transactions` VALUES (92, 'App\\Models\\Box', 1, 5, 'deposit', 4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', 'd7c25800-ef3d-4193-94f6-61f5dacf1f9a', '2019-11-19 13:33:45', '2019-11-19 13:33:45');
INSERT INTO `transactions` VALUES (93, 'App\\Models\\User', 1, 1, 'withdraw', -4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', '891e777d-1fc1-4c59-864f-c25574e1d5e6', '2019-11-19 13:33:45', '2019-11-19 13:33:45');
INSERT INTO `transactions` VALUES (94, 'App\\Models\\Box', 1, 5, 'deposit', 4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', '62219e21-29de-4fc8-9d32-2858dc8a6a48', '2019-11-19 13:33:46', '2019-11-19 13:33:46');
INSERT INTO `transactions` VALUES (95, 'App\\Models\\User', 1, 1, 'withdraw', -4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', '05675316-189c-4d54-beb7-766b1fbd6d3e', '2019-11-19 13:34:01', '2019-11-19 13:34:01');
INSERT INTO `transactions` VALUES (96, 'App\\Models\\Box', 1, 5, 'deposit', 4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', '2042cfed-7884-416a-83d8-52e66f2aa2f2', '2019-11-19 13:34:01', '2019-11-19 13:34:01');
INSERT INTO `transactions` VALUES (97, 'App\\Models\\User', 1, 1, 'withdraw', -4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', '03ccf43e-bfc3-404e-b764-38fdcfec3cb3', '2019-11-19 13:34:02', '2019-11-19 13:34:02');
INSERT INTO `transactions` VALUES (98, 'App\\Models\\Box', 1, 5, 'deposit', 4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', '411358bb-2dfa-416c-9114-14e2c5cfef4c', '2019-11-19 13:34:02', '2019-11-19 13:34:02');
INSERT INTO `transactions` VALUES (99, 'App\\Models\\User', 1, 1, 'withdraw', -4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', '9a3497b3-0c90-44de-abc0-3d079781e066', '2019-11-19 13:34:03', '2019-11-19 13:34:03');
INSERT INTO `transactions` VALUES (100, 'App\\Models\\Box', 1, 5, 'deposit', 4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', '2519ab1f-c9ab-47fc-9a5e-ae4ad59623c1', '2019-11-19 13:34:03', '2019-11-19 13:34:03');
INSERT INTO `transactions` VALUES (101, 'App\\Models\\User', 1, 1, 'withdraw', -4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', 'fc5c22c6-409a-49a4-a193-e432767aac9f', '2019-11-19 13:34:04', '2019-11-19 13:34:04');
INSERT INTO `transactions` VALUES (102, 'App\\Models\\Box', 1, 5, 'deposit', 4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', '4b96d5cc-fcc4-4180-936c-8377df943a17', '2019-11-19 13:34:04', '2019-11-19 13:34:04');
INSERT INTO `transactions` VALUES (103, 'App\\Models\\User', 1, 1, 'withdraw', -4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', '678d0f62-8ac0-4df4-86c6-759a2c76a058', '2019-11-19 13:34:05', '2019-11-19 13:34:05');
INSERT INTO `transactions` VALUES (104, 'App\\Models\\Box', 1, 5, 'deposit', 4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', 'faee54d2-444a-4eb0-8089-272357244f8a', '2019-11-19 13:34:06', '2019-11-19 13:34:06');
INSERT INTO `transactions` VALUES (105, 'App\\Models\\User', 1, 1, 'withdraw', -4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', '10e38a27-8136-449a-93ef-ad6a37ae194d', '2019-11-19 13:34:07', '2019-11-19 13:34:07');
INSERT INTO `transactions` VALUES (106, 'App\\Models\\Box', 1, 5, 'deposit', 4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', 'f2289ca2-a179-4a7f-beac-eab479747fef', '2019-11-19 13:34:07', '2019-11-19 13:34:07');
INSERT INTO `transactions` VALUES (107, 'App\\Models\\User', 1, 1, 'withdraw', -4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', '981b6a53-2419-47ed-a884-b65199135827', '2019-11-19 13:34:08', '2019-11-19 13:34:08');
INSERT INTO `transactions` VALUES (108, 'App\\Models\\Box', 1, 5, 'deposit', 4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', 'f7ea25fd-2850-467a-8ed9-b3b80cd46eb5', '2019-11-19 13:34:08', '2019-11-19 13:34:08');
INSERT INTO `transactions` VALUES (109, 'App\\Models\\User', 1, 1, 'withdraw', -4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', 'dd085326-c0ca-4dda-b28b-f018d8103242', '2019-11-19 13:34:09', '2019-11-19 13:34:09');
INSERT INTO `transactions` VALUES (110, 'App\\Models\\Box', 1, 5, 'deposit', 4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', 'ceb98194-9d1f-43e9-a14e-553ad92dfc08', '2019-11-19 13:34:09', '2019-11-19 13:34:09');
INSERT INTO `transactions` VALUES (111, 'App\\Models\\User', 1, 1, 'deposit', 2500, 1, NULL, '723a10fe-f08a-48cb-8a2d-1250baf6241c', '2019-11-19 13:39:28', '2019-11-19 13:39:28');
INSERT INTO `transactions` VALUES (112, 'App\\Models\\User', 1, 1, 'deposit', 2500, 1, NULL, 'b84ebae1-4451-4e72-ac72-02847cd6f16a', '2019-11-19 13:39:32', '2019-11-19 13:39:32');
INSERT INTO `transactions` VALUES (113, 'App\\Models\\User', 1, 1, 'deposit', 4900, 1, NULL, '7de65155-e15d-4e59-9a95-852c58a78c68', '2019-11-19 13:39:33', '2019-11-19 13:39:33');
INSERT INTO `transactions` VALUES (114, 'App\\Models\\User', 1, 1, 'deposit', 2500, 1, NULL, '4272d8cb-32f3-4a74-9966-0171caad8fc0', '2019-11-19 13:39:34', '2019-11-19 13:39:34');
INSERT INTO `transactions` VALUES (115, 'App\\Models\\User', 1, 1, 'deposit', 2500, 1, NULL, 'cfe27e16-83c1-4435-bacc-0181225255fc', '2019-11-19 13:39:35', '2019-11-19 13:39:35');
INSERT INTO `transactions` VALUES (116, 'App\\Models\\User', 1, 1, 'deposit', 2500, 1, NULL, 'b810d072-4451-49a8-a55c-2ff46a332198', '2019-11-19 13:39:36', '2019-11-19 13:39:36');
INSERT INTO `transactions` VALUES (117, 'App\\Models\\User', 1, 1, 'deposit', 2500, 1, NULL, 'e28516fd-04dc-4717-a273-0544c95e6133', '2019-11-19 13:39:38', '2019-11-19 13:39:38');
INSERT INTO `transactions` VALUES (118, 'App\\Models\\User', 1, 1, 'deposit', 2500, 1, NULL, '1b1026b4-9276-4a61-8033-261eca0d01de', '2019-11-19 13:39:40', '2019-11-19 13:39:40');
INSERT INTO `transactions` VALUES (119, 'App\\Models\\User', 1, 1, 'deposit', 2500, 1, NULL, '729c96de-26dc-4dc0-8d75-378a7539685c', '2019-11-19 13:39:41', '2019-11-19 13:39:41');
INSERT INTO `transactions` VALUES (120, 'App\\Models\\User', 1, 1, 'deposit', 4900, 1, NULL, '59481daa-7fa2-42c4-929e-0321664c016e', '2019-11-19 13:39:46', '2019-11-19 13:39:46');
INSERT INTO `transactions` VALUES (121, 'App\\Models\\User', 1, 1, 'deposit', 2500, 1, NULL, '850da5ef-145a-4d5a-99f1-891614954016', '2019-11-19 13:39:47', '2019-11-19 13:39:47');
INSERT INTO `transactions` VALUES (122, 'App\\Models\\User', 1, 1, 'deposit', 2500, 1, NULL, 'b00373e3-6fea-4cb3-9a20-4b05f02567a7', '2019-11-19 13:39:47', '2019-11-19 13:39:47');
INSERT INTO `transactions` VALUES (123, 'App\\Models\\User', 1, 1, 'deposit', 2500, 1, NULL, '03315002-05dd-4129-b8fa-900b78f024dd', '2019-11-19 13:39:52', '2019-11-19 13:39:52');
INSERT INTO `transactions` VALUES (124, 'App\\Models\\User', 1, 1, 'deposit', 2500, 1, NULL, '3e7d114b-e805-4a84-b6d0-c191d867a95c', '2019-11-19 13:39:52', '2019-11-19 13:39:52');
INSERT INTO `transactions` VALUES (125, 'App\\Models\\User', 1, 1, 'deposit', 2500, 1, NULL, 'ad75bb02-a105-4365-8105-bf1e2ab2ace6', '2019-11-19 13:39:53', '2019-11-19 13:39:53');
INSERT INTO `transactions` VALUES (126, 'App\\Models\\User', 1, 1, 'deposit', 2500, 1, NULL, '57f7121c-d534-4b68-a41f-e1d8d29573c0', '2019-11-19 13:39:54', '2019-11-19 13:39:54');
INSERT INTO `transactions` VALUES (127, 'App\\Models\\User', 1, 1, 'deposit', 2500, 1, NULL, 'a6e5f655-b117-4560-93b0-14f4c92d81be', '2019-11-19 13:39:57', '2019-11-19 13:39:57');
INSERT INTO `transactions` VALUES (128, 'App\\Models\\User', 1, 1, 'deposit', 4900, 1, NULL, '6eb9b7ed-e183-45a5-96fd-2472cc645f44', '2019-11-19 13:39:58', '2019-11-19 13:39:58');
INSERT INTO `transactions` VALUES (129, 'App\\Models\\User', 1, 1, 'deposit', 2500, 1, NULL, '2a8d1536-e2d2-46e2-8b9e-755b022c2a89', '2019-11-19 13:39:58', '2019-11-19 13:39:58');
INSERT INTO `transactions` VALUES (130, 'App\\Models\\User', 1, 1, 'deposit', 2500, 1, NULL, '468290e0-6a9f-4b69-acc7-a1c5ede3196d', '2019-11-19 13:39:59', '2019-11-19 13:39:59');
INSERT INTO `transactions` VALUES (131, 'App\\Models\\User', 1, 1, 'deposit', 2500, 1, NULL, 'b5551d2c-be52-4da4-9215-b4fd6ec5b0d7', '2019-11-19 13:40:02', '2019-11-19 13:40:02');
INSERT INTO `transactions` VALUES (132, 'App\\Models\\User', 1, 1, 'deposit', 4900, 1, NULL, '9bc34d56-6469-4f0f-ae8a-09ac86a200ea', '2019-11-19 13:40:02', '2019-11-19 13:40:02');
INSERT INTO `transactions` VALUES (133, 'App\\Models\\User', 1, 1, 'deposit', 2500, 1, NULL, '2de9711b-13c1-494f-887f-8dbaaaeccbf7', '2019-11-19 13:40:05', '2019-11-19 13:40:05');
INSERT INTO `transactions` VALUES (134, 'App\\Models\\User', 1, 1, 'deposit', 4900, 1, NULL, '7c81b97c-907f-4e55-9541-41f0c9813b92', '2019-11-19 13:40:07', '2019-11-19 13:40:07');
INSERT INTO `transactions` VALUES (135, 'App\\Models\\User', 1, 1, 'withdraw', -4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', 'b43cd5ac-24f0-403b-b9e9-752259d6e2b1', '2019-11-19 13:40:20', '2019-11-19 13:40:20');
INSERT INTO `transactions` VALUES (136, 'App\\Models\\Box', 1, 5, 'deposit', 4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', 'e4153592-6d3e-461f-ad61-e787ffd0127b', '2019-11-19 13:40:20', '2019-11-19 13:40:20');
INSERT INTO `transactions` VALUES (137, 'App\\Models\\User', 1, 1, 'withdraw', -4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', '0466b7df-e7e1-4813-9b82-81bc2ed02c0e', '2019-11-19 13:40:34', '2019-11-19 13:40:34');
INSERT INTO `transactions` VALUES (138, 'App\\Models\\Box', 1, 5, 'deposit', 4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', '13b22596-ab5b-408a-aea1-cdbf3a59f5e7', '2019-11-19 13:40:34', '2019-11-19 13:40:34');
INSERT INTO `transactions` VALUES (139, 'App\\Models\\User', 1, 1, 'withdraw', -4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', '07730b5c-fc4c-4442-b388-4721ea2414c7', '2019-11-19 13:40:36', '2019-11-19 13:40:36');
INSERT INTO `transactions` VALUES (140, 'App\\Models\\Box', 1, 5, 'deposit', 4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', 'a08623c1-3af9-4ac2-ab3a-e462edae3970', '2019-11-19 13:40:36', '2019-11-19 13:40:36');
INSERT INTO `transactions` VALUES (141, 'App\\Models\\User', 1, 1, 'withdraw', -4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', 'c00b8b52-5f98-439f-9ec2-1561e7bed3b6', '2019-11-19 13:44:16', '2019-11-19 13:44:16');
INSERT INTO `transactions` VALUES (142, 'App\\Models\\Box', 1, 5, 'deposit', 4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', '02345845-46ae-4964-9f51-ad9af485d261', '2019-11-19 13:44:16', '2019-11-19 13:44:16');
INSERT INTO `transactions` VALUES (143, 'App\\Models\\User', 1, 1, 'withdraw', -4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', '67b21902-86f4-4fe0-b046-79e10a841773', '2019-11-19 13:44:18', '2019-11-19 13:44:18');
INSERT INTO `transactions` VALUES (144, 'App\\Models\\Box', 1, 5, 'deposit', 4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', '4aaa7eaa-09ee-4cac-b866-189c3202f94e', '2019-11-19 13:44:19', '2019-11-19 13:44:19');
INSERT INTO `transactions` VALUES (145, 'App\\Models\\User', 1, 1, 'withdraw', -4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', '1a2a7553-6212-4450-b9a5-3d79e3baf14b', '2019-11-19 13:44:21', '2019-11-19 13:44:21');
INSERT INTO `transactions` VALUES (146, 'App\\Models\\Box', 1, 5, 'deposit', 4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', '0e005459-4dc6-4e63-88f9-d55478f7faf6', '2019-11-19 13:44:22', '2019-11-19 13:44:22');
INSERT INTO `transactions` VALUES (147, 'App\\Models\\User', 1, 1, 'withdraw', -4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', '986f1e14-99a8-4f5f-bd2f-677fe1ce573b', '2019-11-19 13:44:24', '2019-11-19 13:44:24');
INSERT INTO `transactions` VALUES (148, 'App\\Models\\Box', 1, 5, 'deposit', 4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', '24c21e15-a810-4c31-8095-ec0330b4b959', '2019-11-19 13:44:24', '2019-11-19 13:44:24');
INSERT INTO `transactions` VALUES (149, 'App\\Models\\User', 1, 1, 'withdraw', -4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', '5e893f72-51d1-427a-8ba1-dae5a32ebf1d', '2019-11-19 13:44:25', '2019-11-19 13:44:25');
INSERT INTO `transactions` VALUES (150, 'App\\Models\\Box', 1, 5, 'deposit', 4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', 'e5f1707a-e571-4e3d-9dd4-ab29a0c2b251', '2019-11-19 13:44:25', '2019-11-19 13:44:25');
INSERT INTO `transactions` VALUES (151, 'App\\Models\\User', 1, 1, 'withdraw', -4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', 'caaf9a8a-d976-4284-addf-0e87986b6015', '2019-11-19 13:44:26', '2019-11-19 13:44:26');
INSERT INTO `transactions` VALUES (152, 'App\\Models\\Box', 1, 5, 'deposit', 4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', '57f8cfe7-b17e-49fe-9302-72dd15263e98', '2019-11-19 13:44:26', '2019-11-19 13:44:26');
INSERT INTO `transactions` VALUES (153, 'App\\Models\\User', 1, 1, 'withdraw', -4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', '0336ee34-3f25-4fd4-8bf8-476c641f70ce', '2019-11-19 13:44:28', '2019-11-19 13:44:28');
INSERT INTO `transactions` VALUES (154, 'App\\Models\\Box', 1, 5, 'deposit', 4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', '51ef70e2-999b-420b-9bc2-001806944371', '2019-11-19 13:44:28', '2019-11-19 13:44:28');
INSERT INTO `transactions` VALUES (155, 'App\\Models\\User', 1, 1, 'deposit', 118900, 1, NULL, '9240da86-798c-4abb-b49a-a7c38fe8ce52', '2019-11-19 13:49:53', '2019-11-19 13:49:53');
INSERT INTO `transactions` VALUES (156, 'App\\Models\\User', 1, 1, 'deposit', 4900, 1, NULL, 'cb78ccf5-8c22-41b3-83e8-107677d49f65', '2019-11-19 13:49:55', '2019-11-19 13:49:55');
INSERT INTO `transactions` VALUES (157, 'App\\Models\\User', 1, 1, 'deposit', 2500, 1, NULL, 'f4e3825b-fbcb-4065-9903-5d8d38ef1029', '2019-11-19 13:49:56', '2019-11-19 13:49:56');
INSERT INTO `transactions` VALUES (158, 'App\\Models\\User', 1, 1, 'deposit', 2500, 1, NULL, 'f4cf85f7-ff5e-44cc-934c-8faede899206', '2019-11-19 13:49:57', '2019-11-19 13:49:57');
INSERT INTO `transactions` VALUES (159, 'App\\Models\\User', 1, 1, 'deposit', 2500, 1, NULL, 'ecb25db5-0527-4ec3-9127-99fb49352cb1', '2019-11-19 13:49:59', '2019-11-19 13:49:59');
INSERT INTO `transactions` VALUES (160, 'App\\Models\\User', 1, 1, 'deposit', 2500, 1, NULL, '02a02354-6c06-4728-ae0b-d4c229766192', '2019-11-19 13:50:00', '2019-11-19 13:50:00');
INSERT INTO `transactions` VALUES (161, 'App\\Models\\User', 1, 1, 'deposit', 2500, 1, NULL, 'ca649782-4ffb-4a87-a662-4f201062d2e1', '2019-11-19 13:50:01', '2019-11-19 13:50:01');
INSERT INTO `transactions` VALUES (162, 'App\\Models\\User', 1, 1, 'deposit', 6000, 1, NULL, '22cced07-0b31-4764-8b60-88754be8c530', '2019-11-19 13:50:03', '2019-11-19 13:50:03');
INSERT INTO `transactions` VALUES (163, 'App\\Models\\User', 1, 1, 'deposit', 2500, 1, NULL, '28e20ff4-5530-470e-9427-08c6a729b1a3', '2019-11-19 13:50:10', '2019-11-19 13:50:10');
INSERT INTO `transactions` VALUES (164, 'App\\Models\\User', 1, 1, 'deposit', 4900, 1, NULL, '9904d643-bf38-4eeb-8cb3-24d5b895073b', '2019-11-19 13:51:23', '2019-11-19 13:51:23');
INSERT INTO `transactions` VALUES (165, 'App\\Models\\User', 1, 1, 'withdraw', -4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', 'c561c6fb-6233-46f1-85f5-d9fbce749dc1', '2019-11-19 13:52:34', '2019-11-19 13:52:34');
INSERT INTO `transactions` VALUES (166, 'App\\Models\\Box', 1, 5, 'deposit', 4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', '8a66a31d-941c-4cc8-a051-d1d59d9a2980', '2019-11-19 13:52:34', '2019-11-19 13:52:34');
INSERT INTO `transactions` VALUES (167, 'App\\Models\\User', 1, 1, 'withdraw', -4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', '339a2ba5-44d0-4835-9a5b-9cc5d7829a52', '2019-11-19 13:52:44', '2019-11-19 13:52:44');
INSERT INTO `transactions` VALUES (168, 'App\\Models\\Box', 1, 5, 'deposit', 4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', 'c8a1d75e-620b-4052-bc56-dd1e63c4d05f', '2019-11-19 13:52:44', '2019-11-19 13:52:44');
INSERT INTO `transactions` VALUES (169, 'App\\Models\\User', 1, 1, 'deposit', 2500, 1, NULL, '7d348b89-c196-41b8-8852-382a088c2e73', '2019-11-19 13:52:56', '2019-11-19 13:52:56');
INSERT INTO `transactions` VALUES (170, 'App\\Models\\User', 1, 1, 'deposit', 2500, 1, NULL, 'a96317c0-b56d-4c36-9764-394309ed3f73', '2019-11-19 13:52:57', '2019-11-19 13:52:57');
INSERT INTO `transactions` VALUES (171, 'App\\Models\\User', 1, 1, 'withdraw', -4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', 'eeffdfe9-e508-484d-adfd-4f44fe3d7936', '2019-11-19 13:53:01', '2019-11-19 13:53:01');
INSERT INTO `transactions` VALUES (172, 'App\\Models\\Box', 1, 5, 'deposit', 4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', '6fc3604e-ad3e-40c2-a543-2aab2b0d4d64', '2019-11-19 13:53:01', '2019-11-19 13:53:01');
INSERT INTO `transactions` VALUES (173, 'App\\Models\\User', 1, 1, 'withdraw', -4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', 'd4a4cdc5-6352-49cb-8447-d89faa2a57fd', '2019-11-19 13:54:26', '2019-11-19 13:54:26');
INSERT INTO `transactions` VALUES (174, 'App\\Models\\Box', 1, 5, 'deposit', 4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', '80056c4a-30f9-43b4-8b19-8420bf186fba', '2019-11-19 13:54:26', '2019-11-19 13:54:26');
INSERT INTO `transactions` VALUES (175, 'App\\Models\\User', 1, 1, 'deposit', 2500, 1, NULL, 'e03c0fab-f8d8-404a-84a8-a621b02ff47c', '2019-11-19 13:56:39', '2019-11-19 13:56:39');
INSERT INTO `transactions` VALUES (176, 'App\\Models\\User', 1, 1, 'withdraw', -4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', '6a03a3e0-2a17-46a8-bee5-c03c28aeaa1e', '2019-11-19 13:58:22', '2019-11-19 13:58:22');
INSERT INTO `transactions` VALUES (177, 'App\\Models\\Box', 1, 5, 'deposit', 4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', 'b79e93af-aad0-41e4-9c1e-e5c2115b388a', '2019-11-19 13:58:22', '2019-11-19 13:58:22');
INSERT INTO `transactions` VALUES (178, 'App\\Models\\User', 1, 1, 'withdraw', -4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', '871e1797-4bc3-4d1a-9e8d-1785f6031913', '2019-11-19 13:58:33', '2019-11-19 13:58:33');
INSERT INTO `transactions` VALUES (179, 'App\\Models\\Box', 1, 5, 'deposit', 4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', '898ae71b-7d27-48ce-b9e0-6ac7990803a5', '2019-11-19 13:58:33', '2019-11-19 13:58:33');
INSERT INTO `transactions` VALUES (180, 'App\\Models\\User', 1, 1, 'withdraw', -4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', 'cc47605f-723c-425e-a739-914f79d50ba2', '2019-11-19 13:58:52', '2019-11-19 13:58:52');
INSERT INTO `transactions` VALUES (181, 'App\\Models\\Box', 1, 5, 'deposit', 4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', '6cbf3b07-67c5-4b60-87d0-24bd79bcd5e0', '2019-11-19 13:58:52', '2019-11-19 13:58:52');
INSERT INTO `transactions` VALUES (182, 'App\\Models\\User', 1, 1, 'withdraw', -4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', 'd442883c-9c51-46a3-a4f3-17689e116402', '2019-11-19 13:59:07', '2019-11-19 13:59:07');
INSERT INTO `transactions` VALUES (183, 'App\\Models\\Box', 1, 5, 'deposit', 4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', '79b651de-1a3e-4c01-9632-9ec1a67494e1', '2019-11-19 13:59:07', '2019-11-19 13:59:07');
INSERT INTO `transactions` VALUES (184, 'App\\Models\\User', 1, 1, 'withdraw', -4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', '24abf46d-f059-4257-8ee1-c66c32c97f67', '2019-11-19 14:06:34', '2019-11-19 14:06:34');
INSERT INTO `transactions` VALUES (185, 'App\\Models\\Box', 1, 5, 'deposit', 4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', 'cef2b990-43d9-4e07-befb-86e167b85e3a', '2019-11-19 14:06:35', '2019-11-19 14:06:35');
INSERT INTO `transactions` VALUES (186, 'App\\Models\\User', 1, 1, 'withdraw', -4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', '06cd4336-85d2-43db-aaab-156fc1aefce8', '2019-11-19 14:06:47', '2019-11-19 14:06:47');
INSERT INTO `transactions` VALUES (187, 'App\\Models\\Box', 1, 5, 'deposit', 4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', '53cf479e-120a-4e00-b8cf-d4cb1a459721', '2019-11-19 14:06:47', '2019-11-19 14:06:47');
INSERT INTO `transactions` VALUES (188, 'App\\Models\\User', 1, 1, 'deposit', 2500, 1, NULL, '400efe2d-d774-47b5-b2c0-7c39f9a0ed36', '2019-11-19 14:17:12', '2019-11-19 14:17:12');
INSERT INTO `transactions` VALUES (189, 'App\\Models\\User', 1, 1, 'deposit', 2500, 1, NULL, '16a91d8f-b0a6-4aaa-8fc2-329ca16f578c', '2019-11-19 14:17:17', '2019-11-19 14:17:17');
INSERT INTO `transactions` VALUES (190, 'App\\Models\\User', 1, 1, 'deposit', 4900, 1, NULL, '5a3918e5-6244-4130-8f73-1f375ca97327', '2019-11-19 14:17:19', '2019-11-19 14:17:19');
INSERT INTO `transactions` VALUES (191, 'App\\Models\\User', 1, 1, 'deposit', 2500, 1, NULL, 'd5cfdecf-ff9e-4285-9128-2a0efcc5e891', '2019-11-19 14:17:20', '2019-11-19 14:17:20');
INSERT INTO `transactions` VALUES (192, 'App\\Models\\User', 1, 1, 'deposit', 2500, 1, NULL, '16ab876f-a667-4d95-b8eb-6401d739e787', '2019-11-19 14:17:22', '2019-11-19 14:17:22');
INSERT INTO `transactions` VALUES (193, 'App\\Models\\User', 1, 1, 'deposit', 2500, 1, NULL, 'd23407e1-76b7-4ad3-b31b-cf9cacc14ee5', '2019-11-19 14:17:23', '2019-11-19 14:17:23');
INSERT INTO `transactions` VALUES (194, 'App\\Models\\User', 1, 1, 'deposit', 4900, 1, NULL, '94109c8b-f907-4d24-9b61-2feb30b83d18', '2019-11-19 14:17:27', '2019-11-19 14:17:27');
INSERT INTO `transactions` VALUES (195, 'App\\Models\\User', 1, 1, 'withdraw', -4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', '751feeb7-f01c-4cbc-a4c4-41b573bb1c63', '2019-11-19 14:20:14', '2019-11-19 14:20:14');
INSERT INTO `transactions` VALUES (196, 'App\\Models\\Box', 1, 5, 'deposit', 4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', '1fca3551-44a0-4391-a28d-4788956ae3d5', '2019-11-19 14:20:14', '2019-11-19 14:20:14');
INSERT INTO `transactions` VALUES (197, 'App\\Models\\User', 1, 1, 'withdraw', -4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', 'ab034da4-1616-4eb7-8e62-58e7baeb101d', '2019-11-19 14:20:28', '2019-11-19 14:20:28');
INSERT INTO `transactions` VALUES (198, 'App\\Models\\Box', 1, 5, 'deposit', 4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', 'd4cbbf11-5080-41ef-a8e1-cbc42886eeae', '2019-11-19 14:20:28', '2019-11-19 14:20:28');
INSERT INTO `transactions` VALUES (199, 'App\\Models\\User', 1, 1, 'withdraw', -4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', '1ef4b3f2-f690-45b5-ae8f-d5be97ed18c6', '2019-11-19 14:20:50', '2019-11-19 14:20:50');
INSERT INTO `transactions` VALUES (200, 'App\\Models\\Box', 1, 5, 'deposit', 4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', '9eef3112-5481-4a2f-a6ed-a25dbf204324', '2019-11-19 14:20:50', '2019-11-19 14:20:50');
INSERT INTO `transactions` VALUES (201, 'App\\Models\\User', 1, 1, 'withdraw', -4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', '00f6ea08-7e4b-4b67-b70d-78dda507c870', '2019-11-19 14:21:02', '2019-11-19 14:21:02');
INSERT INTO `transactions` VALUES (202, 'App\\Models\\Box', 1, 5, 'deposit', 4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', 'ceceadd7-5ea0-4eca-9144-ec2b56f90dc4', '2019-11-19 14:21:02', '2019-11-19 14:21:02');
INSERT INTO `transactions` VALUES (203, 'App\\Models\\User', 1, 1, 'withdraw', -4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', '74e1207e-56ac-43c7-a5cf-03096c5f3d3a', '2019-11-19 14:21:42', '2019-11-19 14:21:42');
INSERT INTO `transactions` VALUES (204, 'App\\Models\\Box', 1, 5, 'deposit', 4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', 'afc6d550-ccaf-4f8d-8c97-f1a43c626a5d', '2019-11-19 14:21:42', '2019-11-19 14:21:42');
INSERT INTO `transactions` VALUES (205, 'App\\Models\\User', 6, 11, 'deposit', 30000, 1, NULL, 'a0e57a08-5642-469d-b9df-0b761f1059e8', '2019-11-19 14:22:24', '2019-11-19 14:22:24');
INSERT INTO `transactions` VALUES (206, 'App\\Models\\User', 1, 1, 'withdraw', -4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', 'd02bf3be-0cb7-4fa2-a39f-4e0b1614d116', '2019-11-19 14:25:47', '2019-11-19 14:25:47');
INSERT INTO `transactions` VALUES (207, 'App\\Models\\Box', 1, 5, 'deposit', 4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', '7b6a994c-a2a7-4e4e-b99c-dc4b2f0aa165', '2019-11-19 14:25:47', '2019-11-19 14:25:47');
INSERT INTO `transactions` VALUES (208, 'App\\Models\\User', 6, 11, 'withdraw', -4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', '78a195f5-a7c5-4e21-8523-74b72860daab', '2019-11-19 14:26:37', '2019-11-19 14:26:37');
INSERT INTO `transactions` VALUES (209, 'App\\Models\\Box', 1, 5, 'deposit', 4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', 'ddcf0e4e-ada2-427d-b194-bf7d92450208', '2019-11-19 14:26:37', '2019-11-19 14:26:37');
INSERT INTO `transactions` VALUES (210, 'App\\Models\\User', 6, 11, 'withdraw', -4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', '4ddc5c8d-4c87-4c9b-8727-6486a7b35050', '2019-11-19 14:26:56', '2019-11-19 14:26:56');
INSERT INTO `transactions` VALUES (211, 'App\\Models\\Box', 1, 5, 'deposit', 4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', 'c2d6748a-4833-4bd8-8a44-e2a541ea9cff', '2019-11-19 14:26:56', '2019-11-19 14:26:56');
INSERT INTO `transactions` VALUES (212, 'App\\Models\\User', 6, 11, 'deposit', 2500, 1, NULL, 'a0b2bc4d-0dda-4490-82d7-4de01db53ef4', '2019-11-19 14:29:02', '2019-11-19 14:29:02');
INSERT INTO `transactions` VALUES (213, 'App\\Models\\User', 6, 11, 'deposit', 2500, 1, NULL, 'cce06534-a14d-4b45-a12e-b65fb77240f6', '2019-11-19 14:29:18', '2019-11-19 14:29:18');
INSERT INTO `transactions` VALUES (214, 'App\\Models\\User', 6, 11, 'deposit', 2500, 1, NULL, '56b4ee3e-6d05-44bc-8d48-8a90c3c57062', '2019-11-19 14:29:21', '2019-11-19 14:29:21');
INSERT INTO `transactions` VALUES (215, 'App\\Models\\User', 6, 11, 'deposit', 3000, 1, NULL, '3b8fbec7-cf0d-4579-84fd-dbc04f6bde9f', '2019-11-19 14:29:29', '2019-11-19 14:29:29');
INSERT INTO `transactions` VALUES (216, 'App\\Models\\User', 6, 11, 'deposit', 3000, 1, NULL, 'd1f16394-ea38-4c3e-b3a4-41a657495154', '2019-11-19 14:29:34', '2019-11-19 14:29:34');
INSERT INTO `transactions` VALUES (217, 'App\\Models\\User', 6, 11, 'withdraw', -4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', '2f3c8304-fae7-4687-a9f3-5b4fd02c4ec3', '2019-11-19 14:29:40', '2019-11-19 14:29:40');
INSERT INTO `transactions` VALUES (218, 'App\\Models\\Box', 1, 5, 'deposit', 4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', '98bef39c-279d-4c13-9b68-be61e6557895', '2019-11-19 14:29:40', '2019-11-19 14:29:40');
INSERT INTO `transactions` VALUES (219, 'App\\Models\\User', 6, 11, 'withdraw', -4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', '4844f8bb-90e4-4bec-abc4-490d0fb68899', '2019-11-19 14:29:48', '2019-11-19 14:29:48');
INSERT INTO `transactions` VALUES (220, 'App\\Models\\Box', 1, 5, 'deposit', 4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', '195ee6e1-7a1e-4db6-9fc5-13739e4c7f8a', '2019-11-19 14:29:48', '2019-11-19 14:29:48');
INSERT INTO `transactions` VALUES (221, 'App\\Models\\User', 6, 11, 'withdraw', -4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', 'bd1280e0-6cf4-4935-a3a9-c3ca5b14c669', '2019-11-19 14:30:01', '2019-11-19 14:30:01');
INSERT INTO `transactions` VALUES (222, 'App\\Models\\Box', 1, 5, 'deposit', 4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', 'dc5c0986-a298-485e-8850-1a482d322444', '2019-11-19 14:30:01', '2019-11-19 14:30:01');
INSERT INTO `transactions` VALUES (223, 'App\\Models\\User', 1, 1, 'withdraw', -4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', '1b354481-0c1f-4735-a082-0c6d45208560', '2019-11-19 14:33:04', '2019-11-19 14:33:04');
INSERT INTO `transactions` VALUES (224, 'App\\Models\\Box', 1, 5, 'deposit', 4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', '685e1558-4d04-4f22-b599-d30aefffecb3', '2019-11-19 14:33:04', '2019-11-19 14:33:04');
INSERT INTO `transactions` VALUES (225, 'App\\Models\\User', 1, 1, 'deposit', 2500, 1, NULL, 'a6b3f239-cb02-4141-a4a2-b5de3e5c318f', '2019-11-19 14:35:06', '2019-11-19 14:35:06');
INSERT INTO `transactions` VALUES (226, 'App\\Models\\User', 6, 11, 'withdraw', -4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', 'd8cc30eb-875d-44ed-bdc0-b38ac77630ac', '2019-11-19 14:35:43', '2019-11-19 14:35:43');
INSERT INTO `transactions` VALUES (227, 'App\\Models\\Box', 1, 5, 'deposit', 4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', '00971af9-786d-4f7e-9466-cee940be8185', '2019-11-19 14:35:43', '2019-11-19 14:35:43');
INSERT INTO `transactions` VALUES (228, 'App\\Models\\User', 1, 1, 'withdraw', -4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', 'd6db1e46-79d8-4110-9e54-7574c9d6a93f', '2019-11-19 14:37:39', '2019-11-19 14:37:39');
INSERT INTO `transactions` VALUES (229, 'App\\Models\\Box', 1, 5, 'deposit', 4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', '59b50362-937c-4bd3-ad49-bf8605b71e51', '2019-11-19 14:37:39', '2019-11-19 14:37:39');
INSERT INTO `transactions` VALUES (230, 'App\\Models\\User', 1, 1, 'withdraw', -4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', 'd0a3fd5c-204c-4f6a-9677-5e6a60697539', '2019-11-19 14:40:38', '2019-11-19 14:40:38');
INSERT INTO `transactions` VALUES (231, 'App\\Models\\Box', 1, 5, 'deposit', 4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', 'dbd64711-0241-4438-902a-873ba539dad5', '2019-11-19 14:40:38', '2019-11-19 14:40:38');
INSERT INTO `transactions` VALUES (232, 'App\\Models\\User', 1, 1, 'withdraw', -4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', '26eea0b8-8576-4db5-95d2-9907a2446b24', '2019-11-19 14:40:57', '2019-11-19 14:40:57');
INSERT INTO `transactions` VALUES (233, 'App\\Models\\Box', 1, 5, 'deposit', 4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', '7398d201-affe-4312-9366-4263223b8a41', '2019-11-19 14:40:58', '2019-11-19 14:40:58');
INSERT INTO `transactions` VALUES (234, 'App\\Models\\User', 1, 1, 'deposit', 2500, 1, NULL, 'b826dd1a-bc58-4658-9dc8-b711fdf437d9', '2019-11-19 14:41:36', '2019-11-19 14:41:36');
INSERT INTO `transactions` VALUES (235, 'App\\Models\\User', 1, 1, 'deposit', 4900, 1, NULL, '16e75e9f-b0f8-4f0d-85bb-effe282fc634', '2019-11-19 14:41:37', '2019-11-19 14:41:37');
INSERT INTO `transactions` VALUES (236, 'App\\Models\\User', 1, 1, 'deposit', 2500, 1, NULL, '78bcb5d2-d20a-40b8-825b-9b0a145c9c20', '2019-11-19 14:41:39', '2019-11-19 14:41:39');
INSERT INTO `transactions` VALUES (237, 'App\\Models\\User', 1, 1, 'deposit', 6000, 1, NULL, '7866f685-87d7-4d25-a4ca-c62f03fe7668', '2019-11-19 14:41:40', '2019-11-19 14:41:40');
INSERT INTO `transactions` VALUES (238, 'App\\Models\\User', 1, 1, 'deposit', 2500, 1, NULL, 'c1b486a0-489f-474e-a704-ebc9cd11d08e', '2019-11-19 14:41:41', '2019-11-19 14:41:41');
INSERT INTO `transactions` VALUES (239, 'App\\Models\\User', 1, 1, 'deposit', 2500, 1, NULL, '2b3a635e-d1f6-4d50-bca7-9c500d489156', '2019-11-19 14:41:43', '2019-11-19 14:41:43');
INSERT INTO `transactions` VALUES (240, 'App\\Models\\User', 1, 1, 'deposit', 2500, 1, NULL, '0e4b6c0b-a573-401b-8387-8264c2734f70', '2019-11-19 14:41:44', '2019-11-19 14:41:44');
INSERT INTO `transactions` VALUES (241, 'App\\Models\\User', 1, 1, 'deposit', 2500, 1, NULL, '75334e2e-8e2c-482f-85c6-4c402efc1a94', '2019-11-19 14:41:46', '2019-11-19 14:41:46');
INSERT INTO `transactions` VALUES (242, 'App\\Models\\User', 1, 1, 'deposit', 4900, 1, NULL, 'fa0b467e-49fc-4b13-b52d-a6f206ff4b93', '2019-11-19 14:41:48', '2019-11-19 14:41:48');
INSERT INTO `transactions` VALUES (243, 'App\\Models\\User', 1, 1, 'withdraw', -4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', 'af586dde-1f0f-40cf-8ed0-e34e61dfb1c8', '2019-11-19 14:43:18', '2019-11-19 14:43:18');
INSERT INTO `transactions` VALUES (244, 'App\\Models\\Box', 1, 5, 'deposit', 4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', '7050fcb4-6682-4dda-b63a-17e5fe77a47b', '2019-11-19 14:43:18', '2019-11-19 14:43:18');
INSERT INTO `transactions` VALUES (245, 'App\\Models\\User', 1, 1, 'withdraw', -4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', '663916d7-a1cc-4ec8-bad5-580eb88301d7', '2019-11-19 14:43:29', '2019-11-19 14:43:29');
INSERT INTO `transactions` VALUES (246, 'App\\Models\\Box', 1, 5, 'deposit', 4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', 'f3585f87-0b9a-426f-8847-c63ffa972424', '2019-11-19 14:43:30', '2019-11-19 14:43:30');
INSERT INTO `transactions` VALUES (247, 'App\\Models\\User', 1, 1, 'withdraw', -4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', '96773271-cd5f-43f9-bd91-b8596cd0b415', '2019-11-19 14:43:45', '2019-11-19 14:43:45');
INSERT INTO `transactions` VALUES (248, 'App\\Models\\Box', 1, 5, 'deposit', 4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', 'b613c269-2eb8-4156-b228-1404f99cbc91', '2019-11-19 14:43:45', '2019-11-19 14:43:45');
INSERT INTO `transactions` VALUES (249, 'App\\Models\\User', 1, 1, 'deposit', 19900, 1, NULL, '23ce21df-359d-4967-bacc-2a8b512a4f12', '2019-11-19 14:56:30', '2019-11-19 14:56:30');
INSERT INTO `transactions` VALUES (250, 'App\\Models\\User', 1, 1, 'deposit', 2500, 1, NULL, '18c13c4b-51d0-4ffc-830e-ef9e3b427362', '2019-11-19 14:57:59', '2019-11-19 14:57:59');
INSERT INTO `transactions` VALUES (251, 'App\\Models\\User', 1, 1, 'deposit', 2500, 1, NULL, '6991b72c-9b5d-4cea-91a7-299a0a1e0cc4', '2019-11-19 14:58:43', '2019-11-19 14:58:43');
INSERT INTO `transactions` VALUES (252, 'App\\Models\\User', 1, 1, 'withdraw', -1500, 1, '{\"title\":\"SAMSUNG BOX\",\"description\":\"Purchase of Product #16\"}', '06dee4d0-ea51-46a9-b2c3-159d49b0b9b6', '2019-11-19 15:01:20', '2019-11-19 15:01:20');
INSERT INTO `transactions` VALUES (253, 'App\\Models\\Box', 16, 12, 'deposit', 1500, 1, '{\"title\":\"SAMSUNG BOX\",\"description\":\"Purchase of Product #16\"}', '99902e99-7959-47f7-b293-8de5ba21e639', '2019-11-19 15:01:20', '2019-11-19 15:01:20');
INSERT INTO `transactions` VALUES (254, 'App\\Models\\User', 1, 1, 'deposit', 90000, 1, NULL, '777f34d0-c524-46d8-a4d8-c145183cbf0f', '2019-11-19 15:01:52', '2019-11-19 15:01:52');
INSERT INTO `transactions` VALUES (255, 'App\\Models\\User', 1, 1, 'withdraw', -1500, 1, '{\"title\":\"SAMSUNG BOX\",\"description\":\"Purchase of Product #16\"}', '51916f06-9740-4f89-9167-5ac33a566fbd', '2019-11-19 15:03:31', '2019-11-19 15:03:31');
INSERT INTO `transactions` VALUES (256, 'App\\Models\\Box', 16, 12, 'deposit', 1500, 1, '{\"title\":\"SAMSUNG BOX\",\"description\":\"Purchase of Product #16\"}', 'e6bec02c-2323-4f15-8114-23eb4c22d6ad', '2019-11-19 15:03:31', '2019-11-19 15:03:31');
INSERT INTO `transactions` VALUES (257, 'App\\Models\\User', 1, 1, 'deposit', 90000, 1, NULL, '490d44e7-0003-4d83-8bb3-1627f41e6f0a', '2019-11-19 15:03:45', '2019-11-19 15:03:45');
INSERT INTO `transactions` VALUES (258, 'App\\Models\\User', 1, 1, 'withdraw', -1500, 1, '{\"title\":\"SAMSUNG BOX\",\"description\":\"Purchase of Product #16\"}', 'cfad3e4e-61e9-40b4-b093-b5e55f892414', '2019-11-19 15:03:47', '2019-11-19 15:03:47');
INSERT INTO `transactions` VALUES (259, 'App\\Models\\Box', 16, 12, 'deposit', 1500, 1, '{\"title\":\"SAMSUNG BOX\",\"description\":\"Purchase of Product #16\"}', '90ae200a-c5b2-479a-8dd2-3a77e3c229db', '2019-11-19 15:03:47', '2019-11-19 15:03:47');
INSERT INTO `transactions` VALUES (260, 'App\\Models\\User', 1, 1, 'withdraw', -1500, 1, '{\"title\":\"SAMSUNG BOX\",\"description\":\"Purchase of Product #16\"}', '78c5a447-e24b-46da-9321-d668adb95e78', '2019-11-19 15:03:58', '2019-11-19 15:03:58');
INSERT INTO `transactions` VALUES (261, 'App\\Models\\Box', 16, 12, 'deposit', 1500, 1, '{\"title\":\"SAMSUNG BOX\",\"description\":\"Purchase of Product #16\"}', 'f58ac6f2-ab1d-4063-a749-9abfcdc40942', '2019-11-19 15:03:58', '2019-11-19 15:03:58');
INSERT INTO `transactions` VALUES (262, 'App\\Models\\User', 1, 1, 'withdraw', -1500, 1, '{\"title\":\"SAMSUNG BOX\",\"description\":\"Purchase of Product #16\"}', '07c2acc3-7efa-4398-a04a-ce55c5287eb4', '2019-11-19 15:04:32', '2019-11-19 15:04:32');
INSERT INTO `transactions` VALUES (263, 'App\\Models\\Box', 16, 12, 'deposit', 1500, 1, '{\"title\":\"SAMSUNG BOX\",\"description\":\"Purchase of Product #16\"}', '49d0e550-f3a0-478a-909f-890396f60837', '2019-11-19 15:04:32', '2019-11-19 15:04:32');
INSERT INTO `transactions` VALUES (264, 'App\\Models\\User', 1, 1, 'withdraw', -1500, 1, '{\"title\":\"SAMSUNG BOX\",\"description\":\"Purchase of Product #16\"}', 'd1bf0cbc-171b-4b98-94c7-86252f63e2cf', '2019-11-19 15:04:41', '2019-11-19 15:04:41');
INSERT INTO `transactions` VALUES (265, 'App\\Models\\Box', 16, 12, 'deposit', 1500, 1, '{\"title\":\"SAMSUNG BOX\",\"description\":\"Purchase of Product #16\"}', '5854bdee-2b0f-4629-804e-2c445a73dd8f', '2019-11-19 15:04:41', '2019-11-19 15:04:41');
INSERT INTO `transactions` VALUES (266, 'App\\Models\\User', 1, 1, 'deposit', 10000, 1, NULL, '11743e68-ee33-451e-a14d-a663539d9314', '2019-11-19 15:05:09', '2019-11-19 15:05:09');
INSERT INTO `transactions` VALUES (267, 'App\\Models\\User', 1, 1, 'deposit', 100000, 1, NULL, '1e7da69a-2f9f-4771-abb7-2a82f36a26a4', '2019-11-19 15:05:34', '2019-11-19 15:05:34');
INSERT INTO `transactions` VALUES (268, 'App\\Models\\User', 1, 1, 'deposit', 10000, 1, NULL, '2e5dad03-a102-4bb7-b6e7-a6b4ae4f5853', '2019-11-19 15:06:08', '2019-11-19 15:06:08');
INSERT INTO `transactions` VALUES (269, 'App\\Models\\User', 1, 1, 'deposit', 10000, 1, NULL, '6a7def57-f9ad-4e2b-924a-d46ebe5ec226', '2019-11-19 15:06:17', '2019-11-19 15:06:17');
INSERT INTO `transactions` VALUES (270, 'App\\Models\\User', 1, 1, 'withdraw', -1500, 1, '{\"title\":\"SAMSUNG BOX\",\"description\":\"Purchase of Product #16\"}', 'dc503dca-f189-4b13-9556-e0ccdcdedcaa', '2019-11-19 15:06:40', '2019-11-19 15:06:40');
INSERT INTO `transactions` VALUES (271, 'App\\Models\\Box', 16, 12, 'deposit', 1500, 1, '{\"title\":\"SAMSUNG BOX\",\"description\":\"Purchase of Product #16\"}', '86a8c524-bbff-444a-b7ab-43b992dc33c4', '2019-11-19 15:06:40', '2019-11-19 15:06:40');
INSERT INTO `transactions` VALUES (272, 'App\\Models\\User', 1, 1, 'withdraw', -1500, 1, '{\"title\":\"SAMSUNG BOX\",\"description\":\"Purchase of Product #16\"}', 'e75de7b0-5965-4a09-817c-562a8a796b61', '2019-11-19 15:06:49', '2019-11-19 15:06:49');
INSERT INTO `transactions` VALUES (273, 'App\\Models\\Box', 16, 12, 'deposit', 1500, 1, '{\"title\":\"SAMSUNG BOX\",\"description\":\"Purchase of Product #16\"}', '944da746-71b4-4c15-9595-ca147a96e5ba', '2019-11-19 15:06:49', '2019-11-19 15:06:49');
INSERT INTO `transactions` VALUES (274, 'App\\Models\\User', 1, 1, 'withdraw', -1500, 1, '{\"title\":\"SAMSUNG BOX\",\"description\":\"Purchase of Product #16\"}', '6c226d5d-254d-4421-b147-3e55b0c0452e', '2019-11-19 15:06:59', '2019-11-19 15:06:59');
INSERT INTO `transactions` VALUES (275, 'App\\Models\\Box', 16, 12, 'deposit', 1500, 1, '{\"title\":\"SAMSUNG BOX\",\"description\":\"Purchase of Product #16\"}', 'f40ea1c1-9406-4f77-aa12-fd9b61b42ba2', '2019-11-19 15:06:59', '2019-11-19 15:06:59');
INSERT INTO `transactions` VALUES (276, 'App\\Models\\User', 1, 1, 'withdraw', -1500, 1, '{\"title\":\"SAMSUNG BOX\",\"description\":\"Purchase of Product #16\"}', '4d1c78e7-25f8-4e0f-a188-1189685314e3', '2019-11-19 15:07:08', '2019-11-19 15:07:08');
INSERT INTO `transactions` VALUES (277, 'App\\Models\\Box', 16, 12, 'deposit', 1500, 1, '{\"title\":\"SAMSUNG BOX\",\"description\":\"Purchase of Product #16\"}', '2f91c7de-7447-4478-b587-0c4ce89314fc', '2019-11-19 15:07:09', '2019-11-19 15:07:09');
INSERT INTO `transactions` VALUES (278, 'App\\Models\\User', 1, 1, 'withdraw', -1500, 1, '{\"title\":\"SAMSUNG BOX\",\"description\":\"Purchase of Product #16\"}', '218bc985-9c9f-4faf-a0df-9ff748b88330', '2019-11-19 15:07:23', '2019-11-19 15:07:23');
INSERT INTO `transactions` VALUES (279, 'App\\Models\\Box', 16, 12, 'deposit', 1500, 1, '{\"title\":\"SAMSUNG BOX\",\"description\":\"Purchase of Product #16\"}', '54e74adf-cd3a-4d4f-bfc5-39477b48a50a', '2019-11-19 15:07:23', '2019-11-19 15:07:23');
INSERT INTO `transactions` VALUES (280, 'App\\Models\\User', 6, 11, 'deposit', 3000, 1, NULL, '53498e6c-a3e2-4b75-b3cc-0f2af8b12ce5', '2019-11-19 15:08:05', '2019-11-19 15:08:05');
INSERT INTO `transactions` VALUES (281, 'App\\Models\\User', 6, 11, 'deposit', 3000, 1, NULL, '3bb04a35-120a-4399-aede-1edf4ceeabd8', '2019-11-19 15:08:08', '2019-11-19 15:08:08');
INSERT INTO `transactions` VALUES (282, 'App\\Models\\User', 6, 11, 'deposit', 2500, 1, NULL, 'ad938993-c106-4217-8b43-1bd2609d1279', '2019-11-19 15:08:10', '2019-11-19 15:08:10');
INSERT INTO `transactions` VALUES (283, 'App\\Models\\User', 6, 11, 'deposit', 4900, 1, NULL, '269bb0ba-f427-42c7-9883-6c448d82a8a7', '2019-11-19 15:08:13', '2019-11-19 15:08:13');
INSERT INTO `transactions` VALUES (284, 'App\\Models\\User', 6, 11, 'deposit', 2500, 1, NULL, 'ac7668d4-3aed-4dfb-a52e-4402fd25abd5', '2019-11-19 15:08:16', '2019-11-19 15:08:16');
INSERT INTO `transactions` VALUES (285, 'App\\Models\\User', 6, 11, 'deposit', 2500, 1, NULL, '1bf461a9-ba79-45dc-9b0f-988a3472e5e8', '2019-11-19 15:08:18', '2019-11-19 15:08:18');
INSERT INTO `transactions` VALUES (286, 'App\\Models\\User', 6, 11, 'deposit', 19900, 1, NULL, 'f7619f20-716a-4feb-b8c8-787b492cb72b', '2019-11-19 15:08:21', '2019-11-19 15:08:21');
INSERT INTO `transactions` VALUES (287, 'App\\Models\\User', 6, 11, 'deposit', 2500, 1, NULL, '3fc47c11-943a-49e8-8c83-7eaa9770d2df', '2019-11-19 15:08:24', '2019-11-19 15:08:24');
INSERT INTO `transactions` VALUES (288, 'App\\Models\\User', 6, 11, 'deposit', 2500, 1, NULL, '61c6406a-53e3-45ff-b3b2-9e2cd9c03dbd', '2019-11-19 15:08:27', '2019-11-19 15:08:27');
INSERT INTO `transactions` VALUES (289, 'App\\Models\\User', 6, 11, 'deposit', 2500, 1, NULL, '69840ac9-6675-403b-a422-368a03ae6abf', '2019-11-19 15:08:30', '2019-11-19 15:08:30');
INSERT INTO `transactions` VALUES (290, 'App\\Models\\User', 6, 11, 'deposit', 2500, 1, NULL, 'ed51336f-d728-49dd-ab0f-7725e0905b29', '2019-11-19 15:08:32', '2019-11-19 15:08:32');
INSERT INTO `transactions` VALUES (291, 'App\\Models\\User', 6, 11, 'deposit', 2500, 1, NULL, '0b6f5052-7e01-4489-8b61-449d5f68b988', '2019-11-19 15:08:35', '2019-11-19 15:08:35');
INSERT INTO `transactions` VALUES (292, 'App\\Models\\User', 6, 11, 'deposit', 4900, 1, NULL, '14b15a4e-0c9c-498a-a9e7-5e7504dcb181', '2019-11-19 15:08:37', '2019-11-19 15:08:37');
INSERT INTO `transactions` VALUES (293, 'App\\Models\\User', 6, 11, 'deposit', 2500, 1, NULL, '567087ae-bcbe-46ff-9ae3-a89c722f4538', '2019-11-19 15:08:40', '2019-11-19 15:08:40');
INSERT INTO `transactions` VALUES (294, 'App\\Models\\User', 6, 11, 'deposit', 19900, 1, NULL, 'b210bfe5-1045-4e5a-9f79-7b2c9f016322', '2019-11-19 15:08:42', '2019-11-19 15:08:42');
INSERT INTO `transactions` VALUES (295, 'App\\Models\\User', 6, 11, 'deposit', 2500, 1, NULL, 'e6ffefad-ad70-49e1-a041-35ad53cfef0a', '2019-11-19 15:08:46', '2019-11-19 15:08:46');
INSERT INTO `transactions` VALUES (296, 'App\\Models\\User', 6, 11, 'deposit', 2500, 1, NULL, 'c9feb289-bd42-4c7e-b206-53869a7c0945', '2019-11-19 15:08:49', '2019-11-19 15:08:49');
INSERT INTO `transactions` VALUES (297, 'App\\Models\\User', 6, 11, 'deposit', 2500, 1, NULL, '3bcd027f-c852-42cd-a911-b53809bb098f', '2019-11-19 15:08:52', '2019-11-19 15:08:52');
INSERT INTO `transactions` VALUES (298, 'App\\Models\\User', 6, 11, 'deposit', 2500, 1, NULL, '85c2a532-ea34-49b9-becb-a9300844e7d6', '2019-11-19 15:08:54', '2019-11-19 15:08:54');
INSERT INTO `transactions` VALUES (299, 'App\\Models\\User', 6, 11, 'deposit', 2500, 1, NULL, '00b8b018-3e85-43c8-8d16-895fccf764c7', '2019-11-19 15:08:56', '2019-11-19 15:08:56');
INSERT INTO `transactions` VALUES (300, 'App\\Models\\User', 6, 11, 'deposit', 2500, 1, NULL, '432ca08d-ccba-4d44-aaf9-66bea72e59ec', '2019-11-19 15:08:59', '2019-11-19 15:08:59');
INSERT INTO `transactions` VALUES (301, 'App\\Models\\User', 6, 11, 'deposit', 4900, 1, NULL, 'a5b9e755-a5d0-40f4-bb61-9db25de3a254', '2019-11-19 15:09:04', '2019-11-19 15:09:04');
INSERT INTO `transactions` VALUES (302, 'App\\Models\\User', 6, 11, 'deposit', 2500, 1, NULL, 'b72f0120-7647-48fb-88d4-2c1131d50f8b', '2019-11-19 15:09:07', '2019-11-19 15:09:07');
INSERT INTO `transactions` VALUES (303, 'App\\Models\\User', 1, 1, 'withdraw', -1500, 1, '{\"title\":\"SAMSUNG BOX\",\"description\":\"Purchase of Product #16\"}', '09d5f7fd-47d9-4b29-88e7-9b15fa8f6d25', '2019-11-19 15:11:09', '2019-11-19 15:11:09');
INSERT INTO `transactions` VALUES (304, 'App\\Models\\Box', 16, 12, 'deposit', 1500, 1, '{\"title\":\"SAMSUNG BOX\",\"description\":\"Purchase of Product #16\"}', '6edfe70f-e7b4-44f4-b5fb-baebd85a3881', '2019-11-19 15:11:09', '2019-11-19 15:11:09');
INSERT INTO `transactions` VALUES (305, 'App\\Models\\User', 1, 1, 'withdraw', -1500, 1, '{\"title\":\"SAMSUNG BOX\",\"description\":\"Purchase of Product #16\"}', '0ee1e102-8358-4826-b7a7-9dc64e218f4c', '2019-11-19 15:11:35', '2019-11-19 15:11:35');
INSERT INTO `transactions` VALUES (306, 'App\\Models\\Box', 16, 12, 'deposit', 1500, 1, '{\"title\":\"SAMSUNG BOX\",\"description\":\"Purchase of Product #16\"}', '25648b39-27db-413a-a981-0ffa51d63360', '2019-11-19 15:11:35', '2019-11-19 15:11:35');
INSERT INTO `transactions` VALUES (307, 'App\\Models\\User', 1, 1, 'deposit', 10000, 1, NULL, '930baf84-a95e-4428-8e0c-42380dd096e7', '2019-11-19 15:11:45', '2019-11-19 15:11:45');
INSERT INTO `transactions` VALUES (308, 'App\\Models\\User', 1, 1, 'deposit', 100000, 1, NULL, 'b963a373-1ff2-48ab-b7fd-3e923917cfd0', '2019-11-19 15:11:47', '2019-11-19 15:11:47');
INSERT INTO `transactions` VALUES (309, 'App\\Models\\User', 1, 1, 'deposit', 10000, 1, NULL, 'cc84b8c7-1607-4bff-adb1-9b89e03e2b77', '2019-11-19 15:11:50', '2019-11-19 15:11:50');
INSERT INTO `transactions` VALUES (310, 'App\\Models\\User', 1, 1, 'deposit', 10000, 1, NULL, '6bfe5575-023b-4035-b042-84958b7ddb20', '2019-11-19 15:11:51', '2019-11-19 15:11:51');
INSERT INTO `transactions` VALUES (311, 'App\\Models\\User', 1, 1, 'deposit', 90000, 1, NULL, '3d68a3a5-6e6e-459e-9019-afd25e4bc4c7', '2019-11-19 15:11:53', '2019-11-19 15:11:53');
INSERT INTO `transactions` VALUES (312, 'App\\Models\\User', 1, 1, 'deposit', 10000, 1, NULL, '89209f5b-ebab-440a-acf1-6b08b542eb7e', '2019-11-19 15:11:54', '2019-11-19 15:11:54');
INSERT INTO `transactions` VALUES (313, 'App\\Models\\User', 1, 1, 'deposit', 100000, 1, NULL, 'c0acbfd2-d2ab-4431-b467-5e7c465ba115', '2019-11-19 15:11:56', '2019-11-19 15:11:56');
INSERT INTO `transactions` VALUES (314, 'App\\Models\\User', 1, 1, 'withdraw', -1500, 1, '{\"title\":\"SAMSUNG BOX\",\"description\":\"Purchase of Product #16\"}', '0b0e6f8c-db72-4761-a22a-beba6ca6adb8', '2019-11-19 15:12:03', '2019-11-19 15:12:03');
INSERT INTO `transactions` VALUES (315, 'App\\Models\\Box', 16, 12, 'deposit', 1500, 1, '{\"title\":\"SAMSUNG BOX\",\"description\":\"Purchase of Product #16\"}', '9d58e5fb-1990-4676-84a2-28b4a1f819b5', '2019-11-19 15:12:03', '2019-11-19 15:12:03');
INSERT INTO `transactions` VALUES (316, 'App\\Models\\User', 1, 1, 'withdraw', -1500, 1, '{\"title\":\"SAMSUNG BOX\",\"description\":\"Purchase of Product #16\"}', '496de03d-0861-49f2-9528-05e2c488f963', '2019-11-19 15:12:14', '2019-11-19 15:12:14');
INSERT INTO `transactions` VALUES (317, 'App\\Models\\Box', 16, 12, 'deposit', 1500, 1, '{\"title\":\"SAMSUNG BOX\",\"description\":\"Purchase of Product #16\"}', '8efd06ab-22e6-441f-88ac-360c481924ce', '2019-11-19 15:12:14', '2019-11-19 15:12:14');
INSERT INTO `transactions` VALUES (318, 'App\\Models\\User', 1, 1, 'deposit', 10000, 1, NULL, '6e5a96d3-f85f-47d2-aabe-8a44caab878e', '2019-11-19 15:13:15', '2019-11-19 15:13:15');
INSERT INTO `transactions` VALUES (319, 'App\\Models\\User', 1, 1, 'deposit', 10000, 1, NULL, 'e200e149-2d6b-4d47-8e4f-93442903df08', '2019-11-19 15:15:05', '2019-11-19 15:15:05');
INSERT INTO `transactions` VALUES (320, 'App\\Models\\User', 1, 1, 'withdraw', -1500, 1, '{\"title\":\"SAMSUNG BOX\",\"description\":\"Purchase of Product #16\"}', '1353faf6-edc4-45d0-989c-12fbfc645b66', '2019-11-19 15:15:57', '2019-11-19 15:15:57');
INSERT INTO `transactions` VALUES (321, 'App\\Models\\Box', 16, 12, 'deposit', 1500, 1, '{\"title\":\"SAMSUNG BOX\",\"description\":\"Purchase of Product #16\"}', 'bea7287f-ea36-4d59-8c7d-92e7c7fbd03e', '2019-11-19 15:15:58', '2019-11-19 15:15:58');
INSERT INTO `transactions` VALUES (322, 'App\\Models\\User', 1, 1, 'withdraw', -1500, 1, '{\"title\":\"SAMSUNG BOX\",\"description\":\"Purchase of Product #16\"}', '90cba365-d7d4-40dc-84a8-7be556894acd', '2019-11-19 15:16:06', '2019-11-19 15:16:06');
INSERT INTO `transactions` VALUES (323, 'App\\Models\\Box', 16, 12, 'deposit', 1500, 1, '{\"title\":\"SAMSUNG BOX\",\"description\":\"Purchase of Product #16\"}', '6f883a9f-0930-4292-932f-38f59f106994', '2019-11-19 15:16:06', '2019-11-19 15:16:06');
INSERT INTO `transactions` VALUES (324, 'App\\Models\\User', 1, 1, 'withdraw', -1500, 1, '{\"title\":\"SAMSUNG BOX\",\"description\":\"Purchase of Product #16\"}', '0b8772a1-02b7-43e7-b5a3-9a1ed8f2f89e', '2019-11-19 15:16:15', '2019-11-19 15:16:15');
INSERT INTO `transactions` VALUES (325, 'App\\Models\\Box', 16, 12, 'deposit', 1500, 1, '{\"title\":\"SAMSUNG BOX\",\"description\":\"Purchase of Product #16\"}', '82c1ff9d-b218-4686-b2c4-c3aa54272e53', '2019-11-19 15:16:15', '2019-11-19 15:16:15');
INSERT INTO `transactions` VALUES (326, 'App\\Models\\User', 1, 1, 'withdraw', -1500, 1, '{\"title\":\"SAMSUNG BOX\",\"description\":\"Purchase of Product #16\"}', 'f6505cb6-fb75-4c87-a618-6c6cd43de3f3', '2019-11-19 15:16:24', '2019-11-19 15:16:24');
INSERT INTO `transactions` VALUES (327, 'App\\Models\\Box', 16, 12, 'deposit', 1500, 1, '{\"title\":\"SAMSUNG BOX\",\"description\":\"Purchase of Product #16\"}', '3468f73c-d08e-43c9-bd9b-2c131eb2935f', '2019-11-19 15:16:24', '2019-11-19 15:16:24');
INSERT INTO `transactions` VALUES (328, 'App\\Models\\User', 1, 1, 'withdraw', -1500, 1, '{\"title\":\"SAMSUNG BOX\",\"description\":\"Purchase of Product #16\"}', '4bd110be-6e97-4eca-af2a-81aac95f0119', '2019-11-19 15:16:33', '2019-11-19 15:16:33');
INSERT INTO `transactions` VALUES (329, 'App\\Models\\Box', 16, 12, 'deposit', 1500, 1, '{\"title\":\"SAMSUNG BOX\",\"description\":\"Purchase of Product #16\"}', '225eff02-f985-48d2-89e7-f7360310fc8a', '2019-11-19 15:16:33', '2019-11-19 15:16:33');
INSERT INTO `transactions` VALUES (330, 'App\\Models\\User', 1, 1, 'deposit', 90000, 1, NULL, '29864f03-8428-445a-a21f-756f7fecfd4f', '2019-11-19 15:16:55', '2019-11-19 15:16:55');
INSERT INTO `transactions` VALUES (331, 'App\\Models\\User', 1, 1, 'deposit', 90000, 1, NULL, 'd32c613c-576a-4cd8-9835-9669b61c14a0', '2019-11-19 15:18:18', '2019-11-19 15:18:18');
INSERT INTO `transactions` VALUES (332, 'App\\Models\\User', 1, 1, 'deposit', 100000, 1, NULL, '05426e9d-3c34-4c8c-b055-172ae57882d7', '2019-11-19 15:19:16', '2019-11-19 15:19:16');
INSERT INTO `transactions` VALUES (333, 'App\\Models\\User', 1, 1, 'deposit', 10000, 1, NULL, '4f7f834c-5d48-4549-bced-85ea8ed7014a', '2019-11-19 15:23:32', '2019-11-19 15:23:32');
INSERT INTO `transactions` VALUES (334, 'App\\Models\\User', 1, 1, 'deposit', 100000, 1, NULL, 'dacd0cfe-4fda-4b35-a099-e63e14908005', '2019-11-19 15:23:52', '2019-11-19 15:23:52');
INSERT INTO `transactions` VALUES (335, 'App\\Models\\User', 1, 1, 'withdraw', -1500, 1, '{\"title\":\"SAMSUNG BOX\",\"description\":\"Purchase of Product #16\"}', '1a682dc3-4505-44d9-b3dc-e09c2ca5396b', '2019-11-19 15:23:59', '2019-11-19 15:23:59');
INSERT INTO `transactions` VALUES (336, 'App\\Models\\Box', 16, 12, 'deposit', 1500, 1, '{\"title\":\"SAMSUNG BOX\",\"description\":\"Purchase of Product #16\"}', '93f08851-b6b1-4e6c-bbb9-9e3fc1463495', '2019-11-19 15:23:59', '2019-11-19 15:23:59');
INSERT INTO `transactions` VALUES (337, 'App\\Models\\User', 1, 1, 'deposit', 10000, 1, NULL, '61d610ce-a7f5-4579-81f6-42feca050997', '2019-11-19 15:24:33', '2019-11-19 15:24:33');
INSERT INTO `transactions` VALUES (338, 'App\\Models\\User', 6, 11, 'withdraw', -4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', 'd58c3bb9-6cbf-4d0b-8456-1309556902b2', '2019-11-19 17:25:47', '2019-11-19 17:25:47');
INSERT INTO `transactions` VALUES (339, 'App\\Models\\Box', 1, 5, 'deposit', 4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', '4cec2529-bddd-48a1-80c3-e14604686c5d', '2019-11-19 17:25:49', '2019-11-19 17:25:49');
INSERT INTO `transactions` VALUES (340, 'App\\Models\\User', 6, 11, 'withdraw', -1500, 1, '{\"title\":\"SAMSUNG BOX\",\"description\":\"Purchase of Product #16\"}', '20df49b2-7c43-4571-90ae-158e052c4ac9', '2019-11-19 17:27:57', '2019-11-19 17:27:57');
INSERT INTO `transactions` VALUES (341, 'App\\Models\\Box', 16, 12, 'deposit', 1500, 1, '{\"title\":\"SAMSUNG BOX\",\"description\":\"Purchase of Product #16\"}', '78816db0-3a83-4b3e-8a7c-b289e944d0ec', '2019-11-19 17:27:57', '2019-11-19 17:27:57');
INSERT INTO `transactions` VALUES (342, 'App\\Models\\User', 6, 11, 'deposit', 2500, 1, NULL, '88e23d0f-ca8b-4312-a323-8b1e5d8eba2e', '2019-11-19 17:28:11', '2019-11-19 17:28:11');
INSERT INTO `transactions` VALUES (343, 'App\\Models\\User', 6, 11, 'deposit', 90000, 1, NULL, '98f92ce9-8749-4c98-b09c-37b102568df3', '2019-11-19 17:28:15', '2019-11-19 17:28:15');
INSERT INTO `transactions` VALUES (344, 'App\\Models\\User', 6, 11, 'withdraw', -1500, 1, '{\"title\":\"SAMSUNG BOX\",\"description\":\"Purchase of Product #16\"}', 'dc9bbfb3-3571-41fc-bfa9-7c53894981ce', '2019-11-19 17:28:18', '2019-11-19 17:28:18');
INSERT INTO `transactions` VALUES (345, 'App\\Models\\Box', 16, 12, 'deposit', 1500, 1, '{\"title\":\"SAMSUNG BOX\",\"description\":\"Purchase of Product #16\"}', 'b7e7b76a-2c37-4935-8c26-46d94bd6c457', '2019-11-19 17:28:18', '2019-11-19 17:28:18');
INSERT INTO `transactions` VALUES (346, 'App\\Models\\User', 1, 1, 'withdraw', -4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', 'fca268da-7fa9-45df-8edf-b825790cf63a', '2019-11-19 17:32:43', '2019-11-19 17:32:43');
INSERT INTO `transactions` VALUES (347, 'App\\Models\\Box', 1, 5, 'deposit', 4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', 'ba9b797f-3282-46a4-8a87-265573a0475c', '2019-11-19 17:32:44', '2019-11-19 17:32:44');
INSERT INTO `transactions` VALUES (348, 'App\\Models\\User', 1, 1, 'withdraw', -4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', 'c0468bc2-dff4-4827-bada-6abc7fb1f363', '2019-11-19 17:37:58', '2019-11-19 17:37:58');
INSERT INTO `transactions` VALUES (349, 'App\\Models\\Box', 1, 5, 'deposit', 4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', '6c30bfe0-14f6-4f18-83ab-cf90d396aa09', '2019-11-19 17:37:58', '2019-11-19 17:37:58');
INSERT INTO `transactions` VALUES (350, 'App\\Models\\User', 1, 1, 'withdraw', -4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', '65d92fd0-8207-4f36-b2ef-f5a55ab7b6c3', '2019-11-19 17:40:52', '2019-11-19 17:40:52');
INSERT INTO `transactions` VALUES (351, 'App\\Models\\Box', 1, 5, 'deposit', 4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', 'c01f6910-d63b-46a2-a29b-4079d1260fcd', '2019-11-19 17:40:52', '2019-11-19 17:40:52');
INSERT INTO `transactions` VALUES (352, 'App\\Models\\User', 6, 11, 'withdraw', -5900, 1, '{\"title\":\"Bags & Handbags eBox\",\"description\":\"Purchase of Product #14\"}', '69a689a7-d9ca-487b-8826-ae75d11ccab0', '2019-11-19 17:41:58', '2019-11-19 17:41:58');
INSERT INTO `transactions` VALUES (353, 'App\\Models\\Box', 14, 10, 'deposit', 5900, 1, '{\"title\":\"Bags & Handbags eBox\",\"description\":\"Purchase of Product #14\"}', '74f971b0-f4f7-485a-b276-be638245347c', '2019-11-19 17:41:58', '2019-11-19 17:41:58');
INSERT INTO `transactions` VALUES (354, 'App\\Models\\User', 6, 11, 'withdraw', -5900, 1, '{\"title\":\"Bags & Handbags eBox\",\"description\":\"Purchase of Product #14\"}', 'bd41e56a-49a9-4790-9c89-6aad8a9f17c8', '2019-11-19 17:42:11', '2019-11-19 17:42:11');
INSERT INTO `transactions` VALUES (355, 'App\\Models\\Box', 14, 10, 'deposit', 5900, 1, '{\"title\":\"Bags & Handbags eBox\",\"description\":\"Purchase of Product #14\"}', '6471deec-2607-4078-9d3d-ebb1905713fd', '2019-11-19 17:42:11', '2019-11-19 17:42:11');
INSERT INTO `transactions` VALUES (356, 'App\\Models\\User', 6, 11, 'withdraw', -5900, 1, '{\"title\":\"Bags & Handbags eBox\",\"description\":\"Purchase of Product #14\"}', 'c5ebe152-c474-44bb-b569-4d776bbf4547', '2019-11-19 17:42:27', '2019-11-19 17:42:27');
INSERT INTO `transactions` VALUES (357, 'App\\Models\\Box', 14, 10, 'deposit', 5900, 1, '{\"title\":\"Bags & Handbags eBox\",\"description\":\"Purchase of Product #14\"}', '2b2e0b0f-8e4b-49a5-9241-33e201e21734', '2019-11-19 17:42:27', '2019-11-19 17:42:27');
INSERT INTO `transactions` VALUES (358, 'App\\Models\\User', 1, 1, 'withdraw', -4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', 'a4556ef1-d322-47c9-b874-5bcd67e999e6', '2019-11-19 17:43:30', '2019-11-19 17:43:30');
INSERT INTO `transactions` VALUES (359, 'App\\Models\\Box', 1, 5, 'deposit', 4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', 'b0f70845-e0a8-4d82-bf2e-27b976f681fc', '2019-11-19 17:43:30', '2019-11-19 17:43:30');
INSERT INTO `transactions` VALUES (360, 'App\\Models\\User', 6, 11, 'withdraw', -1500, 1, '{\"title\":\"SAMSUNG BOX\",\"description\":\"Purchase of Product #16\"}', '68fd0ddf-c644-4103-bf53-262785ae14f4', '2019-11-19 17:48:19', '2019-11-19 17:48:19');
INSERT INTO `transactions` VALUES (361, 'App\\Models\\Box', 16, 12, 'deposit', 1500, 1, '{\"title\":\"SAMSUNG BOX\",\"description\":\"Purchase of Product #16\"}', '08a1cc42-ba39-4148-9286-455f8732af94', '2019-11-19 17:48:19', '2019-11-19 17:48:19');
INSERT INTO `transactions` VALUES (362, 'App\\Models\\User', 6, 11, 'withdraw', -1500, 1, '{\"title\":\"SAMSUNG BOX\",\"description\":\"Purchase of Product #16\"}', 'd4ea258a-2d42-420a-b5bd-e7772f5d6e84', '2019-11-19 17:49:53', '2019-11-19 17:49:53');
INSERT INTO `transactions` VALUES (363, 'App\\Models\\Box', 16, 12, 'deposit', 1500, 1, '{\"title\":\"SAMSUNG BOX\",\"description\":\"Purchase of Product #16\"}', '99f417c6-21bc-42ef-8f3c-d7147aa09511', '2019-11-19 17:49:53', '2019-11-19 17:49:53');
INSERT INTO `transactions` VALUES (364, 'App\\Models\\User', 6, 11, 'withdraw', -1500, 1, '{\"title\":\"SAMSUNG BOX\",\"description\":\"Purchase of Product #16\"}', 'ed14cfbb-6104-4245-a777-95e3d8cc210d', '2019-11-19 17:50:17', '2019-11-19 17:50:17');
INSERT INTO `transactions` VALUES (365, 'App\\Models\\Box', 16, 12, 'deposit', 1500, 1, '{\"title\":\"SAMSUNG BOX\",\"description\":\"Purchase of Product #16\"}', '5c72609b-1e8b-4b8b-82c8-cd605bc62410', '2019-11-19 17:50:17', '2019-11-19 17:50:17');
INSERT INTO `transactions` VALUES (366, 'App\\Models\\User', 6, 11, 'withdraw', -1500, 1, '{\"title\":\"SAMSUNG BOX\",\"description\":\"Purchase of Product #16\"}', 'a8988c77-4f5f-45e6-ab11-ceba1d973e00', '2019-11-19 17:59:06', '2019-11-19 17:59:06');
INSERT INTO `transactions` VALUES (367, 'App\\Models\\Box', 16, 12, 'deposit', 1500, 1, '{\"title\":\"SAMSUNG BOX\",\"description\":\"Purchase of Product #16\"}', '06721945-57a1-48b6-93ac-90f27cdfd390', '2019-11-19 17:59:06', '2019-11-19 17:59:06');
INSERT INTO `transactions` VALUES (368, 'App\\Models\\User', 6, 11, 'withdraw', -1500, 1, '{\"title\":\"SAMSUNG BOX\",\"description\":\"Purchase of Product #16\"}', 'cf9e2072-6ee0-4341-aa5c-8785f182f901', '2019-11-19 17:59:17', '2019-11-19 17:59:17');
INSERT INTO `transactions` VALUES (369, 'App\\Models\\Box', 16, 12, 'deposit', 1500, 1, '{\"title\":\"SAMSUNG BOX\",\"description\":\"Purchase of Product #16\"}', '6980a652-6598-4b69-a404-48adf3df13b4', '2019-11-19 17:59:17', '2019-11-19 17:59:17');
INSERT INTO `transactions` VALUES (370, 'App\\Models\\User', 6, 11, 'withdraw', -1500, 1, '{\"title\":\"SAMSUNG BOX\",\"description\":\"Purchase of Product #16\"}', '8570beed-b32b-44c1-b9e7-2f7a01695a41', '2019-11-19 17:59:32', '2019-11-19 17:59:32');
INSERT INTO `transactions` VALUES (371, 'App\\Models\\Box', 16, 12, 'deposit', 1500, 1, '{\"title\":\"SAMSUNG BOX\",\"description\":\"Purchase of Product #16\"}', '49143b81-af87-4dab-9847-ea5147f37614', '2019-11-19 17:59:32', '2019-11-19 17:59:32');
INSERT INTO `transactions` VALUES (372, 'App\\Models\\User', 6, 11, 'deposit', 600, 1, NULL, '0b6b8ed9-fb80-4049-9b02-4621e5f1fdfb', '2019-11-19 17:59:47', '2019-11-19 17:59:47');
INSERT INTO `transactions` VALUES (373, 'App\\Models\\User', 6, 11, 'deposit', 1900, 1, NULL, '5f857591-07bb-4472-a54d-498362551385', '2019-11-19 17:59:50', '2019-11-19 17:59:50');
INSERT INTO `transactions` VALUES (374, 'App\\Models\\User', 6, 11, 'deposit', 1900, 1, NULL, 'cd163d81-0d3e-4977-8065-e414bdd7d565', '2019-11-19 17:59:53', '2019-11-19 17:59:53');
INSERT INTO `transactions` VALUES (375, 'App\\Models\\User', 6, 11, 'deposit', 1900, 1, NULL, '6d83d0b4-9324-4f3a-b439-884d2069a5c1', '2019-11-19 17:59:55', '2019-11-19 17:59:55');
INSERT INTO `transactions` VALUES (376, 'App\\Models\\User', 6, 11, 'deposit', 500, 1, NULL, '0907abf8-bf85-4c41-8245-50561342c3bf', '2019-11-19 17:59:57', '2019-11-19 17:59:57');
INSERT INTO `transactions` VALUES (377, 'App\\Models\\User', 6, 11, 'deposit', 500, 1, NULL, '13d64918-f5f9-4aa0-afd2-5a17ff308dd9', '2019-11-19 17:59:59', '2019-11-19 17:59:59');
INSERT INTO `transactions` VALUES (378, 'App\\Models\\User', 6, 11, 'deposit', 3000, 1, NULL, '45ecd846-5e76-45cf-a871-c046b6c9bff2', '2019-11-19 18:00:03', '2019-11-19 18:00:03');
INSERT INTO `transactions` VALUES (379, 'App\\Models\\User', 6, 11, 'deposit', 250000, 1, NULL, '95c043a1-513c-4985-8541-78a49bb79849', '2019-11-19 18:00:05', '2019-11-19 18:00:05');
INSERT INTO `transactions` VALUES (380, 'App\\Models\\User', 6, 11, 'deposit', 8800, 1, NULL, 'e423173f-0012-4274-98dd-10b0f769460d', '2019-11-19 18:00:07', '2019-11-19 18:00:07');
INSERT INTO `transactions` VALUES (381, 'App\\Models\\User', 6, 11, 'deposit', 90000, 1, NULL, '2033f5d7-58a0-4645-ad08-c6f49071fd77', '2019-11-19 18:00:10', '2019-11-19 18:00:10');
INSERT INTO `transactions` VALUES (382, 'App\\Models\\User', 6, 11, 'withdraw', -1500, 1, '{\"title\":\"SAMSUNG BOX\",\"description\":\"Purchase of Product #16\"}', '4bca326f-0390-48c3-b82a-8dc8ad34e65e', '2019-11-19 18:00:16', '2019-11-19 18:00:16');
INSERT INTO `transactions` VALUES (383, 'App\\Models\\Box', 16, 12, 'deposit', 1500, 1, '{\"title\":\"SAMSUNG BOX\",\"description\":\"Purchase of Product #16\"}', '7753e6c5-6ee0-482e-b45f-64cfd1d34ee5', '2019-11-19 18:00:16', '2019-11-19 18:00:16');
INSERT INTO `transactions` VALUES (384, 'App\\Models\\User', 6, 11, 'withdraw', -1500, 1, '{\"title\":\"SAMSUNG BOX\",\"description\":\"Purchase of Product #16\"}', '80ee3969-1745-4dd9-b801-23a01bd4af0d', '2019-11-19 18:00:29', '2019-11-19 18:00:29');
INSERT INTO `transactions` VALUES (385, 'App\\Models\\Box', 16, 12, 'deposit', 1500, 1, '{\"title\":\"SAMSUNG BOX\",\"description\":\"Purchase of Product #16\"}', '6dd32745-66c2-4969-bc0d-947b2b3b544b', '2019-11-19 18:00:29', '2019-11-19 18:00:29');
INSERT INTO `transactions` VALUES (386, 'App\\Models\\User', 1, 1, 'withdraw', -4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', '4799cb6f-e03e-4479-b625-4aaf83decbdb', '2019-11-19 18:09:02', '2019-11-19 18:09:02');
INSERT INTO `transactions` VALUES (387, 'App\\Models\\Box', 1, 5, 'deposit', 4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', '0ab8e13c-8045-4da3-b6e3-f52aa8449be5', '2019-11-19 18:09:02', '2019-11-19 18:09:02');
INSERT INTO `transactions` VALUES (388, 'App\\Models\\User', 1, 1, 'withdraw', -4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', '1d8e9ebe-64c2-42dc-8586-813f594bf5a4', '2019-11-19 18:09:15', '2019-11-19 18:09:15');
INSERT INTO `transactions` VALUES (389, 'App\\Models\\Box', 1, 5, 'deposit', 4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', '9f1593ee-0388-462e-9c6a-7d2845b5cb68', '2019-11-19 18:09:15', '2019-11-19 18:09:15');
INSERT INTO `transactions` VALUES (390, 'App\\Models\\User', 1, 1, 'withdraw', -4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', '15350b99-7f3f-4130-899a-ee0b76efb2b5', '2019-11-19 18:09:24', '2019-11-19 18:09:24');
INSERT INTO `transactions` VALUES (391, 'App\\Models\\Box', 1, 5, 'deposit', 4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', 'e509e5d7-378f-4972-85a6-451cc1866c26', '2019-11-19 18:09:24', '2019-11-19 18:09:24');
INSERT INTO `transactions` VALUES (392, 'App\\Models\\User', 1, 1, 'withdraw', -4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', '9cacb0ba-ae65-4cd0-8325-9b4f8a463261', '2019-11-19 18:09:36', '2019-11-19 18:09:36');
INSERT INTO `transactions` VALUES (393, 'App\\Models\\Box', 1, 5, 'deposit', 4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', 'ade1b2ea-fe0d-44d2-9960-61b76e54810a', '2019-11-19 18:09:36', '2019-11-19 18:09:36');
INSERT INTO `transactions` VALUES (394, 'App\\Models\\User', 1, 1, 'withdraw', -4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', '4c7cac87-8a98-4860-81bf-1105b20b609d', '2019-11-19 18:11:17', '2019-11-19 18:11:17');
INSERT INTO `transactions` VALUES (395, 'App\\Models\\Box', 1, 5, 'deposit', 4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', '4fa2dcb4-7570-4b46-b9ed-36c8f53a584c', '2019-11-19 18:11:17', '2019-11-19 18:11:17');
INSERT INTO `transactions` VALUES (396, 'App\\Models\\User', 1, 1, 'deposit', 2500, 1, NULL, 'b995f67f-3d3f-451d-9ff4-dcc1323d1403', '2019-11-19 18:11:20', '2019-11-19 18:11:20');
INSERT INTO `transactions` VALUES (397, 'App\\Models\\User', 1, 1, 'withdraw', -4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', '7b96de9c-d213-4ed7-9c36-b0418c9ba46c', '2019-11-19 18:17:37', '2019-11-19 18:17:37');
INSERT INTO `transactions` VALUES (398, 'App\\Models\\Box', 1, 5, 'deposit', 4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', '6adb768f-4b35-47a5-8d7a-f99f2b016f5a', '2019-11-19 18:17:37', '2019-11-19 18:17:37');
INSERT INTO `transactions` VALUES (399, 'App\\Models\\User', 1, 1, 'withdraw', -4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', '5d239312-11fd-4008-8887-349fce6e071b', '2019-11-19 18:17:51', '2019-11-19 18:17:51');
INSERT INTO `transactions` VALUES (400, 'App\\Models\\Box', 1, 5, 'deposit', 4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', '18ec1515-90a8-4fd9-b2a2-b4d027015995', '2019-11-19 18:17:51', '2019-11-19 18:17:51');
INSERT INTO `transactions` VALUES (401, 'App\\Models\\User', 1, 1, 'withdraw', -4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', '4c41509f-c158-4d05-9ed7-b61709fa08c7', '2019-11-19 18:21:54', '2019-11-19 18:21:54');
INSERT INTO `transactions` VALUES (402, 'App\\Models\\Box', 1, 5, 'deposit', 4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', '34d0e42f-18a7-4475-9a13-9f38dd7f80db', '2019-11-19 18:21:54', '2019-11-19 18:21:54');
INSERT INTO `transactions` VALUES (403, 'App\\Models\\User', 1, 1, 'withdraw', -4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', '4d59f2c8-a934-4d37-9636-de29e0cffe3c', '2019-11-19 18:22:23', '2019-11-19 18:22:23');
INSERT INTO `transactions` VALUES (404, 'App\\Models\\Box', 1, 5, 'deposit', 4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', 'ced6f3a9-e399-4c9d-af83-7bd9176a4117', '2019-11-19 18:22:23', '2019-11-19 18:22:23');
INSERT INTO `transactions` VALUES (405, 'App\\Models\\User', 1, 1, 'withdraw', -4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', '8e6f76b7-e4bf-4d70-9da2-4fdf1e9c4463', '2019-11-19 18:23:11', '2019-11-19 18:23:11');
INSERT INTO `transactions` VALUES (406, 'App\\Models\\Box', 1, 5, 'deposit', 4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', '89610ef1-d9f3-4bd1-8ba3-c6970624b736', '2019-11-19 18:23:11', '2019-11-19 18:23:11');
INSERT INTO `transactions` VALUES (407, 'App\\Models\\User', 1, 1, 'withdraw', -4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', '10fcfef3-fba3-44e9-9c41-6252936c3070', '2019-11-19 18:23:48', '2019-11-19 18:23:48');
INSERT INTO `transactions` VALUES (408, 'App\\Models\\Box', 1, 5, 'deposit', 4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', '620fb2dc-21df-4ce9-9e9f-0ac8090ef159', '2019-11-19 18:23:49', '2019-11-19 18:23:49');
INSERT INTO `transactions` VALUES (409, 'App\\Models\\User', 1, 1, 'withdraw', -4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', '6e310289-d50a-4ba1-be75-983a9c3d15a5', '2019-11-19 18:23:59', '2019-11-19 18:23:59');
INSERT INTO `transactions` VALUES (410, 'App\\Models\\Box', 1, 5, 'deposit', 4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', '2d613ff2-36ba-43db-8fe6-9c111be241c0', '2019-11-19 18:24:00', '2019-11-19 18:24:00');
INSERT INTO `transactions` VALUES (411, 'App\\Models\\User', 1, 1, 'withdraw', -4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', '976153c7-0834-40ae-a9fd-b5749574cf68', '2019-11-19 18:26:49', '2019-11-19 18:26:49');
INSERT INTO `transactions` VALUES (412, 'App\\Models\\Box', 1, 5, 'deposit', 4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', '86cd659e-4eb4-4352-9d5c-a14e91aaad69', '2019-11-19 18:26:49', '2019-11-19 18:26:49');
INSERT INTO `transactions` VALUES (413, 'App\\Models\\User', 1, 1, 'withdraw', -4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', 'f0e181fd-cadf-43ad-acd3-b86187a8fc86', '2019-11-19 18:28:28', '2019-11-19 18:28:28');
INSERT INTO `transactions` VALUES (414, 'App\\Models\\Box', 1, 5, 'deposit', 4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', '2310c41d-b9b7-4eb1-a134-09debb5caaac', '2019-11-19 18:28:28', '2019-11-19 18:28:28');
INSERT INTO `transactions` VALUES (415, 'App\\Models\\User', 1, 1, 'withdraw', -4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', 'a3a523d0-c982-4a1c-b44c-5d92338dca86', '2019-11-19 18:34:54', '2019-11-19 18:34:54');
INSERT INTO `transactions` VALUES (416, 'App\\Models\\Box', 1, 5, 'deposit', 4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', '1d0c813f-7ebe-4846-9ebf-a33b22cc5bec', '2019-11-19 18:34:54', '2019-11-19 18:34:54');
INSERT INTO `transactions` VALUES (417, 'App\\Models\\User', 1, 1, 'withdraw', -4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', 'b365ed93-103a-4362-bda5-9ab69074c1c4', '2019-11-19 18:43:59', '2019-11-19 18:43:59');
INSERT INTO `transactions` VALUES (418, 'App\\Models\\Box', 1, 5, 'deposit', 4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', '782621c3-38fd-436f-abc9-70b40530fc9f', '2019-11-19 18:43:59', '2019-11-19 18:43:59');
INSERT INTO `transactions` VALUES (419, 'App\\Models\\User', 1, 1, 'withdraw', -4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', '5b5fb7d0-1f32-4c6b-a3ab-b6adc92a3f2d', '2019-11-19 18:48:33', '2019-11-19 18:48:33');
INSERT INTO `transactions` VALUES (420, 'App\\Models\\Box', 1, 5, 'deposit', 4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', '6ca98c45-580d-4b9c-ae41-43f37f5d5792', '2019-11-19 18:48:33', '2019-11-19 18:48:33');
INSERT INTO `transactions` VALUES (421, 'App\\Models\\User', 1, 1, 'withdraw', -4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', '586f012e-4ff9-4796-a36c-d5baf42affe3', '2019-11-19 18:48:56', '2019-11-19 18:48:56');
INSERT INTO `transactions` VALUES (422, 'App\\Models\\Box', 1, 5, 'deposit', 4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', '53c7a5de-d87e-4d40-aafb-62e0c016899a', '2019-11-19 18:48:56', '2019-11-19 18:48:56');
INSERT INTO `transactions` VALUES (423, 'App\\Models\\User', 1, 1, 'withdraw', -4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', '40851d5d-649e-416b-9c49-f4be7ee12686', '2019-11-19 18:49:44', '2019-11-19 18:49:44');
INSERT INTO `transactions` VALUES (424, 'App\\Models\\Box', 1, 5, 'deposit', 4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', 'ba66b87f-d6ac-44c4-9a51-b82ed69d60ed', '2019-11-19 18:49:44', '2019-11-19 18:49:44');
INSERT INTO `transactions` VALUES (425, 'App\\Models\\User', 1, 1, 'withdraw', -4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', '0159e215-68c1-4490-a4f7-2a1cdc088652', '2019-11-19 18:50:01', '2019-11-19 18:50:01');
INSERT INTO `transactions` VALUES (426, 'App\\Models\\Box', 1, 5, 'deposit', 4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', '4dc2e679-7dea-4009-9c2f-845152b76646', '2019-11-19 18:50:01', '2019-11-19 18:50:01');
INSERT INTO `transactions` VALUES (427, 'App\\Models\\User', 1, 1, 'withdraw', -4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', 'e6cc89fe-2c43-43bb-be35-b86e716d8e1e', '2019-11-19 18:50:03', '2019-11-19 18:50:03');
INSERT INTO `transactions` VALUES (428, 'App\\Models\\Box', 1, 5, 'deposit', 4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', '2300c051-91f3-4736-b917-6a147ca5393a', '2019-11-19 18:50:04', '2019-11-19 18:50:04');
INSERT INTO `transactions` VALUES (429, 'App\\Models\\User', 1, 1, 'withdraw', -4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', '54f55620-9f1c-4449-98c9-58de603ff0bd', '2019-11-19 18:50:07', '2019-11-19 18:50:07');
INSERT INTO `transactions` VALUES (430, 'App\\Models\\Box', 1, 5, 'deposit', 4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', 'bff610a7-c934-4bdd-a2bc-e7f6538a0372', '2019-11-19 18:50:07', '2019-11-19 18:50:07');
INSERT INTO `transactions` VALUES (431, 'App\\Models\\User', 1, 1, 'withdraw', -4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', 'c48ceff9-6536-41bd-9d22-f102dd11b8cd', '2019-11-19 18:50:14', '2019-11-19 18:50:14');
INSERT INTO `transactions` VALUES (432, 'App\\Models\\Box', 1, 5, 'deposit', 4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', '74ca88b1-1688-4973-93d4-0df946ff4b3b', '2019-11-19 18:50:14', '2019-11-19 18:50:14');
INSERT INTO `transactions` VALUES (433, 'App\\Models\\User', 1, 1, 'withdraw', -4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', 'df60310c-47d5-4b32-ba92-1c99792416ee', '2019-11-19 18:50:51', '2019-11-19 18:50:51');
INSERT INTO `transactions` VALUES (434, 'App\\Models\\Box', 1, 5, 'deposit', 4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', '4817c61a-0807-4d1d-8e4e-69d560db3cf8', '2019-11-19 18:50:51', '2019-11-19 18:50:51');
INSERT INTO `transactions` VALUES (435, 'App\\Models\\User', 1, 1, 'withdraw', -4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', 'b45cb2c7-c238-4db5-b9c9-1d10c9941226', '2019-11-19 18:51:03', '2019-11-19 18:51:03');
INSERT INTO `transactions` VALUES (436, 'App\\Models\\Box', 1, 5, 'deposit', 4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', '342cca6d-ea6a-4403-b033-d4a65d7f4bd6', '2019-11-19 18:51:03', '2019-11-19 18:51:03');
INSERT INTO `transactions` VALUES (437, 'App\\Models\\User', 1, 1, 'withdraw', -4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', '75b260ec-0479-43ed-8aa0-a7df0010f348', '2019-11-19 18:51:44', '2019-11-19 18:51:44');
INSERT INTO `transactions` VALUES (438, 'App\\Models\\Box', 1, 5, 'deposit', 4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', 'c5042f83-7dc0-43ec-833a-cca003aa6b34', '2019-11-19 18:51:44', '2019-11-19 18:51:44');
INSERT INTO `transactions` VALUES (439, 'App\\Models\\User', 1, 1, 'withdraw', -4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', '9122cdea-2262-42cd-9809-7ec4b6218eed', '2019-11-19 18:51:59', '2019-11-19 18:51:59');
INSERT INTO `transactions` VALUES (440, 'App\\Models\\Box', 1, 5, 'deposit', 4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', 'af6bb69f-7be4-4eba-8195-b54a6eae8692', '2019-11-19 18:51:59', '2019-11-19 18:51:59');
INSERT INTO `transactions` VALUES (441, 'App\\Models\\User', 1, 1, 'withdraw', -4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', 'dd09baa0-f9ff-403c-aeb2-1111d0087ca4', '2019-11-19 18:52:21', '2019-11-19 18:52:21');
INSERT INTO `transactions` VALUES (442, 'App\\Models\\Box', 1, 5, 'deposit', 4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', '65d3073b-19d3-4b15-9973-088dea8209f8', '2019-11-19 18:52:21', '2019-11-19 18:52:21');
INSERT INTO `transactions` VALUES (443, 'App\\Models\\User', 1, 1, 'withdraw', -4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', 'ef36523c-d0ea-413a-90eb-0f070cb77082', '2019-11-19 18:52:54', '2019-11-19 18:52:54');
INSERT INTO `transactions` VALUES (444, 'App\\Models\\Box', 1, 5, 'deposit', 4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', '74ff5a60-128b-492b-ad6c-68f37534e9d0', '2019-11-19 18:52:54', '2019-11-19 18:52:54');
INSERT INTO `transactions` VALUES (445, 'App\\Models\\User', 1, 1, 'withdraw', -4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', 'bd897ba8-433f-4d30-9a7d-4dd81be81f98', '2019-11-19 18:53:25', '2019-11-19 18:53:25');
INSERT INTO `transactions` VALUES (446, 'App\\Models\\Box', 1, 5, 'deposit', 4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', '34a812ca-c61e-4c58-900b-7140609c28d4', '2019-11-19 18:53:25', '2019-11-19 18:53:25');
INSERT INTO `transactions` VALUES (447, 'App\\Models\\User', 1, 1, 'withdraw', -4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', 'ef30a829-b504-4f61-aaf7-b6ebacf4f776', '2019-11-19 18:53:45', '2019-11-19 18:53:45');
INSERT INTO `transactions` VALUES (448, 'App\\Models\\Box', 1, 5, 'deposit', 4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', '8671e99d-e42b-49d1-ba8b-b104c40e9e4e', '2019-11-19 18:53:45', '2019-11-19 18:53:45');
INSERT INTO `transactions` VALUES (449, 'App\\Models\\User', 1, 1, 'withdraw', -4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', '631fd14e-781f-4a31-9bdd-158e3307a389', '2019-11-19 18:54:02', '2019-11-19 18:54:02');
INSERT INTO `transactions` VALUES (450, 'App\\Models\\Box', 1, 5, 'deposit', 4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', '2b8196ed-31de-4879-b26f-fe0048896647', '2019-11-19 18:54:02', '2019-11-19 18:54:02');
INSERT INTO `transactions` VALUES (451, 'App\\Models\\User', 6, 11, 'withdraw', -1500, 1, '{\"title\":\"SAMSUNG BOX\",\"description\":\"Purchase of Product #16\"}', 'f2b2a615-1773-4cc4-aedd-c617ff8886d7', '2019-11-19 19:22:16', '2019-11-19 19:22:16');
INSERT INTO `transactions` VALUES (452, 'App\\Models\\Box', 16, 12, 'deposit', 1500, 1, '{\"title\":\"SAMSUNG BOX\",\"description\":\"Purchase of Product #16\"}', 'b2ceca4b-ae93-49ff-9378-ca0e186b7650', '2019-11-19 19:22:18', '2019-11-19 19:22:18');
INSERT INTO `transactions` VALUES (453, 'App\\Models\\User', 6, 11, 'withdraw', -1500, 1, '{\"title\":\"SAMSUNG BOX\",\"description\":\"Purchase of Product #16\"}', '6d4e1732-9664-4db9-9c9d-3a518ca43122', '2019-11-19 19:22:33', '2019-11-19 19:22:33');
INSERT INTO `transactions` VALUES (454, 'App\\Models\\Box', 16, 12, 'deposit', 1500, 1, '{\"title\":\"SAMSUNG BOX\",\"description\":\"Purchase of Product #16\"}', '5f0da8dc-a984-4e2f-8689-b6fb71b7369c', '2019-11-19 19:22:33', '2019-11-19 19:22:33');
INSERT INTO `transactions` VALUES (455, 'App\\Models\\User', 6, 11, 'withdraw', -1500, 1, '{\"title\":\"SAMSUNG BOX\",\"description\":\"Purchase of Product #16\"}', '813f5d29-bd3d-4666-bba0-3bf949d23b06', '2019-11-19 19:22:46', '2019-11-19 19:22:46');
INSERT INTO `transactions` VALUES (456, 'App\\Models\\Box', 16, 12, 'deposit', 1500, 1, '{\"title\":\"SAMSUNG BOX\",\"description\":\"Purchase of Product #16\"}', 'ba57d6db-b997-41fb-85b0-84fb6881517a', '2019-11-19 19:22:46', '2019-11-19 19:22:46');
INSERT INTO `transactions` VALUES (457, 'App\\Models\\User', 6, 11, 'withdraw', -1500, 1, '{\"title\":\"SAMSUNG BOX\",\"description\":\"Purchase of Product #16\"}', 'be6024b5-dd29-41b9-9213-be72da22a177', '2019-11-19 19:23:01', '2019-11-19 19:23:01');
INSERT INTO `transactions` VALUES (458, 'App\\Models\\Box', 16, 12, 'deposit', 1500, 1, '{\"title\":\"SAMSUNG BOX\",\"description\":\"Purchase of Product #16\"}', 'c5711ab6-d49a-4ea3-a347-3916b4a63264', '2019-11-19 19:23:01', '2019-11-19 19:23:01');
INSERT INTO `transactions` VALUES (459, 'App\\Models\\User', 6, 11, 'withdraw', -1500, 1, '{\"title\":\"SAMSUNG BOX\",\"description\":\"Purchase of Product #16\"}', '32a15a16-dba3-40bf-8d15-ad1bf6f90e73', '2019-11-19 19:23:14', '2019-11-19 19:23:14');
INSERT INTO `transactions` VALUES (460, 'App\\Models\\Box', 16, 12, 'deposit', 1500, 1, '{\"title\":\"SAMSUNG BOX\",\"description\":\"Purchase of Product #16\"}', 'd775a6fd-df92-4a17-a8e4-6f8cd620239d', '2019-11-19 19:23:14', '2019-11-19 19:23:14');
INSERT INTO `transactions` VALUES (461, 'App\\Models\\User', 6, 11, 'withdraw', -1500, 1, '{\"title\":\"SAMSUNG BOX\",\"description\":\"Purchase of Product #16\"}', 'a0348a04-27b5-4160-83cc-4cb005fce793', '2019-11-19 19:23:26', '2019-11-19 19:23:26');
INSERT INTO `transactions` VALUES (462, 'App\\Models\\Box', 16, 12, 'deposit', 1500, 1, '{\"title\":\"SAMSUNG BOX\",\"description\":\"Purchase of Product #16\"}', '86cc7d2c-198d-4227-99dd-e06cfbd88ed2', '2019-11-19 19:23:26', '2019-11-19 19:23:26');
INSERT INTO `transactions` VALUES (463, 'App\\Models\\User', 6, 11, 'withdraw', -1500, 1, '{\"title\":\"SAMSUNG BOX\",\"description\":\"Purchase of Product #16\"}', '1010f885-dbad-4192-a298-d6d572a0c14d', '2019-11-19 19:23:39', '2019-11-19 19:23:39');
INSERT INTO `transactions` VALUES (464, 'App\\Models\\Box', 16, 12, 'deposit', 1500, 1, '{\"title\":\"SAMSUNG BOX\",\"description\":\"Purchase of Product #16\"}', 'f1b5b1ec-d463-4994-8e87-658479619e5e', '2019-11-19 19:23:39', '2019-11-19 19:23:39');
INSERT INTO `transactions` VALUES (465, 'App\\Models\\User', 6, 11, 'withdraw', -1500, 1, '{\"title\":\"SAMSUNG BOX\",\"description\":\"Purchase of Product #16\"}', '2456d7fe-4179-4f16-b477-da0b84654885', '2019-11-19 19:23:52', '2019-11-19 19:23:52');
INSERT INTO `transactions` VALUES (466, 'App\\Models\\Box', 16, 12, 'deposit', 1500, 1, '{\"title\":\"SAMSUNG BOX\",\"description\":\"Purchase of Product #16\"}', 'b54f485a-687e-4d6c-adff-f08492500cc2', '2019-11-19 19:23:52', '2019-11-19 19:23:52');
INSERT INTO `transactions` VALUES (467, 'App\\Models\\User', 6, 11, 'withdraw', -1500, 1, '{\"title\":\"SAMSUNG BOX\",\"description\":\"Purchase of Product #16\"}', '34e7e2d1-70bc-4458-b629-a93db623c87d', '2019-11-19 19:24:03', '2019-11-19 19:24:03');
INSERT INTO `transactions` VALUES (468, 'App\\Models\\Box', 16, 12, 'deposit', 1500, 1, '{\"title\":\"SAMSUNG BOX\",\"description\":\"Purchase of Product #16\"}', '52b96fe3-263f-4390-908e-4de0f25f3b7e', '2019-11-19 19:24:03', '2019-11-19 19:24:03');
INSERT INTO `transactions` VALUES (469, 'App\\Models\\User', 6, 11, 'withdraw', -1500, 1, '{\"title\":\"SAMSUNG BOX\",\"description\":\"Purchase of Product #16\"}', '2984aa9d-24af-472d-a030-7b627c34807b', '2019-11-19 19:24:15', '2019-11-19 19:24:15');
INSERT INTO `transactions` VALUES (470, 'App\\Models\\Box', 16, 12, 'deposit', 1500, 1, '{\"title\":\"SAMSUNG BOX\",\"description\":\"Purchase of Product #16\"}', '5d91b523-b2a9-40be-8f04-f43b0a1465a4', '2019-11-19 19:24:15', '2019-11-19 19:24:15');
INSERT INTO `transactions` VALUES (471, 'App\\Models\\User', 6, 11, 'withdraw', -1500, 1, '{\"title\":\"SAMSUNG BOX\",\"description\":\"Purchase of Product #16\"}', '5b139a80-3fbc-4cbe-b977-d0a43117545e', '2019-11-19 19:24:34', '2019-11-19 19:24:34');
INSERT INTO `transactions` VALUES (472, 'App\\Models\\Box', 16, 12, 'deposit', 1500, 1, '{\"title\":\"SAMSUNG BOX\",\"description\":\"Purchase of Product #16\"}', '75e1354f-e835-418c-b1e0-09da9fe3b88c', '2019-11-19 19:24:34', '2019-11-19 19:24:34');
INSERT INTO `transactions` VALUES (473, 'App\\Models\\User', 6, 11, 'withdraw', -1500, 1, '{\"title\":\"SAMSUNG BOX\",\"description\":\"Purchase of Product #16\"}', 'c9c2d4ba-9b11-400f-8059-f096e0a0ae22', '2019-11-19 19:24:46', '2019-11-19 19:24:46');
INSERT INTO `transactions` VALUES (474, 'App\\Models\\Box', 16, 12, 'deposit', 1500, 1, '{\"title\":\"SAMSUNG BOX\",\"description\":\"Purchase of Product #16\"}', '69e757ea-ca2c-44ca-bc57-eada035af9bc', '2019-11-19 19:24:47', '2019-11-19 19:24:47');
INSERT INTO `transactions` VALUES (475, 'App\\Models\\User', 6, 11, 'withdraw', -1500, 1, '{\"title\":\"SAMSUNG BOX\",\"description\":\"Purchase of Product #16\"}', '3e22d341-7a49-43d6-9e80-9523867e52f3', '2019-11-19 19:24:59', '2019-11-19 19:24:59');
INSERT INTO `transactions` VALUES (476, 'App\\Models\\Box', 16, 12, 'deposit', 1500, 1, '{\"title\":\"SAMSUNG BOX\",\"description\":\"Purchase of Product #16\"}', '53ec3cd2-462d-4e1b-a9ac-1ffe03e28408', '2019-11-19 19:24:59', '2019-11-19 19:24:59');
INSERT INTO `transactions` VALUES (477, 'App\\Models\\User', 6, 11, 'withdraw', -1500, 1, '{\"title\":\"SAMSUNG BOX\",\"description\":\"Purchase of Product #16\"}', 'aebf2aef-242e-44e6-b9e7-febecd0e3b6b', '2019-11-19 19:25:11', '2019-11-19 19:25:11');
INSERT INTO `transactions` VALUES (478, 'App\\Models\\Box', 16, 12, 'deposit', 1500, 1, '{\"title\":\"SAMSUNG BOX\",\"description\":\"Purchase of Product #16\"}', '5dade1a7-cc7d-47fa-9103-07f68916f935', '2019-11-19 19:25:11', '2019-11-19 19:25:11');
INSERT INTO `transactions` VALUES (479, 'App\\Models\\User', 6, 11, 'withdraw', -1500, 1, '{\"title\":\"SAMSUNG BOX\",\"description\":\"Purchase of Product #16\"}', 'bdd071da-dad1-4561-89ff-6f68f722c382', '2019-11-19 19:25:25', '2019-11-19 19:25:25');
INSERT INTO `transactions` VALUES (480, 'App\\Models\\Box', 16, 12, 'deposit', 1500, 1, '{\"title\":\"SAMSUNG BOX\",\"description\":\"Purchase of Product #16\"}', '7f00ce7b-b260-44e9-8d66-66ab40936cf3', '2019-11-19 19:25:25', '2019-11-19 19:25:25');
INSERT INTO `transactions` VALUES (481, 'App\\Models\\User', 6, 11, 'withdraw', -1500, 1, '{\"title\":\"SAMSUNG BOX\",\"description\":\"Purchase of Product #16\"}', 'e4a0e13a-759a-42d0-a385-07cc518bf02b', '2019-11-19 19:25:38', '2019-11-19 19:25:38');
INSERT INTO `transactions` VALUES (482, 'App\\Models\\Box', 16, 12, 'deposit', 1500, 1, '{\"title\":\"SAMSUNG BOX\",\"description\":\"Purchase of Product #16\"}', '76991d02-3d73-43dc-849f-b3c159fd3ac5', '2019-11-19 19:25:38', '2019-11-19 19:25:38');
INSERT INTO `transactions` VALUES (483, 'App\\Models\\User', 6, 11, 'withdraw', -1500, 1, '{\"title\":\"SAMSUNG BOX\",\"description\":\"Purchase of Product #16\"}', '991f8a39-4e2e-483b-aecb-050f20dafb67', '2019-11-19 19:25:55', '2019-11-19 19:25:55');
INSERT INTO `transactions` VALUES (484, 'App\\Models\\Box', 16, 12, 'deposit', 1500, 1, '{\"title\":\"SAMSUNG BOX\",\"description\":\"Purchase of Product #16\"}', '3f5edc7c-6d05-4b9f-8ac1-36242c8fddc7', '2019-11-19 19:25:56', '2019-11-19 19:25:56');
INSERT INTO `transactions` VALUES (485, 'App\\Models\\User', 6, 11, 'deposit', 600, 1, NULL, 'f3e06f0e-f292-426a-ad77-5aa3ba2a9ba6', '2019-11-19 19:26:02', '2019-11-19 19:26:02');
INSERT INTO `transactions` VALUES (486, 'App\\Models\\User', 6, 11, 'withdraw', -1500, 1, '{\"title\":\"SAMSUNG BOX\",\"description\":\"Purchase of Product #16\"}', '1673c4c8-d340-49c9-83ee-d6706e3cc88c', '2019-11-19 19:26:09', '2019-11-19 19:26:09');
INSERT INTO `transactions` VALUES (487, 'App\\Models\\Box', 16, 12, 'deposit', 1500, 1, '{\"title\":\"SAMSUNG BOX\",\"description\":\"Purchase of Product #16\"}', 'c25122b3-5d83-4e0a-b181-d061944dc7be', '2019-11-19 19:26:09', '2019-11-19 19:26:09');
INSERT INTO `transactions` VALUES (488, 'App\\Models\\User', 6, 11, 'deposit', 500, 1, NULL, '9ed0f3f8-41e6-4297-8603-000a21e089d5', '2019-11-19 19:26:12', '2019-11-19 19:26:12');
INSERT INTO `transactions` VALUES (489, 'App\\Models\\User', 6, 11, 'deposit', 1900, 1, NULL, 'e909de54-d3e2-47c9-9137-efd35551d715', '2019-11-19 19:26:24', '2019-11-19 19:26:24');
INSERT INTO `transactions` VALUES (490, 'App\\Models\\User', 6, 11, 'withdraw', -1500, 1, '{\"title\":\"SAMSUNG BOX\",\"description\":\"Purchase of Product #16\"}', '941e7c07-d50b-40a2-925a-1d1c7fcb50b1', '2019-11-19 19:26:26', '2019-11-19 19:26:26');
INSERT INTO `transactions` VALUES (491, 'App\\Models\\Box', 16, 12, 'deposit', 1500, 1, '{\"title\":\"SAMSUNG BOX\",\"description\":\"Purchase of Product #16\"}', 'd7a76293-7806-4461-8c05-ebfdc4c224d2', '2019-11-19 19:26:26', '2019-11-19 19:26:26');
INSERT INTO `transactions` VALUES (492, 'App\\Models\\User', 6, 11, 'deposit', 1900, 1, NULL, '76d9fd29-9005-4be0-9956-73dba0680554', '2019-11-19 19:26:45', '2019-11-19 19:26:45');
INSERT INTO `transactions` VALUES (493, 'App\\Models\\User', 6, 11, 'withdraw', -4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', '993d223b-1291-43cf-be96-be12ada3f9f0', '2019-11-19 19:27:22', '2019-11-19 19:27:22');
INSERT INTO `transactions` VALUES (494, 'App\\Models\\Box', 1, 5, 'deposit', 4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', 'bd4739b6-033d-4538-be8b-4174f7a165fb', '2019-11-19 19:27:22', '2019-11-19 19:27:22');
INSERT INTO `transactions` VALUES (495, 'App\\Models\\User', 6, 11, 'withdraw', -4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', '7c9fa77a-9e65-4442-a8d8-ebb12290b021', '2019-11-19 19:28:11', '2019-11-19 19:28:11');
INSERT INTO `transactions` VALUES (496, 'App\\Models\\Box', 1, 5, 'deposit', 4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', 'cbe8c253-70e4-40e9-a33e-4769361c5aeb', '2019-11-19 19:28:11', '2019-11-19 19:28:11');
INSERT INTO `transactions` VALUES (497, 'App\\Models\\User', 6, 11, 'withdraw', -4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', '04f667e4-c44e-49bb-8cdb-faaa214ef12c', '2019-11-19 19:33:09', '2019-11-19 19:33:09');
INSERT INTO `transactions` VALUES (498, 'App\\Models\\Box', 1, 5, 'deposit', 4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', 'ae513295-7f8b-4232-8d14-20994bb002b9', '2019-11-19 19:33:09', '2019-11-19 19:33:09');
INSERT INTO `transactions` VALUES (499, 'App\\Models\\User', 6, 11, 'withdraw', -4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', 'f677610b-f7e6-4bb7-be2d-4508d12d06cc', '2019-11-19 19:59:09', '2019-11-19 19:59:09');
INSERT INTO `transactions` VALUES (500, 'App\\Models\\Box', 1, 5, 'deposit', 4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', '1ef09fd0-436b-4de7-add1-e26d77d62617', '2019-11-19 19:59:09', '2019-11-19 19:59:09');
INSERT INTO `transactions` VALUES (501, 'App\\Models\\User', 6, 11, 'deposit', 90000, 1, NULL, 'ce2a4d5d-5a76-49f7-9d6d-50f88295f4fe', '2019-11-19 19:59:24', '2019-11-19 19:59:24');
INSERT INTO `transactions` VALUES (502, 'App\\Models\\User', 6, 11, 'deposit', 500, 1, NULL, '91f7766d-8fda-4568-8fce-5fbaa304f973', '2019-11-19 19:59:26', '2019-11-19 19:59:26');
INSERT INTO `transactions` VALUES (503, 'App\\Models\\User', 6, 11, 'deposit', 600, 1, NULL, 'bd6d9304-d345-4ab9-92b2-dbcebf9d0ba9', '2019-11-19 19:59:28', '2019-11-19 19:59:28');
INSERT INTO `transactions` VALUES (504, 'App\\Models\\User', 6, 11, 'deposit', 90000, 1, NULL, '0f3fcc23-64a6-4e64-944b-03dd171f0aba', '2019-11-19 19:59:30', '2019-11-19 19:59:30');
INSERT INTO `transactions` VALUES (505, 'App\\Models\\User', 6, 11, 'deposit', 2500, 1, NULL, '39007e79-400e-45db-9e74-1cfccfd229d7', '2019-11-19 19:59:34', '2019-11-19 19:59:34');
INSERT INTO `transactions` VALUES (506, 'App\\Models\\User', 6, 11, 'deposit', 500, 1, NULL, 'ead19990-1ad3-45a8-91fb-fcb2bb392c42', '2019-11-19 19:59:38', '2019-11-19 19:59:38');
INSERT INTO `transactions` VALUES (511, 'App\\Models\\User', 1, 1, 'withdraw', -1500, 1, '{\"title\":\"SAMSUNG BOX\",\"description\":\"Purchase of Product #16\"}', '8034ba94-6abc-4585-aae9-893551b62344', '2019-11-21 19:29:56', '2019-11-21 19:29:56');
INSERT INTO `transactions` VALUES (521, 'App\\Models\\Box', 16, 12, 'deposit', 1500, 1, '{\"title\":\"SAMSUNG BOX\",\"description\":\"Purchase of Product #16\"}', '9c9f75c2-f76f-4411-9f1e-30ab91d6be3d', '2019-11-21 19:29:56', '2019-11-21 19:29:56');
INSERT INTO `transactions` VALUES (531, 'App\\Models\\User', 1, 1, 'deposit', 2500, 1, NULL, '6670dbd3-f26f-4173-85c0-f7d972f5fd1c', '2019-11-21 19:30:04', '2019-11-21 19:30:04');
INSERT INTO `transactions` VALUES (541, 'App\\Models\\User', 1, 1, 'deposit', 19900, 1, NULL, '9bb84a14-ce4f-4e42-8c0e-24567cec3629', '2019-11-21 19:30:08', '2019-11-21 19:30:08');
INSERT INTO `transactions` VALUES (551, 'App\\Models\\User', 1, 1, 'deposit', 2500, 1, NULL, '500c8ccc-7996-4414-b2b5-669333d17cc5', '2019-11-21 19:30:09', '2019-11-21 19:30:09');
INSERT INTO `transactions` VALUES (561, 'App\\Models\\User', 1, 1, 'deposit', 2500, 1, NULL, '2802bdd1-684c-40e0-bdc1-b493705f0fb4', '2019-11-21 19:30:11', '2019-11-21 19:30:11');
INSERT INTO `transactions` VALUES (571, 'App\\Models\\User', 1, 1, 'deposit', 2500, 1, NULL, 'a6c3ae24-1b1c-4e0b-896f-daac9a76f47a', '2019-11-21 19:30:13', '2019-11-21 19:30:13');
INSERT INTO `transactions` VALUES (581, 'App\\Models\\User', 1, 1, 'deposit', 2500, 1, NULL, 'a823c81f-ebf4-48b2-9df5-66dc5478d380', '2019-11-21 19:30:14', '2019-11-21 19:30:14');
INSERT INTO `transactions` VALUES (591, 'App\\Models\\User', 1, 1, 'deposit', 2500, 1, NULL, 'f4d82d62-4a8a-4c98-bcd4-67e491865c5b', '2019-11-21 19:30:15', '2019-11-21 19:30:15');
INSERT INTO `transactions` VALUES (601, 'App\\Models\\User', 1, 1, 'deposit', 2500, 1, NULL, 'ca876e74-c370-4980-9d66-3c55b544efa3', '2019-11-21 19:30:16', '2019-11-21 19:30:16');
INSERT INTO `transactions` VALUES (611, 'App\\Models\\User', 1, 1, 'deposit', 4900, 1, NULL, '371d5947-3e45-4fd1-98e8-054a0b23ba59', '2019-11-21 19:30:17', '2019-11-21 19:30:17');
INSERT INTO `transactions` VALUES (621, 'App\\Models\\User', 1, 1, 'deposit', 2500, 1, NULL, 'ba4be73d-a85c-4ecd-ac9f-b39ad86ce6f8', '2019-11-21 19:30:18', '2019-11-21 19:30:18');
INSERT INTO `transactions` VALUES (631, 'App\\Models\\User', 1, 1, 'deposit', 2500, 1, NULL, '90a9f1b8-ec3c-40fa-997f-48723ccedce1', '2019-11-21 19:30:19', '2019-11-21 19:30:19');
INSERT INTO `transactions` VALUES (641, 'App\\Models\\User', 1, 1, 'deposit', 4900, 1, NULL, 'a72e112f-9963-41b6-97fe-d77d8514bc09', '2019-11-21 19:30:19', '2019-11-21 19:30:19');
INSERT INTO `transactions` VALUES (651, 'App\\Models\\User', 1, 1, 'deposit', 4900, 1, NULL, '78c3c038-ad52-4097-8c9a-87275662195f', '2019-11-21 19:30:20', '2019-11-21 19:30:20');
INSERT INTO `transactions` VALUES (661, 'App\\Models\\User', 1, 1, 'deposit', 2500, 1, NULL, 'a4b8afbd-645e-4387-9e23-82d4f72423d7', '2019-11-21 19:30:21', '2019-11-21 19:30:21');
INSERT INTO `transactions` VALUES (671, 'App\\Models\\User', 1, 1, 'deposit', 4900, 1, NULL, 'dd0629fd-2524-4248-90f7-6021b544a3c4', '2019-11-21 19:30:23', '2019-11-21 19:30:23');
INSERT INTO `transactions` VALUES (681, 'App\\Models\\User', 1, 1, 'deposit', 2500, 1, NULL, 'a6da434f-f026-472d-81ad-63aa851a319b', '2019-11-21 19:30:24', '2019-11-21 19:30:24');
INSERT INTO `transactions` VALUES (691, 'App\\Models\\User', 1, 1, 'deposit', 2500, 1, NULL, '5af52eaa-708b-4384-911e-1fbebd3b1aae', '2019-11-21 19:30:25', '2019-11-21 19:30:25');
INSERT INTO `transactions` VALUES (701, 'App\\Models\\User', 1, 1, 'deposit', 2500, 1, NULL, '3892b273-674b-4ede-8610-0fba4924cbce', '2019-11-21 19:30:25', '2019-11-21 19:30:25');
INSERT INTO `transactions` VALUES (711, 'App\\Models\\User', 1, 1, 'deposit', 4900, 1, NULL, 'f0d914ba-471d-4541-8383-2e4268185637', '2019-11-21 19:30:26', '2019-11-21 19:30:26');
INSERT INTO `transactions` VALUES (721, 'App\\Models\\User', 1, 1, 'deposit', 2500, 1, NULL, 'fbcd6915-6b19-4721-8db8-9c5cc2f55a41', '2019-11-21 19:30:28', '2019-11-21 19:30:28');
INSERT INTO `transactions` VALUES (731, 'App\\Models\\User', 1, 1, 'deposit', 1900, 1, NULL, '946eb29a-3916-4560-bbe6-aef6dc069edd', '2019-11-21 19:32:42', '2019-11-21 19:32:42');
INSERT INTO `transactions` VALUES (741, 'App\\Models\\User', 1, 1, 'deposit', 2500, 1, NULL, 'b14ba9f5-cad6-4a28-8be9-2a878a7f371a', '2019-11-21 19:32:44', '2019-11-21 19:32:44');
INSERT INTO `transactions` VALUES (751, 'App\\Models\\User', 1, 1, 'deposit', 2500, 1, NULL, '486ec8b9-ebd0-45d0-904d-12c6e833936e', '2019-11-21 19:32:47', '2019-11-21 19:32:47');
INSERT INTO `transactions` VALUES (761, 'App\\Models\\User', 1, 1, 'deposit', 2500, 1, NULL, 'efbae775-1e45-4d98-8568-cdd9d377811d', '2019-11-21 19:32:49', '2019-11-21 19:32:49');
INSERT INTO `transactions` VALUES (771, 'App\\Models\\User', 1, 1, 'deposit', 4900, 1, NULL, '256221b0-2487-4280-b1c6-5fceba6da4c6', '2019-11-21 19:32:50', '2019-11-21 19:32:50');
INSERT INTO `transactions` VALUES (781, 'App\\Models\\User', 1, 1, 'deposit', 2500, 1, NULL, '16055f2a-923f-4098-a2a2-e07d72865c14', '2019-11-21 19:32:51', '2019-11-21 19:32:51');
INSERT INTO `transactions` VALUES (791, 'App\\Models\\User', 1, 1, 'deposit', 2500, 1, NULL, '5338579c-e9eb-474b-baf0-4d20b01ebeab', '2019-11-21 19:32:52', '2019-11-21 19:32:52');
INSERT INTO `transactions` VALUES (801, 'App\\Models\\User', 1, 1, 'deposit', 2500, 1, NULL, '0e63c4a8-4cc6-44f2-83b6-4b8c5bd79c41', '2019-11-21 19:32:53', '2019-11-21 19:32:53');
INSERT INTO `transactions` VALUES (811, 'App\\Models\\User', 1, 1, 'deposit', 2500, 1, NULL, '3a95100d-5f25-4bcb-ac48-4a3970d2e8b0', '2019-11-21 19:32:54', '2019-11-21 19:32:54');
INSERT INTO `transactions` VALUES (821, 'App\\Models\\User', 1, 1, 'deposit', 2500, 1, NULL, 'faed70b4-72e6-402d-93c3-b6c03f7c7239', '2019-11-21 19:32:55', '2019-11-21 19:32:55');
INSERT INTO `transactions` VALUES (831, 'App\\Models\\User', 1, 1, 'deposit', 2500, 1, NULL, 'd650c2b1-441c-4884-84af-2e07f8784885', '2019-11-21 19:32:56', '2019-11-21 19:32:56');
INSERT INTO `transactions` VALUES (841, 'App\\Models\\User', 1, 1, 'deposit', 2500, 1, NULL, 'bbfe94f2-2301-4cb4-9536-6866f2d3d05a', '2019-11-21 19:32:57', '2019-11-21 19:32:57');
INSERT INTO `transactions` VALUES (851, 'App\\Models\\User', 1, 1, 'deposit', 2500, 1, NULL, '3b97980c-e069-4f22-8cc8-8a45ae995f38', '2019-11-21 19:32:58', '2019-11-21 19:32:58');
INSERT INTO `transactions` VALUES (861, 'App\\Models\\User', 1, 1, 'deposit', 4900, 1, NULL, '87bce012-7f20-4282-a1be-461cb5179f5d', '2019-11-21 19:32:59', '2019-11-21 19:32:59');
INSERT INTO `transactions` VALUES (871, 'App\\Models\\User', 1, 1, 'deposit', 6000, 1, NULL, 'e2af965c-364f-441d-a562-121ad28cacac', '2019-11-21 19:33:00', '2019-11-21 19:33:00');
INSERT INTO `transactions` VALUES (881, 'App\\Models\\User', 1, 1, 'deposit', 2500, 1, NULL, '62853ee0-7c7d-4658-8dfc-c463c31126e6', '2019-11-21 19:33:02', '2019-11-21 19:33:02');
INSERT INTO `transactions` VALUES (891, 'App\\Models\\User', 6, 11, 'withdraw', -1500, 1, '{\"title\":\"SAMSUNG BOX\",\"description\":\"Purchase of Product #16\"}', '799ef1a6-902f-4520-b33a-ccf248c730e9', '2019-11-22 14:20:27', '2019-11-22 14:20:27');
INSERT INTO `transactions` VALUES (901, 'App\\Models\\Box', 16, 12, 'deposit', 1500, 1, '{\"title\":\"SAMSUNG BOX\",\"description\":\"Purchase of Product #16\"}', 'a024b9d3-457f-4e7f-aec5-f59d8212f272', '2019-11-22 14:20:27', '2019-11-22 14:20:27');
INSERT INTO `transactions` VALUES (911, 'App\\Models\\User', 6, 11, 'withdraw', -1500, 1, '{\"title\":\"SAMSUNG BOX\",\"description\":\"Purchase of Product #16\"}', '7ee07cdb-dce6-4e10-aff4-601944685a1c', '2019-11-22 14:20:30', '2019-11-22 14:20:30');
INSERT INTO `transactions` VALUES (921, 'App\\Models\\Box', 16, 12, 'deposit', 1500, 1, '{\"title\":\"SAMSUNG BOX\",\"description\":\"Purchase of Product #16\"}', 'c2fd3118-24f5-4d12-92df-d53c590133c8', '2019-11-22 14:20:30', '2019-11-22 14:20:30');
INSERT INTO `transactions` VALUES (931, 'App\\Models\\User', 6, 11, 'withdraw', -1500, 1, '{\"title\":\"SAMSUNG BOX\",\"description\":\"Purchase of Product #16\"}', 'd1fc6d1f-1a9e-404a-ba1b-31f75f1e466f', '2019-11-22 14:20:42', '2019-11-22 14:20:42');
INSERT INTO `transactions` VALUES (941, 'App\\Models\\Box', 16, 12, 'deposit', 1500, 1, '{\"title\":\"SAMSUNG BOX\",\"description\":\"Purchase of Product #16\"}', '13833f4d-f6d0-4544-a9d0-b6516684cd71', '2019-11-22 14:20:42', '2019-11-22 14:20:42');
INSERT INTO `transactions` VALUES (951, 'App\\Models\\User', 6, 11, 'withdraw', -1500, 1, '{\"title\":\"SAMSUNG BOX\",\"description\":\"Purchase of Product #16\"}', '65b0c5a4-0d0e-48fd-8f9e-639e768862d7', '2019-11-22 21:57:33', '2019-11-22 21:57:33');
INSERT INTO `transactions` VALUES (961, 'App\\Models\\Box', 16, 12, 'deposit', 1500, 1, '{\"title\":\"SAMSUNG BOX\",\"description\":\"Purchase of Product #16\"}', '6fcb365f-270d-4b26-afcb-9dc5ed0a4dc8', '2019-11-22 21:57:33', '2019-11-22 21:57:33');
INSERT INTO `transactions` VALUES (971, 'App\\Models\\User', 6, 11, 'withdraw', -1500, 1, '{\"title\":\"SAMSUNG BOX\",\"description\":\"Purchase of Product #16\"}', '9ccae54c-804b-499a-8b40-efa39f42248a', '2019-11-22 21:57:37', '2019-11-22 21:57:37');
INSERT INTO `transactions` VALUES (981, 'App\\Models\\Box', 16, 12, 'deposit', 1500, 1, '{\"title\":\"SAMSUNG BOX\",\"description\":\"Purchase of Product #16\"}', '4b8c219a-34ed-459b-a595-7e830ae5c666', '2019-11-22 21:57:37', '2019-11-22 21:57:37');
INSERT INTO `transactions` VALUES (991, 'App\\Models\\User', 6, 11, 'withdraw', -4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', '65c2319f-7532-4fa7-8242-e531f0e4682d', '2019-11-22 21:57:45', '2019-11-22 21:57:45');
INSERT INTO `transactions` VALUES (1001, 'App\\Models\\Box', 1, 5, 'deposit', 4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', 'bdb4adb6-d6eb-4ba9-9ae9-2b028644624a', '2019-11-22 21:57:45', '2019-11-22 21:57:45');
INSERT INTO `transactions` VALUES (1011, 'App\\Models\\User', 1, 1, 'deposit', 1000, 1, NULL, '402d82d8-cfd5-4c01-af92-64977c78c3df', '2019-11-23 10:07:49', '2019-11-23 10:07:49');
INSERT INTO `transactions` VALUES (1021, 'App\\Models\\User', 1, 1, 'deposit', 1000, 1, NULL, '5b73ea61-4833-4717-ab89-b4697c23fdf2', '2019-11-23 14:35:04', '2019-11-23 14:35:04');
INSERT INTO `transactions` VALUES (1031, 'App\\Models\\User', 6, 11, 'withdraw', -1500, 1, '{\"title\":\"SAMSUNG BOX\",\"description\":\"Purchase of Product #16\"}', '70ba31d6-1c3d-4269-89d8-7714a9580c6e', '2019-11-24 20:48:00', '2019-11-24 20:48:00');
INSERT INTO `transactions` VALUES (1041, 'App\\Models\\Box', 16, 12, 'deposit', 1500, 1, '{\"title\":\"SAMSUNG BOX\",\"description\":\"Purchase of Product #16\"}', '74f2ba82-9083-439e-87d4-593bc17fa6cf', '2019-11-24 20:48:00', '2019-11-24 20:48:00');
INSERT INTO `transactions` VALUES (1051, 'App\\Models\\User', 6, 11, 'withdraw', -1500, 1, '{\"title\":\"SAMSUNG BOX\",\"description\":\"Purchase of Product #16\"}', '2fd864dc-f5e3-49de-b7aa-dd76e34f7516', '2019-11-24 20:48:02', '2019-11-24 20:48:02');
INSERT INTO `transactions` VALUES (1061, 'App\\Models\\Box', 16, 12, 'deposit', 1500, 1, '{\"title\":\"SAMSUNG BOX\",\"description\":\"Purchase of Product #16\"}', '12391a8b-665e-4aaa-9292-ded2976d9046', '2019-11-24 20:48:02', '2019-11-24 20:48:02');
INSERT INTO `transactions` VALUES (1071, 'App\\Models\\User', 6, 11, 'withdraw', -5900, 1, '{\"title\":\"Bags & Handbags eBox\",\"description\":\"Purchase of Product #14\"}', 'a36380d0-ad56-4376-b522-bb0470a5eef6', '2019-11-24 20:59:36', '2019-11-24 20:59:36');
INSERT INTO `transactions` VALUES (1081, 'App\\Models\\Box', 14, 10, 'deposit', 5900, 1, '{\"title\":\"Bags & Handbags eBox\",\"description\":\"Purchase of Product #14\"}', '1a5ae6ad-8af2-4cc0-a4ab-df44d1e3e5a8', '2019-11-24 20:59:36', '2019-11-24 20:59:36');
INSERT INTO `transactions` VALUES (1091, 'App\\Models\\User', 6, 11, 'withdraw', -5900, 1, '{\"title\":\"Bags & Handbags eBox\",\"description\":\"Purchase of Product #14\"}', '606e6b67-695d-49ac-ab37-1ddf336715f8', '2019-11-24 21:00:15', '2019-11-24 21:00:15');
INSERT INTO `transactions` VALUES (1101, 'App\\Models\\Box', 14, 10, 'deposit', 5900, 1, '{\"title\":\"Bags & Handbags eBox\",\"description\":\"Purchase of Product #14\"}', '976aecde-7b4c-489f-a8bf-292efc286b10', '2019-11-24 21:00:15', '2019-11-24 21:00:15');
INSERT INTO `transactions` VALUES (1111, 'App\\Models\\User', 1, 1, 'withdraw', -5900, 1, '{\"title\":\"Bags & Handbags eBox\",\"description\":\"Purchase of Product #14\"}', 'cb9f0b52-0498-4f88-a528-d349e6231fdf', '2019-11-24 21:05:14', '2019-11-24 21:05:14');
INSERT INTO `transactions` VALUES (1121, 'App\\Models\\Box', 14, 10, 'deposit', 5900, 1, '{\"title\":\"Bags & Handbags eBox\",\"description\":\"Purchase of Product #14\"}', '01668101-23f8-4b36-96a6-0124cd4505b4', '2019-11-24 21:05:14', '2019-11-24 21:05:14');
INSERT INTO `transactions` VALUES (1131, 'App\\Models\\User', 11, 21, 'deposit', 1500, 1, NULL, '27c82374-8a58-4da4-9e62-fa0a2be8fd33', '2019-11-24 21:05:17', '2019-11-24 21:05:17');
INSERT INTO `transactions` VALUES (1141, 'App\\Models\\User', 11, 21, 'deposit', 1000000, 1, NULL, 'cc3639c3-8631-4bcb-afad-056609e2f2b7', '2019-11-24 21:05:43', '2019-11-24 21:05:43');
INSERT INTO `transactions` VALUES (1151, 'App\\Models\\User', 11, 21, 'withdraw', -5900, 1, '{\"title\":\"Bags & Handbags eBox\",\"description\":\"Purchase of Product #14\"}', 'e5a3b6cd-60f5-4c55-8bd5-4678413fee5e', '2019-11-24 21:05:56', '2019-11-24 21:05:56');
INSERT INTO `transactions` VALUES (1161, 'App\\Models\\Box', 14, 10, 'deposit', 5900, 1, '{\"title\":\"Bags & Handbags eBox\",\"description\":\"Purchase of Product #14\"}', 'e77059fe-6e5c-4afd-98aa-86b4caa6c889', '2019-11-24 21:05:56', '2019-11-24 21:05:56');
INSERT INTO `transactions` VALUES (1171, 'App\\Models\\User', 11, 21, 'withdraw', -5900, 1, '{\"title\":\"Bags & Handbags eBox\",\"description\":\"Purchase of Product #14\"}', '1e3253f4-5bc4-49ea-a9b9-2df59a6dc4cd', '2019-11-24 21:06:00', '2019-11-24 21:06:00');
INSERT INTO `transactions` VALUES (1181, 'App\\Models\\Box', 14, 10, 'deposit', 5900, 1, '{\"title\":\"Bags & Handbags eBox\",\"description\":\"Purchase of Product #14\"}', '2f15b2b6-f0f8-4b74-8e7e-dbcb7d135d1c', '2019-11-24 21:06:00', '2019-11-24 21:06:00');
INSERT INTO `transactions` VALUES (1191, 'App\\Models\\User', 6, 11, 'withdraw', -4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', '77ab482b-d48d-407d-8f0a-2c1b27db286a', '2019-11-24 21:10:30', '2019-11-24 21:10:30');
INSERT INTO `transactions` VALUES (1201, 'App\\Models\\Box', 1, 5, 'deposit', 4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', '277929d5-0ea4-49df-9c86-655085e0d0c4', '2019-11-24 21:10:30', '2019-11-24 21:10:30');
INSERT INTO `transactions` VALUES (1211, 'App\\Models\\User', 6, 11, 'withdraw', -4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', '4cc61d4a-8f84-45cf-b1a4-07345495ec2f', '2019-11-24 21:10:50', '2019-11-24 21:10:50');
INSERT INTO `transactions` VALUES (1221, 'App\\Models\\Box', 1, 5, 'deposit', 4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', '80664a3e-e024-4008-8724-083c9efed9ac', '2019-11-24 21:10:50', '2019-11-24 21:10:50');
INSERT INTO `transactions` VALUES (1231, 'App\\Models\\User', 6, 11, 'withdraw', -4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', '34179dba-97d2-49d0-bdef-5abc864623dc', '2019-11-24 21:11:01', '2019-11-24 21:11:01');
INSERT INTO `transactions` VALUES (1241, 'App\\Models\\Box', 1, 5, 'deposit', 4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', 'b0aa9b23-d9ea-4ce8-ad5c-002316309ae8', '2019-11-24 21:11:01', '2019-11-24 21:11:01');
INSERT INTO `transactions` VALUES (1251, 'App\\Models\\User', 6, 11, 'withdraw', -4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', '391f0f31-584a-4201-80d1-838075bf6ea0', '2019-11-24 21:11:18', '2019-11-24 21:11:18');
INSERT INTO `transactions` VALUES (1261, 'App\\Models\\Box', 1, 5, 'deposit', 4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', '87539410-13dc-4f60-8e51-2a6d36269416', '2019-11-24 21:11:18', '2019-11-24 21:11:18');
INSERT INTO `transactions` VALUES (1271, 'App\\Models\\User', 1, 1, 'withdraw', -4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', '2a6ebbc1-eb47-4af7-b1c7-415e27c2a498', '2019-11-24 21:56:29', '2019-11-24 21:56:29');
INSERT INTO `transactions` VALUES (1281, 'App\\Models\\Box', 1, 5, 'deposit', 4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', '5fe81d03-d030-4ad6-9093-711c81f43693', '2019-11-24 21:56:29', '2019-11-24 21:56:29');
INSERT INTO `transactions` VALUES (1291, 'App\\Models\\User', 6, 11, 'withdraw', -4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', '8d7ebf7a-19d1-4403-92cc-0fa8473264b7', '2019-11-24 22:10:07', '2019-11-24 22:10:07');
INSERT INTO `transactions` VALUES (1301, 'App\\Models\\Box', 1, 5, 'deposit', 4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', '4f18f0bb-d430-43eb-960f-afc1d1092f71', '2019-11-24 22:10:08', '2019-11-24 22:10:08');
INSERT INTO `transactions` VALUES (1311, 'App\\Models\\User', 6, 11, 'deposit', 1900, 1, NULL, 'd4d3a8fa-2650-43bd-9779-585f2584f3b3', '2019-11-24 22:10:23', '2019-11-24 22:10:23');
INSERT INTO `transactions` VALUES (1321, 'App\\Models\\User', 6, 11, 'deposit', 500, 1, NULL, '177a3814-c266-418f-acfd-112cb9a79f5c', '2019-11-24 22:10:24', '2019-11-24 22:10:24');
INSERT INTO `transactions` VALUES (1331, 'App\\Models\\User', 6, 11, 'deposit', 600, 1, NULL, '7eedbc61-d654-4b2b-a086-8d2a3dd1b727', '2019-11-24 22:10:24', '2019-11-24 22:10:24');
INSERT INTO `transactions` VALUES (1341, 'App\\Models\\User', 6, 11, 'deposit', 1900, 1, NULL, 'f3e64730-e295-4b9c-b508-76dcde3635de', '2019-11-24 22:10:25', '2019-11-24 22:10:25');
INSERT INTO `transactions` VALUES (1351, 'App\\Models\\User', 6, 11, 'deposit', 1900, 1, NULL, '787d56a6-6a25-4d7a-a5aa-f6467dc8b79f', '2019-11-24 22:10:25', '2019-11-24 22:10:25');
INSERT INTO `transactions` VALUES (1361, 'App\\Models\\User', 6, 11, 'deposit', 1900, 1, NULL, '5ce73feb-4c84-4b06-a69a-a061afa0d31b', '2019-11-24 22:10:26', '2019-11-24 22:10:26');
INSERT INTO `transactions` VALUES (1371, 'App\\Models\\User', 6, 11, 'deposit', 500, 1, NULL, '2a73a84a-9252-419b-80bc-62cdcc1e60dd', '2019-11-24 22:10:26', '2019-11-24 22:10:26');
INSERT INTO `transactions` VALUES (1381, 'App\\Models\\User', 6, 11, 'deposit', 500, 1, NULL, 'fc3c2fae-ff7b-47f8-b889-25d8ec4d3a33', '2019-11-24 22:10:26', '2019-11-24 22:10:26');
INSERT INTO `transactions` VALUES (1391, 'App\\Models\\User', 6, 11, 'deposit', 600, 1, NULL, '906ab2e1-02ca-4b05-9add-6f3a49757d59', '2019-11-24 22:10:27', '2019-11-24 22:10:27');
INSERT INTO `transactions` VALUES (1401, 'App\\Models\\User', 6, 11, 'deposit', 600, 1, NULL, '21bfae64-dbcb-466b-9dc9-7a70c2367ffa', '2019-11-24 22:10:27', '2019-11-24 22:10:27');
INSERT INTO `transactions` VALUES (1411, 'App\\Models\\User', 6, 11, 'deposit', 1900, 1, NULL, '44399ac9-c87a-4e38-a6ed-9d7e06ee0d9b', '2019-11-24 22:10:28', '2019-11-24 22:10:28');
INSERT INTO `transactions` VALUES (1421, 'App\\Models\\User', 6, 11, 'deposit', 600, 1, NULL, 'de8a2ee2-0e74-43c7-861f-eee83866b35a', '2019-11-24 22:10:28', '2019-11-24 22:10:28');
INSERT INTO `transactions` VALUES (1431, 'App\\Models\\User', 6, 11, 'deposit', 2500, 1, NULL, '4c626f0a-780a-4548-9e8a-5e3405ccdb8c', '2019-11-24 22:10:29', '2019-11-24 22:10:29');
INSERT INTO `transactions` VALUES (1441, 'App\\Models\\User', 6, 11, 'deposit', 4900, 1, NULL, '6725c8b2-55bf-41af-af96-088cf396ec4d', '2019-11-24 22:10:30', '2019-11-24 22:10:30');
INSERT INTO `transactions` VALUES (1451, 'App\\Models\\User', 6, 11, 'deposit', 2500, 1, NULL, '7fd53ce9-8d19-495f-9b04-bc20598715e0', '2019-11-24 22:10:31', '2019-11-24 22:10:31');
INSERT INTO `transactions` VALUES (1461, 'App\\Models\\User', 6, 11, 'deposit', 600, 1, NULL, '8cbbe670-ae8c-4100-942b-e93ec4cd19c0', '2019-11-24 22:10:31', '2019-11-24 22:10:31');
INSERT INTO `transactions` VALUES (1471, 'App\\Models\\User', 6, 11, 'deposit', 500, 1, NULL, '85012cbc-f3cc-4bc8-a6cc-c7796fbd22e4', '2019-11-24 22:10:33', '2019-11-24 22:10:33');
INSERT INTO `transactions` VALUES (1481, 'App\\Models\\User', 6, 11, 'deposit', 1900, 1, NULL, 'b2ee86ec-3bc2-4be4-80f4-a41214e850ea', '2019-11-24 22:10:33', '2019-11-24 22:10:33');
INSERT INTO `transactions` VALUES (1491, 'App\\Models\\User', 6, 11, 'deposit', 500, 1, NULL, 'f764d9ac-cfe6-4319-8483-eb7d1c7bd49a', '2019-11-24 22:10:34', '2019-11-24 22:10:34');
INSERT INTO `transactions` VALUES (1501, 'App\\Models\\User', 6, 11, 'deposit', 600, 1, NULL, '8c2e4d3f-1665-4c6d-8e57-e17f9d351bba', '2019-11-24 22:10:35', '2019-11-24 22:10:35');
INSERT INTO `transactions` VALUES (1511, 'App\\Models\\User', 6, 11, 'deposit', 2500, 1, NULL, '4c8a6b57-f1ce-4c14-9140-e1306800c711', '2019-11-24 22:10:35', '2019-11-24 22:10:35');
INSERT INTO `transactions` VALUES (1521, 'App\\Models\\User', 6, 11, 'deposit', 10000, 1, NULL, '71dae528-0182-4321-bb13-4fba02b7d11f', '2019-11-24 22:10:36', '2019-11-24 22:10:36');
INSERT INTO `transactions` VALUES (1531, 'App\\Models\\User', 6, 11, 'deposit', 1900, 1, NULL, 'b62f3044-582c-4a04-8820-624196d90787', '2019-11-24 22:10:36', '2019-11-24 22:10:36');
INSERT INTO `transactions` VALUES (1541, 'App\\Models\\User', 6, 11, 'deposit', 3000, 1, NULL, 'cb9214c8-3408-4c5c-98b0-a5483f2f00f4', '2019-11-24 22:10:38', '2019-11-24 22:10:38');
INSERT INTO `transactions` VALUES (1551, 'App\\Models\\User', 6, 11, 'deposit', 3000, 1, NULL, '64b6ff36-2eb9-484c-8f98-cfd284a465ce', '2019-11-24 22:10:39', '2019-11-24 22:10:39');
INSERT INTO `transactions` VALUES (1561, 'App\\Models\\User', 6, 11, 'deposit', 2500, 1, NULL, '18bd2b68-69d0-431b-ba39-d2deb83a486d', '2019-11-24 22:10:39', '2019-11-24 22:10:39');
INSERT INTO `transactions` VALUES (1571, 'App\\Models\\User', 6, 11, 'deposit', 2500, 1, NULL, '8fffda1d-6210-4b82-a810-2ac253e59936', '2019-11-24 22:10:40', '2019-11-24 22:10:40');
INSERT INTO `transactions` VALUES (1581, 'App\\Models\\User', 6, 11, 'deposit', 2500, 1, NULL, 'd6d9a891-3b70-4f7d-9b0a-8745aeda0820', '2019-11-24 22:10:40', '2019-11-24 22:10:40');
INSERT INTO `transactions` VALUES (1591, 'App\\Models\\User', 6, 11, 'deposit', 2500, 1, NULL, '7a417ac8-f468-4a08-bce6-12a0a8b4fbe4', '2019-11-24 22:10:41', '2019-11-24 22:10:41');
INSERT INTO `transactions` VALUES (1601, 'App\\Models\\User', 6, 11, 'deposit', 19900, 1, NULL, 'fe6c0978-fc33-403b-9255-90ae8e2df37c', '2019-11-24 22:10:43', '2019-11-24 22:10:43');
INSERT INTO `transactions` VALUES (1611, 'App\\Models\\User', 6, 11, 'withdraw', -4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', 'e26d11a5-b1b5-49a8-98cd-5da6b576b3df', '2019-11-24 22:10:46', '2019-11-24 22:10:46');
INSERT INTO `transactions` VALUES (1621, 'App\\Models\\Box', 1, 5, 'deposit', 4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', '7cdeb304-04fa-4521-9590-4d019f7605a1', '2019-11-24 22:10:46', '2019-11-24 22:10:46');
INSERT INTO `transactions` VALUES (1631, 'App\\Models\\User', 6, 11, 'withdraw', -4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', '5710b71f-496c-4baf-9fb9-22386d4a1ed4', '2019-11-24 22:21:26', '2019-11-24 22:21:26');
INSERT INTO `transactions` VALUES (1641, 'App\\Models\\Box', 1, 5, 'deposit', 4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', '04dd1b82-8cb4-4123-90f8-29f89b93f6e7', '2019-11-24 22:21:26', '2019-11-24 22:21:26');
INSERT INTO `transactions` VALUES (1651, 'App\\Models\\User', 6, 11, 'withdraw', -4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', 'b3977e54-339c-4efd-b955-843e37746a93', '2019-11-25 16:20:28', '2019-11-25 16:20:28');
INSERT INTO `transactions` VALUES (1661, 'App\\Models\\Box', 1, 5, 'deposit', 4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', '62a8dbf5-2179-4058-8f02-0c81054e2e76', '2019-11-25 16:20:28', '2019-11-25 16:20:28');
INSERT INTO `transactions` VALUES (1671, 'App\\Models\\User', 6, 11, 'withdraw', -5900, 1, '{\"title\":\"Bags & Handbags eBox\",\"description\":\"Purchase of Product #14\"}', 'f6b2281a-d168-4ade-a55a-0e73da3a12e5', '2019-11-26 13:34:51', '2019-11-26 13:34:51');
INSERT INTO `transactions` VALUES (1681, 'App\\Models\\Box', 14, 10, 'deposit', 5900, 1, '{\"title\":\"Bags & Handbags eBox\",\"description\":\"Purchase of Product #14\"}', '2ce3bf86-a3f6-471c-b87a-ce5fd51678c6', '2019-11-26 13:34:51', '2019-11-26 13:34:51');
INSERT INTO `transactions` VALUES (1691, 'App\\Models\\User', 21, 31, 'deposit', 30000, 1, NULL, '039e82ff-306c-4c39-b327-dfee89820169', '2019-11-26 16:00:02', '2019-11-26 16:00:02');
INSERT INTO `transactions` VALUES (1701, 'App\\Models\\User', 21, 31, 'withdraw', -1500, 1, '{\"title\":\"SAMSUNG BOX\",\"description\":\"Purchase of Product #16\"}', '1995d05a-057b-4f08-829e-4a8220a8bb2a', '2019-11-26 16:24:09', '2019-11-26 16:24:09');
INSERT INTO `transactions` VALUES (1711, 'App\\Models\\Box', 16, 12, 'deposit', 1500, 1, '{\"title\":\"SAMSUNG BOX\",\"description\":\"Purchase of Product #16\"}', 'e957c894-caff-4ed6-a3c7-66408b8f3762', '2019-11-26 16:24:09', '2019-11-26 16:24:09');
INSERT INTO `transactions` VALUES (1721, 'App\\Models\\User', 21, 31, 'deposit', 1900, 1, NULL, '87816e39-b7a5-4766-ac0e-457d6401aedb', '2019-11-26 19:32:22', '2019-11-26 19:32:22');
INSERT INTO `transactions` VALUES (1731, 'App\\Models\\User', 21, 31, 'withdraw', -4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', '75edfc55-41c8-4f22-a39f-971f218ed890', '2019-11-26 19:32:56', '2019-11-26 19:32:56');
INSERT INTO `transactions` VALUES (1741, 'App\\Models\\Box', 1, 5, 'deposit', 4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', '5ecf0d49-7f1d-4b2f-850a-6777420b9d8b', '2019-11-26 19:32:56', '2019-11-26 19:32:56');
INSERT INTO `transactions` VALUES (1751, 'App\\Models\\User', 21, 31, 'deposit', 2500, 1, NULL, '7c7c051f-3445-4336-b157-614ef25c222b', '2019-11-26 19:33:09', '2019-11-26 19:33:09');
INSERT INTO `transactions` VALUES (1761, 'App\\Models\\User', 21, 31, 'withdraw', -4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', 'd4db8292-66a6-4254-8cd7-9327a561cb55', '2019-11-26 19:33:11', '2019-11-26 19:33:11');
INSERT INTO `transactions` VALUES (1771, 'App\\Models\\Box', 1, 5, 'deposit', 4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', '496b03b6-83f5-4fc1-bf8f-33dafee46df0', '2019-11-26 19:33:11', '2019-11-26 19:33:11');
INSERT INTO `transactions` VALUES (1781, 'App\\Models\\User', 21, 31, 'withdraw', -4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', '75d43559-564d-4b34-bd31-2518f80aaea6', '2019-11-26 19:33:23', '2019-11-26 19:33:23');
INSERT INTO `transactions` VALUES (1791, 'App\\Models\\Box', 1, 5, 'deposit', 4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', '0b469ea7-d23a-4429-ad84-065d4af3af64', '2019-11-26 19:33:23', '2019-11-26 19:33:23');
INSERT INTO `transactions` VALUES (1801, 'App\\Models\\User', 21, 31, 'withdraw', -4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', '35fbef62-3996-4a7d-bee5-bf1ad56cfd37', '2019-11-26 19:33:47', '2019-11-26 19:33:47');
INSERT INTO `transactions` VALUES (1811, 'App\\Models\\Box', 1, 5, 'deposit', 4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', 'd2004a6b-07e4-4ac7-b32a-d38b0022294e', '2019-11-26 19:33:47', '2019-11-26 19:33:47');
INSERT INTO `transactions` VALUES (1821, 'App\\Models\\User', 21, 31, 'withdraw', -4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', '837e89dc-3657-44b6-b292-f67f3576eed7', '2019-11-26 19:34:11', '2019-11-26 19:34:11');
INSERT INTO `transactions` VALUES (1831, 'App\\Models\\Box', 1, 5, 'deposit', 4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', '97268582-9977-4acb-a6bf-6741929bc777', '2019-11-26 19:34:11', '2019-11-26 19:34:11');
INSERT INTO `transactions` VALUES (1841, 'App\\Models\\User', 21, 31, 'deposit', 2500, 1, NULL, '4f82cd04-3aed-435a-b519-c44b9665db93', '2019-11-26 19:34:33', '2019-11-26 19:34:33');
INSERT INTO `transactions` VALUES (1851, 'App\\Models\\User', 21, 31, 'deposit', 2500, 1, NULL, 'e4c1cdc1-11d7-443f-82bf-466173eb24d7', '2019-11-26 19:34:34', '2019-11-26 19:34:34');
INSERT INTO `transactions` VALUES (1861, 'App\\Models\\User', 21, 31, 'deposit', 4900, 1, NULL, 'f47450c9-70f3-4ec5-bcbf-22fb09613241', '2019-11-26 19:34:35', '2019-11-26 19:34:35');
INSERT INTO `transactions` VALUES (1871, 'App\\Models\\User', 21, 31, 'deposit', 2500, 1, NULL, '6a23fc18-a4b6-4129-b713-284ea26fb28b', '2019-11-26 19:34:36', '2019-11-26 19:34:36');
INSERT INTO `transactions` VALUES (1881, 'App\\Models\\User', 21, 31, 'withdraw', -4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', '62929c52-3c85-4154-b73f-86f2f678b837', '2019-11-26 19:34:38', '2019-11-26 19:34:38');
INSERT INTO `transactions` VALUES (1891, 'App\\Models\\Box', 1, 5, 'deposit', 4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', '67df3b42-aab6-4fdd-8e2c-08d12ca86103', '2019-11-26 19:34:38', '2019-11-26 19:34:38');
INSERT INTO `transactions` VALUES (1901, 'App\\Models\\User', 21, 31, 'withdraw', -4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', '29fb20c6-9cee-41c1-be61-573245b6ab61', '2019-11-26 19:34:52', '2019-11-26 19:34:52');
INSERT INTO `transactions` VALUES (1911, 'App\\Models\\Box', 1, 5, 'deposit', 4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', '761af487-7f82-4485-bb01-951bf556d35a', '2019-11-26 19:34:52', '2019-11-26 19:34:52');
INSERT INTO `transactions` VALUES (1921, 'App\\Models\\User', 21, 31, 'withdraw', -4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', '453b968a-5e73-44f9-bb10-475cc4cb2710', '2019-11-26 19:35:11', '2019-11-26 19:35:11');
INSERT INTO `transactions` VALUES (1931, 'App\\Models\\Box', 1, 5, 'deposit', 4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', 'b636bac3-7d4e-4f29-8b6a-3c545d12e93b', '2019-11-26 19:35:11', '2019-11-26 19:35:11');
INSERT INTO `transactions` VALUES (1941, 'App\\Models\\User', 21, 31, 'deposit', 2500, 1, NULL, '30bbf0ed-de72-400a-a9e5-02a49fc1c0ca', '2019-11-26 22:12:29', '2019-11-26 22:12:29');
INSERT INTO `transactions` VALUES (1951, 'App\\Models\\User', 21, 31, 'deposit', 4900, 1, NULL, '63d73698-fb67-44b7-90fb-5b447b9c83a0', '2019-11-26 22:12:30', '2019-11-26 22:12:30');
INSERT INTO `transactions` VALUES (1961, 'App\\Models\\User', 21, 31, 'deposit', 2500, 1, NULL, '217deac6-658d-43b5-bf14-bf11389444a4', '2019-11-26 22:12:30', '2019-11-26 22:12:30');
INSERT INTO `transactions` VALUES (1971, 'App\\Models\\User', 21, 31, 'withdraw', -4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', '016aa71c-89d0-47f4-8eac-be5e15608689', '2019-11-26 22:13:13', '2019-11-26 22:13:13');
INSERT INTO `transactions` VALUES (1981, 'App\\Models\\Box', 1, 5, 'deposit', 4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', 'c1ce4a14-1bc8-40fd-b749-a44ae72c4665', '2019-11-26 22:13:13', '2019-11-26 22:13:13');
INSERT INTO `transactions` VALUES (1991, 'App\\Models\\User', 21, 31, 'withdraw', -4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', '1e97efcf-43b3-4867-9858-cc68a39110e3', '2019-11-26 22:13:27', '2019-11-26 22:13:27');
INSERT INTO `transactions` VALUES (2001, 'App\\Models\\Box', 1, 5, 'deposit', 4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', '4e404631-4491-4a39-86e8-50c09b4efd27', '2019-11-26 22:13:27', '2019-11-26 22:13:27');
INSERT INTO `transactions` VALUES (2011, 'App\\Models\\User', 21, 31, 'deposit', 2500, 1, NULL, 'd9fedd54-5e12-4b9a-8067-5e9e9a6226f5', '2019-11-26 22:14:05', '2019-11-26 22:14:05');
INSERT INTO `transactions` VALUES (2021, 'App\\Models\\User', 21, 31, 'deposit', 6000, 1, NULL, '3c6d0fba-a195-4f29-9e12-7ca08042e1a9', '2019-11-26 22:14:06', '2019-11-26 22:14:06');
INSERT INTO `transactions` VALUES (2031, 'App\\Models\\User', 21, 31, 'withdraw', -1500, 1, '{\"title\":\"SAMSUNG BOX\",\"description\":\"Purchase of Product #16\"}', '922ee97f-34cd-476f-8474-a3fef088c0ea', '2019-11-26 22:14:16', '2019-11-26 22:14:16');
INSERT INTO `transactions` VALUES (2041, 'App\\Models\\Box', 16, 12, 'deposit', 1500, 1, '{\"title\":\"SAMSUNG BOX\",\"description\":\"Purchase of Product #16\"}', '29aa25fb-15e4-469b-9346-cf7f7f81fbe6', '2019-11-26 22:14:16', '2019-11-26 22:14:16');
INSERT INTO `transactions` VALUES (2051, 'App\\Models\\User', 21, 31, 'withdraw', -1500, 1, '{\"title\":\"SAMSUNG BOX\",\"description\":\"Purchase of Product #16\"}', '20f00bdc-a06f-45c5-b2cf-acba1bc67c5e', '2019-11-26 22:14:27', '2019-11-26 22:14:27');
INSERT INTO `transactions` VALUES (2061, 'App\\Models\\Box', 16, 12, 'deposit', 1500, 1, '{\"title\":\"SAMSUNG BOX\",\"description\":\"Purchase of Product #16\"}', 'bbb813d3-b0a5-44f1-8d13-7cee65783dc6', '2019-11-26 22:14:27', '2019-11-26 22:14:27');
INSERT INTO `transactions` VALUES (2071, 'App\\Models\\User', 21, 31, 'withdraw', -1500, 1, '{\"title\":\"SAMSUNG BOX\",\"description\":\"Purchase of Product #16\"}', '5391fd57-76b4-4067-bcd8-69b2eabf2e79', '2019-11-26 22:14:38', '2019-11-26 22:14:38');
INSERT INTO `transactions` VALUES (2081, 'App\\Models\\Box', 16, 12, 'deposit', 1500, 1, '{\"title\":\"SAMSUNG BOX\",\"description\":\"Purchase of Product #16\"}', 'f8be8d0d-a61f-4126-8409-ad88dd7dda3b', '2019-11-26 22:14:38', '2019-11-26 22:14:38');
INSERT INTO `transactions` VALUES (2091, 'App\\Models\\User', 21, 31, 'deposit', 1900, 1, NULL, '99ff7385-b836-456e-9698-b6e301530113', '2019-11-26 22:14:50', '2019-11-26 22:14:50');
INSERT INTO `transactions` VALUES (2101, 'App\\Models\\User', 21, 31, 'deposit', 500, 1, NULL, '41773f09-ced5-4fb7-a2e8-7ffd159afcdd', '2019-11-26 22:14:50', '2019-11-26 22:14:50');
INSERT INTO `transactions` VALUES (2111, 'App\\Models\\User', 21, 31, 'deposit', 10000, 1, NULL, 'b43c83a0-9df9-40db-8d7c-c862b4b486e2', '2019-11-26 22:14:51', '2019-11-26 22:14:51');
INSERT INTO `transactions` VALUES (2121, 'App\\Models\\User', 21, 31, 'withdraw', -1500, 1, '{\"title\":\"SAMSUNG BOX\",\"description\":\"Purchase of Product #16\"}', '1bb07931-1e53-4636-8558-18d5c52f9adf', '2019-11-27 09:05:11', '2019-11-27 09:05:11');
INSERT INTO `transactions` VALUES (2131, 'App\\Models\\Box', 16, 12, 'deposit', 1500, 1, '{\"title\":\"SAMSUNG BOX\",\"description\":\"Purchase of Product #16\"}', '9000eb59-d676-484d-8292-001aeacbdab9', '2019-11-27 09:05:11', '2019-11-27 09:05:11');
INSERT INTO `transactions` VALUES (2141, 'App\\Models\\User', 21, 31, 'deposit', 10000, 1, NULL, 'becaf6b1-868a-494c-9e70-5bac33b0b748', '2019-11-27 09:05:25', '2019-11-27 09:05:25');
INSERT INTO `transactions` VALUES (2151, 'App\\Models\\User', 21, 31, 'withdraw', -1500, 1, '{\"title\":\"SAMSUNG BOX\",\"description\":\"Purchase of Product #16\"}', '4e315855-1326-4342-b989-687662a53994', '2019-11-27 09:17:00', '2019-11-27 09:17:00');
INSERT INTO `transactions` VALUES (2161, 'App\\Models\\Box', 16, 12, 'deposit', 1500, 1, '{\"title\":\"SAMSUNG BOX\",\"description\":\"Purchase of Product #16\"}', 'd88be763-caf7-43ff-a082-6eb2f0443c0e', '2019-11-27 09:17:00', '2019-11-27 09:17:00');
INSERT INTO `transactions` VALUES (2171, 'App\\Models\\User', 21, 31, 'withdraw', -1500, 1, '{\"title\":\"SAMSUNG BOX\",\"description\":\"Purchase of Product #16\"}', 'dd3a40f8-0069-4a96-9635-70da887cf5c3', '2019-11-27 09:19:08', '2019-11-27 09:19:08');
INSERT INTO `transactions` VALUES (2181, 'App\\Models\\Box', 16, 12, 'deposit', 1500, 1, '{\"title\":\"SAMSUNG BOX\",\"description\":\"Purchase of Product #16\"}', '09f66425-edac-4926-81a2-84ce83dc826e', '2019-11-27 09:19:08', '2019-11-27 09:19:08');
INSERT INTO `transactions` VALUES (2191, 'App\\Models\\User', 21, 31, 'withdraw', -1500, 1, '{\"title\":\"SAMSUNG BOX\",\"description\":\"Purchase of Product #16\"}', 'f8e66312-474e-48a6-b741-31cbd7db0d5c', '2019-11-27 10:35:25', '2019-11-27 10:35:25');
INSERT INTO `transactions` VALUES (2201, 'App\\Models\\Box', 16, 12, 'deposit', 1500, 1, '{\"title\":\"SAMSUNG BOX\",\"description\":\"Purchase of Product #16\"}', 'e64700f2-5b35-460e-a7df-e8fba0a19176', '2019-11-27 10:35:25', '2019-11-27 10:35:25');
INSERT INTO `transactions` VALUES (2211, 'App\\Models\\User', 21, 31, 'deposit', 10000, 1, NULL, 'bcc0890d-a589-4a95-9a47-9c39809c2741', '2019-11-27 10:35:37', '2019-11-27 10:35:37');
INSERT INTO `transactions` VALUES (2221, 'App\\Models\\User', 21, 31, 'withdraw', -4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', 'c6f3c1be-dc06-4a13-9115-18eb03ac26b1', '2019-11-28 17:43:01', '2019-11-28 17:43:01');
INSERT INTO `transactions` VALUES (2231, 'App\\Models\\Box', 1, 5, 'deposit', 4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', '899f88df-fb54-4b98-b544-07df6119e072', '2019-11-28 17:43:01', '2019-11-28 17:43:01');
INSERT INTO `transactions` VALUES (2241, 'App\\Models\\User', 21, 31, 'withdraw', -4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', 'd212af09-10e8-4676-8dc9-b610a0399fd1', '2019-11-28 17:43:14', '2019-11-28 17:43:14');
INSERT INTO `transactions` VALUES (2251, 'App\\Models\\Box', 1, 5, 'deposit', 4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', '894450a5-a66d-4f60-bb6e-c088ee2abca0', '2019-11-28 17:43:14', '2019-11-28 17:43:14');
INSERT INTO `transactions` VALUES (2261, 'App\\Models\\User', 21, 31, 'withdraw', -4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', '38f89d93-06dc-4d62-9d01-a6950038fef1', '2019-11-28 17:43:28', '2019-11-28 17:43:28');
INSERT INTO `transactions` VALUES (2271, 'App\\Models\\Box', 1, 5, 'deposit', 4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', '333c4fb9-6eca-4521-bbc5-26ccab96c5a1', '2019-11-28 17:43:28', '2019-11-28 17:43:28');
INSERT INTO `transactions` VALUES (2281, 'App\\Models\\User', 21, 31, 'withdraw', -4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', '07b618ce-4186-478c-9fc0-d3b291c612e4', '2019-11-28 17:43:37', '2019-11-28 17:43:37');
INSERT INTO `transactions` VALUES (2291, 'App\\Models\\Box', 1, 5, 'deposit', 4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', 'af1e3e0b-be0f-41c8-9c8e-11de831c31de', '2019-11-28 17:43:37', '2019-11-28 17:43:37');
INSERT INTO `transactions` VALUES (2301, 'App\\Models\\User', 21, 31, 'withdraw', -4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', 'e7a9596a-9cb6-4abf-9f4d-86a67b11727b', '2019-11-28 17:43:49', '2019-11-28 17:43:49');
INSERT INTO `transactions` VALUES (2311, 'App\\Models\\Box', 1, 5, 'deposit', 4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', '00cddcd8-7dc1-4dec-8165-8f3d63713c14', '2019-11-28 17:43:49', '2019-11-28 17:43:49');
INSERT INTO `transactions` VALUES (2321, 'App\\Models\\User', 21, 31, 'deposit', 2500, 1, NULL, '04c4c8d7-7168-42e0-b26f-32c05a9d24e7', '2019-11-28 17:44:28', '2019-11-28 17:44:28');
INSERT INTO `transactions` VALUES (2331, 'App\\Models\\User', 21, 31, 'deposit', 2500, 1, NULL, '7ea1d4a0-4f2c-43b0-8142-863be364c8bf', '2019-11-28 17:44:29', '2019-11-28 17:44:29');
INSERT INTO `transactions` VALUES (2341, 'App\\Models\\User', 21, 31, 'deposit', 2500, 1, NULL, '91ae53e7-5691-456a-98c2-343d71e01c53', '2019-11-28 17:44:30', '2019-11-28 17:44:30');
INSERT INTO `transactions` VALUES (2351, 'App\\Models\\User', 21, 31, 'withdraw', -5900, 1, '{\"title\":\"Bags & Handbags eBox\",\"description\":\"Purchase of Product #14\"}', 'f0dcef0f-4bcf-40bb-8a73-8622e67e20f8', '2019-11-28 17:58:03', '2019-11-28 17:58:03');
INSERT INTO `transactions` VALUES (2361, 'App\\Models\\Box', 14, 10, 'deposit', 5900, 1, '{\"title\":\"Bags & Handbags eBox\",\"description\":\"Purchase of Product #14\"}', '55c6e7d4-50e4-4456-8a89-d7db9ac69ff0', '2019-11-28 17:58:03', '2019-11-28 17:58:03');
INSERT INTO `transactions` VALUES (2371, 'App\\Models\\User', 21, 31, 'withdraw', -1500, 1, '{\"title\":\"SAMSUNG BOX\",\"description\":\"Purchase of Product #16\"}', '70c88062-0d9d-498a-95d0-2426cfc5ec17', '2019-11-28 19:54:52', '2019-11-28 19:54:52');
INSERT INTO `transactions` VALUES (2381, 'App\\Models\\Box', 16, 12, 'deposit', 1500, 1, '{\"title\":\"SAMSUNG BOX\",\"description\":\"Purchase of Product #16\"}', '59a7d92f-d412-4e6a-84ae-add9869e2c77', '2019-11-28 19:54:52', '2019-11-28 19:54:52');
INSERT INTO `transactions` VALUES (2391, 'App\\Models\\User', 21, 31, 'withdraw', -1500, 1, '{\"title\":\"SAMSUNG BOX\",\"description\":\"Purchase of Product #16\"}', 'cdc1f273-9a8f-48cb-9b99-eab4aa466ee8', '2019-11-29 16:47:36', '2019-11-29 16:47:36');
INSERT INTO `transactions` VALUES (2401, 'App\\Models\\Box', 16, 12, 'deposit', 1500, 1, '{\"title\":\"SAMSUNG BOX\",\"description\":\"Purchase of Product #16\"}', '7735da89-a992-4f43-8552-6ab93cc8f808', '2019-11-29 16:47:36', '2019-11-29 16:47:36');
INSERT INTO `transactions` VALUES (2411, 'App\\Models\\User', 1, 1, 'deposit', 1000, 1, NULL, 'a9e57dd1-2da4-432d-9800-034b116360b4', '2019-11-30 10:28:22', '2019-11-30 10:28:22');
INSERT INTO `transactions` VALUES (2421, 'App\\Models\\User', 21, 31, 'withdraw', -1500, 1, '{\"title\":\"SAMSUNG BOX\",\"description\":\"Purchase of Product #16\"}', '773d67d4-1c4f-43e7-bbec-6330b4c02768', '2019-11-30 20:04:19', '2019-11-30 20:04:19');
INSERT INTO `transactions` VALUES (2431, 'App\\Models\\Box', 16, 12, 'deposit', 1500, 1, '{\"title\":\"SAMSUNG BOX\",\"description\":\"Purchase of Product #16\"}', 'c456c614-09ac-4b27-88f3-8b336cf798ed', '2019-11-30 20:04:19', '2019-11-30 20:04:19');
INSERT INTO `transactions` VALUES (2441, 'App\\Models\\User', 21, 31, 'withdraw', -1500, 1, '{\"title\":\"SAMSUNG BOX\",\"description\":\"Purchase of Product #16\"}', 'b9166bd9-3cac-4af4-b8ed-28a0485f8efa', '2019-11-30 20:05:03', '2019-11-30 20:05:03');
INSERT INTO `transactions` VALUES (2451, 'App\\Models\\Box', 16, 12, 'deposit', 1500, 1, '{\"title\":\"SAMSUNG BOX\",\"description\":\"Purchase of Product #16\"}', 'a1beb6fe-ed3b-4115-9444-21d2278c44e0', '2019-11-30 20:05:03', '2019-11-30 20:05:03');
INSERT INTO `transactions` VALUES (2461, 'App\\Models\\User', 21, 31, 'withdraw', -1500, 1, '{\"title\":\"SAMSUNG BOX\",\"description\":\"Purchase of Product #16\"}', 'f59dc83d-8ba3-4a6d-87df-ad331c2e1812', '2019-11-30 20:05:14', '2019-11-30 20:05:14');
INSERT INTO `transactions` VALUES (2471, 'App\\Models\\Box', 16, 12, 'deposit', 1500, 1, '{\"title\":\"SAMSUNG BOX\",\"description\":\"Purchase of Product #16\"}', '339ba78b-f09b-45a8-8df7-cf17676838d8', '2019-11-30 20:05:14', '2019-11-30 20:05:14');
INSERT INTO `transactions` VALUES (2481, 'App\\Models\\User', 21, 31, 'deposit', 500, 1, NULL, '43424252-88a3-4409-8bdf-45d00e494b57', '2019-11-30 20:05:29', '2019-11-30 20:05:29');
INSERT INTO `transactions` VALUES (2491, 'App\\Models\\User', 21, 31, 'deposit', 90000, 1, NULL, 'dcdbe3d8-bd27-43de-a9cb-40a8dbe12e8e', '2019-11-30 20:05:32', '2019-11-30 20:05:32');
INSERT INTO `transactions` VALUES (2501, 'App\\Models\\User', 21, 31, 'deposit', 22200, 1, NULL, '9880bf4b-051a-4920-80b2-28cfdead2ed1', '2019-11-30 20:05:34', '2019-11-30 20:05:34');
INSERT INTO `transactions` VALUES (2511, 'App\\Models\\User', 41, 51, 'deposit', 4444400, 1, NULL, '9579f77c-7923-4bd0-9a45-eca687f45599', '2019-12-01 18:13:28', '2019-12-01 18:13:28');
INSERT INTO `transactions` VALUES (2521, 'App\\Models\\User', 41, 51, 'withdraw', -5900, 1, '{\"title\":\"Bags & Handbags eBox\",\"description\":\"Purchase of Product #14\"}', 'd6becb3b-3c5a-4611-9d02-fb39fde410f9', '2019-12-01 18:13:37', '2019-12-01 18:13:37');
INSERT INTO `transactions` VALUES (2531, 'App\\Models\\Box', 14, 10, 'deposit', 5900, 1, '{\"title\":\"Bags & Handbags eBox\",\"description\":\"Purchase of Product #14\"}', '7818332e-4784-4baf-869b-68fa8cfc04fb', '2019-12-01 18:13:37', '2019-12-01 18:13:37');
INSERT INTO `transactions` VALUES (2541, 'App\\Models\\User', 41, 51, 'deposit', 3000, 1, NULL, '42b343e8-1f87-475e-ad52-9ba8311612dd', '2019-12-01 18:13:52', '2019-12-01 18:13:52');
INSERT INTO `transactions` VALUES (2551, 'App\\Models\\User', 41, 51, 'withdraw', -5900, 1, '{\"title\":\"Bags & Handbags eBox\",\"description\":\"Purchase of Product #14\"}', 'b6a482ba-9ae0-4118-ab00-06e1f6bb5b65', '2019-12-01 18:13:55', '2019-12-01 18:13:55');
INSERT INTO `transactions` VALUES (2561, 'App\\Models\\Box', 14, 10, 'deposit', 5900, 1, '{\"title\":\"Bags & Handbags eBox\",\"description\":\"Purchase of Product #14\"}', '5ec1e913-2650-44f0-b580-d33b111b1401', '2019-12-01 18:13:55', '2019-12-01 18:13:55');
INSERT INTO `transactions` VALUES (2571, 'App\\Models\\User', 1, 1, 'withdraw', -1500, 1, '{\"title\":\"SAMSUNG BOX\",\"description\":\"Purchase of Product #16\"}', '4be9c477-c720-42ed-94bb-24a3b727ad38', '2019-12-01 18:39:44', '2019-12-01 18:39:44');
INSERT INTO `transactions` VALUES (2581, 'App\\Models\\Box', 16, 12, 'deposit', 1500, 1, '{\"title\":\"SAMSUNG BOX\",\"description\":\"Purchase of Product #16\"}', 'a7398a15-58da-49ea-891b-77dc224fe56f', '2019-12-01 18:39:44', '2019-12-01 18:39:44');
INSERT INTO `transactions` VALUES (2591, 'App\\Models\\User', 1, 1, 'withdraw', -1500, 1, '{\"title\":\"SAMSUNG BOX\",\"description\":\"Purchase of Product #16\"}', '4a16202f-6c2f-404d-99af-652101c82c5c', '2019-12-01 18:43:17', '2019-12-01 18:43:17');
INSERT INTO `transactions` VALUES (2601, 'App\\Models\\Box', 16, 12, 'deposit', 1500, 1, '{\"title\":\"SAMSUNG BOX\",\"description\":\"Purchase of Product #16\"}', '4b236558-2603-4a19-8985-0325c2ab005d', '2019-12-01 18:43:17', '2019-12-01 18:43:17');
INSERT INTO `transactions` VALUES (2611, 'App\\Models\\User', 41, 51, 'withdraw', -5900, 1, '{\"title\":\"Bags & Handbags eBox\",\"description\":\"Purchase of Product #14\"}', '2d91ace8-d492-497c-9942-4fe611a6f7ff', '2019-12-01 18:51:52', '2019-12-01 18:51:52');
INSERT INTO `transactions` VALUES (2621, 'App\\Models\\Box', 14, 10, 'deposit', 5900, 1, '{\"title\":\"Bags & Handbags eBox\",\"description\":\"Purchase of Product #14\"}', 'e9e43ea8-8f4e-47f8-ac92-4ea1fc95fb2c', '2019-12-01 18:51:52', '2019-12-01 18:51:52');
INSERT INTO `transactions` VALUES (2631, 'App\\Models\\User', 1, 1, 'withdraw', -4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', '098518dc-cae2-4f1a-9977-7847d3bfd312', '2019-12-01 19:51:58', '2019-12-01 19:51:58');
INSERT INTO `transactions` VALUES (2641, 'App\\Models\\Box', 1, 5, 'deposit', 4999, 1, '{\"title\":\"Apple Selection eBox\\r\\n\",\"description\":\"Purchase of Product #1\"}', '6ea8aec5-4087-4b0c-b7c3-f0633e547df5', '2019-12-01 19:51:58', '2019-12-01 19:51:58');
COMMIT;

-- ----------------------------
-- Table structure for transfers
-- ----------------------------
DROP TABLE IF EXISTS `transfers`;
CREATE TABLE `transfers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `from_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `from_id` bigint(20) unsigned NOT NULL,
  `to_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `to_id` bigint(20) unsigned NOT NULL,
  `status` enum('exchange','transfer','paid','refund','gift') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'transfer',
  `status_last` enum('exchange','transfer','paid','refund','gift') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deposit_id` int(10) unsigned NOT NULL,
  `withdraw_id` int(10) unsigned NOT NULL,
  `discount` bigint(20) NOT NULL DEFAULT '0',
  `fee` bigint(20) NOT NULL DEFAULT '0',
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `transfers_uuid_unique` (`uuid`),
  KEY `transfers_from_type_from_id_index` (`from_type`,`from_id`),
  KEY `transfers_to_type_to_id_index` (`to_type`,`to_id`),
  KEY `transfers_deposit_id_foreign` (`deposit_id`),
  KEY `transfers_withdraw_id_foreign` (`withdraw_id`),
  CONSTRAINT `transfers_deposit_id_foreign` FOREIGN KEY (`deposit_id`) REFERENCES `transactions` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `transfers_withdraw_id_foreign` FOREIGN KEY (`withdraw_id`) REFERENCES `transactions` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=781 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of transfers
-- ----------------------------
BEGIN;
INSERT INTO `transfers` VALUES (1, 'Bavix\\Wallet\\Models\\Wallet', 1, 'App\\Models\\Box', 14, 'paid', NULL, 4, 3, 0, 0, '3dac1bb2-168e-49da-b432-0ba8fb98eae6', '2019-11-17 15:26:55', '2019-11-17 15:26:55');
INSERT INTO `transfers` VALUES (2, 'Bavix\\Wallet\\Models\\Wallet', 1, 'App\\Models\\Box', 1, 'paid', NULL, 8, 7, 0, 0, 'b41a7aef-f6c8-4910-a03e-58e98874cacf', '2019-11-19 12:17:26', '2019-11-19 12:17:26');
INSERT INTO `transfers` VALUES (3, 'Bavix\\Wallet\\Models\\Wallet', 1, 'App\\Models\\Box', 1, 'paid', NULL, 10, 9, 0, 0, '116eb73b-d965-47c2-9a23-04d31fe622ec', '2019-11-19 12:17:40', '2019-11-19 12:17:40');
INSERT INTO `transfers` VALUES (4, 'Bavix\\Wallet\\Models\\Wallet', 11, 'App\\Models\\Box', 1, 'paid', NULL, 14, 13, 0, 0, '47c6ea99-442a-4a49-b67b-909366e36ed5', '2019-11-19 12:35:49', '2019-11-19 12:35:49');
INSERT INTO `transfers` VALUES (5, 'Bavix\\Wallet\\Models\\Wallet', 11, 'App\\Models\\Box', 1, 'paid', NULL, 16, 15, 0, 0, 'f3cdb35b-dffd-4d3f-b29c-a58f0bcc49ec', '2019-11-19 12:36:09', '2019-11-19 12:36:09');
INSERT INTO `transfers` VALUES (6, 'Bavix\\Wallet\\Models\\Wallet', 11, 'App\\Models\\Box', 14, 'paid', NULL, 25, 24, 0, 0, 'c39102ff-fc87-432e-bc7e-06b2dea5f9a7', '2019-11-19 13:04:49', '2019-11-19 13:04:49');
INSERT INTO `transfers` VALUES (7, 'Bavix\\Wallet\\Models\\Wallet', 11, 'App\\Models\\Box', 14, 'paid', NULL, 27, 26, 0, 0, '9a740c72-c053-4838-b7e3-cf97aad60953', '2019-11-19 13:05:32', '2019-11-19 13:05:32');
INSERT INTO `transfers` VALUES (8, 'Bavix\\Wallet\\Models\\Wallet', 11, 'App\\Models\\Box', 14, 'paid', NULL, 29, 28, 0, 0, '089e19e0-fcf7-4af6-a16b-89e1b2e89c0e', '2019-11-19 13:05:43', '2019-11-19 13:05:43');
INSERT INTO `transfers` VALUES (9, 'Bavix\\Wallet\\Models\\Wallet', 11, 'App\\Models\\Box', 14, 'paid', NULL, 31, 30, 0, 0, '9b986bb1-6399-4760-9996-741736325293', '2019-11-19 13:15:32', '2019-11-19 13:15:32');
INSERT INTO `transfers` VALUES (10, 'Bavix\\Wallet\\Models\\Wallet', 1, 'App\\Models\\Box', 1, 'paid', NULL, 34, 33, 0, 0, '06e64b3d-5205-4df5-aa06-092ed8ad1a4f', '2019-11-19 13:25:47', '2019-11-19 13:25:47');
INSERT INTO `transfers` VALUES (11, 'Bavix\\Wallet\\Models\\Wallet', 1, 'App\\Models\\Box', 1, 'paid', NULL, 36, 35, 0, 0, 'f1f4b6f0-151a-4c31-a886-e818b9d013aa', '2019-11-19 13:26:01', '2019-11-19 13:26:01');
INSERT INTO `transfers` VALUES (12, 'Bavix\\Wallet\\Models\\Wallet', 1, 'App\\Models\\Box', 1, 'paid', NULL, 38, 37, 0, 0, 'f0102c7b-ca8c-4f2f-b0b4-956246ad0027', '2019-11-19 13:26:13', '2019-11-19 13:26:13');
INSERT INTO `transfers` VALUES (13, 'Bavix\\Wallet\\Models\\Wallet', 1, 'App\\Models\\Box', 1, 'paid', NULL, 40, 39, 0, 0, '395a0bef-69e9-4573-a6b5-46ed80834f89', '2019-11-19 13:26:27', '2019-11-19 13:26:27');
INSERT INTO `transfers` VALUES (14, 'Bavix\\Wallet\\Models\\Wallet', 1, 'App\\Models\\Box', 1, 'paid', NULL, 42, 41, 0, 0, 'b6daca4d-1fa0-4ef6-a89d-a1b918a211f9', '2019-11-19 13:26:47', '2019-11-19 13:26:47');
INSERT INTO `transfers` VALUES (15, 'Bavix\\Wallet\\Models\\Wallet', 1, 'App\\Models\\Box', 1, 'paid', NULL, 44, 43, 0, 0, '753a2fa3-c70b-4e8e-96bf-a31f974a60c7', '2019-11-19 13:27:14', '2019-11-19 13:27:14');
INSERT INTO `transfers` VALUES (16, 'Bavix\\Wallet\\Models\\Wallet', 1, 'App\\Models\\Box', 1, 'paid', NULL, 46, 45, 0, 0, '96a35097-f542-4ec4-9b5b-548a7d9d2728', '2019-11-19 13:27:34', '2019-11-19 13:27:34');
INSERT INTO `transfers` VALUES (17, 'Bavix\\Wallet\\Models\\Wallet', 1, 'App\\Models\\Box', 1, 'paid', NULL, 48, 47, 0, 0, 'b0e19dee-b0fd-4a5b-9577-22ff13092204', '2019-11-19 13:27:44', '2019-11-19 13:27:44');
INSERT INTO `transfers` VALUES (18, 'Bavix\\Wallet\\Models\\Wallet', 1, 'App\\Models\\Box', 1, 'paid', NULL, 50, 49, 0, 0, '9222a492-10d5-4fa3-af89-61f984f3755b', '2019-11-19 13:27:55', '2019-11-19 13:27:55');
INSERT INTO `transfers` VALUES (19, 'Bavix\\Wallet\\Models\\Wallet', 1, 'App\\Models\\Box', 1, 'paid', NULL, 52, 51, 0, 0, '4429904d-62c8-4043-a1bf-24e0f3373766', '2019-11-19 13:28:07', '2019-11-19 13:28:07');
INSERT INTO `transfers` VALUES (20, 'Bavix\\Wallet\\Models\\Wallet', 1, 'App\\Models\\Box', 1, 'paid', NULL, 54, 53, 0, 0, '2ec6f419-a1cb-4479-beec-5eb81beb256b', '2019-11-19 13:28:20', '2019-11-19 13:28:20');
INSERT INTO `transfers` VALUES (21, 'Bavix\\Wallet\\Models\\Wallet', 1, 'App\\Models\\Box', 1, 'paid', NULL, 56, 55, 0, 0, 'c12c9a31-82e0-4f2d-9cad-61cac7a879c8', '2019-11-19 13:28:40', '2019-11-19 13:28:40');
INSERT INTO `transfers` VALUES (22, 'Bavix\\Wallet\\Models\\Wallet', 11, 'App\\Models\\Box', 1, 'paid', NULL, 58, 57, 0, 0, 'c4399bd3-768e-480e-ac94-d261eb462591', '2019-11-19 13:31:43', '2019-11-19 13:31:43');
INSERT INTO `transfers` VALUES (23, 'Bavix\\Wallet\\Models\\Wallet', 11, 'App\\Models\\Box', 1, 'paid', NULL, 60, 59, 0, 0, '515d21c8-6337-4de8-bf06-eb0f720055f8', '2019-11-19 13:31:56', '2019-11-19 13:31:56');
INSERT INTO `transfers` VALUES (24, 'Bavix\\Wallet\\Models\\Wallet', 11, 'App\\Models\\Box', 1, 'paid', NULL, 62, 61, 0, 0, '588ce2bd-ab0a-473f-9e17-e1e8ce027973', '2019-11-19 13:32:10', '2019-11-19 13:32:10');
INSERT INTO `transfers` VALUES (25, 'Bavix\\Wallet\\Models\\Wallet', 11, 'App\\Models\\Box', 1, 'paid', NULL, 64, 63, 0, 0, '3c6c2c3a-f716-43f1-98ee-7cc0ea918dfb', '2019-11-19 13:32:24', '2019-11-19 13:32:24');
INSERT INTO `transfers` VALUES (26, 'Bavix\\Wallet\\Models\\Wallet', 11, 'App\\Models\\Box', 1, 'paid', NULL, 66, 65, 0, 0, '6ddc9bc0-427f-4634-b160-eccae9a78ebe', '2019-11-19 13:32:39', '2019-11-19 13:32:39');
INSERT INTO `transfers` VALUES (27, 'Bavix\\Wallet\\Models\\Wallet', 11, 'App\\Models\\Box', 1, 'paid', NULL, 68, 67, 0, 0, '93d1f217-03e0-4ed2-84e0-2aff4840e041', '2019-11-19 13:32:50', '2019-11-19 13:32:50');
INSERT INTO `transfers` VALUES (28, 'Bavix\\Wallet\\Models\\Wallet', 11, 'App\\Models\\Box', 1, 'paid', NULL, 70, 69, 0, 0, '46773692-2507-4ebe-81ed-c6cfb0d70d8f', '2019-11-19 13:32:50', '2019-11-19 13:32:50');
INSERT INTO `transfers` VALUES (29, 'Bavix\\Wallet\\Models\\Wallet', 11, 'App\\Models\\Box', 1, 'paid', NULL, 72, 71, 0, 0, 'ea28bd43-8f7f-464c-b36c-7da31aa23ccb', '2019-11-19 13:33:00', '2019-11-19 13:33:00');
INSERT INTO `transfers` VALUES (30, 'Bavix\\Wallet\\Models\\Wallet', 11, 'App\\Models\\Box', 1, 'paid', NULL, 74, 73, 0, 0, 'ccee9c76-1756-4536-a4aa-0f811fe7c44d', '2019-11-19 13:33:00', '2019-11-19 13:33:00');
INSERT INTO `transfers` VALUES (31, 'Bavix\\Wallet\\Models\\Wallet', 11, 'App\\Models\\Box', 1, 'paid', NULL, 76, 75, 0, 0, 'e866c975-92f2-490c-925b-fbefe814d385', '2019-11-19 13:33:01', '2019-11-19 13:33:01');
INSERT INTO `transfers` VALUES (32, 'Bavix\\Wallet\\Models\\Wallet', 11, 'App\\Models\\Box', 1, 'paid', NULL, 78, 77, 0, 0, '400d3a8d-6263-44c2-a300-c06c79263993', '2019-11-19 13:33:02', '2019-11-19 13:33:02');
INSERT INTO `transfers` VALUES (33, 'Bavix\\Wallet\\Models\\Wallet', 11, 'App\\Models\\Box', 1, 'paid', NULL, 80, 79, 0, 0, '6736ef96-351a-414c-be4f-9a5857097ff2', '2019-11-19 13:33:03', '2019-11-19 13:33:03');
INSERT INTO `transfers` VALUES (34, 'Bavix\\Wallet\\Models\\Wallet', 11, 'App\\Models\\Box', 1, 'paid', NULL, 82, 81, 0, 0, '9a13a7e7-eaae-4072-8007-4086f8dd1aeb', '2019-11-19 13:33:04', '2019-11-19 13:33:04');
INSERT INTO `transfers` VALUES (35, 'Bavix\\Wallet\\Models\\Wallet', 11, 'App\\Models\\Box', 1, 'paid', NULL, 84, 83, 0, 0, '45189a40-404e-4edc-9e31-3754c982ebce', '2019-11-19 13:33:04', '2019-11-19 13:33:04');
INSERT INTO `transfers` VALUES (36, 'Bavix\\Wallet\\Models\\Wallet', 11, 'App\\Models\\Box', 1, 'paid', NULL, 86, 85, 0, 0, 'bd422274-3a8d-4690-8f93-79ed460c5852', '2019-11-19 13:33:05', '2019-11-19 13:33:05');
INSERT INTO `transfers` VALUES (37, 'Bavix\\Wallet\\Models\\Wallet', 11, 'App\\Models\\Box', 1, 'paid', NULL, 88, 87, 0, 0, 'bbf9b7c0-9be6-4efe-a91d-f3d2b1e5dceb', '2019-11-19 13:33:05', '2019-11-19 13:33:05');
INSERT INTO `transfers` VALUES (38, 'Bavix\\Wallet\\Models\\Wallet', 1, 'App\\Models\\Box', 1, 'paid', NULL, 90, 89, 0, 0, '7b2a0224-6ac9-4a90-ae46-c92d93173497', '2019-11-19 13:33:35', '2019-11-19 13:33:35');
INSERT INTO `transfers` VALUES (39, 'Bavix\\Wallet\\Models\\Wallet', 1, 'App\\Models\\Box', 1, 'paid', NULL, 92, 91, 0, 0, '6dced40b-1c30-42d1-8234-5eff9087c54f', '2019-11-19 13:33:45', '2019-11-19 13:33:45');
INSERT INTO `transfers` VALUES (40, 'Bavix\\Wallet\\Models\\Wallet', 1, 'App\\Models\\Box', 1, 'paid', NULL, 94, 93, 0, 0, '4fdea8a9-a327-4f87-82b6-3a04b43708c4', '2019-11-19 13:33:46', '2019-11-19 13:33:46');
INSERT INTO `transfers` VALUES (41, 'Bavix\\Wallet\\Models\\Wallet', 1, 'App\\Models\\Box', 1, 'paid', NULL, 96, 95, 0, 0, '92ef1454-0a62-464c-98c2-7f90eca803e4', '2019-11-19 13:34:01', '2019-11-19 13:34:01');
INSERT INTO `transfers` VALUES (42, 'Bavix\\Wallet\\Models\\Wallet', 1, 'App\\Models\\Box', 1, 'paid', NULL, 98, 97, 0, 0, '79346494-4b20-47eb-a161-6d5d802db2a5', '2019-11-19 13:34:02', '2019-11-19 13:34:02');
INSERT INTO `transfers` VALUES (43, 'Bavix\\Wallet\\Models\\Wallet', 1, 'App\\Models\\Box', 1, 'paid', NULL, 100, 99, 0, 0, '8599ab82-d49e-480e-a7ab-910260fc7592', '2019-11-19 13:34:03', '2019-11-19 13:34:03');
INSERT INTO `transfers` VALUES (44, 'Bavix\\Wallet\\Models\\Wallet', 1, 'App\\Models\\Box', 1, 'paid', NULL, 102, 101, 0, 0, 'b6a9c754-78a5-46aa-b50c-0d52d1dab351', '2019-11-19 13:34:04', '2019-11-19 13:34:04');
INSERT INTO `transfers` VALUES (45, 'Bavix\\Wallet\\Models\\Wallet', 1, 'App\\Models\\Box', 1, 'paid', NULL, 104, 103, 0, 0, '3123ce28-b3e5-4908-86da-a3b68028fa11', '2019-11-19 13:34:06', '2019-11-19 13:34:06');
INSERT INTO `transfers` VALUES (46, 'Bavix\\Wallet\\Models\\Wallet', 1, 'App\\Models\\Box', 1, 'paid', NULL, 106, 105, 0, 0, '1152ee7e-8238-4e3b-9426-36b7ca366d15', '2019-11-19 13:34:07', '2019-11-19 13:34:07');
INSERT INTO `transfers` VALUES (47, 'Bavix\\Wallet\\Models\\Wallet', 1, 'App\\Models\\Box', 1, 'paid', NULL, 108, 107, 0, 0, '1fc3683a-e962-4f0e-98e3-926ea3c1f791', '2019-11-19 13:34:08', '2019-11-19 13:34:08');
INSERT INTO `transfers` VALUES (48, 'Bavix\\Wallet\\Models\\Wallet', 1, 'App\\Models\\Box', 1, 'paid', NULL, 110, 109, 0, 0, '8dc49ff3-43b3-4daa-9d9c-f5332c23c998', '2019-11-19 13:34:09', '2019-11-19 13:34:09');
INSERT INTO `transfers` VALUES (49, 'Bavix\\Wallet\\Models\\Wallet', 1, 'App\\Models\\Box', 1, 'paid', NULL, 136, 135, 0, 0, '4bd65e65-91ac-46a0-89ac-117c92f13b80', '2019-11-19 13:40:20', '2019-11-19 13:40:20');
INSERT INTO `transfers` VALUES (50, 'Bavix\\Wallet\\Models\\Wallet', 1, 'App\\Models\\Box', 1, 'paid', NULL, 138, 137, 0, 0, '62e94aa1-8877-4cd3-a0aa-b501afd30c1d', '2019-11-19 13:40:34', '2019-11-19 13:40:34');
INSERT INTO `transfers` VALUES (51, 'Bavix\\Wallet\\Models\\Wallet', 1, 'App\\Models\\Box', 1, 'paid', NULL, 140, 139, 0, 0, '3ed9ff5b-345b-4c03-b840-108743f46973', '2019-11-19 13:40:36', '2019-11-19 13:40:36');
INSERT INTO `transfers` VALUES (52, 'Bavix\\Wallet\\Models\\Wallet', 1, 'App\\Models\\Box', 1, 'paid', NULL, 142, 141, 0, 0, '359b89db-5b33-47cb-8f50-c24709f5c2c0', '2019-11-19 13:44:17', '2019-11-19 13:44:17');
INSERT INTO `transfers` VALUES (53, 'Bavix\\Wallet\\Models\\Wallet', 1, 'App\\Models\\Box', 1, 'paid', NULL, 144, 143, 0, 0, '1fb9032e-a6ad-4b43-b3b7-5d776b95b30a', '2019-11-19 13:44:19', '2019-11-19 13:44:19');
INSERT INTO `transfers` VALUES (54, 'Bavix\\Wallet\\Models\\Wallet', 1, 'App\\Models\\Box', 1, 'paid', NULL, 146, 145, 0, 0, '948b01d7-b9e1-4cab-9893-0756f46dee93', '2019-11-19 13:44:22', '2019-11-19 13:44:22');
INSERT INTO `transfers` VALUES (55, 'Bavix\\Wallet\\Models\\Wallet', 1, 'App\\Models\\Box', 1, 'paid', NULL, 148, 147, 0, 0, 'd0a6bac8-8683-4e4e-bce1-d98b8b79f0c9', '2019-11-19 13:44:24', '2019-11-19 13:44:24');
INSERT INTO `transfers` VALUES (56, 'Bavix\\Wallet\\Models\\Wallet', 1, 'App\\Models\\Box', 1, 'paid', NULL, 150, 149, 0, 0, '30ee8f87-f4b9-4c21-ae41-4427a8cf1f6b', '2019-11-19 13:44:25', '2019-11-19 13:44:25');
INSERT INTO `transfers` VALUES (57, 'Bavix\\Wallet\\Models\\Wallet', 1, 'App\\Models\\Box', 1, 'paid', NULL, 152, 151, 0, 0, '4b8898c3-def6-4bf2-87ca-9fecbd1625fa', '2019-11-19 13:44:26', '2019-11-19 13:44:26');
INSERT INTO `transfers` VALUES (58, 'Bavix\\Wallet\\Models\\Wallet', 1, 'App\\Models\\Box', 1, 'paid', NULL, 154, 153, 0, 0, 'c6cb5ceb-982f-48e1-9765-5f0002d51a3c', '2019-11-19 13:44:28', '2019-11-19 13:44:28');
INSERT INTO `transfers` VALUES (59, 'Bavix\\Wallet\\Models\\Wallet', 1, 'App\\Models\\Box', 1, 'paid', NULL, 166, 165, 0, 0, '5994c979-8ab0-4c2c-a896-806d37d2e81d', '2019-11-19 13:52:34', '2019-11-19 13:52:34');
INSERT INTO `transfers` VALUES (60, 'Bavix\\Wallet\\Models\\Wallet', 1, 'App\\Models\\Box', 1, 'paid', NULL, 168, 167, 0, 0, 'e7f78369-70c4-4245-8cba-5dcd8fba14ff', '2019-11-19 13:52:44', '2019-11-19 13:52:44');
INSERT INTO `transfers` VALUES (61, 'Bavix\\Wallet\\Models\\Wallet', 1, 'App\\Models\\Box', 1, 'paid', NULL, 172, 171, 0, 0, '4345c5f3-c2ec-4425-b821-2538e6307c2a', '2019-11-19 13:53:01', '2019-11-19 13:53:01');
INSERT INTO `transfers` VALUES (62, 'Bavix\\Wallet\\Models\\Wallet', 1, 'App\\Models\\Box', 1, 'paid', NULL, 174, 173, 0, 0, 'b164a858-4254-4828-a397-200a98db35b7', '2019-11-19 13:54:26', '2019-11-19 13:54:26');
INSERT INTO `transfers` VALUES (63, 'Bavix\\Wallet\\Models\\Wallet', 1, 'App\\Models\\Box', 1, 'paid', NULL, 177, 176, 0, 0, '79d4813e-0866-4bc8-92d1-914cd13e9329', '2019-11-19 13:58:22', '2019-11-19 13:58:22');
INSERT INTO `transfers` VALUES (64, 'Bavix\\Wallet\\Models\\Wallet', 1, 'App\\Models\\Box', 1, 'paid', NULL, 179, 178, 0, 0, 'b8db39b0-cc0b-41cb-a48e-1832ea0f73d4', '2019-11-19 13:58:33', '2019-11-19 13:58:33');
INSERT INTO `transfers` VALUES (65, 'Bavix\\Wallet\\Models\\Wallet', 1, 'App\\Models\\Box', 1, 'paid', NULL, 181, 180, 0, 0, '35fb95d6-15b8-4326-a595-768c97db2875', '2019-11-19 13:58:52', '2019-11-19 13:58:52');
INSERT INTO `transfers` VALUES (66, 'Bavix\\Wallet\\Models\\Wallet', 1, 'App\\Models\\Box', 1, 'paid', NULL, 183, 182, 0, 0, 'd1d233d9-75e5-48f3-9d5b-a868440471f1', '2019-11-19 13:59:07', '2019-11-19 13:59:07');
INSERT INTO `transfers` VALUES (67, 'Bavix\\Wallet\\Models\\Wallet', 1, 'App\\Models\\Box', 1, 'paid', NULL, 185, 184, 0, 0, '8b0884c6-791f-46f3-a3d1-7d6108fee2ab', '2019-11-19 14:06:35', '2019-11-19 14:06:35');
INSERT INTO `transfers` VALUES (68, 'Bavix\\Wallet\\Models\\Wallet', 1, 'App\\Models\\Box', 1, 'paid', NULL, 187, 186, 0, 0, 'aec6d2ed-675e-4c35-a2aa-31449fe03737', '2019-11-19 14:06:47', '2019-11-19 14:06:47');
INSERT INTO `transfers` VALUES (69, 'Bavix\\Wallet\\Models\\Wallet', 1, 'App\\Models\\Box', 1, 'paid', NULL, 196, 195, 0, 0, 'abc3fb0c-641c-4627-9cbd-b74ba8022a1d', '2019-11-19 14:20:15', '2019-11-19 14:20:15');
INSERT INTO `transfers` VALUES (70, 'Bavix\\Wallet\\Models\\Wallet', 1, 'App\\Models\\Box', 1, 'paid', NULL, 198, 197, 0, 0, '8e69fa3e-a178-48cd-a383-d155b90671ac', '2019-11-19 14:20:28', '2019-11-19 14:20:28');
INSERT INTO `transfers` VALUES (71, 'Bavix\\Wallet\\Models\\Wallet', 1, 'App\\Models\\Box', 1, 'paid', NULL, 200, 199, 0, 0, 'de677352-b9ef-4ab1-b8d9-8d9f892a1dd2', '2019-11-19 14:20:50', '2019-11-19 14:20:50');
INSERT INTO `transfers` VALUES (72, 'Bavix\\Wallet\\Models\\Wallet', 1, 'App\\Models\\Box', 1, 'paid', NULL, 202, 201, 0, 0, '95c5b3f4-a5b1-4f34-833d-92221d22c890', '2019-11-19 14:21:02', '2019-11-19 14:21:02');
INSERT INTO `transfers` VALUES (73, 'Bavix\\Wallet\\Models\\Wallet', 1, 'App\\Models\\Box', 1, 'paid', NULL, 204, 203, 0, 0, 'b2921b5d-b550-4ed9-81a5-1e2b729b290a', '2019-11-19 14:21:42', '2019-11-19 14:21:42');
INSERT INTO `transfers` VALUES (74, 'Bavix\\Wallet\\Models\\Wallet', 1, 'App\\Models\\Box', 1, 'paid', NULL, 207, 206, 0, 0, 'e8585028-63e0-42c8-950f-a09e82808966', '2019-11-19 14:25:47', '2019-11-19 14:25:47');
INSERT INTO `transfers` VALUES (75, 'Bavix\\Wallet\\Models\\Wallet', 11, 'App\\Models\\Box', 1, 'paid', NULL, 209, 208, 0, 0, '23d462dd-1cf1-4daf-8fbc-66dab9af1613', '2019-11-19 14:26:37', '2019-11-19 14:26:37');
INSERT INTO `transfers` VALUES (76, 'Bavix\\Wallet\\Models\\Wallet', 11, 'App\\Models\\Box', 1, 'paid', NULL, 211, 210, 0, 0, '9f9da341-85bb-487b-ba42-096823aa45ce', '2019-11-19 14:26:56', '2019-11-19 14:26:56');
INSERT INTO `transfers` VALUES (77, 'Bavix\\Wallet\\Models\\Wallet', 11, 'App\\Models\\Box', 1, 'paid', NULL, 218, 217, 0, 0, '77bf8088-6045-4d53-99e0-c6949f24182a', '2019-11-19 14:29:40', '2019-11-19 14:29:40');
INSERT INTO `transfers` VALUES (78, 'Bavix\\Wallet\\Models\\Wallet', 11, 'App\\Models\\Box', 1, 'paid', NULL, 220, 219, 0, 0, '9efdc29c-e7fe-4435-a81e-8d5453f31800', '2019-11-19 14:29:48', '2019-11-19 14:29:48');
INSERT INTO `transfers` VALUES (79, 'Bavix\\Wallet\\Models\\Wallet', 11, 'App\\Models\\Box', 1, 'paid', NULL, 222, 221, 0, 0, 'd5406202-d2c7-4ae5-97ea-aa2a6666e73d', '2019-11-19 14:30:01', '2019-11-19 14:30:01');
INSERT INTO `transfers` VALUES (80, 'Bavix\\Wallet\\Models\\Wallet', 1, 'App\\Models\\Box', 1, 'paid', NULL, 224, 223, 0, 0, '75f46e5e-3c93-486f-8925-34d33caafef6', '2019-11-19 14:33:04', '2019-11-19 14:33:04');
INSERT INTO `transfers` VALUES (81, 'Bavix\\Wallet\\Models\\Wallet', 11, 'App\\Models\\Box', 1, 'paid', NULL, 227, 226, 0, 0, 'c4168e0c-2b24-4dae-aa6b-46909c84fb38', '2019-11-19 14:35:43', '2019-11-19 14:35:43');
INSERT INTO `transfers` VALUES (82, 'Bavix\\Wallet\\Models\\Wallet', 1, 'App\\Models\\Box', 1, 'paid', NULL, 229, 228, 0, 0, 'b2de00f4-3f40-41ef-b2b0-f99e20eed736', '2019-11-19 14:37:39', '2019-11-19 14:37:39');
INSERT INTO `transfers` VALUES (83, 'Bavix\\Wallet\\Models\\Wallet', 1, 'App\\Models\\Box', 1, 'paid', NULL, 231, 230, 0, 0, '8fa97836-f067-47eb-9254-e622bf88dc50', '2019-11-19 14:40:38', '2019-11-19 14:40:38');
INSERT INTO `transfers` VALUES (84, 'Bavix\\Wallet\\Models\\Wallet', 1, 'App\\Models\\Box', 1, 'paid', NULL, 233, 232, 0, 0, 'd45fdcc9-79ca-4b19-b819-10668775f971', '2019-11-19 14:40:58', '2019-11-19 14:40:58');
INSERT INTO `transfers` VALUES (85, 'Bavix\\Wallet\\Models\\Wallet', 1, 'App\\Models\\Box', 1, 'paid', NULL, 244, 243, 0, 0, '62059de3-f1c6-49d3-81a4-eccab29f1bfe', '2019-11-19 14:43:18', '2019-11-19 14:43:18');
INSERT INTO `transfers` VALUES (86, 'Bavix\\Wallet\\Models\\Wallet', 1, 'App\\Models\\Box', 1, 'paid', NULL, 246, 245, 0, 0, '623387e4-31d3-4b78-aa90-2d6bd19e351e', '2019-11-19 14:43:30', '2019-11-19 14:43:30');
INSERT INTO `transfers` VALUES (87, 'Bavix\\Wallet\\Models\\Wallet', 1, 'App\\Models\\Box', 1, 'paid', NULL, 248, 247, 0, 0, 'e3f69111-532a-4d0a-ac8e-b95865312a1f', '2019-11-19 14:43:45', '2019-11-19 14:43:45');
INSERT INTO `transfers` VALUES (88, 'Bavix\\Wallet\\Models\\Wallet', 1, 'App\\Models\\Box', 16, 'paid', NULL, 253, 252, 0, 0, '8a606cb7-0ad6-4933-b242-79ed5217fcc7', '2019-11-19 15:01:20', '2019-11-19 15:01:20');
INSERT INTO `transfers` VALUES (89, 'Bavix\\Wallet\\Models\\Wallet', 1, 'App\\Models\\Box', 16, 'paid', NULL, 256, 255, 0, 0, 'b2f49ceb-fb90-484d-acf0-0959971feb04', '2019-11-19 15:03:31', '2019-11-19 15:03:31');
INSERT INTO `transfers` VALUES (90, 'Bavix\\Wallet\\Models\\Wallet', 1, 'App\\Models\\Box', 16, 'paid', NULL, 259, 258, 0, 0, '7b70983b-8984-4502-be35-a193f6028ab9', '2019-11-19 15:03:47', '2019-11-19 15:03:47');
INSERT INTO `transfers` VALUES (91, 'Bavix\\Wallet\\Models\\Wallet', 1, 'App\\Models\\Box', 16, 'paid', NULL, 261, 260, 0, 0, '72f05600-0a39-4df5-a531-db6436ba77b6', '2019-11-19 15:03:58', '2019-11-19 15:03:58');
INSERT INTO `transfers` VALUES (92, 'Bavix\\Wallet\\Models\\Wallet', 1, 'App\\Models\\Box', 16, 'paid', NULL, 263, 262, 0, 0, '137a51a0-e848-47ef-874b-2e5c5693581c', '2019-11-19 15:04:32', '2019-11-19 15:04:32');
INSERT INTO `transfers` VALUES (93, 'Bavix\\Wallet\\Models\\Wallet', 1, 'App\\Models\\Box', 16, 'paid', NULL, 265, 264, 0, 0, 'cad5019d-0c03-4753-ab91-30822d240788', '2019-11-19 15:04:41', '2019-11-19 15:04:41');
INSERT INTO `transfers` VALUES (94, 'Bavix\\Wallet\\Models\\Wallet', 1, 'App\\Models\\Box', 16, 'paid', NULL, 271, 270, 0, 0, 'ab2e7fa6-85a0-41d7-8526-ab9991afded3', '2019-11-19 15:06:40', '2019-11-19 15:06:40');
INSERT INTO `transfers` VALUES (95, 'Bavix\\Wallet\\Models\\Wallet', 1, 'App\\Models\\Box', 16, 'paid', NULL, 273, 272, 0, 0, 'fa780d30-784a-4489-98b8-8bfa4b894d0b', '2019-11-19 15:06:49', '2019-11-19 15:06:49');
INSERT INTO `transfers` VALUES (96, 'Bavix\\Wallet\\Models\\Wallet', 1, 'App\\Models\\Box', 16, 'paid', NULL, 275, 274, 0, 0, '962e6a62-87bf-4a49-b0c9-16a0ea7c9680', '2019-11-19 15:06:59', '2019-11-19 15:06:59');
INSERT INTO `transfers` VALUES (97, 'Bavix\\Wallet\\Models\\Wallet', 1, 'App\\Models\\Box', 16, 'paid', NULL, 277, 276, 0, 0, 'b796b855-246e-48d2-b635-f394766637a0', '2019-11-19 15:07:09', '2019-11-19 15:07:09');
INSERT INTO `transfers` VALUES (98, 'Bavix\\Wallet\\Models\\Wallet', 1, 'App\\Models\\Box', 16, 'paid', NULL, 279, 278, 0, 0, '0eb9d789-4404-459a-bd84-015cb83c9db7', '2019-11-19 15:07:23', '2019-11-19 15:07:23');
INSERT INTO `transfers` VALUES (99, 'Bavix\\Wallet\\Models\\Wallet', 1, 'App\\Models\\Box', 16, 'paid', NULL, 304, 303, 0, 0, '45fc7b6c-53f4-4cae-b557-126822a46ec5', '2019-11-19 15:11:09', '2019-11-19 15:11:09');
INSERT INTO `transfers` VALUES (100, 'Bavix\\Wallet\\Models\\Wallet', 1, 'App\\Models\\Box', 16, 'paid', NULL, 306, 305, 0, 0, '611fe8d8-38a5-42ea-9169-ac5181158f3f', '2019-11-19 15:11:35', '2019-11-19 15:11:35');
INSERT INTO `transfers` VALUES (101, 'Bavix\\Wallet\\Models\\Wallet', 1, 'App\\Models\\Box', 16, 'paid', NULL, 315, 314, 0, 0, '26f05233-6916-4f47-8722-0133114be0e2', '2019-11-19 15:12:04', '2019-11-19 15:12:04');
INSERT INTO `transfers` VALUES (102, 'Bavix\\Wallet\\Models\\Wallet', 1, 'App\\Models\\Box', 16, 'paid', NULL, 317, 316, 0, 0, 'a73b45c6-946d-46d4-b465-84ec690fe8dd', '2019-11-19 15:12:14', '2019-11-19 15:12:14');
INSERT INTO `transfers` VALUES (103, 'Bavix\\Wallet\\Models\\Wallet', 1, 'App\\Models\\Box', 16, 'paid', NULL, 321, 320, 0, 0, '58efe81b-ebee-4bdc-b633-e81f2b8f354c', '2019-11-19 15:15:58', '2019-11-19 15:15:58');
INSERT INTO `transfers` VALUES (104, 'Bavix\\Wallet\\Models\\Wallet', 1, 'App\\Models\\Box', 16, 'paid', NULL, 323, 322, 0, 0, 'c103b5c8-612a-45c6-8300-1db36c6f2a4a', '2019-11-19 15:16:06', '2019-11-19 15:16:06');
INSERT INTO `transfers` VALUES (105, 'Bavix\\Wallet\\Models\\Wallet', 1, 'App\\Models\\Box', 16, 'paid', NULL, 325, 324, 0, 0, 'a1e24a6f-8e95-41a4-bfd5-cad1bd2303ea', '2019-11-19 15:16:15', '2019-11-19 15:16:15');
INSERT INTO `transfers` VALUES (106, 'Bavix\\Wallet\\Models\\Wallet', 1, 'App\\Models\\Box', 16, 'paid', NULL, 327, 326, 0, 0, '4877ebb1-7f1c-42fb-86a6-90fbb4f5a708', '2019-11-19 15:16:24', '2019-11-19 15:16:24');
INSERT INTO `transfers` VALUES (107, 'Bavix\\Wallet\\Models\\Wallet', 1, 'App\\Models\\Box', 16, 'paid', NULL, 329, 328, 0, 0, '5d16a13f-574c-43a1-9098-d65f2198c425', '2019-11-19 15:16:33', '2019-11-19 15:16:33');
INSERT INTO `transfers` VALUES (108, 'Bavix\\Wallet\\Models\\Wallet', 1, 'App\\Models\\Box', 16, 'paid', NULL, 336, 335, 0, 0, '054ffd52-9566-454d-9d88-cc47ae03fc35', '2019-11-19 15:23:59', '2019-11-19 15:23:59');
INSERT INTO `transfers` VALUES (109, 'Bavix\\Wallet\\Models\\Wallet', 11, 'App\\Models\\Box', 1, 'paid', NULL, 339, 338, 0, 0, '9ca113dd-7579-417e-a9e6-ad88d89c5fd8', '2019-11-19 17:25:49', '2019-11-19 17:25:49');
INSERT INTO `transfers` VALUES (110, 'Bavix\\Wallet\\Models\\Wallet', 11, 'App\\Models\\Box', 16, 'paid', NULL, 341, 340, 0, 0, '7da683cf-31d0-46c4-bf76-8c227c0997d9', '2019-11-19 17:27:57', '2019-11-19 17:27:57');
INSERT INTO `transfers` VALUES (111, 'Bavix\\Wallet\\Models\\Wallet', 11, 'App\\Models\\Box', 16, 'paid', NULL, 345, 344, 0, 0, '05c0097b-59b7-4696-b6ae-0a91003d3489', '2019-11-19 17:28:18', '2019-11-19 17:28:18');
INSERT INTO `transfers` VALUES (112, 'Bavix\\Wallet\\Models\\Wallet', 1, 'App\\Models\\Box', 1, 'paid', NULL, 347, 346, 0, 0, '5fa37ea8-ec87-4094-9df3-ee5c3335f7c7', '2019-11-19 17:32:44', '2019-11-19 17:32:44');
INSERT INTO `transfers` VALUES (113, 'Bavix\\Wallet\\Models\\Wallet', 1, 'App\\Models\\Box', 1, 'paid', NULL, 349, 348, 0, 0, '686b0ab7-5921-4a75-b664-0118afd01fea', '2019-11-19 17:37:58', '2019-11-19 17:37:58');
INSERT INTO `transfers` VALUES (114, 'Bavix\\Wallet\\Models\\Wallet', 1, 'App\\Models\\Box', 1, 'paid', NULL, 351, 350, 0, 0, 'fb03ec65-1d27-4cce-b9cc-da32599c7c1c', '2019-11-19 17:40:53', '2019-11-19 17:40:53');
INSERT INTO `transfers` VALUES (115, 'Bavix\\Wallet\\Models\\Wallet', 11, 'App\\Models\\Box', 14, 'paid', NULL, 353, 352, 0, 0, '99be9442-ffd6-4cdb-9264-d475b1aba7e7', '2019-11-19 17:41:58', '2019-11-19 17:41:58');
INSERT INTO `transfers` VALUES (116, 'Bavix\\Wallet\\Models\\Wallet', 11, 'App\\Models\\Box', 14, 'paid', NULL, 355, 354, 0, 0, '3b84ba49-f32b-4b26-87fc-919ef2691a10', '2019-11-19 17:42:11', '2019-11-19 17:42:11');
INSERT INTO `transfers` VALUES (117, 'Bavix\\Wallet\\Models\\Wallet', 11, 'App\\Models\\Box', 14, 'paid', NULL, 357, 356, 0, 0, '8d853689-58d5-4a60-97f1-2012b3b6299e', '2019-11-19 17:42:27', '2019-11-19 17:42:27');
INSERT INTO `transfers` VALUES (118, 'Bavix\\Wallet\\Models\\Wallet', 1, 'App\\Models\\Box', 1, 'paid', NULL, 359, 358, 0, 0, '853c3848-7557-488e-a37d-0f8a78ef939f', '2019-11-19 17:43:30', '2019-11-19 17:43:30');
INSERT INTO `transfers` VALUES (119, 'Bavix\\Wallet\\Models\\Wallet', 11, 'App\\Models\\Box', 16, 'paid', NULL, 361, 360, 0, 0, '166aa08b-7e95-4d96-bd06-e2ca5fd12e59', '2019-11-19 17:48:19', '2019-11-19 17:48:19');
INSERT INTO `transfers` VALUES (120, 'Bavix\\Wallet\\Models\\Wallet', 11, 'App\\Models\\Box', 16, 'paid', NULL, 363, 362, 0, 0, '09b0824d-54c8-4521-8f80-4f0d6d3a115d', '2019-11-19 17:49:53', '2019-11-19 17:49:53');
INSERT INTO `transfers` VALUES (121, 'Bavix\\Wallet\\Models\\Wallet', 11, 'App\\Models\\Box', 16, 'paid', NULL, 365, 364, 0, 0, 'a9df160a-82b2-47ae-96e8-a16249b2c674', '2019-11-19 17:50:17', '2019-11-19 17:50:17');
INSERT INTO `transfers` VALUES (122, 'Bavix\\Wallet\\Models\\Wallet', 11, 'App\\Models\\Box', 16, 'paid', NULL, 367, 366, 0, 0, 'ba67df4b-0479-4c3c-90fa-0ad87204f92d', '2019-11-19 17:59:06', '2019-11-19 17:59:06');
INSERT INTO `transfers` VALUES (123, 'Bavix\\Wallet\\Models\\Wallet', 11, 'App\\Models\\Box', 16, 'paid', NULL, 369, 368, 0, 0, '8eeaef89-f397-4c4f-8062-f7e0053b6deb', '2019-11-19 17:59:17', '2019-11-19 17:59:17');
INSERT INTO `transfers` VALUES (124, 'Bavix\\Wallet\\Models\\Wallet', 11, 'App\\Models\\Box', 16, 'paid', NULL, 371, 370, 0, 0, 'de15987d-abbc-47e0-ad27-fff62a7125e5', '2019-11-19 17:59:32', '2019-11-19 17:59:32');
INSERT INTO `transfers` VALUES (125, 'Bavix\\Wallet\\Models\\Wallet', 11, 'App\\Models\\Box', 16, 'paid', NULL, 383, 382, 0, 0, '042a88eb-2e9e-4aa1-b29e-e57858e9e45d', '2019-11-19 18:00:16', '2019-11-19 18:00:16');
INSERT INTO `transfers` VALUES (126, 'Bavix\\Wallet\\Models\\Wallet', 11, 'App\\Models\\Box', 16, 'paid', NULL, 385, 384, 0, 0, '9926f29d-669b-4e54-8a9c-db329890f85c', '2019-11-19 18:00:29', '2019-11-19 18:00:29');
INSERT INTO `transfers` VALUES (127, 'Bavix\\Wallet\\Models\\Wallet', 1, 'App\\Models\\Box', 1, 'paid', NULL, 387, 386, 0, 0, 'eb36fdf6-f711-4c53-97af-1b9301a45b54', '2019-11-19 18:09:02', '2019-11-19 18:09:02');
INSERT INTO `transfers` VALUES (128, 'Bavix\\Wallet\\Models\\Wallet', 1, 'App\\Models\\Box', 1, 'paid', NULL, 389, 388, 0, 0, '8c0ad2dd-915c-4db7-a5f3-f2fd2ee8c39b', '2019-11-19 18:09:15', '2019-11-19 18:09:15');
INSERT INTO `transfers` VALUES (129, 'Bavix\\Wallet\\Models\\Wallet', 1, 'App\\Models\\Box', 1, 'paid', NULL, 391, 390, 0, 0, '6b601e38-993b-482c-8487-dc3a0e6593cc', '2019-11-19 18:09:24', '2019-11-19 18:09:24');
INSERT INTO `transfers` VALUES (130, 'Bavix\\Wallet\\Models\\Wallet', 1, 'App\\Models\\Box', 1, 'paid', NULL, 393, 392, 0, 0, 'fdcc113c-5033-40f3-b112-a5acd9e7c7a0', '2019-11-19 18:09:36', '2019-11-19 18:09:36');
INSERT INTO `transfers` VALUES (131, 'Bavix\\Wallet\\Models\\Wallet', 1, 'App\\Models\\Box', 1, 'paid', NULL, 395, 394, 0, 0, 'f414a6aa-ca19-4517-b982-d5335cdcbc64', '2019-11-19 18:11:17', '2019-11-19 18:11:17');
INSERT INTO `transfers` VALUES (132, 'Bavix\\Wallet\\Models\\Wallet', 1, 'App\\Models\\Box', 1, 'paid', NULL, 398, 397, 0, 0, 'eddbd24d-cb5d-402e-9287-703f1d340d52', '2019-11-19 18:17:37', '2019-11-19 18:17:37');
INSERT INTO `transfers` VALUES (133, 'Bavix\\Wallet\\Models\\Wallet', 1, 'App\\Models\\Box', 1, 'paid', NULL, 400, 399, 0, 0, 'f7518640-4f09-430c-b27e-18c49155b13d', '2019-11-19 18:17:51', '2019-11-19 18:17:51');
INSERT INTO `transfers` VALUES (134, 'Bavix\\Wallet\\Models\\Wallet', 1, 'App\\Models\\Box', 1, 'paid', NULL, 402, 401, 0, 0, 'aec82af0-c7ab-491f-b054-9c9e6acb6cc8', '2019-11-19 18:21:54', '2019-11-19 18:21:54');
INSERT INTO `transfers` VALUES (135, 'Bavix\\Wallet\\Models\\Wallet', 1, 'App\\Models\\Box', 1, 'paid', NULL, 404, 403, 0, 0, '5c930725-6260-4227-89d1-41b2cd704f47', '2019-11-19 18:22:23', '2019-11-19 18:22:23');
INSERT INTO `transfers` VALUES (136, 'Bavix\\Wallet\\Models\\Wallet', 1, 'App\\Models\\Box', 1, 'paid', NULL, 406, 405, 0, 0, '6d0e6bdb-2390-4683-ab6c-c58544539adf', '2019-11-19 18:23:11', '2019-11-19 18:23:11');
INSERT INTO `transfers` VALUES (137, 'Bavix\\Wallet\\Models\\Wallet', 1, 'App\\Models\\Box', 1, 'paid', NULL, 408, 407, 0, 0, 'b019a93d-4c38-433b-bf09-dd7239028554', '2019-11-19 18:23:49', '2019-11-19 18:23:49');
INSERT INTO `transfers` VALUES (138, 'Bavix\\Wallet\\Models\\Wallet', 1, 'App\\Models\\Box', 1, 'paid', NULL, 410, 409, 0, 0, 'cca08317-dc3f-436e-b999-ed3e93dfeed4', '2019-11-19 18:24:00', '2019-11-19 18:24:00');
INSERT INTO `transfers` VALUES (139, 'Bavix\\Wallet\\Models\\Wallet', 1, 'App\\Models\\Box', 1, 'paid', NULL, 412, 411, 0, 0, '886dfea3-a321-42a6-b6cb-93a20437ff6a', '2019-11-19 18:26:49', '2019-11-19 18:26:49');
INSERT INTO `transfers` VALUES (140, 'Bavix\\Wallet\\Models\\Wallet', 1, 'App\\Models\\Box', 1, 'paid', NULL, 414, 413, 0, 0, 'd15c070c-beca-4e57-a904-942fab3cf9f5', '2019-11-19 18:28:28', '2019-11-19 18:28:28');
INSERT INTO `transfers` VALUES (141, 'Bavix\\Wallet\\Models\\Wallet', 1, 'App\\Models\\Box', 1, 'paid', NULL, 416, 415, 0, 0, 'ef8615fb-cc99-4512-a8e6-863806cea3b5', '2019-11-19 18:34:54', '2019-11-19 18:34:54');
INSERT INTO `transfers` VALUES (142, 'Bavix\\Wallet\\Models\\Wallet', 1, 'App\\Models\\Box', 1, 'paid', NULL, 418, 417, 0, 0, 'b83b953d-54ca-4b87-82e3-2cab4d4f0ea7', '2019-11-19 18:43:59', '2019-11-19 18:43:59');
INSERT INTO `transfers` VALUES (143, 'Bavix\\Wallet\\Models\\Wallet', 1, 'App\\Models\\Box', 1, 'paid', NULL, 420, 419, 0, 0, 'a2381738-46fc-4a11-998b-f7febfefa250', '2019-11-19 18:48:34', '2019-11-19 18:48:34');
INSERT INTO `transfers` VALUES (144, 'Bavix\\Wallet\\Models\\Wallet', 1, 'App\\Models\\Box', 1, 'paid', NULL, 422, 421, 0, 0, '5e503767-6891-40af-b9e7-7a9e8161557d', '2019-11-19 18:48:56', '2019-11-19 18:48:56');
INSERT INTO `transfers` VALUES (145, 'Bavix\\Wallet\\Models\\Wallet', 1, 'App\\Models\\Box', 1, 'paid', NULL, 424, 423, 0, 0, '2fbdcfa8-b239-4c42-b348-6dd800df1b50', '2019-11-19 18:49:44', '2019-11-19 18:49:44');
INSERT INTO `transfers` VALUES (146, 'Bavix\\Wallet\\Models\\Wallet', 1, 'App\\Models\\Box', 1, 'paid', NULL, 426, 425, 0, 0, '1b794bbc-893c-4da3-9f03-98ef840d92c7', '2019-11-19 18:50:01', '2019-11-19 18:50:01');
INSERT INTO `transfers` VALUES (147, 'Bavix\\Wallet\\Models\\Wallet', 1, 'App\\Models\\Box', 1, 'paid', NULL, 428, 427, 0, 0, '58fcb43c-d8ee-40bb-89d8-e9ffd483edb8', '2019-11-19 18:50:04', '2019-11-19 18:50:04');
INSERT INTO `transfers` VALUES (148, 'Bavix\\Wallet\\Models\\Wallet', 1, 'App\\Models\\Box', 1, 'paid', NULL, 430, 429, 0, 0, 'aef128a4-f0d6-4a0b-8a6f-63efa7e68564', '2019-11-19 18:50:07', '2019-11-19 18:50:07');
INSERT INTO `transfers` VALUES (149, 'Bavix\\Wallet\\Models\\Wallet', 1, 'App\\Models\\Box', 1, 'paid', NULL, 432, 431, 0, 0, '617485ef-a020-4e8d-ba9d-0f91ded814f8', '2019-11-19 18:50:14', '2019-11-19 18:50:14');
INSERT INTO `transfers` VALUES (150, 'Bavix\\Wallet\\Models\\Wallet', 1, 'App\\Models\\Box', 1, 'paid', NULL, 434, 433, 0, 0, 'ac1592b1-e077-43d9-aea4-25ac084baf53', '2019-11-19 18:50:52', '2019-11-19 18:50:52');
INSERT INTO `transfers` VALUES (151, 'Bavix\\Wallet\\Models\\Wallet', 1, 'App\\Models\\Box', 1, 'paid', NULL, 436, 435, 0, 0, '2dfdc37a-99e4-4dd0-b067-86f70ec1a378', '2019-11-19 18:51:03', '2019-11-19 18:51:03');
INSERT INTO `transfers` VALUES (152, 'Bavix\\Wallet\\Models\\Wallet', 1, 'App\\Models\\Box', 1, 'paid', NULL, 438, 437, 0, 0, '9a69798a-eb53-4c59-bc38-2c48f86c70fa', '2019-11-19 18:51:44', '2019-11-19 18:51:44');
INSERT INTO `transfers` VALUES (153, 'Bavix\\Wallet\\Models\\Wallet', 1, 'App\\Models\\Box', 1, 'paid', NULL, 440, 439, 0, 0, '347f3e27-a491-4a0a-9020-176c6ef38b46', '2019-11-19 18:51:59', '2019-11-19 18:51:59');
INSERT INTO `transfers` VALUES (154, 'Bavix\\Wallet\\Models\\Wallet', 1, 'App\\Models\\Box', 1, 'paid', NULL, 442, 441, 0, 0, '6ca8d30c-65b8-4f01-91eb-79233852c193', '2019-11-19 18:52:21', '2019-11-19 18:52:21');
INSERT INTO `transfers` VALUES (155, 'Bavix\\Wallet\\Models\\Wallet', 1, 'App\\Models\\Box', 1, 'paid', NULL, 444, 443, 0, 0, 'ca560618-5f57-4ed1-b172-9f98f41a7624', '2019-11-19 18:52:54', '2019-11-19 18:52:54');
INSERT INTO `transfers` VALUES (156, 'Bavix\\Wallet\\Models\\Wallet', 1, 'App\\Models\\Box', 1, 'paid', NULL, 446, 445, 0, 0, '5e1a2175-d003-421a-972c-48c4a4db18a8', '2019-11-19 18:53:25', '2019-11-19 18:53:25');
INSERT INTO `transfers` VALUES (157, 'Bavix\\Wallet\\Models\\Wallet', 1, 'App\\Models\\Box', 1, 'paid', NULL, 448, 447, 0, 0, '7fd17c61-f691-437d-a7d0-958cbab96e51', '2019-11-19 18:53:45', '2019-11-19 18:53:45');
INSERT INTO `transfers` VALUES (158, 'Bavix\\Wallet\\Models\\Wallet', 1, 'App\\Models\\Box', 1, 'paid', NULL, 450, 449, 0, 0, '8c07af82-3515-4a18-aa94-c9ef939d052a', '2019-11-19 18:54:02', '2019-11-19 18:54:02');
INSERT INTO `transfers` VALUES (159, 'Bavix\\Wallet\\Models\\Wallet', 11, 'App\\Models\\Box', 16, 'paid', NULL, 452, 451, 0, 0, '1cc702db-97e3-413e-9e35-3e8673495bf6', '2019-11-19 19:22:19', '2019-11-19 19:22:19');
INSERT INTO `transfers` VALUES (160, 'Bavix\\Wallet\\Models\\Wallet', 11, 'App\\Models\\Box', 16, 'paid', NULL, 454, 453, 0, 0, 'ce2af569-6507-4d9d-9eeb-aebfe3286886', '2019-11-19 19:22:33', '2019-11-19 19:22:33');
INSERT INTO `transfers` VALUES (161, 'Bavix\\Wallet\\Models\\Wallet', 11, 'App\\Models\\Box', 16, 'paid', NULL, 456, 455, 0, 0, 'fe7d44ec-5359-4299-a21a-ca7e97be05a4', '2019-11-19 19:22:46', '2019-11-19 19:22:46');
INSERT INTO `transfers` VALUES (162, 'Bavix\\Wallet\\Models\\Wallet', 11, 'App\\Models\\Box', 16, 'paid', NULL, 458, 457, 0, 0, 'dad36d40-9d9f-41ea-b10b-337bdd322d87', '2019-11-19 19:23:01', '2019-11-19 19:23:01');
INSERT INTO `transfers` VALUES (163, 'Bavix\\Wallet\\Models\\Wallet', 11, 'App\\Models\\Box', 16, 'paid', NULL, 460, 459, 0, 0, 'b9ca999c-f605-4a52-860c-3fceab03134a', '2019-11-19 19:23:14', '2019-11-19 19:23:14');
INSERT INTO `transfers` VALUES (164, 'Bavix\\Wallet\\Models\\Wallet', 11, 'App\\Models\\Box', 16, 'paid', NULL, 462, 461, 0, 0, '9f57d2cb-8199-491a-9322-f70de3187f3e', '2019-11-19 19:23:26', '2019-11-19 19:23:26');
INSERT INTO `transfers` VALUES (165, 'Bavix\\Wallet\\Models\\Wallet', 11, 'App\\Models\\Box', 16, 'paid', NULL, 464, 463, 0, 0, 'c763d67d-5081-4eae-beef-e105dd7f319b', '2019-11-19 19:23:39', '2019-11-19 19:23:39');
INSERT INTO `transfers` VALUES (166, 'Bavix\\Wallet\\Models\\Wallet', 11, 'App\\Models\\Box', 16, 'paid', NULL, 466, 465, 0, 0, 'fd2d17e2-48df-46f6-9d3f-41efe5c9f226', '2019-11-19 19:23:52', '2019-11-19 19:23:52');
INSERT INTO `transfers` VALUES (167, 'Bavix\\Wallet\\Models\\Wallet', 11, 'App\\Models\\Box', 16, 'paid', NULL, 468, 467, 0, 0, 'b32bbba4-30f1-4049-90b8-199663add187', '2019-11-19 19:24:03', '2019-11-19 19:24:03');
INSERT INTO `transfers` VALUES (168, 'Bavix\\Wallet\\Models\\Wallet', 11, 'App\\Models\\Box', 16, 'paid', NULL, 470, 469, 0, 0, '54f6ac50-b414-4b98-8053-db98cf2359ef', '2019-11-19 19:24:16', '2019-11-19 19:24:16');
INSERT INTO `transfers` VALUES (169, 'Bavix\\Wallet\\Models\\Wallet', 11, 'App\\Models\\Box', 16, 'paid', NULL, 472, 471, 0, 0, 'a5bbcb89-4f0e-4e34-b276-7a22e0537e35', '2019-11-19 19:24:34', '2019-11-19 19:24:34');
INSERT INTO `transfers` VALUES (170, 'Bavix\\Wallet\\Models\\Wallet', 11, 'App\\Models\\Box', 16, 'paid', NULL, 474, 473, 0, 0, 'dbcdd905-7fd1-42a1-a6aa-3b72e3c152ef', '2019-11-19 19:24:47', '2019-11-19 19:24:47');
INSERT INTO `transfers` VALUES (171, 'Bavix\\Wallet\\Models\\Wallet', 11, 'App\\Models\\Box', 16, 'paid', NULL, 476, 475, 0, 0, 'd486bd2e-06b1-486a-ac54-a24454f464be', '2019-11-19 19:24:59', '2019-11-19 19:24:59');
INSERT INTO `transfers` VALUES (172, 'Bavix\\Wallet\\Models\\Wallet', 11, 'App\\Models\\Box', 16, 'paid', NULL, 478, 477, 0, 0, '91a87c34-b555-4577-a224-196b04decc5a', '2019-11-19 19:25:11', '2019-11-19 19:25:11');
INSERT INTO `transfers` VALUES (173, 'Bavix\\Wallet\\Models\\Wallet', 11, 'App\\Models\\Box', 16, 'paid', NULL, 480, 479, 0, 0, '8f02fb45-a54c-4d7d-9d22-ac966ddc48ce', '2019-11-19 19:25:25', '2019-11-19 19:25:25');
INSERT INTO `transfers` VALUES (174, 'Bavix\\Wallet\\Models\\Wallet', 11, 'App\\Models\\Box', 16, 'paid', NULL, 482, 481, 0, 0, '328cab7e-782e-402a-afb7-eff0d242f495', '2019-11-19 19:25:38', '2019-11-19 19:25:38');
INSERT INTO `transfers` VALUES (175, 'Bavix\\Wallet\\Models\\Wallet', 11, 'App\\Models\\Box', 16, 'paid', NULL, 484, 483, 0, 0, '6c0c40b0-91e4-4f81-8ef1-9b8b5788fcaa', '2019-11-19 19:25:56', '2019-11-19 19:25:56');
INSERT INTO `transfers` VALUES (176, 'Bavix\\Wallet\\Models\\Wallet', 11, 'App\\Models\\Box', 16, 'paid', NULL, 487, 486, 0, 0, '4e41b01b-2773-4cde-8b7a-99f5ab6775ae', '2019-11-19 19:26:09', '2019-11-19 19:26:09');
INSERT INTO `transfers` VALUES (177, 'Bavix\\Wallet\\Models\\Wallet', 11, 'App\\Models\\Box', 16, 'paid', NULL, 491, 490, 0, 0, '86fc7059-25f1-49b3-9671-9ae1f2f0d267', '2019-11-19 19:26:27', '2019-11-19 19:26:27');
INSERT INTO `transfers` VALUES (178, 'Bavix\\Wallet\\Models\\Wallet', 11, 'App\\Models\\Box', 1, 'paid', NULL, 494, 493, 0, 0, '0d2f9801-bcee-4370-94a4-f29d87dc3c21', '2019-11-19 19:27:22', '2019-11-19 19:27:22');
INSERT INTO `transfers` VALUES (179, 'Bavix\\Wallet\\Models\\Wallet', 11, 'App\\Models\\Box', 1, 'paid', NULL, 496, 495, 0, 0, 'c1678af9-add1-4fca-a4fc-e443de36f32d', '2019-11-19 19:28:11', '2019-11-19 19:28:11');
INSERT INTO `transfers` VALUES (180, 'Bavix\\Wallet\\Models\\Wallet', 11, 'App\\Models\\Box', 1, 'paid', NULL, 498, 497, 0, 0, '525c95e6-f1aa-4a2e-a98a-2648f8a71c97', '2019-11-19 19:33:09', '2019-11-19 19:33:09');
INSERT INTO `transfers` VALUES (181, 'Bavix\\Wallet\\Models\\Wallet', 11, 'App\\Models\\Box', 1, 'paid', NULL, 500, 499, 0, 0, '63791637-4a09-454b-a785-4fa937be8353', '2019-11-19 19:59:09', '2019-11-19 19:59:09');
INSERT INTO `transfers` VALUES (191, 'Bavix\\Wallet\\Models\\Wallet', 1, 'App\\Models\\Box', 16, 'paid', NULL, 521, 511, 0, 0, 'f911ffae-ab44-4b91-83eb-9ae4ac81f281', '2019-11-21 19:29:56', '2019-11-21 19:29:56');
INSERT INTO `transfers` VALUES (201, 'Bavix\\Wallet\\Models\\Wallet', 11, 'App\\Models\\Box', 16, 'paid', NULL, 901, 891, 0, 0, '366a68fd-72bb-462f-93b4-37001571c274', '2019-11-22 14:20:27', '2019-11-22 14:20:27');
INSERT INTO `transfers` VALUES (211, 'Bavix\\Wallet\\Models\\Wallet', 11, 'App\\Models\\Box', 16, 'paid', NULL, 921, 911, 0, 0, 'e936f356-5560-4f25-9532-3da53e9c6dea', '2019-11-22 14:20:30', '2019-11-22 14:20:30');
INSERT INTO `transfers` VALUES (221, 'Bavix\\Wallet\\Models\\Wallet', 11, 'App\\Models\\Box', 16, 'paid', NULL, 941, 931, 0, 0, '108fd1b1-c194-4cd2-9e34-56220a6bbeaa', '2019-11-22 14:20:42', '2019-11-22 14:20:42');
INSERT INTO `transfers` VALUES (231, 'Bavix\\Wallet\\Models\\Wallet', 11, 'App\\Models\\Box', 16, 'paid', NULL, 961, 951, 0, 0, 'c983f9c5-c56d-45aa-a36e-0f879f107c5b', '2019-11-22 21:57:34', '2019-11-22 21:57:34');
INSERT INTO `transfers` VALUES (241, 'Bavix\\Wallet\\Models\\Wallet', 11, 'App\\Models\\Box', 16, 'paid', NULL, 981, 971, 0, 0, '3cd1b4a5-be5e-49cc-bd69-5259eb94c92b', '2019-11-22 21:57:37', '2019-11-22 21:57:37');
INSERT INTO `transfers` VALUES (251, 'Bavix\\Wallet\\Models\\Wallet', 11, 'App\\Models\\Box', 1, 'paid', NULL, 1001, 991, 0, 0, '7d8fbbf4-bff8-4835-85ee-0ecc790663a2', '2019-11-22 21:57:45', '2019-11-22 21:57:45');
INSERT INTO `transfers` VALUES (261, 'Bavix\\Wallet\\Models\\Wallet', 11, 'App\\Models\\Box', 16, 'paid', NULL, 1041, 1031, 0, 0, '3a100afd-415a-4333-939a-c67dd77de67c', '2019-11-24 20:48:00', '2019-11-24 20:48:00');
INSERT INTO `transfers` VALUES (271, 'Bavix\\Wallet\\Models\\Wallet', 11, 'App\\Models\\Box', 16, 'paid', NULL, 1061, 1051, 0, 0, '2f56e988-e3be-4352-b074-f092f8d526a3', '2019-11-24 20:48:02', '2019-11-24 20:48:02');
INSERT INTO `transfers` VALUES (281, 'Bavix\\Wallet\\Models\\Wallet', 11, 'App\\Models\\Box', 14, 'paid', NULL, 1081, 1071, 0, 0, 'a63bc944-b367-496a-85ad-9be59395dd39', '2019-11-24 20:59:36', '2019-11-24 20:59:36');
INSERT INTO `transfers` VALUES (291, 'Bavix\\Wallet\\Models\\Wallet', 11, 'App\\Models\\Box', 14, 'paid', NULL, 1101, 1091, 0, 0, '7db3db8b-2590-4ad8-b29c-ff896f870414', '2019-11-24 21:00:15', '2019-11-24 21:00:15');
INSERT INTO `transfers` VALUES (301, 'Bavix\\Wallet\\Models\\Wallet', 1, 'App\\Models\\Box', 14, 'paid', NULL, 1121, 1111, 0, 0, '895ee28f-166e-4546-b099-b39666d018ac', '2019-11-24 21:05:14', '2019-11-24 21:05:14');
INSERT INTO `transfers` VALUES (311, 'Bavix\\Wallet\\Models\\Wallet', 21, 'App\\Models\\Box', 14, 'paid', NULL, 1161, 1151, 0, 0, '635ba864-b2a7-4a8d-aad1-1d032405b30e', '2019-11-24 21:05:56', '2019-11-24 21:05:56');
INSERT INTO `transfers` VALUES (321, 'Bavix\\Wallet\\Models\\Wallet', 21, 'App\\Models\\Box', 14, 'paid', NULL, 1181, 1171, 0, 0, '39e71e8c-e1d3-4109-94b6-f1d70566f7f8', '2019-11-24 21:06:00', '2019-11-24 21:06:00');
INSERT INTO `transfers` VALUES (331, 'Bavix\\Wallet\\Models\\Wallet', 11, 'App\\Models\\Box', 1, 'paid', NULL, 1201, 1191, 0, 0, 'f80a4cdc-99a9-430e-a5d4-96715616e75c', '2019-11-24 21:10:30', '2019-11-24 21:10:30');
INSERT INTO `transfers` VALUES (341, 'Bavix\\Wallet\\Models\\Wallet', 11, 'App\\Models\\Box', 1, 'paid', NULL, 1221, 1211, 0, 0, '861edf7f-4747-4b86-bb0f-699b45599424', '2019-11-24 21:10:51', '2019-11-24 21:10:51');
INSERT INTO `transfers` VALUES (351, 'Bavix\\Wallet\\Models\\Wallet', 11, 'App\\Models\\Box', 1, 'paid', NULL, 1241, 1231, 0, 0, 'caf31992-63be-4008-9cc5-2c1040ded4c3', '2019-11-24 21:11:01', '2019-11-24 21:11:01');
INSERT INTO `transfers` VALUES (361, 'Bavix\\Wallet\\Models\\Wallet', 11, 'App\\Models\\Box', 1, 'paid', NULL, 1261, 1251, 0, 0, 'e186359c-e22c-49ea-8db1-981b582a59e3', '2019-11-24 21:11:18', '2019-11-24 21:11:18');
INSERT INTO `transfers` VALUES (371, 'Bavix\\Wallet\\Models\\Wallet', 1, 'App\\Models\\Box', 1, 'paid', NULL, 1281, 1271, 0, 0, '03e744ff-a59b-4927-b542-7c9771155162', '2019-11-24 21:56:29', '2019-11-24 21:56:29');
INSERT INTO `transfers` VALUES (381, 'Bavix\\Wallet\\Models\\Wallet', 11, 'App\\Models\\Box', 1, 'paid', NULL, 1301, 1291, 0, 0, '113df946-6904-4d15-809d-ea0f106cef33', '2019-11-24 22:10:08', '2019-11-24 22:10:08');
INSERT INTO `transfers` VALUES (391, 'Bavix\\Wallet\\Models\\Wallet', 11, 'App\\Models\\Box', 1, 'paid', NULL, 1621, 1611, 0, 0, '1900e99b-ab13-478b-8ae3-0aa2777bc3d8', '2019-11-24 22:10:46', '2019-11-24 22:10:46');
INSERT INTO `transfers` VALUES (401, 'Bavix\\Wallet\\Models\\Wallet', 11, 'App\\Models\\Box', 1, 'paid', NULL, 1641, 1631, 0, 0, 'e0f1ed41-58ea-4791-ada7-5c26f3454709', '2019-11-24 22:21:26', '2019-11-24 22:21:26');
INSERT INTO `transfers` VALUES (411, 'Bavix\\Wallet\\Models\\Wallet', 11, 'App\\Models\\Box', 1, 'paid', NULL, 1661, 1651, 0, 0, '51bfcff8-073b-4955-ac0f-f9ff21f56903', '2019-11-25 16:20:28', '2019-11-25 16:20:28');
INSERT INTO `transfers` VALUES (421, 'Bavix\\Wallet\\Models\\Wallet', 11, 'App\\Models\\Box', 14, 'paid', NULL, 1681, 1671, 0, 0, '4ea373c3-1885-4586-a9de-ba46e1fd4122', '2019-11-26 13:34:51', '2019-11-26 13:34:51');
INSERT INTO `transfers` VALUES (431, 'Bavix\\Wallet\\Models\\Wallet', 31, 'App\\Models\\Box', 16, 'paid', NULL, 1711, 1701, 0, 0, '0601c3dd-3525-4e5e-979e-92f34cbf5604', '2019-11-26 16:24:09', '2019-11-26 16:24:09');
INSERT INTO `transfers` VALUES (441, 'Bavix\\Wallet\\Models\\Wallet', 31, 'App\\Models\\Box', 1, 'paid', NULL, 1741, 1731, 0, 0, '848a91f8-0410-4a00-9b88-fa99decad214', '2019-11-26 19:32:56', '2019-11-26 19:32:56');
INSERT INTO `transfers` VALUES (451, 'Bavix\\Wallet\\Models\\Wallet', 31, 'App\\Models\\Box', 1, 'paid', NULL, 1771, 1761, 0, 0, '9505c214-8e97-40d6-b511-03fed15ed0e7', '2019-11-26 19:33:11', '2019-11-26 19:33:11');
INSERT INTO `transfers` VALUES (461, 'Bavix\\Wallet\\Models\\Wallet', 31, 'App\\Models\\Box', 1, 'paid', NULL, 1791, 1781, 0, 0, '25613452-3769-48c7-a486-55c4757d09cd', '2019-11-26 19:33:23', '2019-11-26 19:33:23');
INSERT INTO `transfers` VALUES (471, 'Bavix\\Wallet\\Models\\Wallet', 31, 'App\\Models\\Box', 1, 'paid', NULL, 1811, 1801, 0, 0, '315b8c81-72a1-4be6-9de3-ba17730fede4', '2019-11-26 19:33:47', '2019-11-26 19:33:47');
INSERT INTO `transfers` VALUES (481, 'Bavix\\Wallet\\Models\\Wallet', 31, 'App\\Models\\Box', 1, 'paid', NULL, 1831, 1821, 0, 0, '76675083-d348-499d-b8a4-6bc8514fedf6', '2019-11-26 19:34:11', '2019-11-26 19:34:11');
INSERT INTO `transfers` VALUES (491, 'Bavix\\Wallet\\Models\\Wallet', 31, 'App\\Models\\Box', 1, 'paid', NULL, 1891, 1881, 0, 0, 'd550690e-4cca-46c3-984c-1a2bf92b7a52', '2019-11-26 19:34:38', '2019-11-26 19:34:38');
INSERT INTO `transfers` VALUES (501, 'Bavix\\Wallet\\Models\\Wallet', 31, 'App\\Models\\Box', 1, 'paid', NULL, 1911, 1901, 0, 0, 'e97567a7-d174-4f7d-8eea-581ba090614c', '2019-11-26 19:34:52', '2019-11-26 19:34:52');
INSERT INTO `transfers` VALUES (511, 'Bavix\\Wallet\\Models\\Wallet', 31, 'App\\Models\\Box', 1, 'paid', NULL, 1931, 1921, 0, 0, '5b5ba4ea-fc4c-4f93-a724-298757f4d382', '2019-11-26 19:35:11', '2019-11-26 19:35:11');
INSERT INTO `transfers` VALUES (521, 'Bavix\\Wallet\\Models\\Wallet', 31, 'App\\Models\\Box', 1, 'paid', NULL, 1981, 1971, 0, 0, '039a4775-5bde-45e1-91a9-8fb135a33cc8', '2019-11-26 22:13:13', '2019-11-26 22:13:13');
INSERT INTO `transfers` VALUES (531, 'Bavix\\Wallet\\Models\\Wallet', 31, 'App\\Models\\Box', 1, 'paid', NULL, 2001, 1991, 0, 0, '432c3e9e-c225-45d3-88b2-22e40aa98b24', '2019-11-26 22:13:27', '2019-11-26 22:13:27');
INSERT INTO `transfers` VALUES (541, 'Bavix\\Wallet\\Models\\Wallet', 31, 'App\\Models\\Box', 16, 'paid', NULL, 2041, 2031, 0, 0, '0211a491-ab5d-4730-8bc6-7161d18659fe', '2019-11-26 22:14:16', '2019-11-26 22:14:16');
INSERT INTO `transfers` VALUES (551, 'Bavix\\Wallet\\Models\\Wallet', 31, 'App\\Models\\Box', 16, 'paid', NULL, 2061, 2051, 0, 0, 'bedab399-f55e-4035-aac2-f79309b8b980', '2019-11-26 22:14:27', '2019-11-26 22:14:27');
INSERT INTO `transfers` VALUES (561, 'Bavix\\Wallet\\Models\\Wallet', 31, 'App\\Models\\Box', 16, 'paid', NULL, 2081, 2071, 0, 0, '3c5a044d-2d47-413b-969e-9d7fd00d5cd3', '2019-11-26 22:14:38', '2019-11-26 22:14:38');
INSERT INTO `transfers` VALUES (571, 'Bavix\\Wallet\\Models\\Wallet', 31, 'App\\Models\\Box', 16, 'paid', NULL, 2131, 2121, 0, 0, 'b892e662-6080-441e-a4c0-142ed80762b8', '2019-11-27 09:05:11', '2019-11-27 09:05:11');
INSERT INTO `transfers` VALUES (581, 'Bavix\\Wallet\\Models\\Wallet', 31, 'App\\Models\\Box', 16, 'paid', NULL, 2161, 2151, 0, 0, '9214c36c-8a3d-42ba-bef1-f71c71f4d63b', '2019-11-27 09:17:00', '2019-11-27 09:17:00');
INSERT INTO `transfers` VALUES (591, 'Bavix\\Wallet\\Models\\Wallet', 31, 'App\\Models\\Box', 16, 'paid', NULL, 2181, 2171, 0, 0, '687cee2d-559c-470e-bccf-6cdec9e25f4c', '2019-11-27 09:19:08', '2019-11-27 09:19:08');
INSERT INTO `transfers` VALUES (601, 'Bavix\\Wallet\\Models\\Wallet', 31, 'App\\Models\\Box', 16, 'paid', NULL, 2201, 2191, 0, 0, '1bf280e8-85ca-4d0c-b9b8-135df7866429', '2019-11-27 10:35:25', '2019-11-27 10:35:25');
INSERT INTO `transfers` VALUES (611, 'Bavix\\Wallet\\Models\\Wallet', 31, 'App\\Models\\Box', 1, 'paid', NULL, 2231, 2221, 0, 0, '0540e50d-38f4-40de-82ed-6d7fead1017c', '2019-11-28 17:43:01', '2019-11-28 17:43:01');
INSERT INTO `transfers` VALUES (621, 'Bavix\\Wallet\\Models\\Wallet', 31, 'App\\Models\\Box', 1, 'paid', NULL, 2251, 2241, 0, 0, '9a05c068-c0b6-4327-a810-c2afb199111a', '2019-11-28 17:43:14', '2019-11-28 17:43:14');
INSERT INTO `transfers` VALUES (631, 'Bavix\\Wallet\\Models\\Wallet', 31, 'App\\Models\\Box', 1, 'paid', NULL, 2271, 2261, 0, 0, 'ff1cc79f-a027-47c1-9231-84555efbb6de', '2019-11-28 17:43:28', '2019-11-28 17:43:28');
INSERT INTO `transfers` VALUES (641, 'Bavix\\Wallet\\Models\\Wallet', 31, 'App\\Models\\Box', 1, 'paid', NULL, 2291, 2281, 0, 0, '5b85cf63-d7b9-4435-be7f-7ab7ab3f1de3', '2019-11-28 17:43:37', '2019-11-28 17:43:37');
INSERT INTO `transfers` VALUES (651, 'Bavix\\Wallet\\Models\\Wallet', 31, 'App\\Models\\Box', 1, 'paid', NULL, 2311, 2301, 0, 0, '452a8fb9-b902-4caf-813a-074aee293c08', '2019-11-28 17:43:49', '2019-11-28 17:43:49');
INSERT INTO `transfers` VALUES (661, 'Bavix\\Wallet\\Models\\Wallet', 31, 'App\\Models\\Box', 14, 'paid', NULL, 2361, 2351, 0, 0, 'c70c85b7-c88d-49a8-a89b-d3b4457d1105', '2019-11-28 17:58:03', '2019-11-28 17:58:03');
INSERT INTO `transfers` VALUES (671, 'Bavix\\Wallet\\Models\\Wallet', 31, 'App\\Models\\Box', 16, 'paid', NULL, 2381, 2371, 0, 0, 'b6fddb84-5008-482f-9299-6d811d3eef11', '2019-11-28 19:54:52', '2019-11-28 19:54:52');
INSERT INTO `transfers` VALUES (681, 'Bavix\\Wallet\\Models\\Wallet', 31, 'App\\Models\\Box', 16, 'paid', NULL, 2401, 2391, 0, 0, 'd8c93dac-f3b5-4147-91f7-14b9c9149b9c', '2019-11-29 16:47:36', '2019-11-29 16:47:36');
INSERT INTO `transfers` VALUES (691, 'Bavix\\Wallet\\Models\\Wallet', 31, 'App\\Models\\Box', 16, 'paid', NULL, 2431, 2421, 0, 0, '8e2551cb-fee9-4be3-9c72-eff72b5f11c0', '2019-11-30 20:04:19', '2019-11-30 20:04:19');
INSERT INTO `transfers` VALUES (701, 'Bavix\\Wallet\\Models\\Wallet', 31, 'App\\Models\\Box', 16, 'paid', NULL, 2451, 2441, 0, 0, 'c3997ec8-fe1c-436b-b054-e1223a50daf4', '2019-11-30 20:05:03', '2019-11-30 20:05:03');
INSERT INTO `transfers` VALUES (711, 'Bavix\\Wallet\\Models\\Wallet', 31, 'App\\Models\\Box', 16, 'paid', NULL, 2471, 2461, 0, 0, '8488660b-0984-496d-80e9-199a5b890f2a', '2019-11-30 20:05:14', '2019-11-30 20:05:14');
INSERT INTO `transfers` VALUES (721, 'Bavix\\Wallet\\Models\\Wallet', 51, 'App\\Models\\Box', 14, 'paid', NULL, 2531, 2521, 0, 0, '0745be56-e374-4ae7-b7d4-07acb537a12c', '2019-12-01 18:13:37', '2019-12-01 18:13:37');
INSERT INTO `transfers` VALUES (731, 'Bavix\\Wallet\\Models\\Wallet', 51, 'App\\Models\\Box', 14, 'paid', NULL, 2561, 2551, 0, 0, '40c0c0a5-ff53-4ac3-8875-ce41ccdfb2bf', '2019-12-01 18:13:55', '2019-12-01 18:13:55');
INSERT INTO `transfers` VALUES (741, 'Bavix\\Wallet\\Models\\Wallet', 1, 'App\\Models\\Box', 16, 'paid', NULL, 2581, 2571, 0, 0, '75ac3228-6429-41e8-81a4-7be8925ed0cc', '2019-12-01 18:39:44', '2019-12-01 18:39:44');
INSERT INTO `transfers` VALUES (751, 'Bavix\\Wallet\\Models\\Wallet', 1, 'App\\Models\\Box', 16, 'paid', NULL, 2601, 2591, 0, 0, '352e93ae-0eab-4166-888d-4c1f3389b525', '2019-12-01 18:43:17', '2019-12-01 18:43:17');
INSERT INTO `transfers` VALUES (761, 'Bavix\\Wallet\\Models\\Wallet', 51, 'App\\Models\\Box', 14, 'paid', NULL, 2621, 2611, 0, 0, 'a44b16dc-1fd3-48fa-a250-ec181568de9e', '2019-12-01 18:51:52', '2019-12-01 18:51:52');
INSERT INTO `transfers` VALUES (771, 'Bavix\\Wallet\\Models\\Wallet', 1, 'App\\Models\\Box', 1, 'paid', NULL, 2641, 2631, 0, 0, '92a9954d-0c59-4af6-a553-79dc6ad61c5a', '2019-12-01 19:51:58', '2019-12-01 19:51:58');
COMMIT;

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `type` tinyint(4) NOT NULL DEFAULT '2',
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `region` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of users
-- ----------------------------
BEGIN;
INSERT INTO `users` VALUES (1, 2, 'Hasan Mahmud', 'mahmudbappy.pri@gmail.com', NULL, '$2y$10$5oMspkQbpm26k1O./08n7uMgL6lHnTR0Ty51vamV2aV7A0LfnI3ye', 'eF09wHE3rrnDPgnSd9wJRGAmV8CC2m5006J8wHJ33ZW2CvpS513RYobkJ1LS', '2019-11-02 08:27:39', '2019-11-17 03:00:07', 'Bangladesh', 'Dhaka', NULL, '01835142670', 'Mohammodpur', '1207', '6/15 Rajia Sultana Road');
INSERT INTO `users` VALUES (2, 2, 'Ahad pathan', 'ahad@gmail.com', NULL, '$2y$10$leeZMaz2XVRJAdGwLRTf..JMsFglvpE5aeNX.9havGFy8gQ6gBL/C', NULL, '2019-11-02 14:25:07', '2019-11-02 16:01:32', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `users` VALUES (3, 2, 'Test User', 'test@gmail.com', NULL, '$2y$10$84rnrK16cfsyGxSFnkFvF.7U8zURRB.bDhb234IOK8Mt4x7QVYhE.', NULL, '2019-11-03 20:03:46', '2019-11-03 20:03:46', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `users` VALUES (4, 2, 'matias ljostveit', 'matias@casinoxbonuses.com', NULL, '$2y$10$7iiE/oDztMp2SIdseQ/kJuSsPaMDbBY7fP/WtkG60lEDqOujtKHDu', NULL, '2019-11-03 20:30:00', '2019-11-03 20:30:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `users` VALUES (5, 1, 'Admin', 'admin@gmail.com', NULL, '$2y$10$L7SZSdjP6VMDbnEnwjfsj./ibVupRnDg7XHvvd3KDk2iYEjrr/RBq', 'cDxTj3w3W97CPpWOBimXTbO9mThn0dhc6VBy0ELu4oRmutTJvDwTDV8gakMA', '2019-11-03 20:31:43', '2019-11-03 20:31:43', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `users` VALUES (6, 2, 'Matias Ljostveit', 'matiashppv@hotmail.com', NULL, '$2y$10$TMBuuYrJXZfvIdOnUmgUw.BgN1zt25mGjHX97AMFfw/xOptVKdEVi', 'x7cjeU1K4MEK8bhgATDxy1TykqXn0O6y58jxLDiJV622rZyF7NPsS7IuGVHz', '2019-11-17 12:15:57', '2019-11-26 13:40:47', 'Norway', 'bergen', NULL, '47456629', 'hordaland', '5680', 'sdjdjnfnjsdfnjksf');
INSERT INTO `users` VALUES (11, 2, 'Test', 'test123@gmail.com', NULL, '$2y$10$yNRX/9.VyxVPmrEHmmxfy.bbl3EXdrqby68ngw.yMHWxTRQxD1Nom', NULL, '2019-11-24 21:04:33', '2019-11-24 21:04:33', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `users` VALUES (21, 2, 'matias ljostveit', 'gunnfill@hotmail.com', NULL, '$2y$10$jTSzCbz.IqTzIVtPp8zWM.3kdM2Vc.Hfq9iJOJvbvuFjiDNG1pgW6', 'FgSJC4NhQOc5v6kuTsPzYQv1dvVbDYogZzIBdD5og6H23ECdQiuHi56M0gtu', '2019-11-26 15:59:28', '2019-11-28 20:02:44', 'rrr', 'rrr', 'rrr', '123123123123', '123123123123', '1234', 'heggdfgdfglandsvegen 38');
INSERT INTO `users` VALUES (31, 2, 'Test Name', 'test1234@gmail.com', NULL, '$2y$10$TVR.tz.0kpdelNJPvwyIbO.YcxNSkRTr9BdNevScnsw1NTIF5WYfu', NULL, '2019-11-30 19:34:30', '2019-11-30 19:34:30', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `users` VALUES (41, 2, 'Jamie', 'jamie@jamie.no', NULL, '$2y$10$hgv4Yy3fPWTaMvgW7AZugOWo4R5ML2FtWZurV9tD5yTT/VL3Wsgy.', NULL, '2019-12-01 04:11:21', '2019-12-01 04:11:21', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for wallets
-- ----------------------------
DROP TABLE IF EXISTS `wallets`;
CREATE TABLE `wallets` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `holder_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `holder_id` bigint(20) unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `balance` bigint(20) NOT NULL DEFAULT '0',
  `decimal_places` smallint(6) NOT NULL DEFAULT '2',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `wallets_holder_type_holder_id_slug_unique` (`holder_type`,`holder_id`,`slug`),
  KEY `wallets_holder_type_holder_id_index` (`holder_type`,`holder_id`),
  KEY `wallets_slug_index` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of wallets
-- ----------------------------
BEGIN;
INSERT INTO `wallets` VALUES (1, 'App\\Models\\User', 1, 'Default Wallet', 'default', NULL, 1996096, 2, '2019-11-03 02:42:55', '2019-12-01 19:51:58');
INSERT INTO `wallets` VALUES (2, 'App\\Models\\User', 3, 'Default Wallet', 'default', NULL, 0, 2, '2019-11-03 20:03:48', '2019-11-03 20:03:48');
INSERT INTO `wallets` VALUES (3, 'App\\Models\\User', 4, 'Default Wallet', 'default', NULL, 0, 2, '2019-11-03 20:30:02', '2019-11-03 20:32:04');
INSERT INTO `wallets` VALUES (4, 'App\\Models\\User', 5, 'Default Wallet', 'default', NULL, 0, 2, '2019-11-03 20:31:43', '2019-11-06 04:33:22');
INSERT INTO `wallets` VALUES (5, 'App\\Models\\Box', 1, 'Default Wallet', 'default', NULL, 744851, 2, '2019-11-03 20:32:05', '2019-12-01 19:51:58');
INSERT INTO `wallets` VALUES (6, 'App\\Models\\Box', 12, 'Default Wallet', 'default', NULL, 0, 2, '2019-11-08 17:12:47', '2019-11-17 08:29:19');
INSERT INTO `wallets` VALUES (7, 'App\\Models\\Box', 13, 'Default Wallet', 'default', NULL, 0, 2, '2019-11-11 02:49:14', '2019-11-17 06:50:40');
INSERT INTO `wallets` VALUES (8, 'App\\Models\\Box', 11, 'Default Wallet', 'default', NULL, 0, 2, '2019-11-17 08:30:47', '2019-11-17 08:31:04');
INSERT INTO `wallets` VALUES (9, 'App\\Models\\Box', 10, 'Default Wallet', 'default', NULL, 0, 2, '2019-11-17 08:47:44', '2019-11-17 08:48:07');
INSERT INTO `wallets` VALUES (10, 'App\\Models\\Box', 14, 'Default Wallet', 'default', NULL, 106200, 2, '2019-11-17 11:22:11', '2019-12-01 18:51:52');
INSERT INTO `wallets` VALUES (11, 'App\\Models\\User', 6, 'Default Wallet', 'default', NULL, 676838, 2, '2019-11-17 12:15:58', '2019-11-26 13:34:51');
INSERT INTO `wallets` VALUES (12, 'App\\Models\\Box', 16, 'Default Wallet', 'default', NULL, 109500, 2, '2019-11-19 15:01:20', '2019-12-01 18:43:17');
INSERT INTO `wallets` VALUES (21, 'App\\Models\\User', 11, 'Default Wallet', 'default', NULL, 989700, 2, '2019-11-24 21:04:33', '2019-11-24 21:06:00');
INSERT INTO `wallets` VALUES (31, 'App\\Models\\User', 21, 'Default Wallet', 'default', NULL, 117415, 2, '2019-11-26 15:59:29', '2019-11-30 20:05:34');
INSERT INTO `wallets` VALUES (41, 'App\\Models\\User', 31, 'Default Wallet', 'default', NULL, 0, 2, '2019-11-30 19:34:30', '2019-11-30 19:34:30');
INSERT INTO `wallets` VALUES (51, 'App\\Models\\User', 41, 'Default Wallet', 'default', NULL, 4429700, 2, '2019-12-01 04:11:22', '2019-12-01 18:51:52');
COMMIT;

-- ----------------------------
-- Table structure for woned_products
-- ----------------------------
DROP TABLE IF EXISTS `woned_products`;
CREATE TABLE `woned_products` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `redeem_id` varchar(50) NOT NULL,
  `product_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=901 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of woned_products
-- ----------------------------
BEGIN;
INSERT INTO `woned_products` VALUES (421, '5ddaf08ad8b16', 26, 1, 1, '2019-11-24 21:05:14', '2019-11-28 17:12:18');
INSERT INTO `woned_products` VALUES (431, '5ddaf0b4e8d5d', 26, 11, 0, '2019-11-24 21:05:56', '2019-11-24 21:05:56');
INSERT INTO `woned_products` VALUES (441, '5ddaf0b8bd5cf', 26, 11, 0, '2019-11-24 21:06:00', '2019-11-24 21:06:00');
INSERT INTO `woned_products` VALUES (491, '5ddafc8dd7ab2', 13, 1, 0, '2019-11-24 21:56:29', '2019-11-24 21:56:29');
INSERT INTO `woned_products` VALUES (511, '5ddaffe656f20', 11, 6, 0, '2019-11-24 22:10:46', '2019-11-24 22:10:46');
INSERT INTO `woned_products` VALUES (521, '5ddb0266b2f12', 14, 6, 0, '2019-11-24 22:21:26', '2019-11-24 22:21:26');
INSERT INTO `woned_products` VALUES (531, '5ddbff4ccaf5b', 13, 6, 0, '2019-11-25 16:20:28', '2019-11-25 16:20:28');
INSERT INTO `woned_products` VALUES (541, '5ddd29fb95a4c', 26, 6, 0, '2019-11-26 13:34:51', '2019-11-26 13:34:51');
INSERT INTO `woned_products` VALUES (701, '5dde3f0c2454f', 30, 21, 1, '2019-11-27 09:17:00', '2019-11-28 17:47:22');
INSERT INTO `woned_products` VALUES (711, '5dde3f8d056e8', 30, 21, 1, '2019-11-27 09:19:09', '2019-11-28 17:47:22');
INSERT INTO `woned_products` VALUES (761, '5de00749c7c92', 13, 21, 1, '2019-11-28 17:43:37', '2019-11-28 17:47:22');
INSERT INTO `woned_products` VALUES (771, '5de0075553219', 14, 21, 1, '2019-11-28 17:43:49', '2019-11-28 17:45:29');
INSERT INTO `woned_products` VALUES (781, '5de00aab67078', 24, 21, 1, '2019-11-28 17:58:03', '2019-11-28 17:58:59');
INSERT INTO `woned_products` VALUES (791, '5de0260ccef66', 30, 21, 1, '2019-11-28 19:54:52', '2019-11-28 20:02:44');
INSERT INTO `woned_products` VALUES (811, '5de2cb4339581', 51, 21, 0, '2019-11-30 20:04:19', '2019-11-30 20:04:19');
INSERT INTO `woned_products` VALUES (851, '5de402e36cdba', 26, 41, 0, '2019-12-01 18:13:55', '2019-12-01 18:13:55');
INSERT INTO `woned_products` VALUES (861, '5de408f0b3114', 28, 1, 0, '2019-12-01 18:39:44', '2019-12-01 18:39:44');
INSERT INTO `woned_products` VALUES (871, '5de409c5603d3', 51, 1, 0, '2019-12-01 18:43:17', '2019-12-01 18:43:17');
INSERT INTO `woned_products` VALUES (881, '5de40bc830edc', 26, 41, 0, '2019-12-01 18:51:52', '2019-12-01 18:51:52');
INSERT INTO `woned_products` VALUES (891, '5de419debd0b2', 13, 1, 0, '2019-12-01 19:51:58', '2019-12-01 19:51:58');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
