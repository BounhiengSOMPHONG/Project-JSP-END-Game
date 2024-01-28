-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 28, 2024 at 06:05 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_project_jsp`
--

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `b_id` int(11) NOT NULL,
  `b_image` varchar(255) NOT NULL,
  `b_title` varchar(80) NOT NULL,
  `b_synopsis` varchar(500) NOT NULL,
  `b_price` int(11) NOT NULL,
  `a_id` int(11) NOT NULL,
  `bt_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`b_id`, `b_image`, `b_title`, `b_synopsis`, `b_price`, `a_id`, `bt_id`) VALUES
(3, 'king solomon\'s mines.jpg', 'king solomon\'s mines', 'ປຶ້ມຫົວນີ້ອະທິບາຍເຖິງຄັງຊັບສົມບັດຂອງກະສັດທີ່ຮັ່ງມີທີ່ສຸດໃນໂລກ. ນິທານທີ່ມີຊື່ສຽງຢູ່ປາຍຟ້າ ແລະອາລະຍະທໍາທີ່ຍັງເຫຼືອຂອງຕົວເມືອງວັດຖຸບູຮານທີ່ສໍາຄັນ ທີ່ນັກຜະຈົນໄພຫຼາຍຄົນຕ້ອງການຊອກຫາ ແລະຄອບຄອງ', 250000, 4, 4),
(4, 'don quixote.jpg', 'don quixote', 'ດິນຕອນຂອງນະວະນິຍາຍນີ້ ຫມາຍເຖິງຜູ້ສູງອາຍຸແລະຜູ້ສູງອາຍຸ. ແລະ​ຜູ້​ບໍ່​ມີ​ອຳນາດ​ຂອງ​ພາກ​ພື້ນ La Mancha. ຜູ້ທີ່ເປັນ Crazy ຫຼາຍກ່ຽວກັບນະວະນິຍາຍ knight ພວກ​ເຂົາ​ເຈົ້າ​ແມ່ນ​ແຕ່​ຂາຍ​ທີ່​ດິນ​ຫຼາຍ​ເພື່ອ​ຊື້​ນະ​ວະ​ນິ​ຍາຍ knight​. ໃນທີ່ສຸດ, ຂ້າພະເຈົ້າຄິດວ່າທຸກສິ່ງທຸກຢ່າງຢູ່ໃນເລື່ອງເຫຼົ່ານັ້ນແມ່ນຄວາມຈິງ. ດັ່ງນັ້ນຈຶ່ງປາດຖະຫນາທີ່ຈະກາຍເປັນ knight ທີ່ຍິ່ງໃຫຍ່ດັ່ງທີ່ສະແດງຢູ່ໃນຫນັງສືເຫຼົ່ານັ້ນ.', 300000, 5, 5),
(5, 'journey to the center.jpg', 'journey to the center', 'ເລື່ອງຂອງນັກສໍາຫຼວດສາມຄົນທີ່ໄດ້ຕົກເຂົ້າໄປໃນໂລກທີ່ແປກປະຫລາດທີ່ສຸດຂອງ underworld. ບ່ອນ​ທີ່​ເຂົາ​ເຈົ້າ​ຄົ້ນ​ພົບ​ການ​ເດີນ​ທາງ​ທີ່​ປະ​ເສີດ​ໃນ​ບັນ​ດາ​ອັນ​ຕະ​ລາຍ​ຢູ່​ອ້ອມ​ຂ້າງ​. ໃນລະຫວ່າງການທົດລອງວິທະຍາສາດໃນໄອສແລນ', 500000, 6, 4),
(6, 'the count of monte cristo.jpg', 'the count of monte cristo', 'ເລື່ອງເກີດຂຶ້ນໃນປະເທດຝຣັ່ງ, ອີຕາລີແລະເກາະຕ່າງໆ. ໃນ Mediterranean ໃນລະຫວ່າງເຫດການປະຫວັດສາດຂອງ 1815-1839: ຍຸກຂອງການຟື້ນຟູ Bourbon ຈົນກ່ວາການປົກຄອງຂອງ Louis-Philippe ຂອງຝຣັ່ງ. ມັນເລີ່ມຕົ້ນໃນມື້ທີ່ Napoleon ອອກຈາກເກາະທໍາອິດຂອງລາວທີ່ຖືກເນລະເທດ, Elba. ນີ້ແມ່ນຈຸດເລີ່ມຕົ້ນຂອງໄລຍະເວລາຮ້ອຍວັນທີ່ Napoleon ກັບຄືນສູ່ອໍານາດ. ການຕັ້ງຄ່າປະຫວັດສາດແມ່ນອົງປະກອບພື້ນຖານຂອງຫນັງສື. ມັນເປັນເລື່ອງຜະຈົນໄພທີ່ກ່ຽວຂ້ອງກັບຫົວຂໍ້ຂອງຄວາມຫວັງ, ຄວາມຍຸດຕິທໍາ, ການແກ້ແຄ້ນ, ຄວາມເມດຕາ, ແລະການໃຫ້ອະໄພ.', 300000, 7, 10),
(7, 'the three musketeer.jpg', 'the three musketeer', 'ຕັ້ງຢູ່ໃນສະຕະວັດທີ 17, ນະວະນິຍາຍປະຕິບັດຕາມການຜະຈົນໄພຂອງດາບຫນຸ່ມຈາກ Gascoigne ຊື່ d\'Artagnan ຜູ້ທີ່ເດີນທາງໄປປາຣີເພື່ອເຂົ້າຮ່ວມກັບ bodyguard ຂອງກະສັດຝຣັ່ງ. ໄດ້​ພົບ​ປະ​ແລະ​ໄດ້​ໃກ້​ຊິດ​ກັບ​ \"ສາມ Musketeers\" ປະກອບດ້ວຍ Athos, Porthos, ແລະ Aramis, ແລະໄດ້ຖືກພິຈາລະນາເປັນອ້າຍນ້ອງສາບານ.', 250000, 7, 3),
(9, 'treasure island.jpg', 'treasure island', 'ເລື່ອງນີ້ເກີດຂຶ້ນໃນທ້າຍສະຕະວັດທີ 18 ແລະເກີດຂຶ້ນກັບເດັກຊາຍຊື່ Jim. Hawkins, ຜູ້ທີ່ອາໃສຢູ່ກັບແມ່ຂອງລາວຢູ່ຮ້ານໃນບ້ານແຄມຝັ່ງທະເລຂອງອັງກິດ ຈິມຊອກຫາແຜນທີ່ເກາະທີ່ເຊື່ອງຊັບສົມບັດຂອງໂຈນສະລັດທີ່ຝັງຢູ່ໃນເກາະແຫ່ງໜຶ່ງໃນທະເລຄາລິບຽນ', 150000, 8, 8),
(11, 'The Hitchhiker’s Guide to the Galaxy.jpg', 'The Hitchhiker’s Guide to the Galaxy', 'ວິນາທີກ່ອນທີ່ໂລກຈະຖືກທໍາລາຍເພື່ອສ້າງເສັ້ນທາງໄປສູ່ທາງດ່ວນຂອງກາແລັກຊີ, Arthur Dent ໄດ້ຖືກຖອນອອກຈາກໂລກໂດຍເພື່ອນຂອງລາວ Ford Prefect, ນັກຄົ້ນຄວ້າສໍາລັບສະບັບປັບປຸງຂອງຄູ່ມື Hitchhiker ຂອງ Galaxy ຜູ້ທີ່, ສໍາລັບສິບຫ້າປີທີ່ຜ່ານມາ, ໄດ້ ວາງຕົວເປັນນັກສະແດງນອກການເຮັດວຽກ.', 500000, 10, 6),
(12, '1.jpg', 'The Girl with the Dragon Tattoo', 'Harriet Vanger, ນັກວິທະຍາສາດຂອງຄອບຄົວທີ່ຮັ່ງມີທີ່ສຸດຂອງສວີເດນໄດ້ຫາຍຕົວໄປໃນໄລຍະສີ່ສິບປີກ່ອນ. ທັງໝົດນີ້ຫຼາຍປີຕໍ່ມາ, ລຸງອາຍຸຂອງນາງຍັງສືບຕໍ່ຊອກຫາຄວາມຈິງ. ລາວໄດ້ຈ້າງ Mikael Blomkvist, ນັກຂ່າວທີ່ເປັນໂຈນສະຫລັດທີ່ຕິດຢູ່ໂດຍຖືກຕັດສິນໂທດໃສ່ຮ້າຍປ້າຍສີ, ເພື່ອສືບສວນ', 250000, 9, 3),
(13, 'Ruthless Vows.jpg', 'Ruthless Vows', 'ສອງອາທິດຜ່ານໄປນັບຕັ້ງແຕ່ Iris Winnow ກັບຄືນບ້ານດ້ວຍຄວາມເຈັບປວດແລະຫົວໃຈຫັກຈາກທາງຫນ້າ, ແຕ່ສົງຄາມແມ່ນຢູ່ໄກກວ່າ. Roman ຫາຍ​ສາບ​ສູນ​ໄປ, ແລະ​ເມືອງ Oath ຍັງ​ຄົງ​ຢູ່​ໃນ​ສະ​ພາບ​ຂອງ​ການ​ບໍ່​ເຊື່ອ​ຖື​ແລະ​ຄວາມ​ໂງ່.', 150000, 11, 7),
(14, 'All Quiet on the Western Front.jpg', 'All Quiet on the Western Front', 'ໃນ​ປີ 1914 ຫ້ອງ​ທີ່​ເຕັມ​ໄປ​ດ້ວຍ​ເດັກ​ນ້ອຍ​ນັກ​ຮຽນ​ເຍຍ​ລະ​ມັນ, ໃບ​ຫນ້າ​ສົດ​ໃສ​ແລະ​ສົມ​ມຸດ​ຕິ​ຖານ, ໄດ້​ຖືກ​ນໍາ​ໂດຍ​ຜູ້​ອໍາ​ນວຍ​ການ​ໂຮງ​ຮຽນ​ຂອງ​ເຂົາ​ເຈົ້າ​ເພື່ອ​ຍົກ​ຍ້າຍ​ອອກ​ໄປ \'ສົງ​ຄາມ​ອັນ​ຮຸ່ງ​ໂລດ\'. ດ້ວຍໄຟແລະຄວາມຮັກຊາດຂອງໄວຫນຸ່ມພວກເຂົາລົງທະບຽນ. ສິ່ງທີ່ຕໍ່ໄປນີ້ແມ່ນເລື່ອງທີ່ເຄື່ອນທີ່ຂອງ \'ທະຫານທີ່ບໍ່ຮູ້ຕົວ\' ຫນຸ່ມທີ່ປະສົບກັບຄວາມຢ້ານແລະຄວາມຫຼົງໄຫຼຂອງຊີວິດຢູ່ໃນຮ່ອງ.', 500000, 12, 9);

