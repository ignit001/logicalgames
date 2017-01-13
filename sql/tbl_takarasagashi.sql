-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 2016 年 12 朁E19 日 09:39
-- サーバのバージョン： 10.1.10-MariaDB
-- PHP Version: 7.0.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_question`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `tbl_takarasagashi`
--

CREATE TABLE `tbl_takarasagashi` (
  `number_takarasagashi` int(2) NOT NULL,
  `bunsho_takarasagashi` text NOT NULL,
  `contents_takarasagashi` text NOT NULL,
  `hint_takarasagashi` text NOT NULL,
  `gameover_takarasagashi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- テーブルのデータのダンプ `tbl_takarasagashi`
--

INSERT INTO `tbl_takarasagashi` (`number_takarasagashi`, `bunsho_takarasagashi`, `contents_takarasagashi`, `hint_takarasagashi`, `gameover_takarasagashi`) VALUES
(1, '<img id="M_T" src="../image/M_T.png">\n    <img style="width:25vw; height:25vh;" src="../image/takara_bunsho.png">', '<div class="a">\n<div class="w" id="1_1" onclick="hantei(1,1)"><img src="../image/kiretsu.png"></div>\n<div class="w" id="1_2" onclick="hantei(1,2)"><img src="../image/kiretsu.png"></div>\n<div class="w" id="1_3" onclick="hantei(1,3)"><img src="../image/kiretsu.png"></div>\n\n<div class="w" id="2_1" onclick="hantei(2,1)"><img src="../image/kiretsu.png"></div>\n<div class="w" id="2_2" onclick="hantei(2,2)"><img src="../image/kiretsu.png"></div>\n<div class="w" id="2_3" onclick="hantei(2,3)"><img src="../image/kiretsu.png"></div>\n\n<div class="w" id="3_1" onclick="hantei(3,1)"><img src="../image/kiretsu.png"></div>\n<div class="w" id="3_2" onclick="hantei(3,2)"><img src="../image/kiretsu.png"></div>\n<div class="w" id="3_3" onclick="hantei(3,3)"><img src="../image/kiretsu.png"></div>\n\n</div>\n<div id="kaisuu"></div>', '<p style=''margin-top:0h;''><img src=''../image/H_T.png'' style=''width:50vw; height:65vh;''></p>\n        <div class=''center''><input type=''button'' id=''modal-close1'' class=''tojiru''></div>', '<p style=''margin-top:25vh;''><img src=''../image/takara_gameover.png'' style=''width:35vw; height:12.5vh;''></p>\n        <div><input type=''button'' class=''leftbtn mapback''  onclick=''mapjump()''><input type=''button''  id=''modal-close3'' class=''rightbtn yarinaosi''></div>'),
(2, '<img id="M_T" src="../image/M_T.png">\n    <img style="width:25vw; height:25vh;" src="../image/takara_bunsho.png">', '<div class="a">\n<div class="w" id="1_1" onclick="hantei(1,1)"><img src="../image/kiretsu.png"></div>\n<div class="w" id="1_2" onclick="hantei(1,2)"><img src="../image/kiretsu.png"></div>\n<div class="w" id="1_3" onclick="hantei(1,3)"><img src="../image/kiretsu.png"></div>\n<div class="w" id="1_4" onclick="hantei(1,4)"><img src="../image/kiretsu.png"></div>\n\n<div class="w" id="2_1" onclick="hantei(2,1)"><img src="../image/kiretsu.png"></div>\n<div class="w" id="2_2" onclick="hantei(2,2)"><img src="../image/kiretsu.png"></div>\n<div class="w" id="2_3" onclick="hantei(2,3)"><img src="../image/kiretsu.png"></div>\n<div class="w" id="2_4" onclick="hantei(2,4)"><img src="../image/kiretsu.png"></div>\n\n<div class="w" id="3_1" onclick="hantei(3,1)"><img src="../image/kiretsu.png"></div>\n<div class="w" id="3_2" onclick="hantei(3,2)"><img src="../image/kiretsu.png"></div>\n<div class="w" id="3_3" onclick="hantei(3,3)"><img src="../image/kiretsu.png"></div>\n<div class="w" id="3_4" onclick="hantei(3,4)"><img src="../image/kiretsu.png"></div>\n\n<div class="w" id="4_1" onclick="hantei(4,1)"><img src="../image/kiretsu.png"></div>\n<div class="w" id="4_2" onclick="hantei(4,2)"><img src="../image/kiretsu.png"></div>\n<div class="w" id="4_3" onclick="hantei(4,3)"><img src="../image/kiretsu.png"></div>\n<div class="w" id="4_4" onclick="hantei(4,4)"><img src="../image/kiretsu.png"></div>\n\n</div>\n<div id="kaisuu"></div>', '<p style=''margin-top:0h;''><img src=''../image/H_T.png'' style=''width:50vw; height:65vh;''></p>\n        <div class=''center''><input type=''button'' id=''modal-close1'' class=''tojiru''></div>', '<p style=''margin-top:25vh;''><img src=''../image/takara_gameover.png'' style=''width:35vw; height:12.5vh;''></p>\n        <div><input type=''button'' class=''leftbtn mapback''  onclick=''mapjump()''><input type=''button''  id=''modal-close3'' class=''rightbtn yarinaosi''></div>'),
(3, '<img id="M_T" src="../image/M_T.png">\n    <img style="width:25vw; height:25vh;" src="../image/takara_bunsho.png">', '<div class="a">\n<div class="w" id="1_1" onclick="hantei(1,1)"><img src="../image/kiretsu.png"></div>\n<div class="w" id="1_2" onclick="hantei(1,2)"><img src="../image/kiretsu.png"></div>\n<div class="w" id="1_3" onclick="hantei(1,3)"><img src="../image/kiretsu.png"></div>\n<div class="w" id="1_4" onclick="hantei(1,4)"><img src="../image/kiretsu.png"></div>\n<div class="w" id="1_5" onclick="hantei(1,5)"><img src="../image/kiretsu.png"></div>\n<div class="w" id="2_1" onclick="hantei(2,1)"><img src="../image/kiretsu.png"></div>\n<div class="w" id="2_2" onclick="hantei(2,2)"><img src="../image/kiretsu.png"></div>\n<div class="w" id="2_3" onclick="hantei(2,3)"><img src="../image/kiretsu.png"></div>\n<div class="w" id="2_4" onclick="hantei(2,4)"><img src="../image/kiretsu.png"></div>\n<div class="w" id="2_5" onclick="hantei(2,5)"><img src="../image/kiretsu.png"></div>\n<div class="w" id="3_1" onclick="hantei(3,1)"><img src="../image/kiretsu.png"></div>\n<div class="w" id="3_2" onclick="hantei(3,2)"><img src="../image/kiretsu.png"></div>\n<div class="w" id="3_3" onclick="hantei(3,3)"><img src="../image/kiretsu.png"></div>\n<div class="w" id="3_4" onclick="hantei(3,4)"><img src="../image/kiretsu.png"></div>\n<div class="w" id="3_5" onclick="hantei(3,5)"><img src="../image/kiretsu.png"></div>\n<div class="w" id="4_1" onclick="hantei(4,1)"><img src="../image/kiretsu.png"></div>\n<div class="w" id="4_2" onclick="hantei(4,2)"><img src="../image/kiretsu.png"></div>\n<div class="w" id="4_3" onclick="hantei(4,3)"><img src="../image/kiretsu.png"></div>\n<div class="w" id="4_4" onclick="hantei(4,4)"><img src="../image/kiretsu.png"></div>\n<div class="w" id="4_5" onclick="hantei(4,5)"><img src="../image/kiretsu.png"></div>\n<div class="w" id="5_1" onclick="hantei(5,1)"><img src="../image/kiretsu.png"></div>\n<div class="w" id="5_2" onclick="hantei(5,2)"><img src="../image/kiretsu.png"></div>\n<div class="w" id="5_3" onclick="hantei(5,3)"><img src="../image/kiretsu.png"></div>\n<div class="w" id="5_4" onclick="hantei(5,4)"><img src="../image/kiretsu.png"></div>\n<div class="w" id="5_5" onclick="hantei(5,5)"><img src="../image/kiretsu.png"></div>\n</div>\n<div id="kaisuu"></div>', '<p style=''margin-top:0h;''><img src=''../image/H_T.png'' style=''width:50vw; height:65vh;''></p>\n        <div class=''center''><input type=''button'' id=''modal-close1'' class=''tojiru''></div>', '<p style=''margin-top:25vh;''><img src=''../image/takara_gameover.png'' style=''width:35vw; height:12.5vh;''></p>\n        <div><input type=''button'' class=''leftbtn mapback''  onclick=''mapjump()''><input type=''button''  id=''modal-close3'' class=''rightbtn yarinaosi''></div>');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
