-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- 主机: localhost
-- 生成日期: 2017 年 04 月 25 日 08:25
-- 服务器版本: 5.6.12-log
-- PHP 版本: 5.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 数据库: `db_database29`
--
CREATE DATABASE IF NOT EXISTS `db_database29` DEFAULT CHARACTER SET gb2312 COLLATE gb2312_chinese_ci;
USE `db_database29`;

-- --------------------------------------------------------

--
-- 表的结构 `tb_bookcase`
--

CREATE TABLE IF NOT EXISTS `tb_bookcase` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=gb2312 AUTO_INCREMENT=54 ;

--
-- 转存表中的数据 `tb_bookcase`
--

INSERT INTO `tb_bookcase` (`id`, `name`) VALUES
(49, 'VC书架'),
(50, 'VB书架'),
(51, 'Delphi书架'),
(46, 'PHP书架'),
(48, 'net书架'),
(37, 'ASP图书架'),
(47, 'JSP书架'),
(52, '其他');

-- --------------------------------------------------------

--
-- 表的结构 `tb_bookinfo`
--

CREATE TABLE IF NOT EXISTS `tb_bookinfo` (
  `barcode` varchar(30) DEFAULT NULL,
  `bookname` varchar(70) DEFAULT NULL,
  `typeid` int(10) unsigned DEFAULT NULL,
  `author` varchar(30) DEFAULT NULL,
  `translator` varchar(30) DEFAULT NULL,
  `ISBN` varchar(20) DEFAULT NULL,
  `price` float(8,2) DEFAULT NULL,
  `page` int(10) unsigned DEFAULT NULL,
  `bookcase` int(10) unsigned DEFAULT NULL,
  `storage` int(10) unsigned DEFAULT NULL,
  `inTime` date DEFAULT NULL,
  `operator` varchar(30) DEFAULT NULL,
  `del` tinyint(1) DEFAULT '0',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=gb2312 AUTO_INCREMENT=26 ;

--
-- 转存表中的数据 `tb_bookinfo`
--

INSERT INTO `tb_bookinfo` (`barcode`, `bookname`, `typeid`, `author`, `translator`, `ISBN`, `price`, `page`, `bookcase`, `storage`, `inTime`, `operator`, `del`, `id`) VALUES
('123456789', 'PHP数据库系统开发完全手册', 1, '邹天思、潘凯华、刘中华', 'me', '7-121', 65.00, 530, 46, 666, '2007-12-07', 'Tsoft', 0, 5),
('123454321', 'PHP程序开发范例宝典', 2, '邹天思、潘凯华', 'hehe', '7-121', 89.00, 730, 46, 299, '2007-12-07', 'Tsoft', 0, 6),
('987654321', 'PHP函数参考大全', 3, '邹天思、潘凯华', 'me', '7-121', 99.00, 950, 46, 799, '2007-11-12', 'mr', 0, 2),
('9787115154101', 'Visual Basic控件参考大全', 5, '高春艳、刘彬彬', '无', '7-121', 86.00, 777, 50, 10, '2007-12-06', 'Tsoft', 0, 20);

-- --------------------------------------------------------

--
-- 表的结构 `tb_booktype`
--

CREATE TABLE IF NOT EXISTS `tb_booktype` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `typename` varchar(30) DEFAULT NULL,
  `days` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=gb2312 AUTO_INCREMENT=6 ;

--
-- 转存表中的数据 `tb_booktype`
--

INSERT INTO `tb_booktype` (`id`, `typename`, `days`) VALUES
(1, '数据库技术', 30),
(2, '宝典系列', 45),
(3, '信息科学技术', 20),
(5, '计算机程序设计', 30);

-- --------------------------------------------------------

--
-- 表的结构 `tb_borrow`
--

CREATE TABLE IF NOT EXISTS `tb_borrow` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `readerid` int(10) unsigned DEFAULT NULL,
  `bookid` int(10) DEFAULT NULL,
  `borrowTime` date DEFAULT NULL,
  `backTime` date DEFAULT NULL,
  `operator` varchar(30) DEFAULT NULL,
  `ifback` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=gb2312 AUTO_INCREMENT=50 ;

--
-- 转存表中的数据 `tb_borrow`
--

INSERT INTO `tb_borrow` (`id`, `readerid`, `bookid`, `borrowTime`, `backTime`, `operator`, `ifback`) VALUES
(14, 1, 6, '2007-01-01', '2007-12-06', 'Tsoft', 1),
(42, 1, 2, '2007-12-06', '2008-01-05', 'Tsoft', 0),
(49, 18, 2, '2007-12-07', '2008-01-06', 'Tsoft', 0),
(48, 18, 20, '2007-12-06', '2007-12-06', 'Tsoft', 1),
(33, 11, 2, '2007-12-05', '2007-12-05', 'Tsoft', 1),
(47, 18, 20, '2007-12-06', '2007-12-06', 'Tsoft', 1),
(46, 16, 20, '2007-12-06', '2007-12-06', 'Tsoft', 1),
(45, 1, 5, '2007-12-06', '2008-01-05', 'Tsoft', 0),
(44, 11, 2, '2007-12-06', '2008-01-05', 'Tsoft', 0),
(43, 1, 5, '2007-12-06', '2007-12-06', 'Tsoft', 1);

-- --------------------------------------------------------

--
-- 表的结构 `tb_library`
--

CREATE TABLE IF NOT EXISTS `tb_library` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `libraryname` varchar(50) DEFAULT NULL,
  `curator` varchar(10) DEFAULT NULL,
  `tel` varchar(20) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `url` varchar(100) DEFAULT NULL,
  `createDate` date DEFAULT NULL,
  `introduce` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=gb2312 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `tb_library`
--

INSERT INTO `tb_library` (`id`, `libraryname`, `curator`, `tel`, `address`, `email`, `url`, `createDate`, `introduce`) VALUES
(1, '吉林***师范大学博考图书馆', '纯净水3434', '1363444****', '吉林省长春市****路**号', 'zts**@***.com', 'http://www.mrbccd.com', '1996-05-29', '博、学、精、深');

-- --------------------------------------------------------

--
-- 表的结构 `tb_manager`
--

CREATE TABLE IF NOT EXISTS `tb_manager` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) DEFAULT NULL,
  `pwd` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=gb2312 AUTO_INCREMENT=24 ;

