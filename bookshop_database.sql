/*
 Navicat Premium Data Transfer

 Source Server         : 书城
 Source Server Type    : MySQL
 Source Server Version : 80028
 Source Host           : localhost:3306
 Source Schema         : bookshop

 Target Server Type    : MySQL
 Target Server Version : 80028
 File Encoding         : 65001

 Date: 27/03/2022 11:26:47
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for goods
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `cover` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `image1` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `image2` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `price` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `intro` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `stock` int NULL DEFAULT NULL,
  `type_id` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `fk_type_id_idx`(`type_id` ASC) USING BTREE,
  CONSTRAINT `fk_type_id` FOREIGN KEY (`type_id`) REFERENCES `type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 120 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of goods
-- ----------------------------
INSERT INTO `goods` VALUES (9, 'You Fucking Got This : Motivational Swear Words Coloring Book', 'picture/1-1.jpg', 'picture/1-1.jpg', 'picture/1-1.jpg', '5.99', 'Relax Your Mind With This Beautiful Sweary Adult Coloring Book.\r\nBe Honest, You’ve had a Shitty Day', 10, 1);
INSERT INTO `goods` VALUES (10, ' I Am Confident, Brave & Beautiful: A Coloring Book for Girls', 'picture/1-2.jpg', 'picture/1-2.jpg', 'picture/1-2.jpg', '6.99', 'This groundbreaking coloring book is all about building a girl\'s confidence, \r\nimagination, and spirit! The 22+ coloring pages encourage girls to think beyond \r\nsocial conventions and inspire conversations with adults about what it really means to be confident, brave, and beautiful.', 10, 1);
INSERT INTO `goods` VALUES (11, 'Unbreakable: How I Turned My Depression and Anxiety into Motivation', 'picture/1-3.jpg', 'picture/1-3.jpg', 'picture/1-3.jpg', '14.99', 'In Unbreakable, Jay Glazer talks directly to you, his teammates, and shares his truth. All the  success \r\nfrom his screeching-and-swerving joy ride through professional football, the media, the MMA fighting \r\nworld, Hollywood, the military-warrior community, comes with a side of relentless depression and anxiety ', 10, 1);
INSERT INTO `goods` VALUES (12, 'Eight Dates: Essential Conversations for a Lifetime of Love', 'picture/1-4.jpg', 'picture/1-4.jpg', 'picture/1-4.jpg', '21.95', 'Strengthen and deepen your love with a fun, ingenious program \r\nof eight life-changing conversations—on essential topics such as money, \r\n', 10, 1);
INSERT INTO `goods` VALUES (13, 'A Million Kawaii Cuties: The Sweetest Things to Color (A Million Creatures to Color)', 'picture/1-5.jpg', 'picture/1-5.jpg', 'picture/1-5.jpg', '8.99', 'Explore the enticing world of kawaii in this beautiful coloring book!', 10, 1);
INSERT INTO `goods` VALUES (14, '100 Left Hand Patterns Every Piano Player Should Know: Play the Same Song \r\n', 'picture/1-6.jpg', 'picture/1-6.jpg', 'picture/1-6.jpg', '17.98', '00 Left Hand Patterns Every Piano Player Should Know (Play the Same Song 100 Different Ways) \r\nby Music Mentor Jerald Simon, is one of the books from the Music Motivation® Series. This book \r\nwas created to help piano students of all ages and skill levels learn how to improvise and arrange music of their own.', 10, 1);
INSERT INTO `goods` VALUES (15, 'Music Theory for the Bass Player: A Comprehensive and Hands-on Guide', 'picture/1-7.jpg', 'picture/1-7.jpg', 'picture/1-7.jpg', '31.46', 'Music Theory for the Bass Player is a comprehensive and immediately applicable \r\nguide to making you a well-grounded groover, informed bandmate and all-around \r\nmore creative musician.', 10, 1);
INSERT INTO `goods` VALUES (16, 'Little Book of Louis Vuitton: The Story of the Iconic Fashion House', 'picture/1-8.jpg', 'picture/1-8.jpg', 'picture/1-8.jpg', '12.61', 'Little Book of Louis Vuitton is the pocket-sized and fully illustrated story of one of the world\'s most \r\nluxurious fashion houses.', 10, 1);
INSERT INTO `goods` VALUES (18, 'The Botanist\'s Sticker Anthology INSTALL AND MAINTAIN GRID TIED', 'picture/1-9.jpg', 'picture/1-9.jpg', 'picture/1-9.jpg', '13.99', 'Get lost in the beauty of the natural world in this captivating collection of botanical stickers.\r\n\r\nPage after page is packed with beautiful vintage drawings of ornamental flowers, tropical ferns, \r\nand other exotic plants and fungi.', 10, 1);
INSERT INTO `goods` VALUES (19, 'Hayao Miyazaki The BRAND NEW winter release from Jessica Redland', 'picture/1-10.jpg', 'picture/1-10.jpg', 'picture/1-10.jpg', '37.49', 'A richly illustrated journey through the extraordinary cinematic worlds of beloved \r\nfilmmaker Hayao Miyazaki \r\n\r\nFor over four decades, Hayao Miyazaki has been enchanting audiences of all ages. \r\nHis animated films, often featuring children navigating unfamiliar and challenging worlds, \r\noffer timeless explorations of youth and what it means to grow up', 10, 1);
INSERT INTO `goods` VALUES (20, 'Avatar: The Last Airbender--The Lost Adventures and Team Avatar Tales Library ', 'picture/1-11.jpg', 'picture/1-11.jpg', 'picture/1-11.jpg', '23.99', 'The comics continuation of Nickelodeon\'s hit series Avatar: The Last Airbender returns with \r\na treasure trove of short stories, collected for the first time in hardcover!', 10, 1);
INSERT INTO `goods` VALUES (21, 'Disney Dreams Collection by Thomas Kinkade Studios: 2022 Wall Calendar', 'picture/1-12.jpg', 'picture/1-12.jpg', 'picture/1-12.jpg', '12.99', 'This tenth edition of the Disney Dreams Wall Calendar captures the timeless \r\nmagic of classic Disney stories and their captivating characters in settings imagined \r\nby Thomas Kinkade Studios.', 10, 1);
INSERT INTO `goods` VALUES (22, 'Humans New Stories About Mythic Heroes Divorce And Separation', 'picture/1-13.jpg', 'picture/1-13.jpg', 'picture/1-13.jpg', '14.90', '\"Just when we need it, Humans reminds us what it means to be human . . . \r\none of the most influential art projects of the decade.” ―Washington Post ', 10, 1);
INSERT INTO `goods` VALUES (24, 'Patterns of India: A Journey Through Colors, Textiles and type', 'picture/1-14.jpg', 'picture/1-14.jpg', 'picture/1-14.jpg', '4.99', 'It\'s the trip of a lifetime—a textile-based tour of colorful Rajasthan, India featuring more \r\nthan 200 lush photographs depicting everyday life in one of the most vibrant regions in the world.', 10, 1);
INSERT INTO `goods` VALUES (25, 'Ernst Haas: New York in Color, 1952-1962 winter release', 'picture/1-15.jpg', 'picture/1-15.jpg', 'picture/1-15.jpg', '27.99', 'The first book on master photographer Ernst Haas\'s work dedicated to both his classic \r\nand newly discovered New York City color photographs of the 1950s and 60s.', 10, 1);
INSERT INTO `goods` VALUES (26, 'Made for Living: Collected Interiors for All Sorts of Styles', 'picture/1-16.jpg', 'picture/1-16.jpg', 'picture/1-16.jpg', '12.99', 'NATIONAL BESTSELLER • The trendsetting designer known for her effortless style \r\nshares the secrets of the art of layering, with more than 250 gorgeous photographs of her \r\nsignature interiors.  ', 10, 1);
INSERT INTO `goods` VALUES (27, 'This is Home: The Art of Simple Living release from Jessica Redland', 'picture/1-17.jpg', 'picture/1-17.jpg', 'picture/1-17.jpg', '25.09', 'This is Home is a back-to-basics guide on how to create authentic wholehearted interiors. \r\nIt\'s about living simply – finding the essence of what makes you happy at home and creating spaces that reflect your needs and style. ', 10, 1);
INSERT INTO `goods` VALUES (28, 'Snowflakes Over The Starfish Café: The BRAND NEW winter ', 'picture/1-18.jpg', 'picture/1-18.jpg', 'picture/1-18.jpg', '3.99', '\'Heartbreakingly moving and yet beautifully uplifting, I cried for all the right reasons!\' Jo Bartlett', 10, 1);
INSERT INTO `goods` VALUES (29, 'A Collection of Stories for 2 Year Olds most beloved fairytale characters', 'picture/2-1.jpg', 'picture/2-1.jpg', 'picture/2-1.jpg', '9.99', 'Snuggle up to your favorite nursery rhymes and drift into the magical worlds of \r\nall your most beloved fairytale characters with this unique collection of enchanting \r\nstories carefully selected to enthrall 2-year-olds.', 10, 2);
INSERT INTO `goods` VALUES (30, 'Five-minute Stories: Over 50 Tales and Fables, and well-loved fairy tales. ', 'picture/2-2.jpg', 'picture/2-2.jpg', 'picture/2-2.jpg', '8.50', 'There is always time to read together with this deluxe treasure-trove of five-minute stories, \r\nfables, and well-loved fairy tales. ', 10, 2);
INSERT INTO `goods` VALUES (31, 'James Herriot\'s Treasury for Children: Warm and Joyful Tales by the Author', 'picture/2-3.jpg', 'picture/2-3.jpg', 'picture/2-3.jpg', '19.79', 'James Herriot\'s award-winning stories for young readers bring the farmyard world \r\nof Herriot\'s Yorkshire to vibrant life. ', 10, 2);
INSERT INTO `goods` VALUES (32, 'Winnie the Pooh My First Bedtime Storybook Tigger, Rabbit, and more', 'picture/2-4.jpg', 'picture/2-4.jpg', 'picture/2-4.jpg', '7.99', 'Adventure in the Hundred-Acre Woods!\r\nJoin favorite friends from the Hundred-Acre Woods Pooh, Piglet, Tigger, Rabbit, and more, \r\nfeaturing six bedtime stories in one very special storybook. ', 10, 2);
INSERT INTO `goods` VALUES (33, 'The Cursed Carnival and Other Calamities: New Stories ', 'picture/2-5.jpg', 'picture/2-5.jpg', 'picture/2-5.jpg', '9.99', 'Best-selling author Rick Riordan presents ten new stories--including one of his own--\r\nabout beloved heroes that sprang from the imaginations of some of the best middle \r\ngrade authors working today.', 10, 2);
INSERT INTO `goods` VALUES (34, 'We Will Always Love You:\r\nA Children’s Story Explaining Divorce', 'picture/2-6.jpg', 'picture/2-6.jpg', 'picture/2-6.jpg', '9.98', 'n times of change and family upheaval, children are often the ones in need of the \r\nmost validation and support, as they often blame themselves for the separation\r\n\r\nWe Will Always Love You helps to gently explain to children the changes and challenges \r\nthey may face during this difficult time, all while reinforcing the love that both parents have for them', 10, 2);
INSERT INTO `goods` VALUES (35, 'The Little Bookroom and In the home of my childhood filled with poetry', 'picture/2-7.jpg', 'picture/2-7.jpg', 'picture/2-7.jpg', '3.02', '“In the home of my childhood there was a room we called ‘The Little Bookroom.’ . . . That dusty bookroom, \r\nwhose windows were never opened . . . opened magic casements for me through which I looked out on other worlds . . . \r\nworlds filled with poetry and prose and fact and fantasy. . .” —Eleanor Farjeon', 10, 2);
INSERT INTO `goods` VALUES (36, 'It\'s Not Easy Being a Bunny and It’s Better Being a Bunny,available now!', 'picture/2-8.jpg', 'picture/2-8.jpg', 'picture/2-8.jpg', '1.64', 'P.J. Funnybunny doesn\'t want to be a bunny anymore! In this hilarious Beginner\r\nBook, a young bunny explores life with different animal friends. And don’t miss the charming follow-up, \r\nIt’s Better Being a Bunny, available now! This is a perfect gift for Easter or celebrating bunnies all year round.', 10, 2);
INSERT INTO `goods` VALUES (37, 'Not a Cat: a memoir 2nd Edition in Silicon Valley Paperback ', 'picture/2-9.jpg', 'picture/2-9.jpg', 'picture/2-9.jpg', '17.48', 'A funny, expansive, affirming story with a powerful message of self-determination \r\nfor young kids: No one can label us if we do not allow ourselves to be labeled. \r\nOur identities are ours to choose and to live.', 10, 2);
INSERT INTO `goods` VALUES (38, 'A Song Called Home And Applied Approach 1st ed and so on', 'picture/2-10.jpg', 'picture/2-10.jpg', 'picture/2-10.jpg', '15.29', 'From award-winning author Sara Zarr comes a story of the small moments that show us \r\nwho we are, and how family is not just something you’re part of, but something you make.', 10, 2);
INSERT INTO `goods` VALUES (39, 'Pilar Ramirez and the Escape out of the world 2nd edition', 'picture/2-11.jpg', 'picture/2-11.jpg', 'picture/2-11.jpg', '9.99', 'The Land of Stories meets Dominican myths and legends come to life in Pilar Ramirez \r\nand the Escape from Zafa, a blockbuster contemporary middle-grade fantasy duology starter \r\nfrom Julian Randall. Fans of Tristan Strong and The Storm Runner, here is your next obsession.', 10, 2);
INSERT INTO `goods` VALUES (40, 'The Sheep, the Rooster, and the Duck,Tigger,Rabbit, and more', 'picture/2-12.jpg', 'picture/2-12.jpg', 'picture/2-12.jpg', '16.63', 'Wherever there is injustice, nefarious plots, or threats to society, the Sheep, \r\nthe Rooster, and the Duck are there to stop them!', 10, 2);
INSERT INTO `goods` VALUES (41, 'Carbonel and Calidor Over 50 Tales and Fables, and well-loved fairy tales. ', 'picture/2-13.jpg', 'picture/2-13.jpg', 'picture/2-13.jpg', '12.99', 'Now in paperback, the third and final entry in Barbara Sleigh\'s enchanting \r\nCarbonel trilogy.', 10, 2);
INSERT INTO `goods` VALUES (42, 'Flash Facts,Distilled: Learn the Art of Solving Computational Problems ', 'picture/2-14.jpg', 'picture/2-14.jpg', 'picture/2-14.jpg', '8.29', 'Have you ever wondered: What\'s at the bottom of the sea? Why does polar ice melt? \r\nWhich tools does a forensics team use to solve a crime?', 10, 2);
INSERT INTO `goods` VALUES (44, 'The Weather: Pop-up Book,2nd Edition in Silicon Valley Paperback ', 'picture/2-15.jpg', 'picture/2-15.jpg', 'picture/2-15.jpg', '12.70', 'From raucous stormy seas to a welcomingly vivid rainbow, \r\nweather\'s most exciting moments come to brilliant life in this fantastic new pop-up book.', 10, 2);
INSERT INTO `goods` VALUES (45, 'Head First Java: A Brain-Friendly Guide 2nd Edition in Silicon Valley Paperback ', 'picture/3-1.jpg', 'picture/3-1.jpg', 'picture/3-1.jpg', '69.99', 'Learning a complex new language is no easy task especially when it s an object-oriented computer programming language like Java. ', 10, 3);
INSERT INTO `goods` VALUES (46, 'The Pragmatic Programmer: 20th Anniversary Edition,2nd Edition', 'picture/3-2.jpg', 'picture/3-2.jpg', 'picture/3-2.jpg', '27.94', 'The Pragmatic Programmer is one of those rare tech audiobooks you’ll listen, re-listen, and listen to again over the years. \r\nWhether you’re new to the field or an experienced practitioner, you’ll come away with fresh insights each and every time.', 10, 3);
INSERT INTO `goods` VALUES (47, 'Grokking Algorithms: An Illustrated Guide for Programmers', 'picture/3-3.jpg', 'picture/3-3.jpg', 'picture/3-3.jpg', '33.39', 'Grokking Algorithms is a fully illustrated, friendly guide that teaches you how to apply common algorithms to the practical problems you face every day as a programmer.\r\nYou\'ll start with sorting and searching and, as you build up your skills in thinking algorithmically, \r\nyou\'ll tackle more complex concerns such as data compression and artificial intelligence. \r\nEach carefully presented example includes helpful diagrams and fully annotated code samples in Python.', 10, 3);
INSERT INTO `goods` VALUES (48, 'Computer Science Distilled: Learn the Art of Solving Computational Problems ', 'picture/3-4.jpg', 'picture/3-4.jpg', 'picture/3-4.jpg', '25.00', 'A walkthrough of computer science concepts you must know. \r\nDesigned for readers who don\'t care for academic formalities, it\'s a fast and easy computer science guide. ', 10, 3);
INSERT INTO `goods` VALUES (49, 'Start with Why: How Great Leaders Inspire Everyone to Take Action', 'picture/3-5.jpg', 'picture/3-5.jpg', 'picture/3-5.jpg', '12.99', 'The inspirational best seller that ignited a movement and asked us to find our why.\r\n\r\n', 10, 3);
INSERT INTO `goods` VALUES (50, 'Designing Data-Intensive Applications: The Big Ideas Behind Reliable, Scalable', 'picture/3-6.jpg', 'picture/3-6.jpg', 'picture/3-6.jpg', '41.08', 'Data is at the center of many challenges in system design today. Difficult issues need to be figured out, such as scalability, consistency, reliability, efficiency, and maintainability.In addition, we have an overwhelming variety of tools, including relational databases, NoSQL datastores, stream or batch processors, and message brokers.What are the right choices for your application? How do you make sense of all these buzzwords?', 10, 3);
INSERT INTO `goods` VALUES (51, 'Building Microservices: Designing Fine-Grained Systems 2nd Edition ', 'picture/3-7.jpg', 'picture/3-7.jpg', 'picture/3-7.jpg', '40.99', 'As organizations shift from monolithic applications to smaller, self-contained microservices, distributed systems have become more fine-grained.But developing these new systems brings its own host of problems. This expanded second edition takes a holistic view of topics that you need to consider when building, managing, and scaling microservices architectures.\r\n', 10, 3);
INSERT INTO `goods` VALUES (52, 'Chaos Monkeys: Obscene Fortune and Random Failure in Silicon Valley Paperback ', 'picture/3-8.jpg', 'picture/3-8.jpg', 'picture/3-8.jpg', '11.99', 'An irresistible and indispensable 360-degree guide to the new technology establishment.... A must-read.', 10, 3);
INSERT INTO `goods` VALUES (53, 'The 40-Day Social Media Fast:Exchange Your Online Distractions', 'picture/3-9.jpg', 'picture/3-9.jpg', 'picture/3-9.jpg', '10.82', 'In the pattern of her popular 40-Day Sugar Fast, Wendy Speake offers you The 40-Day Social Media Fast. This \"screen sabbatical\" is designed to help you become fully conscious of your dependence on social media so you can purposefully unplug from screens and plug into real life with the help of a very real God.', 10, 3);
INSERT INTO `goods` VALUES (54, 'Quantum Computing: An Applied Approach 1st ed. 2019 Edition ', 'picture/3-10.jpg', 'picture/3-10.jpg', 'picture/3-10.jpg', '39.99', 'This book integrates the foundations of quantum computing with a hands-on coding approach to this emerging field; it is the first work to bring these strands together in an updated manner. This work is suitable for both academic coursework and corporate technical training.', 10, 3);
INSERT INTO `goods` VALUES (55, 'The Founders: The Story of Paypal and the Entrepreneurs ', 'picture/3-11.jpg', 'picture/3-11.jpg', 'picture/3-11.jpg', '14.99', '“A gripping account of PayPal’s origins and a vivid portrait of the geeks and contrarians who made its meteoric rise possible” (Wall Street Journal)—including Elon Musk, Amy Rowe Klement, Peter Thiel, Julie Anderson, Max Levchin, Reid Hoffman,and many others whose stories have never been shared.', 10, 3);
INSERT INTO `goods` VALUES (56, 'Passive Income: Learn How to Make Enough Money to Take an Early Retirement', 'picture/3-12.jpg', 'picture/3-12.jpg', 'picture/3-12.jpg', '12.95', 'If you are wondering how you can earn lots of cash without moving a muscle, you are in the right place! With a little bit of guidance and knowledge, you can be your own boss, earn a great deal of money and take an early retirement.Passive income is the holy grail that everyone is after. Everyone wants to enjoy life to the fullest. This guide will help you turn your dreams into reality.', 10, 3);
INSERT INTO `goods` VALUES (57, 'The Honey Bus: A Memoir of Loss, Courage and a Girl Saved by Bees Kindle', 'picture/4-1.jpg', 'picture/4-1.jpg', 'picture/4-1.jpg', '33.99', 'An extraordinary story of a girl, her grandfather and one of nature’s most mysterious and beguiling creatures: the honeybee. ', 10, 4);
INSERT INTO `goods` VALUES (58, 'The Network State: How To Start a New Country Kindle Edition ', 'picture/4-2.jpg', 'picture/4-2.jpg', 'picture/4-2.jpg', '9.99', '“Balaji has the highest rate of output per minute of good new ideas of anybody I’ve ever met, and The Network State may be his best.” — Marc Andreessen, cofounder of Andreessen Horowitz', 10, 4);
INSERT INTO `goods` VALUES (59, 'Stolen Focus: Why You Can\'t Pay Attention Living and Survival Techniques', 'picture/4-3.jpg', 'picture/4-3.jpg', 'picture/4-3.jpg', '13.99', 'NEW YORK TIMES BESTSELLER • Our ability to pay attention is collapsing. From the New York Times bestselling author of Chasing the Scream and Lost Connections comes a groundbreaking', 10, 4);
INSERT INTO `goods` VALUES (61, 'Bad Blood: Secrets and Lies in a Silicon Valley Startup 2nd edition', 'picture/4-4.jpg', 'picture/4-4.jpg', 'picture/4-4.jpg', '13.99', 'NATIONAL BESTSELLER • The gripping story of Elizabeth Holmes and Theranos—one of the biggest corporate frauds in history—a tale of ambition and hubris set amid the bold promises of Silicon Valley, rigorously reported by the prize-winning journalist. With a new Afterword.', 10, 4);
INSERT INTO `goods` VALUES (68, 'The Prepper\'s Survival Bible: 3 in 1 Collection | Foods to Stockpile, Off-Grid Living', 'picture/4-5.jpg', 'picture/4-5.jpg', 'picture/4-5.jpg', '22.99', 'We live in dangerous times, and wise people worldwide realize that being prepared can mean a difference in the long run. ', 10, 4);
INSERT INTO `goods` VALUES (69, 'Arriving Today: From Factory to Front Door and windows', 'picture/4-6.jpg', 'picture/4-6.jpg', 'picture/4-6.jpg', '21.31', 'The Wall Street Journal technology columnist reveals the fascinating story behind the misleadingly simple phrase shoppers take for granted—“Arriving Today”—in this eye-opening investigation into the new rules of online commerce, transportation, and supply chain management.', 10, 4);
INSERT INTO `goods` VALUES (70, ' Old-Fashioned Toolmaking: The Classic Treatise on Lapping, Threading', 'picture/4-7.jpg', 'picture/4-7.jpg', 'picture/4-7.jpg', '22.01', 'Bringing together the collective wisdom of a past generation of craftsmen, Old Fashioned Toolmaking provides an in-depth record of the skills and techniques that made the mass production revolution of the twentieth century possible. ', 10, 4);
INSERT INTO `goods` VALUES (71, 'Word Search for Kids Ages 6-8: 100 Word Search Puzzles (Search and Find)', 'picture/4-8.jpg', 'picture/4-8.jpg', 'picture/4-8.jpg', '6.99', 'Are you looking for a fun way to boost your child’s learning while providing hours of screen-free entertainment? This book of word search puzzles is the perfect choice. ', 10, 4);
INSERT INTO `goods` VALUES (72, 'DIY SOLAR POWER FOR BEGINNERS: A TECHNICAL GUIDE ON HOW TO DESIGN', 'picture/4-9.jpg', 'picture/4-9.jpg', 'picture/4-9.jpg', '14.99', 'Imagine if you could cut your electricity bill in half by adding a solar setup to your house. Now what if I said you could design and install your DIY solar power system and escape the labor costs?', 10, 4);
INSERT INTO `goods` VALUES (73, 'Haynes Repair Manual,Courage and a Girl Saved by Bees Kindle', 'picture/4-10.jpg', 'picture/4-10.jpg', 'picture/4-10.jpg', '32.27', 'Each Haynes manual is written for the do-it-yourselfer and provides step-by-step instructions based on a complete disassembly of the vehicle.  This hands-on experience provides the reader with specific and detailed', 10, 4);
INSERT INTO `goods` VALUES (74, 'The Complete Driving Education Manual for New Drivers', 'picture/4-11.jpg', 'picture/4-11.jpg', 'picture/4-11.jpg', '9.97', 'If you want to get your loved ones behind the wheel without losing your sleep, then keep reading…', 10, 4);
INSERT INTO `goods` VALUES (75, 'Vanderbilt: The Rise and Fall of an American Dynasty Hardcover ', 'picture/4-12.jpg', 'picture/4-12.jpg', 'picture/4-12.jpg', '14.99', 'New York Times bestselling author and journalist Anderson Cooper teams with New York Times bestselling historian and novelist Katherine Howe to chronicle the rise and fall of a legendary American dynasty—his mother‘s family, the Vanderbilts', 10, 4);
INSERT INTO `goods` VALUES (76, 'Pirate Women: The Princesses, Prostitutes, and Privateers ', 'picture/4-13.jpg', 'picture/4-13.jpg', 'picture/4-13.jpg', '17.99', 'In the first-ever comprehensive survey of the world\'s female buccaneers, Pirate Women: The Princesses, Prostitutes, and Privateers Who Ruled the Seven Seas tells of the women, both real and legendary, who through the ages sailed alongside—and sometimes in command of—their male counterparts.', 10, 4);
INSERT INTO `goods` VALUES (77, 'The First 90 Days: Proven Strategies for Getting Up-4th edition', 'picture/5-1.jpg', 'picture/5-1-1.jpg', 'picture/5-1-2.jpg', '4.73', 'The world\'s most trusted guide for leaders in transition', 10, 5);
INSERT INTO `goods` VALUES (78, 'Profit First: Transform Your Business from a Cash-Eating Monster', 'picture/5-2.jpg', 'picture/5-2.jpg', 'picture/5-2.jpg', '13.42', 'Author of cult classics The Pumpkin Plan and The Toilet Paper Entrepreneur offers a simple, counterintuitive cash management solution that will help small businesses break out of the doom spiral and achieve instant profitability.', 10, 5);
INSERT INTO `goods` VALUES (79, 'Profit First for Real Estate Investing Paperback — 5th edition', 'picture/5-3.jpg', 'picture/5-3-1.jpg', 'picture/5-3-1.jpg', '21.16', 'It\'s time to stop living deal to deal.', 10, 5);
INSERT INTO `goods` VALUES (80, 'The Millionaire Real Estate Investor: Buy Low, Rent High — 5th edition', 'picture/5-4.jpg', 'picture/5-4-1.jpg', 'picture/5-4-2.jpg', '4.40', '\'This book is not just a bargain, it\'s a steal. It\'s filled with practical, workable advice for anyone wanting to build wealth.\'-Mike Summey, co-author of the bestselling The Weekend Millionaire\'s Secrets to Investing in Real Estate', 10, 5);
INSERT INTO `goods` VALUES (81, 'Financial Freedom with Real Estate Investing: The Blueprint To Quitting', 'picture/5-5.jpg', 'picture/5-5-1.jpg', 'picture/5-5-1.jpg', '14.99', 'Discover the (surprising) secret to lifelong financial freedom with real estate investing', 10, 5);
INSERT INTO `goods` VALUES (82, 'Investing in Rental Properties for Beginners: Buy Low, Rent High', 'picture/5-6.jpg', 'picture/5-6-1.jpg', 'picture/5-6-1.jpg', '9.99', 'This will teach you (the ordinary investor) how to tailor your investment strategy to your pocketbooks (and no one else\'s)', 10, 5);
INSERT INTO `goods` VALUES (83, 'Buy It, Rent It, Profit! (Updated Edition): Make Money as a Landlord', 'picture/5-7.jpg', 'picture/5-7-1.jpg', 'picture/5-7-1.jpg', '15.49', 'Now updated for today’s bullish real estate market, this is the go-to, classic entrepreneurial guide for landlords and real estate investors who want to buy and manage rental properties for long-term wealth.', 10, 5);
INSERT INTO `goods` VALUES (84, '$100M Offers: How To Make Offers So Good People Feel Stupid Saying No', 'picture/5-8.jpg', 'picture/5-8-1.jpg', 'picture/5-8-2.jpg', '24.91', 'If you want to get more prospects to reply to your ads for less advertising dollars, and get them to say YES to breathtaking prices...then grab this book, use its contents, and see for yourself.', 10, 5);
INSERT INTO `goods` VALUES (85, 'How To Write Emails That Sell: Secrets From The Most Profitable Emails', 'picture/5-9.jpg', 'picture/5-9-1.jpg', 'picture/5-9-1.jpg', '11.97', 'Short Read To Master The Art Of Emails', 10, 5);
INSERT INTO `goods` VALUES (86, 'Sales Secrets: The World\'s Top Salespeople Share Their Secrets to Success', 'picture/5-10.jpg', 'picture/5-10-1.jpg', 'picture/5-10-2.jpg', '18.98', 'Get Sales Secrets today to learn from the best, study the best, and sell like the best!', 10, 5);
INSERT INTO `goods` VALUES (87, 'Seven Figure Social Selling: Over 400 Pages of Proven Social Selling Scripts', 'picture/5-11.jpg', 'picture/5-11-1.jpg', 'picture/5-11-1.jpg', '18.64', 'Once you\'ve mastered social selling, you\'ll never be without work or money again!', 10, 5);
INSERT INTO `goods` VALUES (88, 'Instagram Income: How Solo Entrepreneurs and Small Companies can Make Money', 'picture/5-12.jpg', 'picture/5-12-1.jpg', 'picture/5-12-1.jpg', '12.99', 'Be ready to never look at IG the same way again.', 10, 5);
INSERT INTO `goods` VALUES (89, 'An Easy & Proven Way to Build Good Habits & Break Bad Ones—2nd edition', 'picture/5-13.jpg', 'picture/5-13-1.jpg', 'picture/5-13-1.jpg', '10.42', 'Tiny Changes, Remarkable Results', 10, 5);
INSERT INTO `goods` VALUES (90, 'The Bond King: How One Man Made a Market, Built an Empire and so on', 'picture/5-14.jpg', 'picture/5-14.jpg', 'picture/5-14.jpg', '20.99', 'From the host of NPR’s Planet Money, the deeply-investigated story of how one visionary, dogged investor changed American finance forever.', 10, 5);
INSERT INTO `goods` VALUES (91, 'Trading in the Zone: Master the Market with Confidence, Discipline', 'picture/5-15.jpg', 'picture/5-15.jpg', 'picture/5-15.jpg', '22.00', 'Douglas uncovers the underlying reasons for lack of consistency and helps traders overcome the ingrained mental habits that cost them money.', 10, 5);
INSERT INTO `goods` VALUES (92, 'Principles for Dealing with the Changing World Order: Why Nations Succeed and Fail ', 'picture/6-1.jpg', 'picture/6-1-1.jpg', 'picture/6-1-1.jpg', '21.00', 'Life and Work, Winner of the Axiom Business Book Award for 2018', 10, 6);
INSERT INTO `goods` VALUES (93, 'The Gates of Europe', 'picture/6-2.jpg', 'picture/6-2-1.jpg', 'picture/6-2-1.jpg', '12.99', 'A New York Times bestseller, this definitive history of Ukraine is “an exemplary account of Europe’s least-known large country', 10, 6);
INSERT INTO `goods` VALUES (94, 'We Don\'t Know Ourselves: A Personal History of Modern Ireland', 'picture/6-3.jpg', 'picture/6-3.jpg', 'picture/6-3.jpg', '25.97', 'A celebrated Irish writer’s magisterial, brilliantly insightful chronicle of the wrenching transformations that dragged his homeland into the modern world.', 10, 6);
INSERT INTO `goods` VALUES (95, 'The Trials of Harry S. Truman: The Extraordinary Presidency of an Ordinary Man, 1945-1953', 'picture/6-4.jpg', 'picture/6-4-1.jpg', 'picture/6-4-1.jpg', '26.79', 'recounting how so ordinary a man met the extraordinary challenge of leading America through the pivotal years of the mid-20th century.', 10, 6);
INSERT INTO `goods` VALUES (96, 'April 1945: The Hinge of History', 'picture/6-5.jpg', 'picture/6-5.jpg', 'picture/6-5.jpg', '24.48', 'Acclaimed historian and New York Times bestselling author Craig Shirley delivers a compelling account of 1945, particularly the watershed events in the month of April, that details how America emerged from World War II as a leading superpower.', 10, 6);
INSERT INTO `goods` VALUES (97, 'Ways and Means: Lincoln and His Cabinet and the Financing of the Civil War', 'picture/6-6.jpg', 'picture/6-6.jpg', 'picture/6-6.jpg', '25.15', 'Captivating . . . [Lowenstein] makes what subsequently occurred at Treasury and on Wall Street during the early 1860s seem as enthralling as what transpired on the battlefield or at the White House.', 10, 6);
INSERT INTO `goods` VALUES (98, 'Lincoln and the Fight for Peace ', 'picture/6-7.jpg', 'picture/6-7-1.jpg', 'picture/6-7-1.jpg', '22.39', 'A groundbreaking, revelatory history of Abraham Lincoln’s plan to secure a just and lasting peace after the Civil War', 10, 6);
INSERT INTO `goods` VALUES (99, 'Salmon P. Chase: Lincoln\'s Vital Rival', 'picture/6-8.jpg', 'picture/6-8-1.jpg', 'picture/6-8-1.jpg', '22.64', 'From an acclaimed, New York Times bestselling biographer, a timely reassessment of Abraham Lincoln’s indispensable Secretary of the Treasury: a leading proponent for black rights both before and during his years in cabinet and later as Chief Justice of the United States.', 10, 6);
INSERT INTO `goods` VALUES (100, 'Campaign of the Century: Kennedy, Nixon, and the Election of 1960', 'picture/6-9.jpg', 'picture/6-9.jpg', 'picture/6-9.jpg', '27.99', '[Gellman] offers as detailed an exploration of the 1960 presidential race as can be found.', 10, 6);
INSERT INTO `goods` VALUES (101, 'The Jazz Age President: Defending Warren G. Harding', 'picture/6-10.jpg', 'picture/6-10.jpg', 'picture/6-10.jpg', '18.97', 'Presidents are ranked wrong. In The Jazz Age President: Defending Warren G. Harding, Ryan Walters mounts a case that Harding deserves to move up—and supplies the evidence to make that case strong', 10, 6);
INSERT INTO `goods` VALUES (102, 'One Damn Thing After Another: Memoirs of an Attorney General', 'picture/6-11.jpg', 'picture/6-11.jpg', 'picture/6-11.jpg', '21.91', 'The former attorney general provides a candid account of his historic tenures serving two vastly different presidents, George H.W. Bush and Donald J. Trump.', 10, 6);
INSERT INTO `goods` VALUES (103, 'How reasonable Americans could support Trump: Helping liberals understand the MAGAverse, and whatever comes next', 'picture/6-12.jpg', 'picture/6-12-1.jpg', 'picture/6-12-1.jpg', '17.00', 'We are a deeply divided country.', 10, 6);
INSERT INTO `goods` VALUES (104, '“Our Crowd”: The Great Jewish Families of New York (Modern Jewish History)', 'picture/6-13.jpg', 'picture/6-13.jpg', 'picture/6-13.jpg', '49.00', 'The #1 New York Times bestseller that traces the rise of the Guggenheims, the Goldmans, and other families from immigrant poverty to social prominence.', 10, 6);
INSERT INTO `goods` VALUES (105, 'Princeton Review AP U.S. History Premium Prep, 2022: 6 Practice Tests + Complete Content Review + Strategies & Techniques (2022)', 'picture/6-14.jpg', 'picture/6-14.jpg', 'picture/6-14.jpg', '17.86', 'Ace the 2022 AP U.S. History Exam with this Premium version of The Princeton Review\'s comprehensive study guide. Includes 6 full-length practice exams, thorough content reviews, targeted test strategies, and access to online extras.', 10, 6);
INSERT INTO `goods` VALUES (106, 'Run, Rose, Run', 'picture/7-1.jpg', 'picture/7-1.jpg', 'picture/7-1.jpg', '18.00', 'a thriller about a young singer-songwriter on the rise and on the run, and determined to do whatever it takes to survive.', 10, 7);
INSERT INTO `goods` VALUES (107, 'Berserk Deluxe Volume 1', 'picture/7-2.jpg', 'picture/7-2-1.jpg', 'picture/7-2-2.jpg', '36.68', 'an international legion of hardcore devotees', 10, 7);
INSERT INTO `goods` VALUES (108, 'The Boy, the Mole, the Fox and the Horse', 'picture/7-3.jpg', 'picture7-3-1.jpg', 'picture/7-3-2.jpg', '5.84', '#1 NEW YORK TIMES BESTSELLER', 10, 7);
INSERT INTO `goods` VALUES (109, 'I\'m Not Scared, You\'re Scared——5th edition', 'picture/7-4.jpg', 'picture/7-4-1.jpg', 'picture/7-4-2.jpg', '14.49', 'The author of Get Out of Your Head offers practical solutions for creating true community, the kind that’s crucial to our mental and spiritual health.', 10, 7);
INSERT INTO `goods` VALUES (110, 'Find Your People: Building Deep Community in a Lonely World', 'picture/7-5.jpg', 'picture/7-5.jpg', 'picture/7-5.jpg', '15.53', 'The author of Get Out of Your Head offers practical solutions for creating true community, the kind that’s crucial to our mental and spiritual health.', 10, 7);
INSERT INTO `goods` VALUES (111, 'Get Out of Your Head: Stopping the Spiral of Toxic Thoughts', 'picture/7-6.jpg', 'picture/7-6-1.jpg', 'picture/7-6-2.jpg', '14.34', 'A must-have resource for anyone looking to get control of their thoughts.', 10, 7);
INSERT INTO `goods` VALUES (112, 'The Butcher and The Wren: A Novel', 'picture/7-7.jpg', 'picture/7-7.jpg', 'picture/7-7.jpg', '27.00', 'From the co-host of chart-topping true crime podcast Morbid, a thrilling debut novel told from the dueling perspectives of a notorious serial killer and the medical examiner following where his trail of victims leads', 10, 7);
INSERT INTO `goods` VALUES (113, 'The Lincoln Highway: A Novel', 'picture/7-8.jpg', 'picture/7-8.jpg', 'picture/7-8.jpg', '14.99', 'A New York Times Notable Book, and Chosen by Oprah Daily, Time, NPR, The Washington Post and Barack Obama as a Best Book of the Year', 10, 7);
INSERT INTO `goods` VALUES (114, 'The Midnight Library: A Novel', 'picture/7-9.jpg', 'picture/7-9.jpg', 'picture7-9.jpg', '13.29', 'Winner of the Goodreads Choice Award for Fiction | A Good Morning America Book Club Pick | Independent (London) Ten Best Books of the Year', 10, 7);
INSERT INTO `goods` VALUES (115, 'The Paris Apartment: A Novel ', 'picture/7-10.jpg', 'picture/7-10.jpg', 'picture/7-10.jpg', '18.16', 'a thriller about a young singer-songwriter on the rise and on the run, and determined to do whatever it takes to survive.', 10, 7);
INSERT INTO `goods` VALUES (116, 'The Maid: A Novel', 'picture/7-11.jpg', 'picture/7-11.jpg', 'picture/7-11.jpg', '17.26', 'The reader comes to understand Molly’s worldview, and to sympathize with her longing to be accepted—a quest that gives The Maid real emotional heft.', 10, 7);
INSERT INTO `goods` VALUES (117, 'Where the Crawdads Sing', 'picture/7-12.jpg', 'picture/7-12.jpg', 'picture/7-12.jpg', '3.95', 'I can\'t even express how much I love this book! I didn\'t want this story to end!', 10, 7);
INSERT INTO `goods` VALUES (118, 'The Lightning Rod: A Zig & Nola Novel', 'picture/7-13.jpg', 'picture/7-13.jpg', 'picture/7-13.jpg', '18.42', 'Zig and Nola are back—in the hugely entertaining, highly anticipated follow-up to Brad Meltzer’s #1 New York Times bestselling thriller The Escape Artist.', 10, 7);
INSERT INTO `goods` VALUES (119, 'The Club: A Novel', 'picture/7-14.jpg', 'picture/7-14.jpg', 'picture/7-14.jpg', '17.17', 'From the author of People Like Her comes a smart and sinister murder mystery set in the secretive world of exclusive celebrity clubs.', 10, 7);

-- ----------------------------
-- Table structure for order
-- ----------------------------
DROP TABLE IF EXISTS `order`;
CREATE TABLE `order`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `total` float NULL DEFAULT NULL,
  `amount` int NULL DEFAULT NULL,
  `status` tinyint(1) NULL DEFAULT NULL,
  `paytype` tinyint(1) NULL DEFAULT NULL,
  `name` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `phone` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `address` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `datetime` datetime NULL DEFAULT NULL,
  `user_id` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `fk_user_id_idx`(`user_id` ASC) USING BTREE,
  CONSTRAINT `fk_user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 96 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of order
-- ----------------------------
INSERT INTO `order` VALUES (95, 65, 2, 2, 1, 'Hypnus', '1111', '1111', '2022-03-24 15:39:32', 39);

-- ----------------------------
-- Table structure for orderitem
-- ----------------------------
DROP TABLE IF EXISTS `orderitem`;
CREATE TABLE `orderitem`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `price` float NULL DEFAULT NULL,
  `amount` int NULL DEFAULT NULL,
  `goods_id` int NULL DEFAULT NULL,
  `order_id` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `fk_order_id_idx`(`order_id` ASC) USING BTREE,
  INDEX `fk_orderitem_goods_id_idx`(`goods_id` ASC) USING BTREE,
  CONSTRAINT `fk_order_id` FOREIGN KEY (`order_id`) REFERENCES `order` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_orderitem_goods_id` FOREIGN KEY (`goods_id`) REFERENCES `goods` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 106 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of orderitem
-- ----------------------------
INSERT INTO `orderitem` VALUES (104, 36, 1, 13, 95);
INSERT INTO `orderitem` VALUES (105, 29, 1, 14, 95);

-- ----------------------------
-- Table structure for recommend
-- ----------------------------
DROP TABLE IF EXISTS `recommend`;
CREATE TABLE `recommend`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `type` tinyint(1) NULL DEFAULT NULL,
  `goods_id` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `fk_goods_id_idx`(`goods_id` ASC) USING BTREE,
  CONSTRAINT `fk_goods_id` FOREIGN KEY (`goods_id`) REFERENCES `goods` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 50 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of recommend
-- ----------------------------
INSERT INTO `recommend` VALUES (11, 3, 12);
INSERT INTO `recommend` VALUES (12, 3, 13);
INSERT INTO `recommend` VALUES (13, 3, 14);
INSERT INTO `recommend` VALUES (14, 3, 15);
INSERT INTO `recommend` VALUES (15, 3, 16);
INSERT INTO `recommend` VALUES (17, 3, 18);
INSERT INTO `recommend` VALUES (18, 3, 19);
INSERT INTO `recommend` VALUES (33, 2, 10);
INSERT INTO `recommend` VALUES (34, 2, 11);
INSERT INTO `recommend` VALUES (35, 2, 12);
INSERT INTO `recommend` VALUES (36, 2, 13);
INSERT INTO `recommend` VALUES (37, 2, 14);
INSERT INTO `recommend` VALUES (38, 2, 15);
INSERT INTO `recommend` VALUES (39, 2, 16);
INSERT INTO `recommend` VALUES (40, 2, 18);
INSERT INTO `recommend` VALUES (41, 2, 26);
INSERT INTO `recommend` VALUES (44, 3, 10);
INSERT INTO `recommend` VALUES (47, 2, 9);
INSERT INTO `recommend` VALUES (48, 3, 9);
INSERT INTO `recommend` VALUES (49, 1, 13);

-- ----------------------------
-- Table structure for type
-- ----------------------------
DROP TABLE IF EXISTS `type`;
CREATE TABLE `type`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of type
-- ----------------------------
INSERT INTO `type` VALUES (1, 'Arts & Photograph');
INSERT INTO `type` VALUES (2, 'Children\'s Book');
INSERT INTO `type` VALUES (3, 'Computing and Technology');
INSERT INTO `type` VALUES (4, 'Engineering and Transportation');
INSERT INTO `type` VALUES (5, 'Business & Money');
INSERT INTO `type` VALUES (6, 'History');
INSERT INTO `type` VALUES (7, 'Literature');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `phone` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `address` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `isadmin` bit(1) NULL DEFAULT NULL,
  `isvalidate` bit(1) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username_UNIQUE`(`username` ASC) USING BTREE,
  UNIQUE INDEX `email_UNIQUE`(`email` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 40 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'admin', 'admin@vilicode.com', 'admin', '管理员', '3330048', '中华人民共和国', b'1', b'0');
INSERT INTO `user` VALUES (37, 'randy', '2396129937@qq.com', 'randy', 'randy', '18819773661', '清远东城', b'0', b'0');
INSERT INTO `user` VALUES (38, 'syz', '3324779867@qq.com', 'pch520', 'syz', '15773852102', '湖南长沙', b'0', b'0');
INSERT INTO `user` VALUES (39, 'Hypnus', '605597301@qq.com', '123456', 'Hypnus', '1111', '1111', b'0', b'0');

SET FOREIGN_KEY_CHECKS = 1;
