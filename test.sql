-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- 主機： localhost:3306
-- 產生時間： 2022 年 10 月 29 日 14:38
-- 伺服器版本： 10.3.34-MariaDB-0ubuntu0.20.04.1
-- PHP 版本： 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `test`
--

-- --------------------------------------------------------

--
-- 資料表結構 `allpermission`
--

CREATE TABLE `allpermission` (
  `permissionlevel` bigint(20) UNSIGNED NOT NULL,
  `permissionname` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `allpermission`
--

INSERT INTO `allpermission` (`permissionlevel`, `permissionname`) VALUES
(1, '講師'),
(2, '講師'),
(3, '學生'),
(4, '組長'),
(5, '部長');

-- --------------------------------------------------------

--
-- 資料表結構 `groupcolor`
--

CREATE TABLE `groupcolor` (
  `groupid` int(11) NOT NULL,
  `color` text NOT NULL,
  `sn` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `groupcolor`
--

INSERT INTO `groupcolor` (`groupid`, `color`, `sn`) VALUES
(1, '#ffc6bd', 4),
(2, '#08d977', 5),
(3, '#fff48c', 6),
(4, '#99ffca', 7),
(6, '#c2e5f5', 8),
(7, '#cbafee', 9),
(9, '#faada2', 10),
(10, '#d09143', 20),
(11, '#fff48c', 21);

-- --------------------------------------------------------

--
-- 資料表結構 `groupcontent`
--

CREATE TABLE `groupcontent` (
  `groupid` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `content` text NOT NULL,
  `sn` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `groupcontent`
--

INSERT INTO `groupcontent` (`groupid`, `id`, `content`, `sn`) VALUES
(1, 2, 'lol', 1),
(2, 3, 'hello', 5),
(2, 1, '安安', 6);

-- --------------------------------------------------------

--
-- 資料表結構 `groupid`
--

CREATE TABLE `groupid` (
  `groupid` bigint(20) UNSIGNED NOT NULL,
  `groupname` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `groupid`
--

INSERT INTO `groupid` (`groupid`, `groupname`) VALUES
(1, '國文'),
(2, '數學'),
(3, '英文'),
(4, '物理'),
(6, '化學'),
(7, '生物'),
(9, '公民'),
(10, '地理'),
(11, '歷史');

-- --------------------------------------------------------

--
-- 資料表結構 `grouppermission`
--

CREATE TABLE `grouppermission` (
  `groupid` int(11) NOT NULL,
  `permissionlevel` int(11) NOT NULL,
  `sn` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `grouppermission`
--

INSERT INTO `grouppermission` (`groupid`, `permissionlevel`, `sn`) VALUES
(1, 1, 234),
(1, 2, 235),
(1, 3, 236),
(2, 2, 240),
(3, 2, 244),
(3, 1, 245),
(4, 3, 249),
(6, 2, 254),
(7, 4, 259),
(7, 3, 260),
(9, 2, 265),
(6, 5, 281);

-- --------------------------------------------------------

--
-- 資料表結構 `manage`
--

CREATE TABLE `manage` (
  `sn` bigint(20) UNSIGNED NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `manage`
--

INSERT INTO `manage` (`sn`, `id`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- 資料表結構 `permission`
--

CREATE TABLE `permission` (
  `sn` bigint(20) UNSIGNED NOT NULL,
  `id` int(11) NOT NULL,
  `groupid` int(11) NOT NULL,
  `permissionlevel` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `permission`
--

INSERT INTO `permission` (`sn`, `id`, `groupid`, `permissionlevel`) VALUES
(57, 5, 6, 5),
(61, 2, 2, 2),
(62, 1, 1, 1),
(63, 4, 1, 2),
(64, 2, 1, 2),
(65, 7, 1, 3);

-- --------------------------------------------------------

--
-- 資料表結構 `stu`
--

CREATE TABLE `stu` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` text NOT NULL,
  `password` text NOT NULL DEFAULT '1234',
  `account` text NOT NULL,
  `userimg` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `stu`
--

INSERT INTO `stu` (`id`, `name`, `password`, `account`, `userimg`) VALUES
(1, '管理員', 'qqq', 'user1', ''),
(2, '恐融', 'rre', 'user2', 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAOEAAADhCAMAAAAJbSJIAAAAbFBMVEX///9SUlI+Pj5ISEj8/Py2trZNTU2Dg4OwsLDv7+9DQ0NKSkrd3d2goKDExMR1dXVnZ2fKysptbW2CgoKmpqbY2Nju7u6JiYk4ODj19fUpKSnQ0NAyMjI7OztfX1/k5OS9vb1YWFiZmZksLCzgN0XQAAAEL0lEQVR4nO3df1eqMBzHcQVFHRkqQdgNtXr+z/Hekg1yk7vBd2zg5/1nHX68Tp3TQrbNZgghhJDHXdaUnV1zFO1YSFe5d81RdIjmdDEIXQQhhBC6b/rChFT4xzVHdDntqgh9/xKn/XAtXLKoilY456ctnQtDYtltAYQuhPUAeprC6FB/N4AQQggHCEIIIYTQfooxzS77w2PTFM6ZqD/QTyFpEEIIIYQQQgghhBBCCCGEEEIIIYQQQgghhBBCCKErIQvMehubkGWzhVmjEz65vmPTIITQ/yCE0P8gvC18PreUu+YoMh61hex+Zeqao4h05B29uuYoghBCCN0H4cMII6056oH538Ns+3JteyR1Hfl5X1KtOWvRav+sU2Z8J8sgvlbQjofyojpvrDcpL96SXr6R+B0KNqTn3Ri+wA1h9yDsGoQQ0gVh147TEy6Wl2breHLC4/uvAaQhcBTCfrPQIOwehNpBCCGEnauFfZ9i9BS+kHAUCWGU8A6aay6uD0mznksInRI5WqFYlCgKND/A24ZRs37AxvVFMbFQpPsR5dZ0ZGZshhBCCCGE0NQj/dmxJ8yOPMUBC/69xSep8GMn1kG0Lmy8pKs4IPvi3yQFNkZtr/ynaE8oUl3iiWLBFYWwHnlDCCGEEEIIoV/CueKAs3XhqtokgrEBhIpZRnaAQzxrcxyEEELoPgghhNB9EEIIofsghBBC99kTrgvC1dG9FOZZ1RPxllreCOtI932DEMIJCflDyuJzqsJF2yfqkxDadzkW0nw0AWHVjg9uwgGpgwrrXocjQgghhBBCCCGEzoRpwf+nseWqX+1wI6xXd7VDjA4zb9aPtSb0JgghhNB9EI5fWJDNEP2R8bmhHgmT9Nqq7yzfH2C6qk43wNNf40j2Xh7goW/39hRC2jV+iIMQQgjdB+EEhIXWIl6NhWTHJsz5GrD7toXYokQsJHuRiX4L69pmdjXWMVYsyDMxoWLdRAh9aSTCY7LSKFUtnk0s1LoR3ZL6v5dNKa9ZpEi1jBGxsPj/XehXbtqur7xj+0LS5yTBIwnzN61990pNoXg5LVVcIVZcv07vRjR7a6wr333fPYUwUB0gvrKM24SGGwGa3695KmHrAbZWKrYWhFIQeheEUhB61yMJxR537VsOj1cYXnJe6wHjFbK93gEQeheEUj4K00Da7qz+XHoSQvnty8bMMgilvBTGtw+xwokJP3e3ner1U+u/+M96E+uEkJ0HnInXo8aoTTwAaj2gng/P17YtTwPda7e6j7xFPr31pQhCKQj73c33YglkZ6vO6ZUwCRj7IjvbNb+E3xvVUs/ZeABhcTssD99bD1hK43i2I7ubhN25/PH3Vn7fLTUHGvlaqn2bn0w+4GIKudvl3uXzd/kHQbvjsetcv0dgvwcQym8qlBP7LT1I+2MdpvUzRKPuLxCOnf/o2vclAAAAAElFTkSuQmCC'),
(3, '雀食', '0000', 'user3', ''),
(4, '餅丙', '1234', 'user4', ''),
(5, '雀枕', '1234', 'user5', ''),
(7, '我的名字有八個字', '1234', 'user7', '');

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `allpermission`
--
ALTER TABLE `allpermission`
  ADD UNIQUE KEY `permissionlevel` (`permissionlevel`);

--
-- 資料表索引 `groupcolor`
--
ALTER TABLE `groupcolor`
  ADD UNIQUE KEY `sn` (`sn`);

--
-- 資料表索引 `groupcontent`
--
ALTER TABLE `groupcontent`
  ADD UNIQUE KEY `sn` (`sn`);

--
-- 資料表索引 `groupid`
--
ALTER TABLE `groupid`
  ADD UNIQUE KEY `groupid` (`groupid`);

--
-- 資料表索引 `grouppermission`
--
ALTER TABLE `grouppermission`
  ADD PRIMARY KEY (`sn`),
  ADD UNIQUE KEY `sn` (`sn`);

--
-- 資料表索引 `manage`
--
ALTER TABLE `manage`
  ADD UNIQUE KEY `sn` (`sn`);

--
-- 資料表索引 `permission`
--
ALTER TABLE `permission`
  ADD UNIQUE KEY `sn` (`sn`);

--
-- 資料表索引 `stu`
--
ALTER TABLE `stu`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `allpermission`
--
ALTER TABLE `allpermission`
  MODIFY `permissionlevel` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `groupcolor`
--
ALTER TABLE `groupcolor`
  MODIFY `sn` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `groupcontent`
--
ALTER TABLE `groupcontent`
  MODIFY `sn` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `groupid`
--
ALTER TABLE `groupid`
  MODIFY `groupid` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `grouppermission`
--
ALTER TABLE `grouppermission`
  MODIFY `sn` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=282;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `manage`
--
ALTER TABLE `manage`
  MODIFY `sn` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `permission`
--
ALTER TABLE `permission`
  MODIFY `sn` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `stu`
--
ALTER TABLE `stu`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
