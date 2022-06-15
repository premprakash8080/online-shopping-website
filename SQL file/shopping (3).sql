-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Apr 20, 2022 at 03:47 AM
-- Server version: 5.7.34
-- PHP Version: 7.4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shopping`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `creationDate`, `updationDate`) VALUES
(1, 'admin', 'f925916e2754e5e03f75dd58a5733251', '2017-01-24 16:21:18', '21-06-2018 08:27:55 PM');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `categoryName` varchar(255) DEFAULT NULL,
  `categoryDescription` longtext,
  `creationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `categoryName`, `categoryDescription`, `creationDate`, `updationDate`) VALUES
(7, 'mobile-phones', '\r\nMobile phone  as a hand phone, cell phone, or cellular telephone', '2021-11-09 04:07:37', NULL),
(8, 'televisions', 'LED, LCD, OLED, QLED', '2021-11-09 04:09:14', NULL),
(9, 'Laptop', '', '2021-11-09 04:10:06', NULL),
(10, 'Audio-Wearables', '', '2021-11-09 04:54:11', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `productId` varchar(255) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `orderDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `paymentMethod` varchar(50) DEFAULT NULL,
  `orderStatus` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `userId`, `productId`, `quantity`, `orderDate`, `paymentMethod`, `orderStatus`) VALUES
(1, 1, '3', 1, '2022-04-07 06:00:59', 'Internet Banking', 'Delivered'),
(2, 1, '4', 1, '2022-04-08 02:28:56', 'Internet Banking', NULL),
(3, 1, '4', 2, '2022-04-08 20:02:25', 'Internet Banking', NULL),
(4, 1, '4', 1, '2022-04-19 15:56:05', 'COD', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ordertrackhistory`
--

CREATE TABLE `ordertrackhistory` (
  `id` int(11) NOT NULL,
  `orderId` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `remark` mediumtext,
  `postingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ordertrackhistory`
--

INSERT INTO `ordertrackhistory` (`id`, `orderId`, `status`, `remark`, `postingDate`) VALUES
(1, 1, 'Delivered', 'hghg', '2022-04-07 06:02:12');

-- --------------------------------------------------------

--
-- Table structure for table `productreviews`
--

CREATE TABLE `productreviews` (
  `id` int(11) NOT NULL,
  `productId` int(11) DEFAULT NULL,
  `quality` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `value` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `summary` varchar(255) DEFAULT NULL,
  `review` longtext,
  `reviewDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `productreviews`
--

INSERT INTO `productreviews` (`id`, `productId`, `quality`, `price`, `value`, `name`, `summary`, `review`, `reviewDate`) VALUES
(2, 3, 4, 5, 5, 'Anuj Kumar', 'BEST PRODUCT FOR ME :)', 'BEST PRODUCT FOR ME :)', '2017-02-26 20:43:57'),
(3, 3, 3, 4, 3, 'Sarita pandey', 'Nice Product', 'Value for money', '2017-02-26 20:52:46'),
(4, 3, 3, 4, 3, 'Sarita pandey', 'Nice Product', 'Value for money', '2017-02-26 20:59:19');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category` int(11) NOT NULL,
  `subCategory` int(11) DEFAULT NULL,
  `productName` varchar(255) DEFAULT NULL,
  `productCompany` varchar(255) DEFAULT NULL,
  `productPrice` varchar(11) DEFAULT NULL,
  `productPriceBeforeDiscount` varchar(11) DEFAULT NULL,
  `productDescription` longtext,
  `productImage1` varchar(255) DEFAULT NULL,
  `productImage2` varchar(255) DEFAULT NULL,
  `productImage3` varchar(255) DEFAULT NULL,
  `shippingCharge` int(11) DEFAULT NULL,
  `productAvailability` varchar(255) DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category`, `subCategory`, `productName`, `productCompany`, `productPrice`, `productPriceBeforeDiscount`, `productDescription`, `productImage1`, `productImage2`, `productImage3`, `shippingCharge`, `productAvailability`, `postingDate`, `updationDate`) VALUES
(3, 7, 17, 'oneplus 9', 'oneplus', '33490', '44990', '<ul class=\"a-unordered-list a-vertical a-spacing-mini\" style=\"box-sizing: border-box; margin-bottom: 0px; margin-left: 18px; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px; user-select: auto;\"><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px; user-select: auto;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; user-select: auto;\">Rear Triple Camera Co-Developed by Hasselblad, 48 MP Main camera, 50 MP Ultra Wide Angle Camera with Free Form Lens, 2 MP Monochorme Lens. Also comes with a 16 MP Front Camera</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px; user-select: auto;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; user-select: auto;\">Qualcomm Snapdragon 888 Processor with Adreno 660 GPU</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px; user-select: auto;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; user-select: auto;\">6.55 Inches Fluid AMOLED Display with 120Hz refresh rate</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px; user-select: auto;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; user-select: auto;\">OnePlus Oxygen OS based on Andriod 11</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px; user-select: auto;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; user-select: auto;\">Comes with 4500 mAh Battery with 65W Wired Charging</span></li></ul>', '1.jpg', '2.jpg', 'oneplus.jpg', 0, 'In Stock', '2022-04-03 15:24:36', NULL),
(4, 7, 17, 'OnePlus 8 (Glacial Green 8GB RAM+128GB Storage)', 'OnePlus', '37179', '44999', '<ul class=\"a-unordered-list a-vertical a-spacing-mini\" style=\"box-sizing: border-box; margin-bottom: 0px; margin-left: 18px; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px; user-select: auto;\"><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px; user-select: auto;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; user-select: auto;\">48MP rear camera with 4K video at 30/60 fps, 1080P video at 30/60 fps, super slow motion: 720p video at 480 fps, 1080p video at 240fps, time-lapse: 1080P 30fps, 4k 30fps, CINE aspect ratio video recording, ultrashot HDR, nightscape, micro, portrait, pro mode, panorama, cat&amp;dog face detection&amp;focus, AI scene detection, RAW image | 16MP front camera</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px; user-select: auto;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; user-select: auto;\">16.637 centimeters (6.55-inch) 90Hz fluid display with 2400 x 1080 pixels resolution, 402 ppi pixel density</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px; user-select: auto;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; user-select: auto;\">Memory, Storage &amp; SIM: 8GB RAM | 128GB internal memory | Dual SIM (nano+nano) dual-standby (5G+5G)</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px; user-select: auto;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; user-select: auto;\">Oxygen OS based on Android v10 operating system with 2.86GHz of clock speed with Qualcomm Snapdragon 865 powered by Kryo 585 CPU octa core processor, Adreno 650</span></li></ul>', 'oneplus8_1.jpg', 'oneplus8_2.jpg', 'oneplsu8_3.jpg', 0, 'In Stock', '2022-04-03 16:05:32', NULL),
(5, 7, 13, 'Apple iPhone 11 (64GB) - (Product) RED', 'Apple', '49900', '49999', '<ul class=\"a-unordered-list a-vertical a-spacing-mini\" style=\"box-sizing: border-box; margin-bottom: 0px; margin-left: 18px; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px; user-select: auto;\"><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px; user-select: auto;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; user-select: auto;\">6.1-inch (15.4 cm diagonal) Liquid Retina HD LCD display</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px; user-select: auto;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; user-select: auto;\">Water and dust resistant (2 meters for up to 30 minutes, IP68)</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px; user-select: auto;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; user-select: auto;\">Dual-camera system with 12MP Ultra Wide and Wide cameras; Night mode, Portrait mode, and 4K video up to 60fps</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px; user-select: auto;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; user-select: auto;\">12MP TrueDepth front camera with Portrait mode, 4K video, and Slo-Mo</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px; user-select: auto;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; user-select: auto;\">Face ID for secure authentication</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px; user-select: auto;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; user-select: auto;\">A13 Bionic chip with third-generation Neural Engine</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px; user-select: auto;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; user-select: auto;\">Fast-charge capable</span></li></ul><div class=\"a-row a-expander-container a-expander-inline-container\" style=\"box-sizing: border-box; width: 377.547px; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px; user-select: auto;\"><div aria-expanded=\"true\" class=\"a-expander-content a-expander-extend-content a-expander-content-expanded\" style=\"box-sizing: border-box; user-select: auto; overflow: hidden;\"><ul class=\"a-unordered-list a-vertical a-spacing-none\" style=\"box-sizing: border-box; margin-bottom: 0px; margin-left: 18px; user-select: auto;\"><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px; user-select: auto;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; user-select: auto;\">Wireless charging</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px; user-select: auto;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; user-select: auto;\">iOS 15 packs new features to do more with iPhone than ever before</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px; user-select: auto;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; user-select: auto;\">iOS 14 with redesigned widgets on the Home screen, all-new App Library, App Clips, and more</span></li></ul></div></div>', 'iphone11_1.jpg', 'iphone11_3.jpg', 'iphone12_2.jpg', 0, 'In Stock', '2022-04-03 16:08:23', NULL),
(6, 7, 13, 'Apple iPhone 13 (128GB) - Starlight', 'Apple', '74900', '79900', '<ul class=\"a-unordered-list a-vertical a-spacing-mini\" style=\"box-sizing: border-box; margin-bottom: 0px; margin-left: 18px; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px; user-select: auto;\"><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px; user-select: auto;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; user-select: auto;\">15 cm (6.1-inch) Super Retina XDR display</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px; user-select: auto;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; user-select: auto;\">Cinematic mode adds shallow depth of field and shifts focus automatically in your videos</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px; user-select: auto;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; user-select: auto;\">Advanced dual-camera system with 12MP Wide and Ultra Wide cameras; Photographic Styles, Smart HDR 4, Night mode, 4K Dolby Vision HDR recording</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px; user-select: auto;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; user-select: auto;\">12MP TrueDepth front camera with Night mode, 4K Dolby Vision HDR recording</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px; user-select: auto;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; user-select: auto;\">A15 Bionic chip for lightning-fast performance</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px; user-select: auto;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; user-select: auto;\">Up to 19 hours of video playback</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px; user-select: auto;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; user-select: auto;\">Durable design with Ceramic Shield</span></li></ul><div class=\"a-row a-expander-container a-expander-inline-container\" style=\"box-sizing: border-box; width: 377.547px; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px; user-select: auto;\"><div aria-expanded=\"true\" class=\"a-expander-content a-expander-extend-content a-expander-content-expanded\" style=\"box-sizing: border-box; user-select: auto; overflow: hidden;\"><ul class=\"a-unordered-list a-vertical a-spacing-none\" style=\"box-sizing: border-box; margin-bottom: 0px; margin-left: 18px; user-select: auto;\"><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px; user-select: auto;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; user-select: auto;\">Industry-leading IP68 water resistance</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px; user-select: auto;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; user-select: auto;\">iOS 15 packs new features to do more with iPhone than ever before</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px; user-select: auto;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; user-select: auto;\">Supports MagSafe accessories for easy attachment and faster wireless charging</span></li></ul></div></div>', 'iphne13_1.jpg', 'iphone13_2.jpg', 'iphone13_2.jpg', 0, 'In Stock', '2022-04-03 16:09:39', NULL),
(7, 9, 33, 'Apple MacBook Air Laptop: Apple M1 chip, 13.3-inch/33.74 cm Retina Display, 8GB RAM, 256GB ssd', 'Apple', '83900', '92900', '<ul class=\"a-unordered-list a-vertical a-spacing-mini\" style=\"box-sizing: border-box; margin-bottom: 0px; margin-left: 18px; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px; user-select: auto;\"><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px; user-select: auto;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; user-select: auto;\">All-Day Battery Life – Go longer than ever with up to 18 hours of battery life.</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px; user-select: auto;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; user-select: auto;\">Powerful Performance – Take on everything from professional-quality editing to action-packed gaming with ease. The Apple M1 chip with an 8-core CPU delivers up to 3.5x faster performance than the previous generation while using way less power.</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px; user-select: auto;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; user-select: auto;\">Superfast Memory – 8GB of unified memory makes your entire system speedy and responsive. That way it can support tasks like memory-hogging multitab browsing and opening a huge graphic file quickly and easily.</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px; user-select: auto;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; user-select: auto;\">Stunning Display – With a 13.3-inch/33.74 cm Retina display, images come alive with new levels of realism. Text is sharp and clear, and colors are more vibrant.</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px; user-select: auto;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; user-select: auto;\">Why Mac – Easy to learn. Easy to set up. Astoundingly powerful. Intuitive. Packed with apps to use right out of the box. Mac is designed to let you work, play, and create like never before.</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px; user-select: auto;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; user-select: auto;\">Simply Compatible – All your existing apps work, including Adobe Creative Cloud, Microsoft 365, and Google Drive. Plus you can use your favorite iPhone and iPad apps directly on macOS. Altogether you’ll have access to the biggest collection of apps ever for Mac. All available on the App Store.</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px; user-select: auto;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; user-select: auto;\">Easy to Learn – If you already have an iPhone, MacBook Air feels familiar from the moment you turn it on. And it works perfectly with all your Apple devices. Use your iPad to extend the workspace of your Mac, answer texts and phone calls directly on your Mac, and more.</span></li></ul>', 'macbookp_1.jpg', 'macbookp_2.jpg', 'macbookp_3.jpg', 0, 'In Stock', '2022-04-03 16:14:02', NULL),
(8, 10, 48, 'realme Buds Air Pro Bluetooth Truly Wireless in Ear Earbuds with Mic (White)', 'Realme', '4999', '5999', '<ul class=\"a-unordered-list a-vertical a-spacing-mini\" style=\"box-sizing: border-box; margin-bottom: 0px; margin-left: 18px; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px; user-select: auto;\"><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px; user-select: auto;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; user-select: auto;\">25 Hours total playback, Wear Detection: Auto Play/Pause</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px; user-select: auto;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; user-select: auto;\">Dual Mic Environmental Noise Cancellation for calls</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px; user-select: auto;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; user-select: auto;\">Quick Charge ( 3 hrs playback from 10 mins charge)</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px; user-select: auto;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; user-select: auto;\">IPX4 Water resistance</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px; user-select: auto;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; user-select: auto;\">94ms Super Low Latency</span></li></ul>', 'real_1.jpg', 'real_2.jpg', 'real_3.jpg', 0, 'In Stock', '2022-04-03 17:09:47', NULL),
(9, 10, 45, 'OnePlus Buds Z2 Bluetooth Truly Wireless in Ear Earbuds with mic Pearl White', 'OnePlus', '4999', '5999', '<ul class=\"a-unordered-list a-vertical a-spacing-mini\" style=\"box-sizing: border-box; margin-bottom: 0px; margin-left: 18px; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px; user-select: auto;\"><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px; user-select: auto;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; user-select: auto;\">Active Noise Cancellation:&nbsp;Up to 40 dB&nbsp;noise cancelling&nbsp;with 2&nbsp;modes - Faint (+/- 25dB) &amp;&nbsp;Extreme (+/- 40 dB)&nbsp;through manual adjustment via OnePlus mobile&nbsp;or&nbsp;HeyMelody App.</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px; user-select: auto;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; user-select: auto;\">High Quality Sound:&nbsp;11mm dynamic drivers acoustically tuned for bigger, bolder beats with razor-sharp treble &amp; Dolby atmos support delivers immersive,&nbsp;true-to-life sound using industry leading spatial audio</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px; user-select: auto;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; user-select: auto;\">3-MIC ENC Call Noise Reduction:&nbsp;To keep your calls sounding smooth, the 3-MIC&nbsp;design&nbsp;trims&nbsp;down wind noise caused by air friction. It sharpens voice-pickup &amp; cuts down surrounding noise for crystal clear speech.</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px; user-select: auto;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; user-select: auto;\">Worry-free Battery&nbsp;Life: Enjoy&nbsp;up to&nbsp;38 hours of&nbsp;music and&nbsp;a quick fast&nbsp;charging&nbsp;of 10 minutes&nbsp;for 5 hours of playtime.</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px; user-select: auto;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; user-select: auto;\">Built for&nbsp;Mobile&nbsp;Gaming: Your&nbsp;winning advantage starts here with latency as low as 94ms,&nbsp;with&nbsp;Pro&nbsp;Gaming&nbsp;mode activated</span></li></ul>', 'o_air_1.jpg', 'o_air_2.jpg', 'o_air_3.jpg', 0, 'In Stock', '2022-04-03 17:17:49', NULL),
(10, 10, 43, 'New Apple AirPods Max - Pink', 'Apple', '49999', '59999', '<ul class=\"a-unordered-list a-vertical a-spacing-mini\" style=\"box-sizing: border-box; margin-bottom: 0px; margin-left: 18px; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px; user-select: auto;\"><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px; user-select: auto;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; user-select: auto;\">Apple-designed dynamic driver provides high-fidelity audio</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px; user-select: auto;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; user-select: auto;\">Active Noise Cancellation blocks outside noise, so you can immerse yourself in music</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px; user-select: auto;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; user-select: auto;\">Transparency mode for hearing and interacting with the world around you</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px; user-select: auto;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; user-select: auto;\">Spatial audio with dynamic head tracking provides theater-like sound that surrounds you</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px; user-select: auto;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; user-select: auto;\">Computational audio combines custom acoustic design with the Apple H1 chip and software for breakthrough listening experiences</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px; user-select: auto;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; user-select: auto;\">Designed with a knit-mesh canopy and memory foam ear cushions for an exceptional fit</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px; user-select: auto;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; user-select: auto;\">Magical experience with effortless setup, on-head detection, and seamless switching between devices</span></li></ul>', 'airpod-1.jpg', 'airpod_2.jpg', 'airpod_3.jpg', 0, 'In Stock', '2022-04-03 17:21:02', NULL),
(11, 8, 24, 'Samsung The Serif Series 138 cm (55 inches) 4K Ultra HD Smart QLED TV', 'Samsung', '97860', '163990', '<ul class=\"a-unordered-list a-vertical a-spacing-mini\" style=\"box-sizing: border-box; margin-bottom: 0px; margin-left: 18px; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px; user-select: auto;\"><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px; user-select: auto;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; user-select: auto;\">Resolution: 4K Ultra HD (3840X2160) | Refresh Rate: 120 hertz</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px; user-select: auto;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; user-select: auto;\">Connectivity: 4 HDMI ports to connect set top box, Blu Ray players, gaming console | 2 USB ports to connect hard drives and other USB devices</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px; user-select: auto;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; user-select: auto;\">Sound : 40 Watts Output | Dolby Digital Plus | 4 Ch</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px; user-select: auto;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; user-select: auto;\">Smart TV Features : Voice Assistants | SmartThings App | Personal Computer | Home Cloud | Live Cast | Screen Share | Music System</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px; user-select: auto;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; user-select: auto;\">Display: LED Panel | Quantum HDR | Supreme UHD Dimming</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px; user-select: auto;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; user-select: auto;\">Alexa Built-in: Voice control your TV and your day. Just ask Alexa to search for movies, play music, control smart home devices, get sports updates and more</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px; user-select: auto;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; user-select: auto;\">Warranty Information: 1 year comprehensive and 1 year additional warranty on Panel by Samsung</span></li></ul>', 'sam_1.jpg', 'sam_2.jpg', 'rog3.jpg', 0, 'In Stock', '2022-04-03 17:23:56', NULL),
(12, 9, 39, 'MSI GF75 Thin, Intel i5-10300H, 17.3\" FHD IPS-Level 144Hz Panel Laptop (8GB/512GB NVMe SSD/Windows 10 Home/Nvidia GTX1650 4GB', 'Msi', '53990', '62678', '<ul class=\"a-unordered-list a-vertical a-spacing-mini\" style=\"box-sizing: border-box; margin-bottom: 0px; margin-left: 18px; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px; user-select: auto;\"><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px; user-select: auto;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; user-select: auto;\">Processor: 10th Generation Intel Core i5-10300H Up To 4.5 GHz</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px; user-select: auto;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; user-select: auto;\">\"Operating System: Pre-loaded Windows 10 Home with lifetime validity |Preinstalled Software: MSI BurnRecovery, MSI Battery Calibration, MSI Help Desk, Norton Internet Security (trail 60days) Norton Studio (Metro) (permanent free), Nvidia GeForce Experience, Nahimic 3, Dragon Center | In the box: Laptop, adapter\"</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px; user-select: auto;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; user-select: auto;\">Display: 44cm FHD (1920*1080), IPS-Level 144Hz Thin Bezel, 45% NTSC</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px; user-select: auto;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; user-select: auto;\">Memory &amp; Storage: 8 GB DDR4 3200MHz RAM, expandable to 64 GB | Storage: 512GB NVMe SSD.</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px; user-select: auto;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; user-select: auto;\">NVIDIA GeForce GTX1650 GDDR6 4GB Dedicated Graphics</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px; user-select: auto;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; user-select: auto;\">Ultra Thin and light design | Laptop weight: 2.2 kg</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px; user-select: auto;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; user-select: auto;\">Keyboard: Steelseries RED Backlit Keyboard | Camera: HD type (30fps@720p) | Microphone: Built-in microphone</span></li></ul>', 'msi_1.jpg', 'msi_2.jpg', 'msi_3.jpg', 0, 'In Stock', '2022-04-03 17:26:39', NULL),
(13, 9, 38, 'ASUS ROG Strix G17 (2021) 17.3-inch (43.94 cms) FHD 144Hz, AMD Ryzen 7 4800H', 'Asus', '93990', '102990', '<ul class=\"a-unordered-list a-vertical a-spacing-mini\" style=\"box-sizing: border-box; margin-bottom: 0px; margin-left: 18px; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px; user-select: auto;\"><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px; user-select: auto;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; user-select: auto;\">Free upgrade to Windows 11 when available. Disclaimer-Upgrade rollout plan is being finalized and is scheduled to begin late in 2021 and continue into 2022. Specific timing will vary by device. *</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px; user-select: auto;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; user-select: auto;\">Processor: AMD Ryzen 7 4800H Processor, 2.9 GHz Base Speed, Up to 4.2 GHz Max Boost Speed, 8 Cores, 16 Threads, 8MB L3 Cache</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px; user-select: auto;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; user-select: auto;\">Access to over 100 high-quality PC games on Windows 10</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px; user-select: auto;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; user-select: auto;\">One-month subscription to Xbox Game Pass that’s included with the purchase of your device</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px; user-select: auto;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; user-select: auto;\">Memory: 8GB SO-DIMM DDR4 3200MHz, Support Up to 32GB Using 2x SO-DIMM slots with | Storage: 512GB M.2 NVMe PCIe 3.0 SSD with additional empty 1x M.2 2280 PCIe 3.0 SSD Slot</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px; user-select: auto;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; user-select: auto;\">Graphics: Dedicated NVIDIA&nbsp;GeForce&nbsp;GTX&nbsp;1650 GDDR6 4GB VRAM, With ROG Boost up to 1615MHz at 50W + 15W with Dynamic Boost</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px; user-select: auto;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; user-select: auto;\">Display: 17.3-inch (43.94 cms) FHD (1920 x 1080) 16:9, 250nits, 144Hz Refresh Rate, vIPS-level Anti-glare Panel, 1000:1 Contrast Ratio, 45% NTSC, 62.5% sRGB, 47.34% Adobe, Adaptive-Sync technology</span></li></ul>', 'rog_1.jpg', 'rog2.jpg', 'rog3.jpg', 0, 'In Stock', '2022-04-03 17:28:03', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

CREATE TABLE `subcategory` (
  `id` int(11) NOT NULL,
  `categoryid` int(11) DEFAULT NULL,
  `subcategory` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`id`, `categoryid`, `subcategory`, `creationDate`, `updationDate`) VALUES
(13, 7, 'Apple', '2021-11-09 04:58:38', NULL),
(14, 7, 'Samsung', '2021-11-09 04:58:49', NULL),
(15, 7, 'Google', '2021-11-09 04:59:02', NULL),
(16, 7, 'Huawei', '2021-11-09 04:59:12', NULL),
(17, 7, 'OnePlus', '2021-11-09 04:59:22', NULL),
(18, 7, 'Xiaomi', '2021-11-09 04:59:38', NULL),
(19, 7, 'Oppo', '2021-11-09 04:59:48', NULL),
(20, 7, 'Vivo', '2021-11-09 04:59:58', NULL),
(21, 7, 'Nokia', '2021-11-09 05:00:08', NULL),
(22, 7, 'LG', '2021-11-09 05:00:27', NULL),
(23, 8, 'LG', '2021-11-09 05:01:44', NULL),
(24, 8, 'Samsung', '2021-11-09 05:01:58', NULL),
(25, 8, 'Sony', '2021-11-09 05:02:09', NULL),
(26, 8, 'Vizio', '2021-11-09 05:02:25', NULL),
(27, 8, 'TCL', '2021-11-09 05:02:35', NULL),
(28, 8, 'Hisense', '2021-11-09 05:02:47', NULL),
(29, 8, 'Panasonic', '2021-11-09 05:03:19', NULL),
(30, 8, 'Mi', '2021-11-09 05:03:41', NULL),
(31, 8, 'OnePlus', '2021-11-09 05:04:03', NULL),
(32, 8, 'Vu', '2021-11-09 05:05:23', NULL),
(33, 9, 'Apple', '2021-11-09 06:04:12', NULL),
(34, 9, 'HP', '2021-11-09 06:04:26', NULL),
(35, 9, 'Lenovo', '2021-11-09 06:04:41', NULL),
(36, 9, 'Dell', '2021-11-09 06:04:52', NULL),
(37, 9, 'Acer', '2021-11-09 06:05:05', NULL),
(38, 9, 'Asus', '2021-11-09 06:05:16', NULL),
(39, 9, 'MSI', '2021-11-09 06:05:28', NULL),
(40, 9, 'Microsoft', '2021-11-09 06:05:46', NULL),
(41, 9, 'Razer', '2021-11-09 06:05:59', NULL),
(42, 9, 'Samsung', '2021-11-09 06:06:09', NULL),
(43, 10, 'Apple', '2021-11-09 06:23:44', NULL),
(44, 10, 'Samsung', '2021-11-09 06:27:02', NULL),
(45, 10, 'OnePlus', '2021-11-09 06:30:52', NULL),
(46, 10, 'Realme', '2021-11-09 06:32:48', NULL),
(47, 10, 'Xiaomi', '2021-11-09 06:33:00', NULL),
(48, 10, 'Realme', '2021-11-09 07:10:38', NULL),
(49, 10, 'Boat', '2021-11-09 07:19:55', NULL),
(50, 10, 'Fitbit', '2021-11-09 07:20:24', NULL),
(51, 10, 'Huawei', '2021-11-09 07:20:39', NULL),
(52, 10, 'oppo', '2021-11-09 07:20:46', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `userEmail` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `userEmail`, `userip`, `loginTime`, `logout`, `status`) VALUES
(1, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-26 11:18:50', '', 1),
(2, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-26 11:29:33', '', 1),
(3, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-26 11:30:11', '', 1),
(4, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-26 15:00:23', '26-02-2017 11:12:06 PM', 1),
(5, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-26 18:08:58', '', 0),
(6, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-26 18:09:41', '', 0),
(7, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-26 18:10:04', '', 0),
(8, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-26 18:10:31', '', 0),
(9, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-26 18:13:43', '', 1),
(10, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-27 18:52:58', '', 0),
(11, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-27 18:53:07', '', 1),
(12, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-03 18:00:09', '', 0),
(13, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-03 18:00:15', '', 1),
(14, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-06 18:10:26', '', 1),
(15, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-07 12:28:16', '', 1),
(16, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-07 18:43:27', '', 1),
(17, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-07 18:55:33', '', 1),
(18, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-07 19:44:29', '', 1),
(19, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-08 19:21:15', '', 1),
(20, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-15 17:19:38', '', 1),
(21, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-15 17:20:36', '15-03-2017 10:50:39 PM', 1),
(22, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-16 01:13:57', '', 1),
(23, 'hgfhgf@gmass.com', 0x3a3a3100000000000000000000000000, '2018-04-29 09:30:40', '', 1),
(24, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2022-04-03 18:33:15', '04-04-2022 12:06:07 AM', 1),
(25, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2022-04-04 03:16:37', '07-04-2022 11:21:33 AM', 1),
(26, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2022-04-07 05:54:09', '07-04-2022 11:24:59 AM', 1),
(27, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2022-04-07 05:55:48', NULL, 1),
(28, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2022-04-08 02:28:50', NULL, 1),
(29, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2022-04-08 13:36:29', NULL, 1),
(30, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2022-04-08 13:45:44', NULL, 1),
(31, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2022-04-19 15:55:58', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contactno` bigint(11) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `shippingAddress` longtext,
  `shippingState` varchar(255) DEFAULT NULL,
  `shippingCity` varchar(255) DEFAULT NULL,
  `shippingPincode` int(11) DEFAULT NULL,
  `billingAddress` longtext,
  `billingState` varchar(255) DEFAULT NULL,
  `billingCity` varchar(255) DEFAULT NULL,
  `billingPincode` int(11) DEFAULT NULL,
  `regDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `contactno`, `password`, `shippingAddress`, `shippingState`, `shippingCity`, `shippingPincode`, `billingAddress`, `billingState`, `billingCity`, `billingPincode`, `regDate`, `updationDate`) VALUES
(1, 'Anuj', 'anuj.lpu1@gmail.com', 9009857868, 'f925916e2754e5e03f75dd58a5733251', 'CS New Delhi', 'New Delhi', 'Delhi', 110001, 'New Delhi', 'New Delhi', 'Delhi', 110092, '2017-02-04 19:30:50', ''),
(2, 'Amit ', 'amit@gmail.com', 8285703355, '5c428d8875d2948607f3e3fe134d71b4', '', '', '', 0, '', '', '', 0, '2017-03-15 17:21:22', ''),
(3, 'hg', 'hgfhgf@gmass.com', 1121312312, '827ccb0eea8a706c4c34a16891f84e7b', '', '', '', 0, '', '', '', 0, '2018-04-29 09:30:32', '');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `productId` int(11) DEFAULT NULL,
  `postingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ordertrackhistory`
--
ALTER TABLE `ordertrackhistory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `productreviews`
--
ALTER TABLE `productreviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategory`
--
ALTER TABLE `subcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `ordertrackhistory`
--
ALTER TABLE `ordertrackhistory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `productreviews`
--
ALTER TABLE `productreviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