--
-- 转存表中的数据 `tb_manager`
--

INSERT INTO `tb_manager` (`id`, `name`, `pwd`) VALUES
(1, 'Tsoft', '111'),
(22, 'lx', 'lx'),
(23, 'al', 'al');

-- --------------------------------------------------------

--
-- 表的结构 `tb_parameter`
--

CREATE TABLE IF NOT EXISTS `tb_parameter` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cost` int(10) unsigned DEFAULT NULL,
  `validity` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=gb2312 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `tb_parameter`
--

INSERT INTO `tb_parameter` (`id`, `cost`, `validity`) VALUES
(1, 120, 12);

-- --------------------------------------------------------

--
-- 表的结构 `tb_publishing`
--

CREATE TABLE IF NOT EXISTS `tb_publishing` (
  `ISBN` varchar(20) DEFAULT NULL,
  `pubname` varchar(30) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=gb2312;

--
-- 转存表中的数据 `tb_publishing`
--

INSERT INTO `tb_publishing` (`ISBN`, `pubname`) VALUES
('7-115', '清华出版社'),
('7-111', '机械工业出版'),
('7-121', '人民邮电出版社');

-- --------------------------------------------------------

--
-- 表的结构 `tb_purview`
--

CREATE TABLE IF NOT EXISTS `tb_purview` (
  `id` int(11) NOT NULL DEFAULT '0',
  `sysset` tinyint(1) DEFAULT '0',
  `readerset` tinyint(1) DEFAULT '0',
  `bookset` tinyint(1) DEFAULT '0',
  `borrowback` tinyint(1) DEFAULT '0',
  `sysquery` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=gb2312;

--
-- 转存表中的数据 `tb_purview`
--

INSERT INTO `tb_purview` (`id`, `sysset`, `readerset`, `bookset`, `borrowback`, `sysquery`) VALUES
(22, 1, 1, 1, 0, 0),
(1, 1, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- 表的结构 `tb_reader`
--

CREATE TABLE IF NOT EXISTS `tb_reader` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `sex` varchar(4) DEFAULT NULL,
  `barcode` varchar(30) DEFAULT NULL,
  `vocation` varchar(50) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `paperType` varchar(10) DEFAULT NULL,
  `paperNO` varchar(20) DEFAULT NULL,
  `tel` varchar(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `createDate` date DEFAULT NULL,
  `operator` varchar(30) DEFAULT NULL,
  `remark` mediumtext,
  `typeid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=gb2312 AUTO_INCREMENT=20 ;

--
-- 转存表中的数据 `tb_reader`
--

INSERT INTO `tb_reader` (`id`, `name`, `sex`, `barcode`, `vocation`, `birthday`, `paperType`, `paperNO`, `tel`, `email`, `createDate`, `operator`, `remark`, `typeid`) VALUES
(1, '陈丽', '女', '123456789', '职员', '1980-09-29', '身份证', '22010412331***', '13633333****', 'wgh***@s**u.com', '2006-05-27', 'admin', '哈哈', 4),
(2, '张勇', '男', '3214555555', '职员', '1983-02-22', '军官证', '2201043222******', '113655422555', 'dream****@**u.com', '2006-05-27', 'admin', '??', 1),
(16, '小丽', '女', '123456', '程序员', '1985-02-25', '身份证', '54515452***', '136********', 'xl***@163.com', '2007-12-06', 'Tsoft', '无', 16),
(8, '纯净水', '女', '13579', '职员', '1982-12-14', '身份证', '2220000000***', '1375666***', '44**@sina.com', '2006-06-10', 'mr', '图书迷', 14),
(19, '小刚', '男', '222222', '硬件维护', '1982-05-06', '身份证', '2132123*****', '136********', 'xg**@163.com', '2007-12-06', 'Tsoft', '无', 20),
(11, '小凡', '女', '1255***', 'IT业', '1980-02-25', '工作证', '55255**', '421552***', '53**34@sina.com', '2007-12-01', 'Tsoft', '我是一个图书迷', 13),
(18, '小欣', '女', '111111', '程序员', '1985-02-25', '身份证', '21212345546***', '136********', 'xx***@163.com', '2007-12-06', 'Tsoft', '无', 14);

-- --------------------------------------------------------

--
-- 表的结构 `tb_readertype`
--

CREATE TABLE IF NOT EXISTS `tb_readertype` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `number` int(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=gb2312 AUTO_INCREMENT=23 ;

--
-- 转存表中的数据 `tb_readertype`
--

INSERT INTO `tb_readertype` (`id`, `name`, `number`) VALUES
(1, '学生', 4),
(4, '公务员', 5),
(14, '图书爱好者', 3),
(15, '教师', 2),
(16, '程序员', 2),
(20, '硬件维护', 10);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
