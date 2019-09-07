-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 22, 2019 at 09:51 AM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 7.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `e_commerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_login`
--

CREATE TABLE `admin_login` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `user_password` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_login`
--

INSERT INTO `admin_login` (`user_id`, `user_name`, `user_password`) VALUES
(2, 'faraz', 'faraz123'),
(3, 'abdul', '123'),
(4, 'zaeem', '123'),
(5, 'haseeb', '123'),
(6, 'ehtesham', 'abc1234');

-- --------------------------------------------------------

--
-- Table structure for table `contact_form`
--

CREATE TABLE `contact_form` (
  `contact_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(25) NOT NULL,
  `phone` int(50) NOT NULL,
  `message` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `p_names` varchar(255) NOT NULL,
  `details` varchar(255) NOT NULL,
  `cus_name` varchar(255) NOT NULL,
  `contact_no` varchar(25) NOT NULL,
  `email` varchar(25) NOT NULL,
  `address` varchar(255) NOT NULL,
  `zip_code` int(11) NOT NULL,
  `country` varchar(255) NOT NULL,
  `quantity` int(11) NOT NULL,
  `time` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `p_names`, `details`, `cus_name`, `contact_no`, `email`, `address`, `zip_code`, `country`, `quantity`, `time`) VALUES
(6, 'Ryker Shirt - Black', 'asdsad', 'Ehtesham', '01232155243', 'ehtesham@gmail.com', 'sakhi hasan', 74325, 'pakistan', 1, '2019-01-02 12:17:00.321238'),
(7, 'Fancy Suit', 'bla la', 'Rabia', '0331221432', 'rabia@gmail.com', 'north karachi', 75850, 'pakistan', 1, '2019-01-04 10:23:15.124517');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `details` varchar(255) NOT NULL,
  `image` blob NOT NULL,
  `price` int(11) NOT NULL,
  `c_price` int(11) NOT NULL,
  `product_type` varchar(255) NOT NULL,
  `brand` varchar(255) NOT NULL,
  `tags` varchar(255) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_name`, `details`, `image`, `price`, `c_price`, `product_type`, `brand`, `tags`, `time`) VALUES
(1, 'T-Shirt', 'Bla bla', 0x313534343231383531355f70392e6a7067, 600, 700, 'TShirt Dress', 'Polo', 'Summer', '2018-12-31 20:40:27'),
(4, 'Face Wash', 'asdasd', 0x313534363238333538375f313436343130383032335f302e6a7067, 600, 700, 'skincare cosmetics', 'Dove', 'Skin Care', '2018-12-31 20:43:04'),
(5, 'Trench Skinny Jeans', 'Featuring the Trench Skinny Jeans, constructed from 10.5 ounce high quality stretch Denim. The finer details include branded S.P.C.C metal shank buttons and rivets, heavy sandblasting stone wash and rip and repair detailing on the knees.', 0x313534363238363831375f5452454e43482d534b494e4e592d4a45414e532d2d2d4d49444e494748542d57415348465f333630782e6a7067, 1500, 1600, 'jeanspant Dress', 'Denizen', 'Summer', '2018-12-31 20:42:58'),
(6, 'Avalon Organics Thickening Shampoo', 'Our company advocates the postulate that the health is the biggest value in our lives. The point is that science and nature are easily combined in products that we are glad to offer you today. Our goal is to help you stay healthy as well as gorgeous at th', 0x313534363238373837345f31332d746d5f686f6d655f64656661756c742e6a7067, 1500, 1600, 'beautycare cosmetics', 'Dove', 'Skin Care', '2018-12-31 20:43:50'),
(7, 'Lawn', 'asdad', 0x313534363238383532395f313436343139383034385f646c2d3331302e6a7067, 5000, 6000, 'Lawn  womendress', 'sana safinaz', 'Summer', '2019-01-04 10:18:06'),
(8, 'Magnus Sneaker - White', 'The Magnus sneaker has been constructed from premium locally sourced leather. These shoes feature a very durable branded rubber bucket sole with full leather sock and lining for durability and comfort. Some of the finer details include an antique silver b', 0x313534363238393639335f5347542d353738415f30315f3130323478313032345f415f343730782e6a7067, 3000, 3500, 'boysshoes Dress', 'Nike', 'fashion', '2018-12-31 20:56:24'),
(9, 'Samo Chinos - Navy', 'Featuring the SAMO stretch twill chinos. The finer details include back welt pockets.', 0x313534363239303237355f5347542d3630385f4348494e4f5f4e5f30315f333630782e6a7067, 1500, 1600, 'dresspant dress', 'Gul Ahmed', 'Fashion', '2018-12-31 21:04:35'),
(10, 'A-line Shirt', 'Winter Collection', 0x313534363239313032355f313436343139373932355f646c2d3330392e6a7067, 5000, 6000, 'linen womendress', 'nishat linen', 'Winter', '2019-01-04 10:18:20'),
(11, 'Cotton Kurti', 'winter collection', 0x313534363239313230365f313436343230303031345f64772d313933302d677265792e6a7067, 6000, 5000, 'cotton womendress', 'sobia nazir', 'winter', '2019-01-04 10:18:28'),
(12, 'Fancy Suit', 'Marriage Dresses', 0x313534363239313538315f4d415249412e422d50617274792d776561722d647265737365732d323031362d31305f343830783438302e6a7067, 12000, 13000, 'Net womendress', 'Maria', 'Winter', '2019-01-04 10:18:36'),
(13, 'Kurta', 'Semi Formal Kurta For Men With Computerized Machine Embroidery On Collar, Placket And Front. Applique Use On Inner Band Collar And Inner Placket.', 0x313534363239323231395f33323137332d312e6a7067, 3190, 3500, 'kurta dress', 'jj', 'Summer', '2018-12-31 21:36:59'),
(14, 'Ryker Shirt - Black', 'Featuring the RYKER lightweight stretch poplin Long Sleeve Shirt. This is a must have basic that serves as a good hybrid between work and play. The shirt features concealed buttons, a smaller collar which buttons down at a point at the back and left chest', 0x313534363239323438345f5347542d3832365f426c61636b5f30315f333630782e6a7067, 3000, 3500, 'DressShirt Dress', 'Gul Ahmed', 'Fashion', '2018-12-31 21:43:07'),
(15, 'Magnus Sneaker - Black', 'The Magnus sneaker has been constructed from premium locally sourced leather. These shoes feature a very durable branded rubber bucket sole with full leather sock and lining for durability and comfort. Some of the finer details include an antique silver b', 0x313534363239323839355f5347542d353738425f30315f3130323478313032342d635f333630782e6a7067, 4000, 4500, 'kidsshoes dress', 'Outfitters', 'Fashion', '2018-12-31 21:48:15'),
(17, 'Body Lotion', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris', 0x313534363239333633365f706474362e6a7067, 1000, 1200, 'skincare cosmetics', 'jj', 'Skin Care', '2018-12-31 22:00:36'),
(18, 'Lipstick', 'Sed risus neque, sagittis sed pellentesque at, pharetra ut nunc. Phasellus id enim eget ante pellentesque pharetra. Phasellus et nisl urna. Integer nisl dui, efficitur in volutpat sodales, tempor sed orci. Donec et euismod ipsum. Interdum et malesuada fam', 0x313534363239333935365f33343236373939392e6a7067, 3000, 3500, 'beautycare cosmetics', 'jj', 'Beauty Care', '2018-12-31 22:05:56'),
(19, 'Facial Product', 'Sed risus neque, sagittis sed pellentesque at, pharetra ut nunc. Phasellus id enim eget ante pellentesque pharetra. Phasellus et nisl urna. Integer nisl dui, efficitur in volutpat sodales, tempor sed orci. Donec et euismod ipsum. Interdum et malesuada fam', 0x313534363239343136375f313436343130353934325f626573742d6f7269666c616d652d736b696e2d636172652d70726f64756374732d666f722d6f696c792d736b696e2d696e2d696e6469612d342e706e67, 600, 700, 'facial cosmetics', 'Gul Ahmed', 'Facial Product', '2018-12-31 22:09:27'),
(20, 'Nail Polish', 'Sed risus neque, sagittis sed pellentesque at, pharetra ut nunc. Phasellus id enim eget ante pellentesque pharetra. Phasellus et nisl urna. Integer nisl dui, efficitur in volutpat sodales, tempor sed orci. Donec et euismod ipsum. Interdum et malesuada fam', 0x313534363239343330355f313436343130363334365f65386536656264613033663761646534396338613666373030393335383166322e6a7067, 3000, 3500, 'nailart cosmetics', 'Dove', 'Nail Art', '2018-12-31 22:11:45'),
(21, 'cleanser', 'asdasd', 0x313534363333373234335f313436343130363434385f45393045423437392d353930452d344645342d393941382d3532344531454330303034315f5265736973742d506572666563746c792d42616c616e6365642d436c65616e7365722e706e67, 600, 700, 'skincare cosmetics', 'dove', 'skin care', '2019-01-01 10:07:23'),
(22, 'Tshirt', 'asdasd', 0x313534363433313331325f5347542d3632355f464f5254554e455f47795f30315f333630782e6a7067, 1000, 1100, 'tshirt dress', 'Gul Ahmed', 'Summer', '2019-01-02 12:15:12');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_login`
--
ALTER TABLE `admin_login`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `contact_form`
--
ALTER TABLE `contact_form`
  ADD PRIMARY KEY (`contact_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_login`
--
ALTER TABLE `admin_login`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `contact_form`
--
ALTER TABLE `contact_form`
  MODIFY `contact_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
