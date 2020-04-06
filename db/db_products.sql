-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 06, 2020 at 01:58 AM
-- Server version: 5.7.26
-- PHP Version: 7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_products`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_categorize`
--

DROP TABLE IF EXISTS `tbl_categorize`;
CREATE TABLE IF NOT EXISTS `tbl_categorize` (
  `products_sport_id` tinyint(3) NOT NULL AUTO_INCREMENT,
  `product_id` mediumint(9) NOT NULL,
  `sport_id` mediumint(9) NOT NULL,
  PRIMARY KEY (`products_sport_id`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_categorize`
--

INSERT INTO `tbl_categorize` (`products_sport_id`, `product_id`, `sport_id`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 1),
(4, 4, 1),
(5, 5, 1),
(6, 6, 2),
(7, 7, 2),
(8, 8, 2),
(9, 9, 2),
(10, 10, 2),
(11, 11, 3),
(12, 12, 3),
(13, 13, 3),
(14, 14, 3),
(15, 15, 3),
(16, 16, 4),
(17, 17, 4),
(18, 18, 4),
(19, 19, 4),
(20, 20, 4),
(21, 21, 5),
(22, 22, 5),
(23, 23, 5),
(24, 24, 5),
(25, 25, 5),
(26, 26, 6),
(27, 27, 6),
(28, 28, 6),
(29, 29, 6),
(30, 30, 6),
(31, 31, 7),
(32, 32, 7),
(33, 33, 7),
(34, 34, 7),
(35, 35, 7);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_products`
--

DROP TABLE IF EXISTS `tbl_products`;
CREATE TABLE IF NOT EXISTS `tbl_products` (
  `product_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT,
  `product_image` varchar(75) NOT NULL DEFAULT 'cover_default.jpg',
  `product_name` varchar(125) NOT NULL,
  `product_price` varchar(20) NOT NULL,
  `product_description` text NOT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_products`
--

INSERT INTO `tbl_products` (`product_id`, `product_image`, `product_name`, `product_price`, `product_description`) VALUES
(1, 'soccer1.jpg', 'Under Armour Men\'s Renegade RM Mid Football Cleats – Black', '$44.9', ' A simple combination of the classic molded upper with rubber molded cleats give the Under-Armour Renegade RM Mid Football Cleats a perfect choice for all skill levels. Open-holed mesh tongue construction and a die-cut EVA sock liner offer comfort and breathability.'),
(2, 'soccer2.jpg', 'Nike Kids\' Alpha Menace Shark Mid Cut Grade School Football Cleats - Black/Silver', '$32.97', 'The Nike Alpha Menace Shark Little/Big Kids’ Football Cleat features a synthetic upper for durable support, while a rubber tread delivers the traction you need to accelerate and change direction quickly.'),
(3, 'soccer3.jpg', 'Under Armour Men\'s Leadoff RM Mid Baseball Cleats - Black/White', '$44.97', 'The Under Armour Leadoff RM Mid baseball cleat features a breathable synthetic upper, mesh tongue and full-length EVA midsole for comfort and support. Rubber molded cleats add traction and durability on the field.'),
(4, 'soccer4.jpg', 'Nike Men\'s Jordan 1 TD Mid Cut Football Cleats - White/Red/Black', '$127.49', ' With a lightweight, breathable upper, the Nike Men’s Jordan 1 TD Mid Cut Football Cleat helps you get off the mark first. A 1/2 inner sleeve provides a snug fit, while the cleated outsole gives you multidirectional traction so you can get into space quickly.'),
(5, 'soccer5.jpg', 'adidas Kids\' Nemeziz 17.4 Indoor Soccer Shoes - Blue/Yellow/Black', '$23.88', 'Supernatural agility just got more natural. Experience zero wear-in time with the AGILITY TOUCH SKIN upper that moulds perfectly to your foot the instant you slip it on. Outsole allows for explosive moments on flat, indoor surfaces'),
(6, 'basketball1.jpg', 'adidas Men\'s Dame 6 Ruthless Basketball Shoes', '$159.99', 'Get on the court and lead by example, just like Damian Lillard. Thes adidas Men’s Dame 6 Ruthless Basketball Shoe are ultralight, so you can fly up and down the floor. A herringbone outsole provides grip when you slam on the brakes and pull up from a distance. The upper reflects Dame’s quiet leadership on the court and influential personality off of it.'),
(7, 'basketball2.jpg', 'Nike Men\'s Kyrie Flytrap II Basketball Shoes - Black/Chrome', '$78.74', 'Kyrie Irving disrupts defenses with his dizzying array of jab steps, spin moves and ankle-breaking crossovers. The Nike Men’s Kyrie Flytrap II Basketball Shoes perfectly complements his game, providing maximum control, energy return and all-angle traction.'),
(8, 'basketball3.jpg', 'Nike Men\'s KD Trey 5 VII Basketball Shoes - Grey/Black/Gold', '$89.99', 'Kevin Durant likes a shoe that feels broken-in right away but still provides containment and support. The Nike Men’s KD Trey 5 VII Basketball Shoe nails it all around, combining bouncy cushioning with a precise, supportive fit that’s ready to go right out of the box.'),
(9, 'basketball4.jpg', 'Under Armour Men\'s Curry 7 \"Chinese New Year\" Basketball Shoes', '$159.99', 'The Under Armour Men’s Curry 7 \"Chinese New Year\" Basketball Shoe’s upper features translucent layering of synthetic leather, mesh & TPU skins for reinforcement in zonal areas for comfort, stability & mobility.'),
(10, 'basketball5.jpg', 'Nike Men\'s Jordan Maxin 200 Basketball Shoes', '$127.50', 'With a premium upper inspired by the classics and big Air cushioning, the Jordan Maxin 200 shows off your Jordan pride and keeps every step comfortable.'),
(11, 'hockey1.jpg', 'Vic Glide Skates - Black', '$19.99', 'Vic Glide Skates are ideal for the first-timer. This convenient skate adjusts to fit most children’s shoe sizes and is designed to go over the shoe. This allows for children to become more comfortable with skating at a younger age. The blades are dull for safety.'),
(12, 'hockey2.jpg', 'Bauer Supreme S180 Junior Hockey Skates', '$249.97', 'The Bauer Supreme S180 Junior hockey skates offer a greater range of motion and anatomical fit to create a faster and more powerful stride, maximizing a player’s speed and power on the ice'),
(13, 'hockey3.jpg', 'Warrior Dynasty Junior Hockey Pant Shell', '$30.97', 'Designed with a nylon exterior that promotes consistent mobility and durability, the Warrior® Junior Dynasty Ice Hockey Pant Shell helps keep you supported as you maneuver around the ice to minimize distractions and execute shots and passes with ease.'),
(14, 'hockey4.jpg', 'Warrior Covert QRE4 Senior Hockey Gloves', '$65.97', 'The Covert QRE4 Hockey Gloves have you covered in every corner of the rink with first class foam protection and shield inserts that absorb big impacts from shots, slashes and more. SMARTPALM gives you a mix of feel and durability for improved control.'),
(15, 'hockey5.jpg', 'Sher-Wood Pail of Pucks', '$24.99', 'If you need to enjoy a game of ice hockey on the go, this pail of pucks gives you a great way to carry them with you and keep them stored away until future use. These regulation-sized pucks can be used for every application, whether you’re working on improving your game or playing an official one.  A pack of twelve means you’ll have plenty to enjoy for countless hours of hockey fun.'),
(16, 'baseball1.jpg', 'Axe 243 Pro Maple Baseball Bat-Blk/Nat', '$249.99', 'Our patented handle unlocks the full potential of your swing, so you can hit the ball harder and farther, more often.'),
(17, 'baseball2.jpg', 'Sweetspot Plastic Baseball - 3 - pack', '$14.99', 'Throw some junk with Spaseball by SweetSpot Baseball. Every pitch is redefined with the most active, Patent Pending ball on the market. Throw a curve ball that would would make any major leaguer cry and go home. Spaseball by SweetSpot Baseball. Every Time!'),
(18, 'baseball3.jpg', 'Ripzone Men\'s Rebel Baseball Raglan - Gold Grey', '$14.97', 'Ballpark styling meets streetwear sensibility in the design of the Ripzone Men’s Rebel 3/4 Baseball Raglan Shirt. This streetwear tee will keep you comfortable all day with its soft cotton slub jersey knit fabric.'),
(19, 'baseball4.jpg', 'Nike Adult Baseball Belt 2.0 - Red/White', '$12.00', 'The Nike Adult 2.0 Baseball Belt designed to keep your pants up as you round the bases, hit the long ball, or complete the highlight reel defensive play in the outfield.'),
(20, 'baseball5.jpg', 'Easton Rival 2 Baseball Pants - Grey', '  $39.99', 'The Eaton Rival 2 Baseball Pants features a double reinforced knee for durability and an open bottom hem. Two back pockets for your batting gloves and an elastic waistband round out the Rival 2 Pantss.'),
(21, 'skating1.jpg', 'Bauer Vapor X800 Gen II Junior Hockey Skates', '$259.97', 'Get more agility in any direction with the X800 skate. The 3D-lasted Curv® composite upper with X-rib pattern and LOCK-FIT system take fit and comfort to the next level. Chase down pucks and break away from your opponents. More speed, more glory.\r\n\r\nVAPOR SKATE FIT\r\n\r\nWith a standard fit in the toe box and a narrower V-fit in the ankle and heel, players can accelerate and turn in the ultimate skate built for quickness and mobility.'),
(22, 'skating2.jpg', 'Bauer Lil Angel II Girls\' Ice Skates', '$49.99', 'The Bauer Lil Angel II recreational ice skates are a durable option for recreational skating. The 1-piece moulded shell offers support, and the printed bootie lining provides warmth and comfort. The pre-shaped tongue ensures a snug fit and additional comfort.'),
(23, 'skating3.jpg', 'Jackson 151 Finesse Figure Skates', '$69.99', 'Learn how to skate confidently with the Jackson 151 Finesse Figure Skates featuring traditional upper patterns with stylish chrome insert.'),
(24, 'skating4.jpg', 'K2 Alexis Women\'s Ice Skates - 2018', '$119.99', 'The K2 Alexis Women\'s Ice Skates feature the K2 Softboot design for an extremely comfortable recreational skate. The warm brushed lining and water repellent materials keep your feet warm and dry indoors our outdoors so you can enjoy your time on the ice.'),
(25, 'skating5.jpg', 'Capix Sports Line Jr. Pad Set 2018', '$19.99', 'Every skater should have a great set of protective gear and the Capix Sports Line Pad Set offers great protection without sacrificing comfort. '),
(26, 'gymnastics1.jpg', 'TRX Fit System', '$129.99', 'Perfect for all fitness levels and all fitness goals, delivering fun, functional and fast workouts in as little as 15 minutes a day, and transform the way you feel, look & think.\r\n\r\nBegin your new journey today with easy setup and easy to follow workouts that will burn fat, tighten & tone and improve your movement in life and sport. \r\n\r\nSets up in any location in your home, at the park, at the beach, or anywhere and anytime you want.'),
(27, 'gymnastics2.jpg', 'TRX Slam Ball 15LB', '$52.99', 'TRX Slam Balls were designed to survive your toughest workout. Rugged, textured surface provides a better grip while the ultra-durable rubber shell absorbs impact. TRX Slam Balls are bounce-resistant and ideal for slams, overhead throw, lunges and functional, bodyweight exercises. Perfect for all fitness levels.'),
(28, 'gymnastics3.jpg', 'Harbinger Humanx Chalk Balls', '$14.99', 'Harbinger® Chalk Balls will greatly improve your grip while weight lifting, doing gymnastics, rope climbing or doing the WOD at your Cross Fit box. They produce much less dust than loose chalk and will last on your hands longer. The chalk is 100% Magnesium Carbonate and comes in a refillable pouch.'),
(29, 'gymnastics4.jpg', 'Spri Liquid Chalk', '$9.99', 'SPRI Liquid Chalk works to keep your hands dry, prevent blisters, improve grip and prevent slippage while climbing and lifting or for use during gymnastics routines.'),
(30, 'gymnastics.jpg', 'TRX Xmount', '$39.99', 'The TRX Xmount is a small and sturdy piece of hardware that provides an easy anchor point for your TRX Suspension Trainer.'),
(31, 'lacrosse1.jpg', 'STX Marble Lacrosse Balls - 2 Pack', '$9.99', 'Perfect for practices and games, the STX 2 Pack Marble Lacrosse Balls give you two durable balls that will last through countless hours of play. Their design is fully compliant with all Canadian Lacrosse Association standards.'),
(32, 'lacrosse2.jpg', 'Warrior Evo Warp Jr Lacrosse Stick - Black', '$89.99', 'Youth-specific Warp stick designed to enhance the playing experience for new lacrosse players Shorter length (37\") designed for younger players Warp pocket doesn’t need to be adjusted or broken in, hassle and maintenance free Wider face shape increases the catching surface Flared bottom rail improves ball control & accuracy'),
(33, 'lacrosse3.jpg', 'WARRIOR FATBOY LITE LACROSSE GLOVES-BLACK', '$69.99', 'Ultra lightweight glove with superior venting.'),
(34, 'lacrosse4.jpg', 'Reebok 5K Senior Box Rib Pad', '$29.88', 'Reebok’s 5K rib pad provides both form and function. The Reebok Play Dry wicks moisture away from the body to help you keep cool out on the field. Flex zone construction provides freedom of movement for comfort and agility. Lightweight vented lycra shoulder straps provide an improved range of motion with superior comfort.'),
(35, 'lacrosse4.jpg', 'Warrior Fatboy Lacrosse Elbow Guard', '$79.99', 'The Warrior Fatboy lacrosse elbow guard provides protection to the elbow and is large enough to cover the bicep and forearm for maximum protection. The FLX mesh sleeve provides a snug yet flexible fit so you know that it will stay in place while playing. ');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sport`
--

DROP TABLE IF EXISTS `tbl_sport`;
CREATE TABLE IF NOT EXISTS `tbl_sport` (
  `sport_id` tinyint(3) NOT NULL AUTO_INCREMENT,
  `sport_name` varchar(125) NOT NULL,
  PRIMARY KEY (`sport_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_sport`
--

INSERT INTO `tbl_sport` (`sport_id`, `sport_name`) VALUES
(1, 'soccer'),
(2, 'Basketball'),
(3, 'hockey'),
(4, 'baseball'),
(5, 'skating'),
(6, 'gymnastics'),
(7, 'lacrosse');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

DROP TABLE IF EXISTS `tbl_user`;
CREATE TABLE IF NOT EXISTS `tbl_user` (
  `user_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_fname` varchar(250) NOT NULL,
  `user_name` varchar(250) NOT NULL,
  `user_pass` varchar(250) NOT NULL,
  `user_email` varchar(250) NOT NULL,
  `user_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `user_ip` varchar(50) NOT NULL DEFAULT 'no',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`user_id`, `user_fname`, `user_name`, `user_pass`, `user_email`, `user_date`, `user_ip`) VALUES
(1, 'Alec', 'alecr', 'ChiefRise117', 'alec.riddick@gmail.com', '2020-04-05 23:43:19', '::1'),
(2, 'default', 'docker_u', 'docker_p', 'test@testytest.ca', '2020-04-05 23:36:54', '123');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