-- --------------------------------------------------------

--
-- Table structure for table `booktype`
--

CREATE TABLE `booktype` (
  `bt_id` int(11) NOT NULL,
  `bt_name` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `booktype`
--

INSERT INTO `booktype` (`bt_id`, `bt_name`) VALUES
(3, 'crime'),
(4, 'fantasy'),
(5, 'horror'),
(6, 'humor'),
(7, 'romance'),
(8, 'thrillers'),
(9, 'war'),
(10, 'Adventure stories');

-- --------------------------------------------------------

--
-- Table structure for table `book_author`
--

CREATE TABLE `book_author` (
  `a_id` int(11) NOT NULL,
  `a_name` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `book_author`
--

INSERT INTO `book_author` (`a_id`, `a_name`) VALUES
(4, 'H. Rider Haggard'),
(5, 'Miguel de Cervantes Saavedra'),
(6, 'Jules Verne'),
(7, 'Alexandre Dumas'),
(8, 'Robert Louis Stevenson'),
(9, 'Stieg Larsson'),
(10, 'Douglas Adams'),
(11, 'Rebecca Ross'),
(12, 'Erich Maria Remarque');

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE `city` (
  `city_id` int(11) NOT NULL,
  `city_name` varchar(50) NOT NULL,
  `p_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`city_id`, `city_name`, `p_id`) VALUES
(1, 'ຈັນທະບູລີ', 1);

-- --------------------------------------------------------

--
-- Table structure for table `manga`
--

CREATE TABLE `manga` (
  `m_id` int(11) NOT NULL,
  `m_image` varchar(255) NOT NULL,
  `m_title` varchar(255) NOT NULL,
  `m_synopsis` varchar(500) NOT NULL,
  `m_price` int(11) NOT NULL,
  `m_file` varchar(255) NOT NULL,
  `mt_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `manga`
--

INSERT INTO `manga` (`m_id`, `m_image`, `m_title`, `m_synopsis`, `m_price`, `m_file`, `mt_id`) VALUES
(1, 'Chronicles-of-Heavenly-Demon.jpg', 'Chronicles of Heavenly Demon', 'ບໍ່ມີ', 5000, '1.pdf', 3),
(2, 'demonic-evolution.jpg', 'demonic evolution', 'ບໍ່ມີ', 10000, '2.pdf', 3),
(3, 'Disciple-of-the-Holy-Sword.jpg', 'Disciple of the Holy Sword', 'ບໍ່ມີ', 25000, '3.pdf', 3),
(4, 'Doom-Summoner.jpg', 'Doom Summoner', 'ບໍ່ມີ', 10000, '4.pdf', 3),
(5, 'pick-me-up.jpg', 'pick me up', 'ບໍ່ມີ', 10000, '5.pdf', 4),
(6, 'Moon-Shadow-Sword-Emperor.jpg', 'Moon Shadow Sword Emperor', 'ບໍ່ມີ', 10000, '6.pdf', 4),
(7, 'Back-to-Rule-Again.jpg', 'Back to Rule Again', 'ບໍ່ມີ', 25000, '7.pdf', 5),
(8, 'The-Second-Coming-of-Gluttony.jpg', 'The-Second-Coming-of-Gluttony', 'ບໍ່ມີ', 5000, '8.pdf', 5),
(9, 'Drug-eating Genius Mage.jpg', 'Drug-eating Genius Mage', 'ບໍ່ມີ', 25000, '9.pdf', 6),
(10, 'magic-emperor.jpg', 'magic-emperor', 'ບໍ່ມີ', 25000, '10.pdf', 7),
(11, 'Quest-Supremacy.jpg', 'Quest-Supremacy', 'ບໍ່ມີ', 10000, '11.pdf', 10),
(13, 'Tomb Raider King.jpg', 'Tomb Raider King', 'ບໍ່ມີ', 25000, '13.pdf', 9),
(14, 'Bad-Ending-Maker.jpg', '	Bad-Ending-Maker', 'ບໍ່ມີ', 25000, '12.pdf', 8);

-- --------------------------------------------------------

--
-- Table structure for table `mangatype`
--

CREATE TABLE `mangatype` (
  `mt_id` int(11) NOT NULL,
  `mt_name` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mangatype`
--

INSERT INTO `mangatype` (`mt_id`, `mt_name`) VALUES
(3, 'action'),
(4, 'dark'),
(5, 'harem'),
(6, 'isekai'),
(7, 'magic'),
(8, 'revags'),
(9, 'system'),
(10, 'school life');

-- --------------------------------------------------------

--
-- Table structure for table `order_book`
--

CREATE TABLE `order_book` (
  `ob_id` int(11) NOT NULL,
  `b_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_book`
--

INSERT INTO `order_book` (`ob_id`, `b_id`, `user_id`) VALUES
(3, 4, 1),
(4, 3, 1),
(5, 4, 1),
(6, 3, 1),
(7, 3, 1),
(8, 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `order_manga`
--

CREATE TABLE `order_manga` (
  `om_id` int(11) NOT NULL,
  `m_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `province`
--

CREATE TABLE `province` (
  `p_id` int(11) NOT NULL,
  `p_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `province`
--

INSERT INTO `province` (`p_id`, `p_name`) VALUES
(1, 'ນະຄອນຫຼວງວຽງຈັນ');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `u_id` int(11) NOT NULL,
  `u_fname` varchar(80) NOT NULL,
  `u_lname` varchar(80) NOT NULL,
  `u_phonenumber` varchar(50) NOT NULL,
  `u_email` varchar(50) NOT NULL,
  `u_password` varchar(50) NOT NULL,
  `u_house` varchar(50) NOT NULL,
  `city_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`u_id`, `u_fname`, `u_lname`, `u_phonenumber`, `u_email`, `u_password`, `u_house`, `city_id`) VALUES
(1, 'BounHieng', 'SOMPHONG', '2093348466', 'teng.ios123@gmail.com', '1122', 'ດອນແດງ', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`b_id`),
  ADD KEY `a_id` (`a_id`),
  ADD KEY `bt_id` (`bt_id`);

--
-- Indexes for table `booktype`
--
ALTER TABLE `booktype`
  ADD PRIMARY KEY (`bt_id`);

--
-- Indexes for table `book_author`
--
ALTER TABLE `book_author`
  ADD PRIMARY KEY (`a_id`);

--
-- Indexes for table `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`city_id`),
  ADD KEY `d_id` (`p_id`);

--
-- Indexes for table `manga`
--
ALTER TABLE `manga`
  ADD PRIMARY KEY (`m_id`),
  ADD KEY `mt_id` (`mt_id`);

--
-- Indexes for table `mangatype`
--
ALTER TABLE `mangatype`
  ADD PRIMARY KEY (`mt_id`);

--
-- Indexes for table `order_book`
--
ALTER TABLE `order_book`
  ADD PRIMARY KEY (`ob_id`),
  ADD KEY `b_id` (`b_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `order_manga`
--
ALTER TABLE `order_manga`
  ADD PRIMARY KEY (`om_id`),
  ADD KEY `m_id` (`m_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `province`
--
ALTER TABLE `province`
  ADD PRIMARY KEY (`p_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`u_id`),
  ADD KEY `city_id` (`city_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `book`
--
ALTER TABLE `book`
  MODIFY `b_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `booktype`
--
ALTER TABLE `booktype`
  MODIFY `bt_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `book_author`
--
ALTER TABLE `book_author`
  MODIFY `a_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `city`
--
ALTER TABLE `city`
  MODIFY `city_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `manga`
--
ALTER TABLE `manga`
  MODIFY `m_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `mangatype`
--
ALTER TABLE `mangatype`
  MODIFY `mt_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `order_book`
--
ALTER TABLE `order_book`
  MODIFY `ob_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `order_manga`
--
ALTER TABLE `order_manga`
  MODIFY `om_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `province`
--
ALTER TABLE `province`
  MODIFY `p_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `u_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `book`
--
ALTER TABLE `book`
  ADD CONSTRAINT `book_ibfk_1` FOREIGN KEY (`a_id`) REFERENCES `book_author` (`a_id`),
  ADD CONSTRAINT `book_ibfk_2` FOREIGN KEY (`bt_id`) REFERENCES `booktype` (`bt_id`);

--
-- Constraints for table `city`
--
ALTER TABLE `city`
  ADD CONSTRAINT `city_ibfk_1` FOREIGN KEY (`p_id`) REFERENCES `province` (`p_id`);

--
-- Constraints for table `manga`
--
ALTER TABLE `manga`
  ADD CONSTRAINT `manga_ibfk_1` FOREIGN KEY (`mt_id`) REFERENCES `mangatype` (`mt_id`);

--
-- Constraints for table `order_book`
--
ALTER TABLE `order_book`
  ADD CONSTRAINT `order_book_ibfk_1` FOREIGN KEY (`b_id`) REFERENCES `book` (`b_id`),
  ADD CONSTRAINT `order_book_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`u_id`);

--
-- Constraints for table `order_manga`
--
ALTER TABLE `order_manga`
  ADD CONSTRAINT `order_manga_ibfk_3` FOREIGN KEY (`m_id`) REFERENCES `manga` (`m_id`),
  ADD CONSTRAINT `order_manga_ibfk_4` FOREIGN KEY (`user_id`) REFERENCES `user` (`u_id`);

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`city_id`) REFERENCES `city` (`city_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
