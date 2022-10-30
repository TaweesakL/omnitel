-- phpMyAdmin SQL Dump
-- version 4.4.15
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 16, 2022 at 10:57 AM
-- Server version: 5.6.36-log
-- PHP Version: 5.3.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `omnitel_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `jos_banner`
--

CREATE TABLE IF NOT EXISTS `jos_banner` (
  `bid` int(11) NOT NULL,
  `cid` int(11) NOT NULL DEFAULT '0',
  `type` varchar(10) NOT NULL DEFAULT 'banner',
  `name` varchar(50) NOT NULL DEFAULT '',
  `imptotal` int(11) NOT NULL DEFAULT '0',
  `impmade` int(11) NOT NULL DEFAULT '0',
  `clicks` int(11) NOT NULL DEFAULT '0',
  `imageurl` varchar(100) NOT NULL DEFAULT '',
  `clickurl` varchar(200) NOT NULL DEFAULT '',
  `date` datetime DEFAULT NULL,
  `showBanner` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `editor` varchar(50) DEFAULT NULL,
  `custombannercode` text
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jos_banner`
--

INSERT INTO `jos_banner` (`bid`, `cid`, `type`, `name`, `imptotal`, `impmade`, `clicks`, `imageurl`, `clickurl`, `date`, `showBanner`, `checked_out`, `checked_out_time`, `editor`, `custombannercode`) VALUES
(1, 1, 'banner', 'OSM 1', 0, 76, 1, 'osmbanner1.png', 'http://www.opensourcematters.org', '2004-07-07 15:31:29', 1, 0, '0000-00-00 00:00:00', NULL, NULL),
(2, 1, 'banner', 'OSM 2', 0, 80, 2, 'osmbanner2.png', 'http://www.opensourcematters.org', '2004-07-07 15:31:29', 1, 0, '0000-00-00 00:00:00', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `jos_bannerclient`
--

CREATE TABLE IF NOT EXISTS `jos_bannerclient` (
  `cid` int(11) NOT NULL,
  `name` varchar(60) NOT NULL DEFAULT '',
  `contact` varchar(60) NOT NULL DEFAULT '',
  `email` varchar(60) NOT NULL DEFAULT '',
  `extrainfo` text NOT NULL,
  `checked_out` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out_time` time DEFAULT NULL,
  `editor` varchar(50) DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jos_bannerclient`
--

INSERT INTO `jos_bannerclient` (`cid`, `name`, `contact`, `email`, `extrainfo`, `checked_out`, `checked_out_time`, `editor`) VALUES
(1, 'Open Source Matters', 'Administrator', 'admin@opensourcematters.org', '', 0, '00:00:00', NULL),
(2, 'sanya', 'sanya', 'sanya@vdconvergence.com', '', 0, '00:00:00', '');

-- --------------------------------------------------------

--
-- Table structure for table `jos_bannerfinish`
--

CREATE TABLE IF NOT EXISTS `jos_bannerfinish` (
  `bid` int(11) NOT NULL,
  `cid` int(11) NOT NULL DEFAULT '0',
  `type` varchar(10) NOT NULL DEFAULT '',
  `name` varchar(50) NOT NULL DEFAULT '',
  `impressions` int(11) NOT NULL DEFAULT '0',
  `clicks` int(11) NOT NULL DEFAULT '0',
  `imageurl` varchar(50) NOT NULL DEFAULT '',
  `datestart` datetime DEFAULT NULL,
  `dateend` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `jos_categories`
--

CREATE TABLE IF NOT EXISTS `jos_categories` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `title` varchar(50) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `image` varchar(100) NOT NULL DEFAULT '',
  `section` varchar(50) NOT NULL DEFAULT '',
  `image_position` varchar(10) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `editor` varchar(50) DEFAULT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `access` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `count` int(11) NOT NULL DEFAULT '0',
  `params` text NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jos_categories`
--

INSERT INTO `jos_categories` (`id`, `parent_id`, `title`, `name`, `image`, `section`, `image_position`, `description`, `published`, `checked_out`, `checked_out_time`, `editor`, `ordering`, `access`, `count`, `params`) VALUES
(1, 0, 'Latest', 'Latest News', 'taking_notes.jpg', '1', 'left', 'The latest news from the Joomla! Team', 1, 0, '0000-00-00 00:00:00', '', 0, 0, 1, ''),
(2, 0, 'Joomla!', 'Joomla!', 'clock.jpg', 'com_weblinks', 'left', 'A selection of links that are all related to the Joomla! Project.', 1, 0, '0000-00-00 00:00:00', NULL, 0, 0, 0, ''),
(3, 0, 'Newsflash', 'Newsflash', '', '2', 'left', '', 1, 0, '0000-00-00 00:00:00', '', 0, 0, 0, ''),
(4, 0, 'Joomla!', 'Joomla!', '', 'com_newsfeeds', 'left', '', 1, 0, '0000-00-00 00:00:00', NULL, 2, 0, 0, ''),
(5, 0, 'Business: general', 'Business: general', '', 'com_newsfeeds', 'left', '', 1, 0, '0000-00-00 00:00:00', NULL, 1, 0, 0, ''),
(7, 0, 'Examples', 'Example FAQs', 'key.jpg', '3', 'left', 'Here you will find an example set of FAQs.', 1, 0, '0000-00-00 00:00:00', NULL, 0, 0, 2, ''),
(9, 0, 'Finance', 'Finance', '', 'com_newsfeeds', 'left', '', 1, 0, '0000-00-00 00:00:00', NULL, 5, 0, 0, ''),
(10, 0, 'Linux', 'Linux', '', 'com_newsfeeds', 'left', '<br />\r\n', 1, 0, '0000-00-00 00:00:00', NULL, 6, 0, 0, ''),
(11, 0, 'Internet', 'Internet', '', 'com_newsfeeds', 'left', '', 1, 0, '0000-00-00 00:00:00', NULL, 7, 0, 0, ''),
(12, 0, 'Contacts', 'Contacts', '', 'com_contact_details', 'left', 'Contact Details for this website', 1, 0, '0000-00-00 00:00:00', NULL, 0, 0, 0, ''),
(13, 0, 'Customer Ref.', 'Costomer Ref.', '', '4', 'left', '<span style="font-size: 10pt"><strong>My Customer Referrences</strong></span>\r\n', 1, 0, '0000-00-00 00:00:00', NULL, 1, 0, 0, 'imagefolders=*2*');

-- --------------------------------------------------------

--
-- Table structure for table `jos_components`
--

CREATE TABLE IF NOT EXISTS `jos_components` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL DEFAULT '',
  `link` varchar(255) NOT NULL DEFAULT '',
  `menuid` int(11) unsigned NOT NULL DEFAULT '0',
  `parent` int(11) unsigned NOT NULL DEFAULT '0',
  `admin_menu_link` varchar(255) NOT NULL DEFAULT '',
  `admin_menu_alt` varchar(255) NOT NULL DEFAULT '',
  `option` varchar(50) NOT NULL DEFAULT '',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `admin_menu_img` varchar(255) NOT NULL DEFAULT '',
  `iscore` tinyint(4) NOT NULL DEFAULT '0',
  `params` text NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jos_components`
--

INSERT INTO `jos_components` (`id`, `name`, `link`, `menuid`, `parent`, `admin_menu_link`, `admin_menu_alt`, `option`, `ordering`, `admin_menu_img`, `iscore`, `params`) VALUES
(1, 'Banners', '', 0, 0, '', 'Banner Management', 'com_banners', 0, 'js/ThemeOffice/component.png', 0, ''),
(2, 'Manage Banners', '', 0, 1, 'option=com_banners', 'Active Banners', 'com_banners', 1, 'js/ThemeOffice/edit.png', 0, ''),
(3, 'Manage Clients', '', 0, 1, 'option=com_banners&task=listclients', 'Manage Clients', 'com_banners', 2, 'js/ThemeOffice/categories.png', 0, ''),
(4, 'Web Links', 'option=com_weblinks', 0, 0, '', 'Manage Weblinks', 'com_weblinks', 0, 'js/ThemeOffice/globe2.png', 0, ''),
(5, 'Web Link Items', '', 0, 4, 'option=com_weblinks', 'View existing weblinks', 'com_weblinks', 1, 'js/ThemeOffice/edit.png', 0, ''),
(6, 'Web Link Categories', '', 0, 4, 'option=categories&section=com_weblinks', 'Manage weblink categories', '', 2, 'js/ThemeOffice/categories.png', 0, ''),
(7, 'Contacts', 'option=com_contact', 0, 0, '', 'Edit contact details', 'com_contact', 0, 'js/ThemeOffice/user.png', 1, ''),
(8, 'Manage Contacts', '', 0, 7, 'option=com_contact', 'Edit contact details', 'com_contact', 0, 'js/ThemeOffice/edit.png', 1, ''),
(9, 'Contact Categories', '', 0, 7, 'option=categories&section=com_contact_details', 'Manage contact categories', '', 2, 'js/ThemeOffice/categories.png', 1, ''),
(10, 'Front Page', 'option=com_frontpage', 0, 0, '', 'Manage Front Page Items', 'com_frontpage', 0, 'js/ThemeOffice/component.png', 1, ''),
(11, 'Polls', 'option=com_poll', 0, 0, 'option=com_poll', 'Manage Polls', 'com_poll', 0, 'js/ThemeOffice/component.png', 0, ''),
(12, 'News Feeds', 'option=com_newsfeeds', 0, 0, '', 'News Feeds Management', 'com_newsfeeds', 0, 'js/ThemeOffice/component.png', 0, ''),
(13, 'Manage News Feeds', '', 0, 12, 'option=com_newsfeeds', 'Manage News Feeds', 'com_newsfeeds', 1, 'js/ThemeOffice/edit.png', 0, ''),
(14, 'Manage Categories', '', 0, 12, 'option=com_categories&section=com_newsfeeds', 'Manage Categories', '', 2, 'js/ThemeOffice/categories.png', 0, ''),
(15, 'Login', 'option=com_login', 0, 0, '', '', 'com_login', 0, '', 1, ''),
(16, 'Search', 'option=com_search', 0, 0, '', '', 'com_search', 0, '', 1, ''),
(17, 'Syndicate', '', 0, 0, 'option=com_syndicate&hidemainmenu=1', 'Manage Syndication Settings', 'com_syndicate', 0, 'js/ThemeOffice/component.png', 0, ''),
(18, 'Mass Mail', '', 0, 0, 'option=com_massmail&hidemainmenu=1', 'Send Mass Mail', 'com_massmail', 0, 'js/ThemeOffice/mass_email.png', 0, ''),
(19, 'VirtueMart', 'option=com_virtuemart', 0, 0, 'option=com_virtuemart', 'VirtueMart', 'com_virtuemart', 0, 'js/ThemeOffice/component.png', 0, ''),
(20, 'virtuemart_version', '', 0, 9999, '', '', '', 0, '', 0, 'RELEASE=1.0.0\nDEV_STATUS=final'),
(21, 'joomlaXplorer', 'option=com_joomlaxplorer', 0, 0, 'option=com_joomlaxplorer', 'joomlaXplorer', 'com_joomlaxplorer', 0, '../administrator/components/com_joomlaxplorer/_img/joomla_x_icon.png', 0, ''),
(22, 'virtuemart_version', '', 0, 9999, '', '', '', 0, '', 0, 'RELEASE=1.0.4\nDEV_STATUS=stable'),
(23, 'JCE Admin', 'option=com_jce', 0, 0, 'option=com_jce', 'JCE Admin', 'com_jce', 0, 'js/ThemeOffice/component.png', 0, ''),
(24, 'JCE Configuration', '', 0, 23, 'option=com_jce&task=config', 'JCE Configuration', 'com_jce', 0, 'js/ThemeOffice/controlpanel.png', 0, ''),
(25, 'JCE Languages', '', 0, 23, 'option=com_jce&task=lang', 'JCE Languages', 'com_jce', 1, 'js/ThemeOffice/language.png', 0, ''),
(26, 'JCE Plugins', '', 0, 23, 'option=com_jce&task=showplugins', 'JCE Plugins', 'com_jce', 2, 'js/ThemeOffice/add_section.png', 0, ''),
(27, 'JCE Layout', '', 0, 23, 'option=com_jce&task=editlayout', 'JCE Layout', 'com_jce', 3, 'js/ThemeOffice/content.png', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `jos_contact_details`
--

CREATE TABLE IF NOT EXISTS `jos_contact_details` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL DEFAULT '',
  `con_position` varchar(50) DEFAULT NULL,
  `address` text,
  `suburb` varchar(50) DEFAULT NULL,
  `state` varchar(20) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  `postcode` varchar(10) DEFAULT NULL,
  `telephone` varchar(25) DEFAULT NULL,
  `fax` varchar(25) DEFAULT NULL,
  `misc` mediumtext,
  `image` varchar(100) DEFAULT NULL,
  `imagepos` varchar(20) DEFAULT NULL,
  `email_to` varchar(100) DEFAULT NULL,
  `default_con` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `catid` int(11) NOT NULL DEFAULT '0',
  `access` tinyint(3) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jos_contact_details`
--

INSERT INTO `jos_contact_details` (`id`, `name`, `con_position`, `address`, `suburb`, `state`, `country`, `postcode`, `telephone`, `fax`, `misc`, `image`, `imagepos`, `email_to`, `default_con`, `published`, `checked_out`, `checked_out_time`, `ordering`, `params`, `user_id`, `catid`, `access`) VALUES
(1, 'Name', 'Position', 'Street', 'Suburb', 'State', 'Country', 'Zip Code', 'Telephone', 'Fax', 'Miscellanous info', 'asterisk.png', 'top', 'email@email.com', 1, 1, 0, '0000-00-00 00:00:00', 1, '', 0, 12, 0);

-- --------------------------------------------------------

--
-- Table structure for table `jos_content`
--

CREATE TABLE IF NOT EXISTS `jos_content` (
  `id` int(11) unsigned NOT NULL,
  `title` varchar(100) NOT NULL DEFAULT '',
  `title_alias` varchar(100) NOT NULL DEFAULT '',
  `introtext` mediumtext NOT NULL,
  `fulltext` mediumtext NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `sectionid` int(11) unsigned NOT NULL DEFAULT '0',
  `mask` int(11) unsigned NOT NULL DEFAULT '0',
  `catid` int(11) unsigned NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(100) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text NOT NULL,
  `urls` text NOT NULL,
  `attribs` text NOT NULL,
  `version` int(11) unsigned NOT NULL DEFAULT '1',
  `parentid` int(11) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `access` int(11) unsigned NOT NULL DEFAULT '0',
  `hits` int(11) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jos_content`
--

INSERT INTO `jos_content` (`id`, `title`, `title_alias`, `introtext`, `fulltext`, `state`, `sectionid`, `mask`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `parentid`, `ordering`, `metakey`, `metadesc`, `access`, `hits`) VALUES
(1, 'Welcome to Omnitel', 'Omnitel', '<img width="185" src="images/stories/omnitel/im1.jpeg" alt="im1.jpeg" height="148" style="float: left; margin: 5px; width: 185px; height: 148px; border: #f0880e 1px" title="im1.jpeg" />&nbsp; <br />\r\n<div align="left">\r\n</div>\r\n<div align="left">\r\n<br />\r\n<span style="font-family: comic sans ms,sand"><strong>Omnitel </strong>&nbsp;</span>was established since 2001 by a group of expertise, with more than Twenty-five year experiences in1<strong><span style="color: #ff0000; font-family: comic sans ms,sand">TeleCommunication</span></strong>, <span style="color: #009933; font-family: comic sans ms,sand"><strong>Information Technology</strong></span>, <span style="font-family: comic sans ms,sand"><strong><span style="color: #cc0000">PABX</span></strong>,<span style="color: #3300ff"><strong>CTI</strong></span> ,</span><strong><span style="color: #cc0000"><span style="font-family: comic sans ms,sand">Call</span> <span style="font-family: comic sans ms,sand">Center</span></span></strong><span style="font-family: comic sans ms,sand">&nbsp;</span>and <span style="font-family: comic sans ms,sand"><strong><span style="color: #333300">E-Commerce</span></strong>.</span> Our intention to utilize our knowledge and expertise to enable our clients to effectively and seamlessly deploy our state-of-the-art enterprise solutions to manage relationship with their customers. \r\n<p>\r\n<strong><span style="color: #ff6600; font-family: comic sans ms,sand"><img border="0" width="13" src="http://www.augustcom.com/images/stories/doth_4.gif" height="6" />OUR COMPANY</span> &ndash; A Communications Equipments </strong>Alcatel PABX&nbsp; Alcatel Omni PCX Enterprise, Alcatel Omni PCX Office and call center.<br />\r\n&nbsp;<strong>And Software Developer&nbsp; </strong>As a leading software developer in Thailand, we have successfully developed the most comprehensive and flexible platform for Computer Telephony solutions for voice and fax application and an easy-to-customize framework for customer relationship management application. Our flagship solution, LegatoIVR, is a Interactive Voice Response software that can reduce development time for IVR application by 50% or more. \r\n</p>\r\n<p>\r\n<strong><span style="color: #ff6600; font-family: comic sans ms,sand"><img border="0" width="13" src="http://www.augustcom.com/images/stories/doth_4.gif" height="6" />OUR ORGANIZATION</span> </strong><strong>&ndash; A Installation and Service Oriented Company </strong>\r\n</p>\r\n<p>\r\n<strong>Service Oriented: </strong>The strength of good-quality consulting depends heavily on service aspects. We incorporate service orientation in our mission, recruitment, training, and methodology to deliver the best quality of service to our clients. <br />\r\n<strong>Cost Effectiveness: </strong>We organize our process and organization and develop our solutions to deliver cost-effective services to clients. We guarantee that no unnecessary costs will be passed on to our clients. <br />\r\n<strong>Professionalism: </strong>Artifact Technology is a place where you can find high-caliber and highly skilled business and technology professionals. \r\n</p>\r\n</div>\r\n<br />\r\n<div align="justify">\r\n<br />\r\n</div>\r\n<hr id="null" />\r\n<strong><span style="color: #000080">\r\n<div align="center">\r\n<strong><span style="color: #000080"><span style="font-size: 12pt; color: #0000ff">My Certificates<br />\r\n<img align="middle" width="107" src="images/stories/omnitel/Alcatel_Logo.jpeg" alt="Alcatel_Logo.jpeg" height="32" style="margin: 5px; width: 107px; height: 32px" title="Alcatel_Logo.jpeg" /><br />\r\n</span><br />\r\n<div style="text-align: center">\r\n</div>\r\n<div align="center">\r\n<br />\r\n<br />\r\n</div>\r\n</span></strong>\r\n</div>\r\n<br />\r\n<p align="justify" style="text-align: center">\r\n<br />\r\n<img width="453" src="images/stories/omnitel/4400.gif" alt="4400.gif" height="350" style="float: left; margin: 5px; width: 453px; height: 350px" title="4400.gif" /><br />\r\n<br />\r\n<br />\r\n<br />\r\n<br />\r\n<br />\r\n<br />\r\n<br />\r\n<br />\r\n<br />\r\n<br />\r\n<br />\r\n<br />\r\n<br />\r\n<br />\r\n<br />\r\n<br />\r\n<br />\r\n<br />\r\n<br />\r\n<br />\r\n<br />\r\n<br />\r\n<br />\r\n<br />\r\n<br />\r\n<br />\r\n<br />\r\n<br />\r\n<br />\r\n<br />\r\n<br />\r\n<br />\r\n<br />\r\n<img width="453" src="images/stories/omnitel/OmniPCX_4400_Expert.gif" alt="OmniPCX_4400_Expert.gif" height="350" style="float: left; margin: 5px; width: 453px; height: 350px" title="OmniPCX_4400_Expert.gif" /><br />\r\n<br />\r\n<br />\r\n<br />\r\n<br />\r\n<br />\r\n<br />\r\n<br />\r\n<br />\r\n<br />\r\n<br />\r\n<br />\r\n<br />\r\n<br />\r\n<br />\r\n<br />\r\n<br />\r\n<br />\r\n<br />\r\n<br />\r\n<br />\r\n<br />\r\n<br />\r\n<br />\r\n<br />\r\n<br />\r\n<br />\r\n<br />\r\n<br />\r\n<br />\r\n<br />\r\n<br />\r\n<br />\r\n<br />\r\n<img width="453" src="images/stories/omnitel/OmniTouch%20Call%20center.gif" alt="OmniTouch Call center.gif" height="350" style="float: left; margin: 5px; width: 453px; height: 350px" title="OmniTouch Call center.gif" /> \r\n</p>\r\n</span></strong>\r\n', '<ul>\r\n	<li><br />\r\n	<img width="350" src="images/stories/omnitel/oxo-telephony.gif" alt="oxo-telephony.gif" height="453" style="float: left; margin: 5px; width: 350px; height: 453px" title="oxo-telephony.gif" /><br />\r\n	&nbsp;<img width="350" src="images/stories/omnitel/oxo_internet.gif" alt="oxo_internet.gif" height="453" style="float: left; margin: 5px; width: 350px; height: 453px" title="oxo_internet.gif" /><br />\r\n	<br />\r\n	<br />\r\n	<img width="350" src="images/stories/omnitel/oxo_voip.gif" alt="oxo_voip.gif" height="453" style="float: left; margin: 5px; width: 350px; height: 453px" title="oxo_voip.gif" /></li>\r\n</ul>\r\n', 1, 1, 0, 1, '2007-06-06 07:00:00', 62, 'Web Master', '2009-02-01 10:49:28', 62, 0, '0000-00-00 00:00:00', '2007-06-05 00:00:00', '0000-00-00 00:00:00', 'asterisk.png|left|Joomla! Logo|1|Example Caption|bottom|center|120', '', 'pageclass_sfx=\nback_button=\nitem_title=1\nlink_titles=\nintrotext=1\nsection=0\nsection_link=0\ncategory=0\ncategory_link=0\nrating=0\nauthor=0\ncreatedate=0\nmodifydate=0\npdf=\nprint=\nemail=\nkeyref=\ndocbook_type=', 19, 0, 1, 'Alcatel pabx 4400 Enterprise oxo oxe', 'Alcatel', 0, 603),
(2, 'Newsflash 1', '', 'Joomla! 1.0 - ''Experience the Freedom''!. It has never been easier to create\r\nyour own dynamic site. Manage all your content from the best CMS admin\r\ninterface.', '', 0, 2, 0, 3, '2004-08-09 08:30:34', 62, '', '2007-06-04 23:31:35', 0, 0, '0000-00-00 00:00:00', '2004-08-09 00:00:00', '0000-00-00 00:00:00', '', '', '', 1, 0, 1, '', '', 0, 5),
(3, 'Newsflash 2', '', 'Yesterday all servers in the U.S. went out on strike in a bid to get more RAM and better CPUs. A spokes person said that the need for better RAM was due to some fool increasing the front-side bus speed. In future, busses will be told to slow down in residential motherboards.', '', 0, 2, 0, 3, '2004-08-09 08:30:34', 62, '', '2007-06-04 23:31:35', 0, 0, '0000-00-00 00:00:00', '2004-08-09 00:00:00', '0000-00-00 00:00:00', '', '', '', 1, 0, 2, '', '', 0, 4),
(4, 'Newsflash 3', '', 'Aoccdrnig to a rscheearch at an Elingsh uinervtisy, it deosn''t mttaer in waht oredr the ltteers in a wrod are, the olny iprmoetnt tihng is taht frist and lsat ltteer is at the rghit pclae. The rset can be a toatl mses and you can sitll raed it wouthit porbelm. Tihs is bcuseae we do not raed ervey lteter by itslef but the wrod as a wlohe.', '', 0, 2, 0, 3, '2004-08-09 08:30:34', 62, '', '2007-06-04 23:31:35', 0, 0, '0000-00-00 00:00:00', '2004-08-09 00:00:00', '0000-00-00 00:00:00', '', '', '', 1, 0, 3, '', '', 0, 7),
(5, 'Joomla! License Guidelines', '', '<p>This website is powered by <a href="http://www.joomla.org/">Joomla!</a>  The software and default templates on which it runs are Copyright 2005 <a href="http://www.opensourcematters.org/">Open Source Matters</a>.  All other content and data, including data entered into this website and templates added after installation, are copyrighted by their respective copyright owners.</p><p>If you want to distribute, copy or modify Joomla!, you are welcome to do so under the terms of the <a href="http://www.gnu.org/copyleft/gpl.html#SEC1">GNU General Public License</a>.  If you are unfamiliar with this license, you might want to read <a href="http://www.gnu.org/copyleft/gpl.html#SEC4">''How To Apply These Terms To Your Program''</a> and the <a href="http://www.gnu.org/licenses/gpl-faq.html">''GNU General Public License FAQ''</a>.</p>', '', 0, 0, 0, 0, '2004-08-19 20:11:07', 62, '', '2004-08-19 20:14:49', 62, 0, '0000-00-00 00:00:00', '2004-08-19 00:00:00', '0000-00-00 00:00:00', '', '', 'menu_image=\nitem_title=1\npageclass_sfx=\nback_button=\nrating=\nauthor=\ncreatedate=\nmodifydate=\npdf=\nprint=\nemail=', 1, 0, 11, '', '', 0, 12),
(6, 'Example News Item 1', 'News1', '{mosimage}Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat,\r\nsed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit\r\namet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam\r\nvoluptua. At vero eos et accusam et justo duo dolores et ea rebum.', '<p>{mosimage}Duis autem vel eum iriure dolor in hendrerit in vulputate\r\nvelit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at\r\nvero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum\r\nzzril delenit augue duis dolore te feugait nulla facilisi. Lorem ipsum dolor\r\nsit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt\r\nut laoreet dolore magna aliquam erat volutpat.</p>\r\n\r\n<p>Ut wisi enim ad minim veniam, quis nostrud exerci tation\r\nullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis\r\nautem vel eum iriure dolor in hendrerit in vulputate velit esse molestie\r\nconsequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan\r\net iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis\r\ndolore te feugait nulla facilisi.</p>\r\n\r\n<p>Nam liber tempor cum soluta nobis eleifend option congue\r\nnihil imperdiet doming id quod mazim placerat facer possim assum. Lorem ipsum\r\ndolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod\r\ntincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim\r\nveniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut\r\naliquip ex ea commodo consequat.</p>\r\n\r\n<p>Duis autem vel eum iriure dolor in hendrerit in vulputate\r\nvelit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis. At\r\nvero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd\r\ngubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum\r\ndolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor\r\ninvidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero\r\neos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no\r\nsea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit\r\namet, consetetur sadipscing elitr, At accusam aliquyam diam diam dolore dolores\r\nduo eirmod eos erat, et nonumy sed tempor et et invidunt justo labore Stet\r\nclita ea et gubergren, kasd magna no rebum. sanctus sea sed takimata ut vero\r\nvoluptua. est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet,\r\nconsetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore\r\net dolore magna aliquyam erat.</p>\r\n\r\n<p>Consetetur sadipscing elitr, sed diam nonumy eirmod tempor\r\ninvidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero\r\neos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no\r\nsea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit\r\namet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut\r\nlabore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam\r\net justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata\r\nsanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur\r\nsadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore\r\nmagna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo\r\ndolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est\r\nLorem ipsum dolor sit amet.</p>', -2, 1, 0, 1, '2004-07-07 11:54:06', 62, '', '2007-06-04 23:31:35', 62, 0, '0000-00-00 00:00:00', '2004-07-07 00:00:00', '0000-00-00 00:00:00', 'food/coffee.jpg|left||0\r\nfood/bread.jpg|right||0', '', '', 1, 0, 0, '', '', 0, 10),
(7, 'Example News Item 2', 'News2', '<p>{mosimage}Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat,\r\nsed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit\r\namet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam\r\nvoluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem\r\nipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At\r\nvero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.</p>', '', -2, 1, 0, 1, '2004-07-07 11:54:06', 62, '', '2007-06-04 23:31:35', 62, 0, '0000-00-00 00:00:00', '2004-07-07 00:00:00', '0000-00-00 00:00:00', 'food/bun.jpg|right||0', '', '', 1, 0, 0, '', '', 0, 7),
(8, 'Example News Item 3', 'News3', '<p>{mosimage}Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat,\r\nsed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit\r\namet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam\r\nvoluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem\r\nipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At\r\nvero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.</p>', '', -2, 1, 0, 1, '2004-04-12 11:54:06', 62, '', '2007-06-04 23:31:35', 62, 0, '0000-00-00 00:00:00', '2004-07-07 00:00:00', '0000-00-00 00:00:00', 'fruit/pears.jpg|right||0', '', '', 1, 0, 0, '', '', 0, 2),
(9, 'Example News Item 4', 'News4', '<p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat,\r\nsed diam voluptua. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam\r\nvoluptua. At\r\nvero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.</p>', '<p>{mosimage}Duis autem vel eum iriure dolor in hendrerit in vulputate\r\nvelit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at\r\nvero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum\r\nzzril delenit augue duis dolore te feugait nulla facilisi. Lorem ipsum dolor\r\nsit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt\r\nut laoreet dolore magna aliquam erat volutpat.</p>\r\n\r\n{mospagebreak}<p>{mosimage}Ut wisi enim ad minim veniam, quis nostrud exerci tation\r\nullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis\r\nautem vel eum iriure dolor in hendrerit in vulputate velit esse molestie\r\nconsequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan\r\net iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis\r\ndolore te feugait nulla facilisi.</p>\r\n\r\n<p>{mosimage}Nam liber tempor cum soluta nobis eleifend option congue\r\nnihil imperdiet doming id quod mazim placerat facer possim assum. Lorem ipsum\r\ndolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod\r\ntincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim\r\nveniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut\r\naliquip ex ea commodo consequat.</p>\r\n\r\n<p>Duis autem vel eum iriure dolor in hendrerit in vulputate\r\nvelit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis. At\r\nvero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd\r\ngubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum\r\ndolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor\r\ninvidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero\r\neos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no\r\nsea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit\r\namet, consetetur sadipscing elitr, At accusam aliquyam diam diam dolore dolores\r\nduo eirmod eos erat, et nonumy sed tempor et et invidunt justo labore Stet\r\nclita ea et gubergren, kasd magna no rebum. sanctus sea sed takimata ut vero\r\nvoluptua. est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet,\r\nconsetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore\r\net dolore magna aliquyam erat.</p>\r\n\r\n{mospagebreak}<p>Consetetur sadipscing elitr, sed diam nonumy eirmod tempor\r\ninvidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero\r\neos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no\r\nsea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit\r\namet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut\r\nlabore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam\r\net justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata\r\nsanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur\r\nsadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore\r\nmagna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo\r\ndolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est\r\nLorem ipsum dolor sit amet.</p>', -2, 1, 0, 1, '2004-07-07 11:54:06', 62, '', '2007-06-04 23:31:35', 62, 0, '0000-00-00 00:00:00', '2004-07-07 00:00:00', '0000-00-00 00:00:00', 'fruit/strawberry.jpg|left||0\r\nfruit/pears.jpg|right||0\r\nfruit/cherry.jpg|left||0', '', '', 1, 0, 0, '', '', 0, 10),
(10, 'Example FAQ Item 1', 'FAQ1', '<p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat,\r\nsed diam voluptua. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam\r\nvoluptua. At\r\nvero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.</p>', '', 0, 3, 0, 7, '2004-05-12 11:54:06', 62, '', '2007-06-04 23:31:35', 62, 0, '0000-00-00 00:00:00', '2004-01-01 00:00:00', '0000-00-00 00:00:00', '', '', '', 1, 0, 5, '', '', 0, 12),
(11, 'Example FAQ Item 2', 'FAQ2', '<p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat,\r\nsed diam voluptua. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam\r\nvoluptua. At\r\nvero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.</p>', '<p>{mosimage}Duis autem vel eum iriure dolor in hendrerit in vulputate\r\nvelit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at\r\nvero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum\r\nzzril delenit augue duis dolore te feugait nulla facilisi. Lorem ipsum dolor\r\nsit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt\r\nut laoreet dolore magna aliquam erat volutpat.</p>\r\n\r\n<p>{mosimage}Ut wisi enim ad minim veniam, quis nostrud exerci tation\r\nullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis\r\nautem vel eum iriure dolor in hendrerit in vulputate velit esse molestie\r\nconsequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan\r\net iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis\r\ndolore te feugait nulla facilisi.</p>\r\n\r\n<p>{mosimage}Nam liber tempor cum soluta nobis eleifend option congue\r\nnihil imperdiet doming id quod mazim placerat facer possim assum. Lorem ipsum\r\ndolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod\r\ntincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim\r\nveniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut\r\naliquip ex ea commodo consequat.</p>\r\n\r\n<p>Duis autem vel eum iriure dolor in hendrerit in vulputate\r\nvelit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis. At\r\nvero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd\r\ngubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum\r\ndolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor\r\ninvidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero\r\neos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no\r\nsea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit\r\namet, consetetur sadipscing elitr, At accusam aliquyam diam diam dolore dolores\r\nduo eirmod eos erat, et nonumy sed tempor et et invidunt justo labore Stet\r\nclita ea et gubergren, kasd magna no rebum. sanctus sea sed takimata ut vero\r\nvoluptua. est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet,\r\nconsetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore\r\net dolore magna aliquyam erat.</p>\r\n\r\n<p>Consetetur sadipscing elitr, sed diam nonumy eirmod tempor\r\ninvidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero\r\neos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no\r\nsea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit\r\namet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut\r\nlabore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam\r\net justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata\r\nsanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur\r\nsadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore\r\nmagna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo\r\ndolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est\r\nLorem ipsum dolor sit amet.</p>', 0, 3, 0, 7, '2004-05-12 11:54:06', 62, 'Web master', '2007-06-04 23:31:35', 62, 0, '0000-00-00 00:00:00', '2004-01-01 00:00:00', '0000-00-00 00:00:00', 'fruit/cherry.jpg|left||0\r\nfruit/peas.jpg|right||0\r\nfood/milk.jpg|left||0', '', '', 1, 0, 5, '', '', 0, 12),
(12, 'Omnitel Profile', 'Omnitel Profile', '&nbsp; <br />\r\n<div align="left">\r\n<strong>Omnitel </strong>is an innovative solution provider initially offering Alcatel Enterprise Communication Solutions, including Alcatel Omni PCX Enterprise, Alcatel Omni PCX Office, call center and other telephony integrated customer applications. The company is dynamic and able to adapt solutions to meet customer requirements; the new products and Solutions will be sourced or developed by the company to maximize customer satisfaction. <br />\r\n</div>\r\n<div align="left">\r\n<strong><br />\r\nOmnitel</strong> was founded in 2001. The members of the team have been actively involved in hi-tech businesses for more than 10 years. The team brings to the table, several professional factors for implementing innovative solutions in hi-tech industries and a developed plan to provide customers with a superior experience.&nbsp;<br />\r\n</div>\r\n<p>\r\n<strong><br />\r\n&nbsp;Vision and Mission<br />\r\n</strong>\r\n</p>\r\n<ul>\r\n	<li>\r\n	<div align="justify">\r\n	To be the innovative solution provider, delivering the highest quality of customer satisfaction.<br />\r\n	</div>\r\n	</li>\r\n	<li>\r\n	<div align="justify">\r\n	Strengthen intelligence and intangibles: people and working culture, as talents of individuals create efficient and<br />\r\n	speedy businesses. \r\n	</div>\r\n	</li>\r\n</ul>\r\n<br />\r\n<div align="justify">\r\n<p>\r\n<strong>Product and Solution</strong> Alcatel communication solution core products are Alcatel Omni PCX Enterprise, Alcatel Omni PCX Office and call center. Alcatel&#39;s advantages are its rich features, applications and economic value. Alcatel Omni family of products is the most awarded IP Communication products and solutions in the industry.<strong> </strong>\r\n</p>\r\n</div>\r\n<br />\r\n<p>\r\n<b>We are committed to creating rich innovative communication solutions that truly deliver results, and lead the way to better connect businesses.</b>&nbsp;<br />\r\n<br />\r\n&nbsp; \r\n</p>\r\n<hr id="null" />\r\n<strong><span style="color: #000080">\r\n<div align="left">\r\n<strong><span style="color: #000080">My Certificates<br />\r\n</span></strong>\r\n</div>\r\n<br />\r\n<p align="justify" style="text-align: center">\r\n<br />\r\n<img width="453" src="images/stories/omnitel/4400.gif" alt="4400.gif" height="350" style="float: left; margin: 5px; width: 453px; height: 350px" title="4400.gif" /><br />\r\n<br />\r\n<br />\r\n<br />\r\n<br />\r\n<br />\r\n<br />\r\n<br />\r\n<br />\r\n<br />\r\n<br />\r\n<br />\r\n<br />\r\n<br />\r\n<br />\r\n<br />\r\n<br />\r\n<br />\r\n<br />\r\n<br />\r\n<br />\r\n<br />\r\n<br />\r\n<br />\r\n<br />\r\n<br />\r\n<br />\r\n<br />\r\n<br />\r\n<br />\r\n<br />\r\n<br />\r\n<br />\r\n<br />\r\n<img width="453" src="images/stories/omnitel/OmniPCX_4400_Expert.gif" alt="OmniPCX_4400_Expert.gif" height="350" style="float: left; margin: 5px; width: 453px; height: 350px" title="OmniPCX_4400_Expert.gif" /><br />\r\n<br />\r\n<br />\r\n<br />\r\n<br />\r\n<br />\r\n<br />\r\n<br />\r\n<br />\r\n<br />\r\n<br />\r\n<br />\r\n<br />\r\n<br />\r\n<br />\r\n<br />\r\n<br />\r\n<br />\r\n<br />\r\n<br />\r\n<br />\r\n<br />\r\n<br />\r\n<br />\r\n<br />\r\n<br />\r\n<br />\r\n<br />\r\n<br />\r\n<br />\r\n<br />\r\n<br />\r\n<br />\r\n<br />\r\n<img width="350" src="images/stories/omnitel/oxo_internet.gif" alt="oxo_internet.gif" height="453" style="float: left; margin: 5px; width: 350px; height: 453px" title="oxo_internet.gif" /><img width="350" src="images/stories/omnitel/oxo-telephony.gif" alt="oxo-telephony.gif" height="453" style="float: left; margin: 5px; width: 350px; height: 453px" title="oxo-telephony.gif" /><img width="350" src="images/stories/omnitel/oxo_voip.gif" alt="oxo_voip.gif" height="453" style="float: left; margin: 5px; width: 350px; height: 453px" title="oxo_voip.gif" /><img width="453" src="images/stories/omnitel/OmniTouch%20Call%20center.gif" alt="OmniTouch Call center.gif" height="350" style="float: left; margin: 5px; width: 453px; height: 350px" title="OmniTouch Call center.gif" /> \r\n</p>\r\n</span></strong>\r\n', '', 1, 0, 0, 0, '2007-05-29 16:53:15', 62, '', '2007-06-04 23:36:54', 62, 0, '0000-00-00 00:00:00', '2007-05-29 16:47:05', '0000-00-00 00:00:00', '', '', 'menu_image=-1\nitem_title=1\npageclass_sfx=\nback_button=\nrating=\nauthor=0\ncreatedate=0\nmodifydate=0\npdf=\nprint=\nemail=', 1, 0, 0, '', '', 0, 11),
(13, 'Customer Reference', 'Customer Reference', '<strong><span style="font-size: 10pt; color: #ff6600"><br />\r\n<br />\r\n<table border="0" style="width: 404px; height: 284px">\r\n	<tbody>\r\n		<tr>\r\n			<td dir="ltr">&nbsp; \r\n			<div style="text-align: center">\r\n			<img width="132" src="images/stories/cm_logo/aapico.gif" alt="aapico.gif" height="99" title="aapico.gif" /> \r\n			</div>\r\n			</td>\r\n			<td>&nbsp; \r\n			<div style="text-align: center">\r\n			<img width="130" src="images/stories/cm_logo/cognis.gif" alt="cognis.gif" height="33" style="margin: 5px; width: 130px; height: 33px" title="cognis.gif" /> \r\n			</div>\r\n			<p align="justify">\r\n			&nbsp;\r\n			</p>\r\n			</td>\r\n			<td>&nbsp;<img align="middle" width="72" src="images/stories/cm_logo/emirates.gif" alt="emirates.gif" height="50" style="margin: 5px; width: 72px; height: 50px" title="emirates.gif" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp; \r\n			<div style="text-align: center">\r\n			<img width="175" src="images/stories/cm_logo/etihad.gif" alt="etihad.gif" height="106" style="margin: 5px; width: 175px; height: 106px" title="etihad.gif" /> \r\n			</div>\r\n			</td>\r\n			<td>&nbsp;<img align="middle" width="328" src="images/stories/cm_logo/fairtex.gif" alt="fairtex.gif" height="62" style="margin: 5px; width: 328px; height: 62px" title="fairtex.gif" /></td>\r\n			<td>&nbsp; \r\n			<div style="text-align: center">\r\n			<img width="47" src="images/stories/cm_logo/lifung.gif" alt="lifung.gif" height="123" style="margin: 5px; width: 47px; height: 123px" title="lifung.gif" /> \r\n			</div>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp; \r\n			<div style="text-align: center">\r\n			<img width="191" src="images/stories/cm_logo/inglife.gif" alt="inglife.gif" height="33" style="margin: 5px; width: 191px; height: 33px" title="inglife.gif" /> \r\n			</div>\r\n			</td>\r\n			<td>&nbsp; \r\n			<div style="text-align: center">\r\n			<img width="332" src="images/stories/cm_logo/gits.gif" alt="gits.gif" height="52" style="float: left; margin: 5px; width: 332px; height: 52px" title="gits.gif" />&nbsp; \r\n			</div>\r\n			</td>\r\n			<td>&nbsp;<img width="140" src="images/stories/cm_logo/logo_alcatellucent.gif" alt="logo_alcatellucent.gif" height="100" style="margin: 5px; width: 140px; height: 100px" title="logo_alcatellucent.gif" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp; \r\n			<div style="text-align: center">\r\n			<img width="162" src="images/stories/cm_logo/prodrive.gif" alt="prodrive.gif" height="85" style="margin: 5px; width: 162px; height: 85px" title="prodrive.gif" /> \r\n			</div>\r\n			</td>\r\n			<td>&nbsp; \r\n			<div style="text-align: center">\r\n			<img width="150" src="images/stories/cm_logo/thailife.gif" alt="thailife.gif" height="199" style="float: left; margin: 5px; width: 150px; height: 199px" title="thailife.gif" /> \r\n			</div>\r\n			</td>\r\n			<td>&nbsp; \r\n			<div align="justify" style="text-align: center">\r\n			&nbsp;<img align="right" width="80" src="images/stories/cm_logo/logo_novotel.gif" alt="logo_novotel.gif" height="80" style="float: left; margin: 5px; width: 80px; height: 80px" title="logo_novotel.gif" /> \r\n			</div>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n</span></strong>\r\n', '', 1, 4, 0, 13, '2007-07-02 22:19:55', 62, '', '2007-07-02 22:38:47', 62, 0, '0000-00-00 00:00:00', '2007-07-02 21:45:27', '0000-00-00 00:00:00', '', '', 'pageclass_sfx=\nback_button=\nitem_title=1\nlink_titles=\nintrotext=1\nsection=0\nsection_link=0\ncategory=0\ncategory_link=0\nrating=\nauthor=\ncreatedate=\nmodifydate=\npdf=\nprint=\nemail=\nkeyref=\ndocbook_type=', 4, 0, 1, '', '', 0, 386);

-- --------------------------------------------------------

--
-- Table structure for table `jos_content_frontpage`
--

CREATE TABLE IF NOT EXISTS `jos_content_frontpage` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jos_content_frontpage`
--

INSERT INTO `jos_content_frontpage` (`content_id`, `ordering`) VALUES
(1, 1),
(5, 2);

-- --------------------------------------------------------

--
-- Table structure for table `jos_content_rating`
--

CREATE TABLE IF NOT EXISTS `jos_content_rating` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `rating_sum` int(11) unsigned NOT NULL DEFAULT '0',
  `rating_count` int(11) unsigned NOT NULL DEFAULT '0',
  `lastip` varchar(50) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `jos_core_acl_aro`
--

CREATE TABLE IF NOT EXISTS `jos_core_acl_aro` (
  `aro_id` int(11) NOT NULL,
  `section_value` varchar(240) NOT NULL DEFAULT '0',
  `value` varchar(240) NOT NULL DEFAULT '',
  `order_value` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `hidden` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jos_core_acl_aro`
--

INSERT INTO `jos_core_acl_aro` (`aro_id`, `section_value`, `value`, `order_value`, `name`, `hidden`) VALUES
(10, 'users', '62', 0, 'Administrator', 0),
(11, 'users', '63', 0, 'dr.kid', 0),
(12, 'users', '64', 0, 'Kajohndet Petcharat', 0),
(13, 'users', '65', 0, 'kritin', 0),
(14, 'users', '66', 0, 'krisana Tamvimol', 0);

-- --------------------------------------------------------

--
-- Table structure for table `jos_core_acl_aro_groups`
--

CREATE TABLE IF NOT EXISTS `jos_core_acl_aro_groups` (
  `group_id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jos_core_acl_aro_groups`
--

INSERT INTO `jos_core_acl_aro_groups` (`group_id`, `parent_id`, `name`, `lft`, `rgt`) VALUES
(17, 0, 'ROOT', 1, 22),
(28, 17, 'USERS', 2, 21),
(29, 28, 'Public Frontend', 3, 12),
(18, 29, 'Registered', 4, 11),
(19, 18, 'Author', 5, 10),
(20, 19, 'Editor', 6, 9),
(21, 20, 'Publisher', 7, 8),
(30, 28, 'Public Backend', 13, 20),
(23, 30, 'Manager', 14, 19),
(24, 23, 'Administrator', 15, 18),
(25, 24, 'Super Administrator', 16, 17);

-- --------------------------------------------------------

--
-- Table structure for table `jos_core_acl_aro_sections`
--

CREATE TABLE IF NOT EXISTS `jos_core_acl_aro_sections` (
  `section_id` int(11) NOT NULL,
  `value` varchar(230) NOT NULL DEFAULT '',
  `order_value` int(11) NOT NULL DEFAULT '0',
  `name` varchar(230) NOT NULL DEFAULT '',
  `hidden` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jos_core_acl_aro_sections`
--

INSERT INTO `jos_core_acl_aro_sections` (`section_id`, `value`, `order_value`, `name`, `hidden`) VALUES
(10, 'users', 1, 'Users', 0);

-- --------------------------------------------------------

--
-- Table structure for table `jos_core_acl_groups_aro_map`
--

CREATE TABLE IF NOT EXISTS `jos_core_acl_groups_aro_map` (
  `group_id` int(11) NOT NULL DEFAULT '0',
  `section_value` varchar(240) NOT NULL DEFAULT '',
  `aro_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jos_core_acl_groups_aro_map`
--

INSERT INTO `jos_core_acl_groups_aro_map` (`group_id`, `section_value`, `aro_id`) VALUES
(18, '', 11),
(18, '', 12),
(18, '', 13),
(18, '', 14),
(25, '', 10);

-- --------------------------------------------------------

--
-- Table structure for table `jos_core_log_items`
--

CREATE TABLE IF NOT EXISTS `jos_core_log_items` (
  `time_stamp` date NOT NULL DEFAULT '0000-00-00',
  `item_table` varchar(50) NOT NULL DEFAULT '',
  `item_id` int(11) unsigned NOT NULL DEFAULT '0',
  `hits` int(11) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `jos_core_log_searches`
--

CREATE TABLE IF NOT EXISTS `jos_core_log_searches` (
  `search_term` varchar(128) NOT NULL DEFAULT '',
  `hits` int(11) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `jos_groups`
--

CREATE TABLE IF NOT EXISTS `jos_groups` (
  `id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `name` varchar(50) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jos_groups`
--

INSERT INTO `jos_groups` (`id`, `name`) VALUES
(0, 'Public'),
(1, 'Registered'),
(2, 'Special');

-- --------------------------------------------------------

--
-- Table structure for table `jos_jce_langs`
--

CREATE TABLE IF NOT EXISTS `jos_jce_langs` (
  `id` int(11) NOT NULL,
  `Name` varchar(100) NOT NULL DEFAULT '',
  `lang` varchar(100) NOT NULL DEFAULT '',
  `published` tinyint(3) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=tis620;

--
-- Dumping data for table `jos_jce_langs`
--

INSERT INTO `jos_jce_langs` (`id`, `Name`, `lang`, `published`) VALUES
(1, 'English', 'en', 1);

-- --------------------------------------------------------

--
-- Table structure for table `jos_jce_plugins`
--

CREATE TABLE IF NOT EXISTS `jos_jce_plugins` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL DEFAULT '',
  `plugin` varchar(100) NOT NULL DEFAULT '',
  `type` varchar(100) NOT NULL DEFAULT 'plugin',
  `icon` varchar(255) NOT NULL DEFAULT '',
  `layout_icon` varchar(255) NOT NULL DEFAULT '',
  `access` tinyint(3) unsigned NOT NULL DEFAULT '18',
  `row` int(11) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `published` tinyint(3) NOT NULL DEFAULT '0',
  `editable` tinyint(3) NOT NULL DEFAULT '0',
  `elements` varchar(255) NOT NULL DEFAULT '',
  `iscore` tinyint(3) NOT NULL DEFAULT '0',
  `client_id` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `params` text NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=51 DEFAULT CHARSET=tis620;

--
-- Dumping data for table `jos_jce_plugins`
--

INSERT INTO `jos_jce_plugins` (`id`, `name`, `plugin`, `type`, `icon`, `layout_icon`, `access`, `row`, `ordering`, `published`, `editable`, `elements`, `iscore`, `client_id`, `checked_out`, `checked_out_time`, `params`) VALUES
(1, 'Context Menu', 'contextmenu', 'plugin', '', '', 18, 0, 0, 0, 0, '', 1, 0, 0, '0000-00-00 00:00:00', ''),
(2, 'Directionality', 'directionality', 'plugin', 'ltr,rtl', 'directionality', 18, 3, 8, 1, 0, '', 1, 0, 0, '0000-00-00 00:00:00', ''),
(3, 'Emotions', 'emotions', 'plugin', 'emotions', 'emotions', 18, 4, 12, 1, 0, '', 1, 0, 0, '0000-00-00 00:00:00', ''),
(4, 'Fullscreen', 'fullscreen', 'plugin', 'fullscreen', 'fullscreen', 18, 4, 6, 1, 0, '', 1, 0, 0, '0000-00-00 00:00:00', ''),
(5, 'Paste', 'paste', 'plugin', 'pasteword,pastetext', 'paste', 18, 1, 16, 1, 1, '', 1, 0, 0, '0000-00-00 00:00:00', ''),
(6, 'Preview', 'preview', 'plugin', 'preview', 'preview', 18, 4, 1, 1, 0, '', 1, 0, 0, '0000-00-00 00:00:00', ''),
(7, 'Tables', 'table', 'plugin', 'tablecontrols', 'buttons', 18, 2, 8, 1, 0, '', 1, 0, 0, '0000-00-00 00:00:00', ''),
(8, 'Print', 'print', 'plugin', 'print', 'print', 18, 4, 3, 1, 0, '', 1, 0, 0, '0000-00-00 00:00:00', ''),
(9, 'Search Replace', 'searchreplace', 'plugin', 'search,replace', 'searchreplace', 18, 1, 17, 1, 0, '', 1, 0, 0, '0000-00-00 00:00:00', ''),
(10, 'Styles', 'style', 'plugin', 'styleprops', 'styleprops', 18, 4, 7, 1, 0, '', 1, 0, 0, '0000-00-00 00:00:00', ''),
(11, 'Non-Breaking', 'nonbreaking', 'plugin', 'nonbreaking', 'nonbreaking', 18, 4, 8, 1, 0, '', 1, 0, 0, '0000-00-00 00:00:00', ''),
(12, 'Visual Characters', 'visualchars', 'plugin', 'visualchars', 'visualchars', 18, 4, 9, 1, 0, '', 1, 0, 0, '0000-00-00 00:00:00', ''),
(13, 'XHTML Xtras', 'xhtmlxtras', 'plugin', 'cite,abbr,acronym,del,ins', 'xhtmlxtras', 18, 4, 10, 1, 0, 'del[*],ins[*]', 1, 0, 0, '0000-00-00 00:00:00', ''),
(14, 'Image Manager', 'imgmanager', 'plugin', '', 'imgmanager', 18, 4, 13, 1, 1, '', 1, 0, 0, '0000-00-00 00:00:00', ''),
(15, 'Advanced Link', 'advlink', 'plugin', '', 'advlink', 18, 4, 14, 1, 1, '', 1, 0, 0, '0000-00-00 00:00:00', ''),
(16, 'Spell Checker', 'spellchecker', 'plugin', 'spellchecker', 'spellchecker', 18, 4, 15, 1, 1, '', 1, 0, 0, '0000-00-00 00:00:00', ''),
(17, 'Font ForeColour', 'forecolor', 'command', 'forecolor', 'forecolor', 18, 3, 4, 1, 0, '', 1, 0, 0, '0000-00-00 00:00:00', ''),
(18, 'Bold', 'bold', 'command', 'bold', 'bold', 18, 1, 5, 1, 0, '', 1, 0, 0, '0000-00-00 00:00:00', ''),
(19, 'Italic', 'italic', 'command', 'italic', 'italic', 18, 1, 6, 1, 0, '', 1, 0, 0, '0000-00-00 00:00:00', ''),
(20, 'Underline', 'underline', 'command', 'underline', 'underline', 18, 1, 7, 1, 0, '', 1, 0, 0, '0000-00-00 00:00:00', ''),
(21, 'Font BackColour', 'backcolor', 'command', 'backcolor', 'backcolor', 18, 3, 5, 1, 0, '', 1, 0, 0, '0000-00-00 00:00:00', ''),
(22, 'Unlink', 'unlink', 'command', 'unlink', 'unlink', 18, 2, 11, 1, 0, '', 1, 0, 0, '0000-00-00 00:00:00', ''),
(23, 'Font Select', 'fontselect', 'command', 'fontselect', 'fontselect', 18, 3, 2, 1, 0, '', 1, 0, 0, '0000-00-00 00:00:00', ''),
(24, 'Font Size Select', 'fontsizeselect', 'command', 'fontsizeselect', 'fontsizeselect', 18, 3, 3, 1, 0, '', 1, 0, 0, '0000-00-00 00:00:00', ''),
(25, 'Style Select', 'styleselect', 'command', 'styleselect', 'styleselect', 18, 3, 1, 1, 0, '', 1, 0, 0, '0000-00-00 00:00:00', ''),
(26, 'New Document', 'newdocument', 'command', 'newdocument', 'newdocument', 18, 1, 4, 1, 0, '', 1, 0, 0, '0000-00-00 00:00:00', ''),
(27, 'Help', 'help', 'command', 'help', 'help', 18, 1, 3, 1, 0, '', 1, 0, 0, '0000-00-00 00:00:00', ''),
(28, 'StrikeThrough', 'strikethrough', 'command', 'strikethrough', 'strikethrough', 18, 1, 12, 1, 0, '', 1, 0, 0, '0000-00-00 00:00:00', ''),
(29, 'Indent', 'indent', 'command', 'indent', 'indent', 18, 1, 11, 1, 0, '', 1, 0, 0, '0000-00-00 00:00:00', ''),
(30, 'Outdent', 'outdent', 'command', 'outdent', 'outdent', 18, 1, 10, 1, 0, '', 1, 0, 0, '0000-00-00 00:00:00', ''),
(31, 'Undo', 'undo', 'command', 'undo', 'undo', 18, 1, 1, 1, 0, '', 1, 0, 0, '0000-00-00 00:00:00', ''),
(32, 'Redo', 'redo', 'command', 'redo', 'redo', 18, 1, 2, 1, 0, '', 1, 0, 0, '0000-00-00 00:00:00', ''),
(33, 'Horizontal Rule', 'hr', 'command', 'hr', 'hr', 18, 2, 1, 1, 0, '', 1, 0, 0, '0000-00-00 00:00:00', ''),
(34, 'HTML', 'html', 'command', 'code', 'code', 18, 1, 13, 1, 0, '', 1, 0, 0, '0000-00-00 00:00:00', ''),
(35, 'Numbered List', 'numlist', 'command', 'numlist', 'numlist', 18, 1, 9, 1, 0, '', 1, 0, 0, '0000-00-00 00:00:00', ''),
(36, 'Bullet List', 'bullist', 'command', 'bullist', 'bullist', 18, 1, 8, 1, 0, '', 1, 0, 0, '0000-00-00 00:00:00', ''),
(37, 'Clipboard Actions', 'clipboard', 'command', 'cut,copy,paste', 'clipboard', 18, 1, 16, 1, 0, '', 1, 0, 0, '0000-00-00 00:00:00', ''),
(38, 'Subscript', 'sub', 'command', 'sub', 'sub', 18, 2, 2, 1, 0, '', 1, 0, 0, '0000-00-00 00:00:00', ''),
(39, 'Superscript', 'sup', 'command', 'sup', 'sup', 18, 2, 3, 1, 0, '', 1, 0, 0, '0000-00-00 00:00:00', ''),
(40, 'Visual Aid', 'visualaid', 'command', 'visualaid', 'visualaid', 18, 3, 7, 1, 0, '', 1, 0, 0, '0000-00-00 00:00:00', ''),
(41, 'Character Map', 'charmap', 'command', 'charmap', 'charmap', 18, 3, 6, 1, 0, '', 1, 0, 0, '0000-00-00 00:00:00', ''),
(42, 'Justify Full', 'full', 'command', 'justifyfull', 'justifyfull', 18, 2, 7, 1, 0, '', 1, 0, 0, '0000-00-00 00:00:00', ''),
(43, 'Justify Center', 'center', 'command', 'justifycenter', 'justifycenter', 18, 2, 5, 1, 0, '', 1, 0, 0, '0000-00-00 00:00:00', ''),
(44, 'Justify Left', 'left', 'command', 'justifyleft', 'justifyleft', 18, 2, 6, 1, 0, '', 1, 0, 0, '0000-00-00 00:00:00', ''),
(45, 'Justify Right', 'right', 'command', 'justifyright', 'justifyright', 18, 2, 4, 1, 0, '', 1, 0, 0, '0000-00-00 00:00:00', ''),
(46, 'Remove Format', 'removeformat', 'command', 'removeformat', 'removeformat', 18, 1, 15, 1, 0, '', 1, 0, 0, '0000-00-00 00:00:00', ''),
(47, 'Anchor', 'anchor', 'command', 'anchor', 'anchor', 18, 2, 9, 1, 0, '', 1, 0, 0, '0000-00-00 00:00:00', ''),
(48, 'Format Select', 'formatselect', 'command', 'formatselect', 'formatselect', 18, 3, 9, 1, 0, '', 1, 0, 0, '0000-00-00 00:00:00', ''),
(49, 'Image', 'image', 'command', 'image', 'image', 18, 4, 1, 1, 0, '', 1, 0, 0, '0000-00-00 00:00:00', ''),
(50, 'Link', 'link', 'command', 'link', 'link', 18, 4, 1, 1, 0, '', 1, 0, 0, '0000-00-00 00:00:00', '');

-- --------------------------------------------------------

--
-- Table structure for table `jos_mambots`
--

CREATE TABLE IF NOT EXISTS `jos_mambots` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL DEFAULT '',
  `element` varchar(100) NOT NULL DEFAULT '',
  `folder` varchar(100) NOT NULL DEFAULT '',
  `access` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `published` tinyint(3) NOT NULL DEFAULT '0',
  `iscore` tinyint(3) NOT NULL DEFAULT '0',
  `client_id` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `params` text NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jos_mambots`
--

INSERT INTO `jos_mambots` (`id`, `name`, `element`, `folder`, `access`, `ordering`, `published`, `iscore`, `client_id`, `checked_out`, `checked_out_time`, `params`) VALUES
(1, 'MOS Image', 'mosimage', 'content', 0, -10000, 1, 1, 0, 0, '0000-00-00 00:00:00', ''),
(2, 'MOS Pagination', 'mospaging', 'content', 0, 10000, 1, 1, 0, 0, '0000-00-00 00:00:00', ''),
(3, 'Legacy Mambot Includer', 'legacybots', 'content', 0, 1, 0, 1, 0, 0, '0000-00-00 00:00:00', ''),
(4, 'SEF', 'mossef', 'content', 0, 3, 1, 0, 0, 0, '0000-00-00 00:00:00', ''),
(5, 'MOS Rating', 'mosvote', 'content', 0, 4, 1, 1, 0, 0, '0000-00-00 00:00:00', ''),
(6, 'Search Content', 'content.searchbot', 'search', 0, 1, 1, 1, 0, 0, '0000-00-00 00:00:00', ''),
(7, 'Search Weblinks', 'weblinks.searchbot', 'search', 0, 2, 1, 1, 0, 0, '0000-00-00 00:00:00', ''),
(8, 'Code support', 'moscode', 'content', 0, 2, 0, 0, 0, 0, '0000-00-00 00:00:00', ''),
(9, 'No WYSIWYG Editor', 'none', 'editors', 0, 0, 1, 1, 0, 0, '0000-00-00 00:00:00', ''),
(10, 'TinyMCE WYSIWYG Editor', 'tinymce', 'editors', 0, 0, 1, 1, 0, 0, '0000-00-00 00:00:00', 'theme=advanced'),
(11, 'MOS Image Editor Button', 'mosimage.btn', 'editors-xtd', 0, 0, 1, 0, 0, 0, '0000-00-00 00:00:00', ''),
(12, 'MOS Pagebreak Editor Button', 'mospage.btn', 'editors-xtd', 0, 0, 1, 0, 0, 0, '0000-00-00 00:00:00', ''),
(13, 'Search Contacts', 'contacts.searchbot', 'search', 0, 3, 1, 1, 0, 0, '0000-00-00 00:00:00', ''),
(14, 'Search Categories', 'categories.searchbot', 'search', 0, 4, 1, 0, 0, 0, '0000-00-00 00:00:00', ''),
(15, 'Search Sections', 'sections.searchbot', 'search', 0, 5, 1, 0, 0, 0, '0000-00-00 00:00:00', ''),
(16, 'Email Cloaking', 'mosemailcloak', 'content', 0, 5, 1, 0, 0, 0, '0000-00-00 00:00:00', ''),
(17, 'GeSHi', 'geshi', 'content', 0, 5, 0, 0, 0, 0, '0000-00-00 00:00:00', ''),
(18, 'Search Newsfeeds', 'newsfeeds.searchbot', 'search', 0, 6, 1, 0, 0, 0, '0000-00-00 00:00:00', ''),
(19, 'Load Module Positions', 'mosloadposition', 'content', 0, 6, 1, 0, 0, 0, '0000-00-00 00:00:00', ''),
(20, 'HTMLArea3 XTD', 'htmlarea3_xtd', 'editors', 0, 0, 1, 0, 0, 0, '0000-00-00 00:00:00', ''),
(21, 'ProductSearchBot', 'virtuemart.searchbot', 'search', 0, 0, 1, 0, 0, 0, '0000-00-00 00:00:00', ''),
(22, 'mosproductsnap', 'mosproductsnap', 'content', 0, 0, 1, 0, 0, 0, '0000-00-00 00:00:00', ''),
(23, 'JCE Editor Mambot', 'jce', 'editors', 0, 0, 1, 0, 0, 0, '0000-00-00 00:00:00', '');

-- --------------------------------------------------------

--
-- Table structure for table `jos_menu`
--

CREATE TABLE IF NOT EXISTS `jos_menu` (
  `id` int(11) NOT NULL,
  `menutype` varchar(25) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `link` text,
  `type` varchar(50) NOT NULL DEFAULT '',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `parent` int(11) unsigned NOT NULL DEFAULT '0',
  `componentid` int(11) unsigned NOT NULL DEFAULT '0',
  `sublevel` int(11) DEFAULT '0',
  `ordering` int(11) DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `pollid` int(11) NOT NULL DEFAULT '0',
  `browserNav` tinyint(4) DEFAULT '0',
  `access` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `utaccess` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jos_menu`
--

INSERT INTO `jos_menu` (`id`, `menutype`, `name`, `link`, `type`, `published`, `parent`, `componentid`, `sublevel`, `ordering`, `checked_out`, `checked_out_time`, `pollid`, `browserNav`, `access`, `utaccess`, `params`) VALUES
(1, 'mainmenu', 'Home', 'index.php?option=com_frontpage', 'components', 1, 0, 10, 0, 1, 0, '0000-00-00 00:00:00', 0, 0, 0, 3, 'menu_image=-1\npageclass_sfx=\nheader=Welcome to the Frontpage\npage_title=0\nback_button=0\nleading=1\nintro=2\ncolumns=2\nlink=1\norderby_pri=\norderby_sec=front\npagination=2\npagination_results=1\nimage=1\nsection=0\nsection_link=0\ncategory=0\ncategory_link=0\nitem_title=1\nlink_titles=\nreadmore=\nrating=\nauthor=\ncreatedate=\nmodifydate=\npdf=0\nprint=0\nemail=0\nunpublished=0'),
(2, 'mainmenu', 'News', 'index.php?option=com_content&task=section&id=1', 'content_section', 1, 0, 1, 0, 10, 0, '0000-00-00 00:00:00', 0, 0, 0, 3, ''),
(3, 'mainmenu', 'Contact Us', 'index.php?option=com_contact', 'components', 0, 0, 7, 0, 6, 0, '0000-00-00 00:00:00', 0, 0, 0, 3, ''),
(23, 'mainmenu', 'Links', 'index.php?option=com_weblinks', 'components', 0, 0, 4, 0, 5, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'menu_image=web_links.jpg\npageclass_sfx=\nback_button=\npage_title=1\nheader=\nheadings=1\nhits=\nitem_description=1\nother_cat=1\ndescription=1\ndescription_text=\nimage=-1\nimage_align=right\nweblink_icons='),
(5, 'mainmenu', 'Search', 'index.php?option=com_search', 'components', 0, 0, 16, 0, 7, 0, '0000-00-00 00:00:00', 0, 0, 0, 3, ''),
(6, 'mainmenu', 'Joomla! License', 'index.php?option=com_content&task=view&id=5', 'content_typed', -2, 0, 5, 0, 1, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, ''),
(7, 'mainmenu', 'News Feeds', 'index.php?option=com_newsfeeds', 'components', 0, 0, 12, 0, 8, 0, '0000-00-00 00:00:00', 0, 0, 0, 3, 'menu_image=-1\npageclass_sfx=\nback_button=\npage_title=1\nheader='),
(8, 'mainmenu', 'Wrapper', 'index.php?option=com_wrapper', 'wrapper', 0, 0, 0, 0, 11, 0, '0000-00-00 00:00:00', 0, 0, 0, 3, 'menu_image=-1\npageclass_sfx=\nback_button=\npage_title=1\nheader=\nscrolling=auto\nwidth=100%\nheight=600\nheight_auto=0\nurl=www.joomla.org'),
(9, 'mainmenu', 'Blog', 'index.php?option=com_content&task=blogsection&id=0', 'content_blog_section', 0, 0, 0, 0, 4, 0, '0000-00-00 00:00:00', 0, 0, 0, 3, 'menu_image=-1\npageclass_sfx=\nback_button=\nheader=A blog of all sections with no images\npage_title=1\nleading=0\nintro=6\ncolumns=2\nlink=4\norderby_pri=\norderby_sec=\npagination=2\npagination_results=1\nimage=0\ndescription=0\ndescription_image=0\ncategory=0\ncategory_link=0\nitem_title=1\nlink_titles=\nreadmore=\nrating=\nauthor=\ncreatedate=\nmodifydate=\npdf=\nprint=\nemail=\nsectionid='),
(10, 'othermenu', 'Joomla! Home', 'http://www.joomla.org', 'url', 1, 0, 0, 0, 1, 0, '0000-00-00 00:00:00', 0, 0, 0, 3, ''),
(11, 'othermenu', 'Joomla! Forums', 'http://forum.joomla.org', 'url', 1, 0, 0, 0, 1, 0, '0000-00-00 00:00:00', 0, 0, 0, 3, ''),
(12, 'othermenu', 'OSM Home', 'http://www.opensourcematters.org', 'url', 1, 0, 0, 0, 1, 0, '0000-00-00 00:00:00', 0, 0, 0, 3, ''),
(24, 'othermenu', 'Administrator', 'administrator/', 'url', 1, 0, 0, 0, 3, 0, '0000-00-00 00:00:00', 0, 0, 0, 3, 'menu_image=-1'),
(21, 'usermenu', 'Your Details', 'index.php?option=com_user&task=UserDetails', 'url', 1, 0, 0, 0, 1, 0, '0000-00-00 00:00:00', 0, 0, 1, 3, ''),
(13, 'usermenu', 'Submit News', 'index.php?option=com_content&task=new&sectionid=1&Itemid=0', 'url', 1, 0, 0, 0, 2, 0, '0000-00-00 00:00:00', 0, 0, 1, 2, ''),
(14, 'usermenu', 'Submit WebLink', 'index.php?option=com_weblinks&task=new', 'url', 1, 0, 0, 0, 4, 0, '0000-00-00 00:00:00', 0, 0, 1, 2, ''),
(15, 'usermenu', 'Check-In My Items', 'index.php?option=com_user&task=CheckIn', 'url', 1, 0, 0, 0, 5, 0, '0000-00-00 00:00:00', 0, 0, 1, 2, ''),
(16, 'usermenu', 'Logout', 'index.php?option=com_login', 'components', 1, 0, 15, 0, 5, 0, '0000-00-00 00:00:00', 0, 0, 1, 3, ''),
(17, 'topmenu', 'Home', 'index.php', 'url', 1, 0, 0, 0, 1, 0, '0000-00-00 00:00:00', 0, 0, 0, 3, ''),
(18, 'topmenu', 'Contact Us', 'index.php?option=com_contact&Itemid=3', 'url', 1, 0, 0, 0, 2, 0, '0000-00-00 00:00:00', 0, 0, 0, 3, ''),
(19, 'topmenu', 'News', 'index.php?option=com_content&task=section&id=1&Itemid=2', 'url', 1, 0, 0, 0, 3, 0, '0000-00-00 00:00:00', 0, 0, 0, 3, ''),
(20, 'topmenu', 'Links', 'index.php?option=com_weblinks&Itemid=23', 'url', 1, 0, 0, 0, 4, 0, '0000-00-00 00:00:00', 0, 0, 0, 3, 'menu_image=-1'),
(25, 'mainmenu', 'FAQs', 'index.php?option=com_content&task=category&sectionid=3&id=7', 'content_category', 0, 0, 7, 0, 9, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'menu_image=-1\npage_title=1\npageclass_sfx=\nback_button=\norderby=\ndate_format=\ndate=\nauthor=\ntitle=1\nhits=\nheadings=1\nnavigation=1\norder_select=1\ndisplay=1\ndisplay_num=50\nfilter=1\nfilter_type=title\nother_cat=1\nempty_cat=0\ncat_items=1\ncat_description=1'),
(26, 'mainmenu', 'Our Online-Shop', 'index.php?option=com_virtuemart', 'components', 0, 0, 19, 0, 2, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, ''),
(27, 'mainmenu', 'Profile', 'index.php?option=com_content&task=view&id=12', 'content_typed', -2, 0, 12, 0, 2, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'menu_image=-1\nunique_itemid=0'),
(28, 'mainmenu', 'My Customer', 'index.php?option=com_content&task=view&id=13', 'content_item_link', 1, 0, 13, 0, 3, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'menu_image=-1\nunique_itemid=0');

-- --------------------------------------------------------

--
-- Table structure for table `jos_messages`
--

CREATE TABLE IF NOT EXISTS `jos_messages` (
  `message_id` int(10) unsigned NOT NULL,
  `user_id_from` int(10) unsigned NOT NULL DEFAULT '0',
  `user_id_to` int(10) unsigned NOT NULL DEFAULT '0',
  `folder_id` int(10) unsigned NOT NULL DEFAULT '0',
  `date_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `state` int(11) NOT NULL DEFAULT '0',
  `priority` int(1) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(230) NOT NULL DEFAULT '',
  `message` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `jos_messages_cfg`
--

CREATE TABLE IF NOT EXISTS `jos_messages_cfg` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `cfg_name` varchar(100) NOT NULL DEFAULT '',
  `cfg_value` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `jos_modules`
--

CREATE TABLE IF NOT EXISTS `jos_modules` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `content` text NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `position` varchar(10) DEFAULT NULL,
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `module` varchar(50) DEFAULT NULL,
  `numnews` int(11) NOT NULL DEFAULT '0',
  `access` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `showtitle` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `params` text NOT NULL,
  `iscore` tinyint(4) NOT NULL DEFAULT '0',
  `client_id` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=47 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jos_modules`
--

INSERT INTO `jos_modules` (`id`, `title`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `published`, `module`, `numnews`, `access`, `showtitle`, `params`, `iscore`, `client_id`) VALUES
(1, 'Polls', '', 5, 'right', 0, '0000-00-00 00:00:00', 0, 'mod_poll', 0, 0, 1, '', 0, 0),
(2, 'User Menu', '', 3, 'left', 0, '0000-00-00 00:00:00', 1, 'mod_mainmenu', 0, 1, 1, 'menutype=usermenu', 1, 0),
(3, 'Main Menu', '', 1, 'left', 0, '0000-00-00 00:00:00', 1, 'mod_mainmenu', 0, 0, 1, 'menutype=mainmenu', 1, 0),
(4, 'Login Form', '', 5, 'left', 0, '0000-00-00 00:00:00', 1, 'mod_login', 0, 0, 1, '', 1, 0),
(5, 'Syndicate', '', 8, 'left', 0, '0000-00-00 00:00:00', 1, 'mod_rssfeed', 0, 0, 1, '', 1, 0),
(6, 'Latest News', '', 2, 'user1', 0, '0000-00-00 00:00:00', 0, 'mod_latestnews', 0, 0, 1, '', 1, 0),
(7, 'Statistics', '', 6, 'left', 0, '0000-00-00 00:00:00', 0, 'mod_stats', 0, 0, 1, 'serverinfo=1\nsiteinfo=1\ncounter=1\nincrease=0\nmoduleclass_sfx=', 0, 0),
(8, 'Who''s Online', '', 6, 'right', 0, '0000-00-00 00:00:00', 1, 'mod_whosonline', 0, 0, 1, 'online=1\nusers=1\nmoduleclass_sfx=', 0, 0),
(9, 'Popular', '', 2, 'user2', 0, '0000-00-00 00:00:00', 0, 'mod_mostread', 0, 0, 1, '', 0, 0),
(10, 'Template Chooser', '', 9, 'left', 0, '0000-00-00 00:00:00', 0, 'mod_templatechooser', 0, 0, 1, 'show_preview=1', 0, 0),
(11, 'Archive', '', 10, 'left', 0, '0000-00-00 00:00:00', 0, 'mod_archive', 0, 0, 1, '', 1, 0),
(12, 'Sections', '', 11, 'left', 0, '0000-00-00 00:00:00', 0, 'mod_sections', 0, 0, 1, '', 1, 0),
(13, 'Newsflash', '', 1, 'top', 0, '0000-00-00 00:00:00', 0, 'mod_newsflash', 0, 0, 1, 'catid=3\r\nstyle=random\r\nitems=\r\nmoduleclass_sfx=', 0, 0),
(14, 'Related Items', '', 12, 'left', 0, '0000-00-00 00:00:00', 0, 'mod_related_items', 0, 0, 1, '', 0, 0),
(15, 'Search', '', 1, 'user4', 0, '0000-00-00 00:00:00', 1, 'mod_search', 0, 0, 0, '', 0, 0),
(16, 'Random Image', '', 7, 'right', 0, '0000-00-00 00:00:00', 0, 'mod_random_image', 0, 0, 1, '', 0, 0),
(17, 'Top Menu', '', 1, 'user3', 0, '0000-00-00 00:00:00', 1, 'mod_mainmenu', 0, 0, 0, 'menutype=topmenu\nmenu_style=list_flat\nmenu_images=n\nmenu_images_align=left\nexpand_menu=n\nclass_sfx=-nav\nmoduleclass_sfx=\nindent_image1=0\nindent_image2=0\nindent_image3=0\nindent_image4=0\nindent_image5=0\nindent_image6=0', 1, 0),
(18, 'Banners', '', 1, 'banner', 0, '0000-00-00 00:00:00', 1, 'mod_banners', 0, 0, 0, 'banner_cids=\nmoduleclass_sfx=\n', 1, 0),
(19, 'Components', '', 2, 'cpanel', 0, '0000-00-00 00:00:00', 1, 'mod_components', 0, 99, 1, '', 1, 1),
(20, 'Popular', '', 3, 'cpanel', 0, '0000-00-00 00:00:00', 1, 'mod_popular', 0, 99, 1, '', 0, 1),
(21, 'Latest Items', '', 4, 'cpanel', 0, '0000-00-00 00:00:00', 1, 'mod_latest', 0, 99, 1, '', 0, 1),
(22, 'Menu Stats', '', 5, 'cpanel', 0, '0000-00-00 00:00:00', 1, 'mod_stats', 0, 99, 1, '', 0, 1),
(23, 'Unread Messages', '', 1, 'header', 0, '0000-00-00 00:00:00', 1, 'mod_unread', 0, 99, 1, '', 1, 1),
(24, 'Online Users', '', 2, 'header', 0, '0000-00-00 00:00:00', 1, 'mod_online', 0, 99, 1, '', 1, 1),
(25, 'Full Menu', '', 1, 'top', 0, '0000-00-00 00:00:00', 1, 'mod_fullmenu', 0, 99, 1, '', 1, 1),
(26, 'Pathway', '', 1, 'pathway', 0, '0000-00-00 00:00:00', 1, 'mod_pathway', 0, 99, 1, '', 1, 1),
(27, 'Toolbar', '', 1, 'toolbar', 0, '0000-00-00 00:00:00', 1, 'mod_toolbar', 0, 99, 1, '', 1, 1),
(28, 'System Message', '', 1, 'inset', 0, '0000-00-00 00:00:00', 1, 'mod_mosmsg', 0, 99, 1, '', 1, 1),
(29, 'Quick Icons', '', 1, 'icon', 0, '0000-00-00 00:00:00', 1, 'mod_quickicon', 0, 99, 1, '', 1, 1),
(30, 'Other Menu', '', 4, 'left', 0, '0000-00-00 00:00:00', 0, 'mod_mainmenu', 0, 0, 0, 'menutype=othermenu\nmenu_style=vert_indent\ncache=0\nmenu_images=0\nmenu_images_align=0\nexpand_menu=0\nclass_sfx=\nmoduleclass_sfx=\nindent_image=0\nindent_image1=\nindent_image2=\nindent_image3=\nindent_image4=\nindent_image5=\nindent_image6=', 0, 0),
(31, 'Wrapper', '', 13, 'left', 0, '0000-00-00 00:00:00', 0, 'mod_wrapper', 0, 0, 1, '', 0, 0),
(32, 'Logged', '', 0, 'cpanel', 0, '0000-00-00 00:00:00', 1, 'mod_logged', 0, 99, 1, '', 0, 1),
(33, 'Product Categories Module', '', 14, 'left', 0, '0000-00-00 00:00:00', 0, 'mod_product_categories', 0, 0, 1, '', 0, 0),
(34, 'Product Scroller', '', 1, 'right', 0, '0000-00-00 00:00:00', 0, 'mod_productscroller', 0, 0, 1, 'pretext=\nNumberOfProducts=5\nScrollSortMethod=random\nshow_product_name=yes\nshow_addtocart=yes\nshow_price=yes\nScrollHeight=125\nScrollWidth=150\nScrollBehavior=scroll\nScrollDirection=up\nScrollAmount=1\nScrollDelay=80\nScrollAlign=left\nScrollSpaceChar= \nScrollSpaceCharTimes=5\nScrollLineChar=<br />\nScrollLineCharTimes=2\nScrollCSSOverride=no\nScrollTextAlign=left\nScrollTextWeight=normal\nScrollTextSize=10\nScrollTextColor=#000000\nScrollBGColor=transparent\nScrollMargin=2\nmoduleclass_sfx=\nclass_sfx=', 0, 0),
(35, 'Online-Shop', '', 2, 'left', 0, '0000-00-00 00:00:00', 0, 'mod_virtuemart', 0, 0, 1, 'class_sfx=\nmoduleclass_sfx=\npretext=\nshow_login_form=yes\nshow_categories=yes\nshow_listall=yes\nshow_minicart=no\nshow_productsearch=yes\nshow_product_parameter_search=no\nmenutype=links\njscook_type=menu\njscookMenu_style=ThemeOffice\nmenu_orientation=hbr\njscookTree_style=ThemeXP\nroot_label=Shop', 0, 0),
(36, 'All-In-One New/Featured/TopTen/Random Products Module', '', 15, 'left', 0, '0000-00-00 00:00:00', 0, 'mod_virtuemart_allinone', 0, 0, 1, '', 0, 0),
(37, 'Your Cart', '', 2, 'top', 0, '0000-00-00 00:00:00', 1, 'mod_virtuemart_cart', 0, 0, 1, 'moduleclass_sfx=\nclass_sfx=', 0, 0),
(38, 'Featured Products', '', 1, 'user1', 0, '0000-00-00 00:00:00', 0, 'mod_virtuemart_featureprod', 0, 0, 1, 'max_items=2\nshow_price=1\nshow_addtocart=0\ndisplay_style=horizontal\nproducts_per_row=4\ncategory_id=\nmoduleclass_sfx=\nclass_sfx=', 0, 0),
(39, 'Latest products', '', 4, 'right', 0, '0000-00-00 00:00:00', 0, 'mod_virtuemart_latestprod', 0, 0, 1, 'max_items=2\nshow_price=1\nshow_addtocart=1\ndisplay_style=vertical\nproducts_per_row=4\ncategory_id=\nmoduleclass_sfx=\nclass_sfx=', 0, 0),
(40, 'Manufacturer Module', '', 16, 'left', 0, '0000-00-00 00:00:00', 0, 'mod_virtuemart_manufacturers', 0, 0, 1, '', 0, 0),
(41, 'VirtueMart Search Module', '', 17, 'left', 0, '0000-00-00 00:00:00', 0, 'mod_virtuemart_search', 0, 0, 1, '', 0, 0),
(42, 'Random Products', '', 1, 'user2', 0, '0000-00-00 00:00:00', 0, 'mod_virtuemart_randomprod', 0, 0, 1, 'max_items=2\nshow_price=1\nshow_addtocart=0\ndisplay_style=horizontal\nproducts_per_row=4\ncategory_id=\nmoduleclass_sfx=\nclass_sfx=', 0, 0),
(43, 'Top-Ten Products', '', 7, 'left', 0, '0000-00-00 00:00:00', 0, 'mod_virtuemart_topten', 0, 0, 1, 'num_topsellers=10\nmoduleclass_sfx=\nclass_sfx=', 0, 0),
(44, 'BankCurrecy', '', 2, 'right', 0, '0000-00-00 00:00:00', 1, 'mod_BblCurrecy', 0, 0, 1, 'moduleclass_sfx=\nalign=center', 0, 0),
(45, 'ราคาน้ำมันวันนี้', '', 3, 'right', 0, '0000-00-00 00:00:00', 1, 'mod_ptt', 0, 0, 1, 'moduleclass_sfx=\nalign=center', 0, 0),
(46, 'EnvoTime', '', 99, 'left', 0, '0000-00-00 00:00:00', 0, 'mod_envotime', 0, 0, 1, '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `jos_modules_menu`
--

CREATE TABLE IF NOT EXISTS `jos_modules_menu` (
  `moduleid` int(11) NOT NULL DEFAULT '0',
  `menuid` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jos_modules_menu`
--

INSERT INTO `jos_modules_menu` (`moduleid`, `menuid`) VALUES
(1, 1),
(2, 0),
(3, 0),
(4, 1),
(5, 1),
(6, 1),
(6, 2),
(6, 4),
(6, 27),
(6, 36),
(8, 1),
(9, 1),
(9, 2),
(9, 4),
(9, 27),
(9, 36),
(10, 1),
(13, 0),
(15, 0),
(17, 0),
(18, 0),
(30, 0),
(33, 0),
(34, 1),
(35, 0),
(36, 0),
(37, 0),
(38, 1),
(39, 1),
(40, 0),
(41, 0),
(42, 1),
(43, 0),
(44, 0),
(45, 0),
(46, 0);

-- --------------------------------------------------------

--
-- Table structure for table `jos_newsfeeds`
--

CREATE TABLE IF NOT EXISTS `jos_newsfeeds` (
  `catid` int(11) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `link` text NOT NULL,
  `filename` varchar(200) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `numarticles` int(11) unsigned NOT NULL DEFAULT '1',
  `cache_time` int(11) unsigned NOT NULL DEFAULT '3600',
  `checked_out` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jos_newsfeeds`
--

INSERT INTO `jos_newsfeeds` (`catid`, `id`, `name`, `link`, `filename`, `published`, `numarticles`, `cache_time`, `checked_out`, `checked_out_time`, `ordering`) VALUES
(4, 1, 'Joomla! - Official News', 'http://www.joomla.org/index.php?option=com_rss_xtd&feed=RSS2.0&type=com_frontpage&Itemid=1', '', 1, 5, 3600, 0, '0000-00-00 00:00:00', 8),
(4, 2, 'Joomla! - Community News', 'http://www.joomla.org/index.php?option=com_rss_xtd&feed=RSS2.0&type=com_content&task=blogcategory&id=0&Itemid=33', '', 1, 5, 3600, 0, '0000-00-00 00:00:00', 9),
(10, 4, 'Linux Today', 'http://linuxtoday.com/backend/my-netscape.rdf', '', 1, 3, 3600, 0, '0000-00-00 00:00:00', 1),
(5, 5, 'Business News', 'http://headlines.internet.com/internetnews/bus-news/news.rss', '', 1, 3, 3600, 0, '0000-00-00 00:00:00', 2),
(11, 6, 'Web Developer News', 'http://headlines.internet.com/internetnews/wd-news/news.rss', '', 1, 3, 3600, 0, '0000-00-00 00:00:00', 3),
(10, 7, 'Linux Central:New Products', 'http://linuxcentral.com/backend/lcnew.rdf', '', 1, 3, 3600, 0, '0000-00-00 00:00:00', 4),
(10, 8, 'Linux Central:Best Selling', 'http://linuxcentral.com/backend/lcbestns.rdf', '', 1, 3, 3600, 0, '0000-00-00 00:00:00', 5),
(10, 9, 'Linux Central:Daily Specials', 'http://linuxcentral.com/backend/lcspecialns.rdf', '', 1, 3, 3600, 0, '0000-00-00 00:00:00', 6),
(9, 10, 'Internet:Finance News', 'http://headlines.internet.com/internetnews/fina-news/news.rss', '', 1, 3, 3600, 0, '0000-00-00 00:00:00', 7);

-- --------------------------------------------------------

--
-- Table structure for table `jos_polls`
--

CREATE TABLE IF NOT EXISTS `jos_polls` (
  `id` int(11) unsigned NOT NULL,
  `title` varchar(100) NOT NULL DEFAULT '',
  `voters` int(9) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `access` int(11) NOT NULL DEFAULT '0',
  `lag` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jos_polls`
--

INSERT INTO `jos_polls` (`id`, `title`, `voters`, `checked_out`, `checked_out_time`, `published`, `access`, `lag`) VALUES
(14, 'This Joomla! installation was ....', 1, 0, '0000-00-00 00:00:00', 1, 0, 86400);

-- --------------------------------------------------------

--
-- Table structure for table `jos_poll_data`
--

CREATE TABLE IF NOT EXISTS `jos_poll_data` (
  `id` int(11) NOT NULL,
  `pollid` int(4) NOT NULL DEFAULT '0',
  `text` text NOT NULL,
  `hits` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jos_poll_data`
--

INSERT INTO `jos_poll_data` (`id`, `pollid`, `text`, `hits`) VALUES
(1, 14, 'Absolutely simple', 1),
(2, 14, 'Reasonably easy', 0),
(3, 14, 'Not straight-forward but I worked it out', 0),
(4, 14, 'I had to install extra server stuff', 0),
(5, 14, 'I had no idea and got my friend to do it', 0),
(6, 14, 'My dog ran away with the README ...', 0),
(7, 14, '', 0),
(8, 14, '', 0),
(9, 14, '', 0),
(10, 14, '', 0),
(11, 14, '', 0),
(12, 14, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `jos_poll_date`
--

CREATE TABLE IF NOT EXISTS `jos_poll_date` (
  `id` bigint(20) NOT NULL,
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `vote_id` int(11) NOT NULL DEFAULT '0',
  `poll_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `jos_poll_menu`
--

CREATE TABLE IF NOT EXISTS `jos_poll_menu` (
  `pollid` int(11) NOT NULL DEFAULT '0',
  `menuid` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jos_poll_menu`
--

INSERT INTO `jos_poll_menu` (`pollid`, `menuid`) VALUES
(14, 1);

-- --------------------------------------------------------

--
-- Table structure for table `jos_sections`
--

CREATE TABLE IF NOT EXISTS `jos_sections` (
  `id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `image` varchar(100) NOT NULL DEFAULT '',
  `scope` varchar(50) NOT NULL DEFAULT '',
  `image_position` varchar(10) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `access` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `count` int(11) NOT NULL DEFAULT '0',
  `params` text NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jos_sections`
--

INSERT INTO `jos_sections` (`id`, `title`, `name`, `image`, `scope`, `image_position`, `description`, `published`, `checked_out`, `checked_out_time`, `ordering`, `access`, `count`, `params`) VALUES
(1, 'News', 'The News', 'articles.jpg', 'content', 'right', 'Select a news topic from the list below, then select a news article to read.', 1, 0, '0000-00-00 00:00:00', 2, 0, 1, ''),
(2, 'Newsflashes', 'Newsflashes', '', 'content', 'left', '', 1, 0, '0000-00-00 00:00:00', 3, 0, 1, ''),
(3, 'FAQs', 'Frequently Asked Questions', 'pastarchives.jpg', 'content', 'left', 'From the list below choose one of our FAQs topics, then select an FAQ to read. If you have a question which is not in this section, please contact us.', 1, 0, '0000-00-00 00:00:00', 4, 0, 1, ''),
(4, 'Customer', 'Customer', 'key.jpg', 'content', 'left', '', 1, 0, '0000-00-00 00:00:00', 1, 0, 1, 'imagefolders=*1*');

-- --------------------------------------------------------

--
-- Table structure for table `jos_session`
--

CREATE TABLE IF NOT EXISTS `jos_session` (
  `username` varchar(50) DEFAULT '',
  `time` varchar(14) DEFAULT '',
  `session_id` varchar(200) NOT NULL DEFAULT '0',
  `guest` tinyint(4) DEFAULT '1',
  `userid` int(11) DEFAULT '0',
  `usertype` varchar(50) DEFAULT '',
  `gid` tinyint(3) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `jos_stats_agents`
--

CREATE TABLE IF NOT EXISTS `jos_stats_agents` (
  `agent` varchar(255) NOT NULL DEFAULT '',
  `type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hits` int(11) unsigned NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `jos_templates_menu`
--

CREATE TABLE IF NOT EXISTS `jos_templates_menu` (
  `template` varchar(50) NOT NULL DEFAULT '',
  `menuid` int(11) NOT NULL DEFAULT '0',
  `client_id` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jos_templates_menu`
--

INSERT INTO `jos_templates_menu` (`template`, `menuid`, `client_id`) VALUES
('mbt_macro_blue', 0, 0),
('joomla_admin', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `jos_template_positions`
--

CREATE TABLE IF NOT EXISTS `jos_template_positions` (
  `id` int(11) NOT NULL,
  `position` varchar(10) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jos_template_positions`
--

INSERT INTO `jos_template_positions` (`id`, `position`, `description`) VALUES
(1, 'left', ''),
(2, 'right', ''),
(3, 'top', ''),
(4, 'bottom', ''),
(5, 'inset', ''),
(6, 'banner', ''),
(7, 'header', ''),
(8, 'footer', ''),
(9, 'newsflash', ''),
(10, 'legals', ''),
(11, 'pathway', ''),
(12, 'toolbar', ''),
(13, 'cpanel', ''),
(14, 'user1', ''),
(15, 'user2', ''),
(16, 'user3', ''),
(17, 'user4', ''),
(18, 'user5', ''),
(19, 'user6', ''),
(20, 'user7', ''),
(21, 'user8', ''),
(22, 'user9', ''),
(23, 'advert1', ''),
(24, 'advert2', ''),
(25, 'advert3', ''),
(26, 'icon', ''),
(27, 'debug', '');

-- --------------------------------------------------------

--
-- Table structure for table `jos_users`
--

CREATE TABLE IF NOT EXISTS `jos_users` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL DEFAULT '',
  `username` varchar(25) NOT NULL DEFAULT '',
  `email` varchar(100) NOT NULL DEFAULT '',
  `password` varchar(100) NOT NULL DEFAULT '',
  `usertype` varchar(25) NOT NULL DEFAULT '',
  `block` tinyint(4) NOT NULL DEFAULT '0',
  `sendEmail` tinyint(4) DEFAULT '0',
  `gid` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `registerDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lastvisitDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `activation` varchar(100) NOT NULL DEFAULT '',
  `params` text NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=67 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jos_users`
--

INSERT INTO `jos_users` (`id`, `name`, `username`, `email`, `password`, `usertype`, `block`, `sendEmail`, `gid`, `registerDate`, `lastvisitDate`, `activation`, `params`) VALUES
(62, 'Administrator', 'admin', 'sanya@vdconvergence.com', 'cc6cd3432103c7d05ef2c85cd1c5d36f', 'Super Administrator', 0, 1, 25, '2007-05-26 17:29:21', '2009-02-19 11:38:02', '', 'expired=\nexpired_time='),
(63, 'dr.kid', 'dr.kid', 'dokka_kid@hotmail.com', '146637fdadc41cb5f6130a59f15e0325', '', 0, 0, 18, '2007-08-01 15:39:37', '2007-08-01 15:55:48', '', ''),
(64, 'Kajohndet Petcharat', 'kajohndet', 'KajohndetP@inglife.co.th', '5ce2b11f81ae1201eb766847de73f355', '', 0, 0, 18, '2008-01-18 11:22:14', '2008-01-18 11:23:06', '', ''),
(65, 'kritin', 'kritin', 'kritin_s@versatsol.com', 'cf82ef4087dbf0a201c910b3b7957894', '', 1, 0, 18, '2008-06-05 13:45:28', '0000-00-00 00:00:00', '5c262826246673b732b46f5d5b4ac8ca', ''),
(66, 'krisana Tamvimol', 'krisana', 'krisana@oi.co.th', '9b0345740b6d1195a6d501898a2947a3', '', 0, 0, 18, '2008-06-20 20:03:26', '2008-06-20 20:04:31', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `jos_usertypes`
--

CREATE TABLE IF NOT EXISTS `jos_usertypes` (
  `id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `name` varchar(50) NOT NULL DEFAULT '',
  `mask` varchar(11) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jos_usertypes`
--

INSERT INTO `jos_usertypes` (`id`, `name`, `mask`) VALUES
(0, 'superadministrator', ''),
(1, 'administrator', ''),
(2, 'editor', ''),
(3, 'user', ''),
(4, 'author', ''),
(5, 'publisher', ''),
(6, 'manager', '');

-- --------------------------------------------------------

--
-- Table structure for table `jos_vm_affiliate`
--

CREATE TABLE IF NOT EXISTS `jos_vm_affiliate` (
  `affiliate_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `active` char(1) NOT NULL DEFAULT 'N',
  `rate` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Used to store affiliate user entries';

-- --------------------------------------------------------

--
-- Table structure for table `jos_vm_affiliate_sale`
--

CREATE TABLE IF NOT EXISTS `jos_vm_affiliate_sale` (
  `order_id` int(11) NOT NULL DEFAULT '0',
  `visit_id` varchar(32) NOT NULL DEFAULT '',
  `affiliate_id` int(11) NOT NULL DEFAULT '0',
  `rate` int(2) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Stores orders that affiliates have placed';

-- --------------------------------------------------------

--
-- Table structure for table `jos_vm_auth_user_vendor`
--

CREATE TABLE IF NOT EXISTS `jos_vm_auth_user_vendor` (
  `user_id` int(11) DEFAULT NULL,
  `vendor_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Maps a user to a vendor';

--
-- Dumping data for table `jos_vm_auth_user_vendor`
--

INSERT INTO `jos_vm_auth_user_vendor` (`user_id`, `vendor_id`) VALUES
(62, 1);

-- --------------------------------------------------------

--
-- Table structure for table `jos_vm_category`
--

CREATE TABLE IF NOT EXISTS `jos_vm_category` (
  `category_id` int(11) NOT NULL,
  `vendor_id` int(11) NOT NULL DEFAULT '0',
  `category_name` varchar(128) NOT NULL DEFAULT '',
  `category_description` text,
  `category_thumb_image` varchar(255) DEFAULT NULL,
  `category_full_image` varchar(255) DEFAULT NULL,
  `category_publish` char(1) DEFAULT NULL,
  `cdate` int(11) DEFAULT NULL,
  `mdate` int(11) DEFAULT NULL,
  `category_browsepage` varchar(255) NOT NULL DEFAULT 'browse_1',
  `products_per_row` tinyint(2) NOT NULL DEFAULT '1',
  `category_flypage` varchar(255) DEFAULT NULL,
  `list_order` int(11) DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='Product Categories are stored here';

--
-- Dumping data for table `jos_vm_category`
--

INSERT INTO `jos_vm_category` (`category_id`, `vendor_id`, `category_name`, `category_description`, `category_thumb_image`, `category_full_image`, `category_publish`, `cdate`, `mdate`, `category_browsepage`, `products_per_row`, `category_flypage`, `list_order`) VALUES
(1, 1, 'Hand Tools', 'Hand Tools', 'ee024e46399e792cc8ba4bf097d0fa6a.jpg', 'fc2f001413876a374484df36ed9cf775.jpg', 'Y', 950319905, 960304194, 'browse_3', 3, '', 1),
(2, 1, 'Power Tools', 'Power Tools', 'fc8802c7eaa1149bde98a541742217de.jpg', 'fe2f63f4c46023e3b33404c80bdd2bfe.jpg', 'Y', 950319916, 960304104, 'browse_4', 4, '', 2),
(3, 1, 'Garden Tools', 'Garden Tools', '702168cd91e8b7bbb7a36be56f86e9be.jpg', '756ff6d140e11079caf56955060f1162.jpg', 'Y', 950321122, 960304338, 'browse_2', 2, 'shop.garden_flypage', 3),
(4, 1, 'Outdoor Tools', 'Outdoor Tools', NULL, NULL, 'Y', 955626629, 958889528, 'browse_1', 1, NULL, 4),
(5, 1, 'Indoor Tools', 'Indoor Tools', NULL, NULL, 'Y', 958892894, 958892894, 'browse_1', 1, NULL, 5);

-- --------------------------------------------------------

--
-- Table structure for table `jos_vm_category_xref`
--

CREATE TABLE IF NOT EXISTS `jos_vm_category_xref` (
  `category_parent_id` int(11) NOT NULL DEFAULT '0',
  `category_child_id` int(11) NOT NULL DEFAULT '0',
  `category_list` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Category child-parent relation list';

--
-- Dumping data for table `jos_vm_category_xref`
--

INSERT INTO `jos_vm_category_xref` (`category_parent_id`, `category_child_id`, `category_list`) VALUES
(0, 1, NULL),
(0, 2, NULL),
(0, 3, NULL),
(2, 4, NULL),
(2, 5, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `jos_vm_country`
--

CREATE TABLE IF NOT EXISTS `jos_vm_country` (
  `country_id` int(11) NOT NULL,
  `zone_id` int(11) NOT NULL DEFAULT '1',
  `country_name` varchar(64) DEFAULT NULL,
  `country_3_code` char(3) DEFAULT NULL,
  `country_2_code` char(2) DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=240 DEFAULT CHARSET=utf8 COMMENT='Country records';

--
-- Dumping data for table `jos_vm_country`
--

INSERT INTO `jos_vm_country` (`country_id`, `zone_id`, `country_name`, `country_3_code`, `country_2_code`) VALUES
(1, 1, 'Afghanistan', 'AFG', 'AF'),
(2, 1, 'Albania', 'ALB', 'AL'),
(3, 1, 'Algeria', 'DZA', 'DZ'),
(4, 1, 'American Samoa', 'ASM', 'AS'),
(5, 1, 'Andorra', 'AND', 'AD'),
(6, 1, 'Angola', 'AGO', 'AO'),
(7, 1, 'Anguilla', 'AIA', 'AI'),
(8, 1, 'Antarctica', 'ATA', 'AQ'),
(9, 1, 'Antigua and Barbuda', 'ATG', 'AG'),
(10, 1, 'Argentina', 'ARG', 'AR'),
(11, 1, 'Armenia', 'ARM', 'AM'),
(12, 1, 'Aruba', 'ABW', 'AW'),
(13, 1, 'Australia', 'AUS', 'AU'),
(14, 1, 'Austria', 'AUT', 'AT'),
(15, 1, 'Azerbaijan', 'AZE', 'AZ'),
(16, 1, 'Bahamas', 'BHS', 'BS'),
(17, 1, 'Bahrain', 'BHR', 'BH'),
(18, 1, 'Bangladesh', 'BGD', 'BD'),
(19, 1, 'Barbados', 'BRB', 'BB'),
(20, 1, 'Belarus', 'BLR', 'BY'),
(21, 1, 'Belgium', 'BEL', 'BE'),
(22, 1, 'Belize', 'BLZ', 'BZ'),
(23, 1, 'Benin', 'BEN', 'BJ'),
(24, 1, 'Bermuda', 'BMU', 'BM'),
(25, 1, 'Bhutan', 'BTN', 'BT'),
(26, 1, 'Bolivia', 'BOL', 'BO'),
(27, 1, 'Bosnia and Herzegowina', 'BIH', 'BA'),
(28, 1, 'Botswana', 'BWA', 'BW'),
(29, 1, 'Bouvet Island', 'BVT', 'BV'),
(30, 1, 'Brazil', 'BRA', 'BR'),
(31, 1, 'British Indian Ocean Territory', 'IOT', 'IO'),
(32, 1, 'Brunei Darussalam', 'BRN', 'BN'),
(33, 1, 'Bulgaria', 'BGR', 'BG'),
(34, 1, 'Burkina Faso', 'BFA', 'BF'),
(35, 1, 'Burundi', 'BDI', 'BI'),
(36, 1, 'Cambodia', 'KHM', 'KH'),
(37, 1, 'Cameroon', 'CMR', 'CM'),
(38, 1, 'Canada', 'CAN', 'CA'),
(39, 1, 'Cape Verde', 'CPV', 'CV'),
(40, 1, 'Cayman Islands', 'CYM', 'KY'),
(41, 1, 'Central African Republic', 'CAF', 'CF'),
(42, 1, 'Chad', 'TCD', 'TD'),
(43, 1, 'Chile', 'CHL', 'CL'),
(44, 1, 'China', 'CHN', 'CN'),
(45, 1, 'Christmas Island', 'CXR', 'CX'),
(46, 1, 'Cocos (Keeling) Islands', 'CCK', 'CC'),
(47, 1, 'Colombia', 'COL', 'CO'),
(48, 1, 'Comoros', 'COM', 'KM'),
(49, 1, 'Congo', 'COG', 'CG'),
(50, 1, 'Cook Islands', 'COK', 'CK'),
(51, 1, 'Costa Rica', 'CRI', 'CR'),
(52, 1, 'Cote D''Ivoire', 'CIV', 'CI'),
(53, 1, 'Croatia', 'HRV', 'HR'),
(54, 1, 'Cuba', 'CUB', 'CU'),
(55, 1, 'Cyprus', 'CYP', 'CY'),
(56, 1, 'Czech Republic', 'CZE', 'CZ'),
(57, 1, 'Denmark', 'DNK', 'DK'),
(58, 1, 'Djibouti', 'DJI', 'DJ'),
(59, 1, 'Dominica', 'DMA', 'DM'),
(60, 1, 'Dominican Republic', 'DOM', 'DO'),
(61, 1, 'East Timor', 'TMP', 'TP'),
(62, 1, 'Ecuador', 'ECU', 'EC'),
(63, 1, 'Egypt', 'EGY', 'EG'),
(64, 1, 'El Salvador', 'SLV', 'SV'),
(65, 1, 'Equatorial Guinea', 'GNQ', 'GQ'),
(66, 1, 'Eritrea', 'ERI', 'ER'),
(67, 1, 'Estonia', 'EST', 'EE'),
(68, 1, 'Ethiopia', 'ETH', 'ET'),
(69, 1, 'Falkland Islands (Malvinas)', 'FLK', 'FK'),
(70, 1, 'Faroe Islands', 'FRO', 'FO'),
(71, 1, 'Fiji', 'FJI', 'FJ'),
(72, 1, 'Finland', 'FIN', 'FI'),
(73, 1, 'France', 'FRA', 'FR'),
(74, 1, 'France, Metropolitan', 'FXX', 'FX'),
(75, 1, 'French Guiana', 'GUF', 'GF'),
(76, 1, 'French Polynesia', 'PYF', 'PF'),
(77, 1, 'French Southern Territories', 'ATF', 'TF'),
(78, 1, 'Gabon', 'GAB', 'GA'),
(79, 1, 'Gambia', 'GMB', 'GM'),
(80, 1, 'Georgia', 'GEO', 'GE'),
(81, 1, 'Germany', 'DEU', 'DE'),
(82, 1, 'Ghana', 'GHA', 'GH'),
(83, 1, 'Gibraltar', 'GIB', 'GI'),
(84, 1, 'Greece', 'GRC', 'GR'),
(85, 1, 'Greenland', 'GRL', 'GL'),
(86, 1, 'Grenada', 'GRD', 'GD'),
(87, 1, 'Guadeloupe', 'GLP', 'GP'),
(88, 1, 'Guam', 'GUM', 'GU'),
(89, 1, 'Guatemala', 'GTM', 'GT'),
(90, 1, 'Guinea', 'GIN', 'GN'),
(91, 1, 'Guinea-bissau', 'GNB', 'GW'),
(92, 1, 'Guyana', 'GUY', 'GY'),
(93, 1, 'Haiti', 'HTI', 'HT'),
(94, 1, 'Heard and Mc Donald Islands', 'HMD', 'HM'),
(95, 1, 'Honduras', 'HND', 'HN'),
(96, 1, 'Hong Kong', 'HKG', 'HK'),
(97, 1, 'Hungary', 'HUN', 'HU'),
(98, 1, 'Iceland', 'ISL', 'IS'),
(99, 1, 'India', 'IND', 'IN'),
(100, 1, 'Indonesia', 'IDN', 'ID'),
(101, 1, 'Iran (Islamic Republic of)', 'IRN', 'IR'),
(102, 1, 'Iraq', 'IRQ', 'IQ'),
(103, 1, 'Ireland', 'IRL', 'IE'),
(104, 1, 'Israel', 'ISR', 'IL'),
(105, 1, 'Italy', 'ITA', 'IT'),
(106, 1, 'Jamaica', 'JAM', 'JM'),
(107, 1, 'Japan', 'JPN', 'JP'),
(108, 1, 'Jordan', 'JOR', 'JO'),
(109, 1, 'Kazakhstan', 'KAZ', 'KZ'),
(110, 1, 'Kenya', 'KEN', 'KE'),
(111, 1, 'Kiribati', 'KIR', 'KI'),
(112, 1, 'Korea, Democratic People''s Republic of', 'PRK', 'KP'),
(113, 1, 'Korea, Republic of', 'KOR', 'KR'),
(114, 1, 'Kuwait', 'KWT', 'KW'),
(115, 1, 'Kyrgyzstan', 'KGZ', 'KG'),
(116, 1, 'Lao People''s Democratic Republic', 'LAO', 'LA'),
(117, 1, 'Latvia', 'LVA', 'LV'),
(118, 1, 'Lebanon', 'LBN', 'LB'),
(119, 1, 'Lesotho', 'LSO', 'LS'),
(120, 1, 'Liberia', 'LBR', 'LR'),
(121, 1, 'Libyan Arab Jamahiriya', 'LBY', 'LY'),
(122, 1, 'Liechtenstein', 'LIE', 'LI'),
(123, 1, 'Lithuania', 'LTU', 'LT'),
(124, 1, 'Luxembourg', 'LUX', 'LU'),
(125, 1, 'Macau', 'MAC', 'MO'),
(126, 1, 'Macedonia, The Former Yugoslav Republic of', 'MKD', 'MK'),
(127, 1, 'Madagascar', 'MDG', 'MG'),
(128, 1, 'Malawi', 'MWI', 'MW'),
(129, 1, 'Malaysia', 'MYS', 'MY'),
(130, 1, 'Maldives', 'MDV', 'MV'),
(131, 1, 'Mali', 'MLI', 'ML'),
(132, 1, 'Malta', 'MLT', 'MT'),
(133, 1, 'Marshall Islands', 'MHL', 'MH'),
(134, 1, 'Martinique', 'MTQ', 'MQ'),
(135, 1, 'Mauritania', 'MRT', 'MR'),
(136, 1, 'Mauritius', 'MUS', 'MU'),
(137, 1, 'Mayotte', 'MYT', 'YT'),
(138, 1, 'Mexico', 'MEX', 'MX'),
(139, 1, 'Micronesia, Federated States of', 'FSM', 'FM'),
(140, 1, 'Moldova, Republic of', 'MDA', 'MD'),
(141, 1, 'Monaco', 'MCO', 'MC'),
(142, 1, 'Mongolia', 'MNG', 'MN'),
(143, 1, 'Montserrat', 'MSR', 'MS'),
(144, 1, 'Morocco', 'MAR', 'MA'),
(145, 1, 'Mozambique', 'MOZ', 'MZ'),
(146, 1, 'Myanmar', 'MMR', 'MM'),
(147, 1, 'Namibia', 'NAM', 'NA'),
(148, 1, 'Nauru', 'NRU', 'NR'),
(149, 1, 'Nepal', 'NPL', 'NP'),
(150, 1, 'Netherlands', 'NLD', 'NL'),
(151, 1, 'Netherlands Antilles', 'ANT', 'AN'),
(152, 1, 'New Caledonia', 'NCL', 'NC'),
(153, 1, 'New Zealand', 'NZL', 'NZ'),
(154, 1, 'Nicaragua', 'NIC', 'NI'),
(155, 1, 'Niger', 'NER', 'NE'),
(156, 1, 'Nigeria', 'NGA', 'NG'),
(157, 1, 'Niue', 'NIU', 'NU'),
(158, 1, 'Norfolk Island', 'NFK', 'NF'),
(159, 1, 'Northern Mariana Islands', 'MNP', 'MP'),
(160, 1, 'Norway', 'NOR', 'NO'),
(161, 1, 'Oman', 'OMN', 'OM'),
(162, 1, 'Pakistan', 'PAK', 'PK'),
(163, 1, 'Palau', 'PLW', 'PW'),
(164, 1, 'Panama', 'PAN', 'PA'),
(165, 1, 'Papua New Guinea', 'PNG', 'PG'),
(166, 1, 'Paraguay', 'PRY', 'PY'),
(167, 1, 'Peru', 'PER', 'PE'),
(168, 1, 'Philippines', 'PHL', 'PH'),
(169, 1, 'Pitcairn', 'PCN', 'PN'),
(170, 1, 'Poland', 'POL', 'PL'),
(171, 1, 'Portugal', 'PRT', 'PT'),
(172, 1, 'Puerto Rico', 'PRI', 'PR'),
(173, 1, 'Qatar', 'QAT', 'QA'),
(174, 1, 'Reunion', 'REU', 'RE'),
(175, 1, 'Romania', 'ROM', 'RO'),
(176, 1, 'Russian Federation', 'RUS', 'RU'),
(177, 1, 'Rwanda', 'RWA', 'RW'),
(178, 1, 'Saint Kitts and Nevis', 'KNA', 'KN'),
(179, 1, 'Saint Lucia', 'LCA', 'LC'),
(180, 1, 'Saint Vincent and the Grenadines', 'VCT', 'VC'),
(181, 1, 'Samoa', 'WSM', 'WS'),
(182, 1, 'San Marino', 'SMR', 'SM'),
(183, 1, 'Sao Tome and Principe', 'STP', 'ST'),
(184, 1, 'Saudi Arabia', 'SAU', 'SA'),
(185, 1, 'Senegal', 'SEN', 'SN'),
(186, 1, 'Seychelles', 'SYC', 'SC'),
(187, 1, 'Sierra Leone', 'SLE', 'SL'),
(188, 1, 'Singapore', 'SGP', 'SG'),
(189, 1, 'Slovakia (Slovak Republic)', 'SVK', 'SK'),
(190, 1, 'Slovenia', 'SVN', 'SI'),
(191, 1, 'Solomon Islands', 'SLB', 'SB'),
(192, 1, 'Somalia', 'SOM', 'SO'),
(193, 1, 'South Africa', 'ZAF', 'ZA'),
(194, 1, 'South Georgia and the South Sandwich Islands', 'SGS', 'GS'),
(195, 1, 'Spain', 'ESP', 'ES'),
(196, 1, 'Sri Lanka', 'LKA', 'LK'),
(197, 1, 'St. Helena', 'SHN', 'SH'),
(198, 1, 'St. Pierre and Miquelon', 'SPM', 'PM'),
(199, 1, 'Sudan', 'SDN', 'SD'),
(200, 1, 'Suriname', 'SUR', 'SR'),
(201, 1, 'Svalbard and Jan Mayen Islands', 'SJM', 'SJ'),
(202, 1, 'Swaziland', 'SWZ', 'SZ'),
(203, 1, 'Sweden', 'SWE', 'SE'),
(204, 1, 'Switzerland', 'CHE', 'CH'),
(205, 1, 'Syrian Arab Republic', 'SYR', 'SY'),
(206, 1, 'Taiwan', 'TWN', 'TW'),
(207, 1, 'Tajikistan', 'TJK', 'TJ'),
(208, 1, 'Tanzania, United Republic of', 'TZA', 'TZ'),
(209, 1, 'Thailand', 'THA', 'TH'),
(210, 1, 'Togo', 'TGO', 'TG'),
(211, 1, 'Tokelau', 'TKL', 'TK'),
(212, 1, 'Tonga', 'TON', 'TO'),
(213, 1, 'Trinidad and Tobago', 'TTO', 'TT'),
(214, 1, 'Tunisia', 'TUN', 'TN'),
(215, 1, 'Turkey', 'TUR', 'TR'),
(216, 1, 'Turkmenistan', 'TKM', 'TM'),
(217, 1, 'Turks and Caicos Islands', 'TCA', 'TC'),
(218, 1, 'Tuvalu', 'TUV', 'TV'),
(219, 1, 'Uganda', 'UGA', 'UG'),
(220, 1, 'Ukraine', 'UKR', 'UA'),
(221, 1, 'United Arab Emirates', 'ARE', 'AE'),
(222, 1, 'United Kingdom', 'GBR', 'GB'),
(223, 1, 'United States', 'USA', 'US'),
(224, 1, 'United States Minor Outlying Islands', 'UMI', 'UM'),
(225, 1, 'Uruguay', 'URY', 'UY'),
(226, 1, 'Uzbekistan', 'UZB', 'UZ'),
(227, 1, 'Vanuatu', 'VUT', 'VU'),
(228, 1, 'Vatican City State (Holy See)', 'VAT', 'VA'),
(229, 1, 'Venezuela', 'VEN', 'VE'),
(230, 1, 'Viet Nam', 'VNM', 'VN'),
(231, 1, 'Virgin Islands (British)', 'VGB', 'VG'),
(232, 1, 'Virgin Islands (U.S.)', 'VIR', 'VI'),
(233, 1, 'Wallis and Futuna Islands', 'WLF', 'WF'),
(234, 1, 'Western Sahara', 'ESH', 'EH'),
(235, 1, 'Yemen', 'YEM', 'YE'),
(236, 1, 'Yugoslavia', 'YUG', 'YU'),
(237, 1, 'Zaire', 'ZAR', 'ZR'),
(238, 1, 'Zambia', 'ZMB', 'ZM'),
(239, 1, 'Zimbabwe', 'ZWE', 'ZW');

-- --------------------------------------------------------

--
-- Table structure for table `jos_vm_coupons`
--

CREATE TABLE IF NOT EXISTS `jos_vm_coupons` (
  `coupon_id` int(16) NOT NULL,
  `coupon_code` varchar(32) NOT NULL DEFAULT '',
  `percent_or_total` enum('percent','total') NOT NULL DEFAULT 'percent',
  `coupon_type` enum('gift','permanent') NOT NULL DEFAULT 'gift',
  `coupon_value` decimal(12,2) NOT NULL DEFAULT '0.00'
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='Used to store coupon codes';

--
-- Dumping data for table `jos_vm_coupons`
--

INSERT INTO `jos_vm_coupons` (`coupon_id`, `coupon_code`, `percent_or_total`, `coupon_type`, `coupon_value`) VALUES
(1, 'test1', 'total', 'gift', '6.00'),
(2, 'test2', 'percent', 'permanent', '15.00'),
(3, 'test3', 'total', 'permanent', '4.00'),
(4, 'test4', 'total', 'gift', '15.00');

-- --------------------------------------------------------

--
-- Table structure for table `jos_vm_creditcard`
--

CREATE TABLE IF NOT EXISTS `jos_vm_creditcard` (
  `creditcard_id` int(11) NOT NULL,
  `vendor_id` int(11) NOT NULL DEFAULT '0',
  `creditcard_name` varchar(70) NOT NULL DEFAULT '',
  `creditcard_code` varchar(30) NOT NULL DEFAULT ''
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='Used to store credit card types';

--
-- Dumping data for table `jos_vm_creditcard`
--

INSERT INTO `jos_vm_creditcard` (`creditcard_id`, `vendor_id`, `creditcard_name`, `creditcard_code`) VALUES
(1, 1, 'Visa', 'VISA'),
(2, 1, 'MasterCard', 'MC'),
(3, 1, 'American Express', 'amex'),
(4, 1, 'Discover Card', 'discover'),
(5, 1, 'Diners Club', 'diners'),
(6, 1, 'JCB', 'jcb'),
(7, 1, 'Australian Bankcard', 'australian_bc');

-- --------------------------------------------------------

--
-- Table structure for table `jos_vm_csv`
--

CREATE TABLE IF NOT EXISTS `jos_vm_csv` (
  `field_id` int(11) NOT NULL,
  `field_name` varchar(128) NOT NULL DEFAULT '',
  `field_default_value` text,
  `field_ordering` int(3) NOT NULL DEFAULT '0',
  `field_required` char(1) DEFAULT 'N'
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COMMENT='Holds all fields which are used on CVS Ex-/Import';

--
-- Dumping data for table `jos_vm_csv`
--

INSERT INTO `jos_vm_csv` (`field_id`, `field_name`, `field_default_value`, `field_ordering`, `field_required`) VALUES
(1, 'product_sku', '', 1, 'Y'),
(2, 'product_s_desc', '', 2, 'N'),
(3, 'product_desc', '', 3, 'N'),
(4, 'product_thumb_image', '', 4, 'N'),
(5, 'product_full_image', '', 5, 'N'),
(6, 'product_weight', '', 6, 'N'),
(7, 'product_weight_uom', 'KG', 7, 'N'),
(8, 'product_length', '', 8, 'N'),
(9, 'product_width', '', 9, 'N'),
(10, 'product_height', '', 10, 'N'),
(11, 'product_lwh_uom', '', 11, 'N'),
(12, 'product_in_stock', '0', 12, 'N'),
(13, 'product_available_date', '', 13, 'N'),
(14, 'product_discount_id', '', 14, 'N'),
(15, 'product_name', '', 15, 'Y'),
(16, 'product_price', '', 16, 'N'),
(17, 'category_path', '', 17, 'Y'),
(18, 'manufacturer_id', '', 18, 'N'),
(19, 'product_tax_id', '', 19, 'N'),
(20, 'product_sales', '', 20, 'N'),
(21, 'product_parent_id', '0', 21, 'N'),
(22, 'attribute', '', 22, 'N'),
(23, 'custom_attribute', '', 23, 'N'),
(24, 'attributes', '', 24, 'N'),
(25, 'attribute_values', '', 25, 'N');

-- --------------------------------------------------------

--
-- Table structure for table `jos_vm_currency`
--

CREATE TABLE IF NOT EXISTS `jos_vm_currency` (
  `currency_id` int(11) NOT NULL,
  `currency_name` varchar(64) DEFAULT NULL,
  `currency_code` char(3) DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=158 DEFAULT CHARSET=utf8 COMMENT='Used to store currencies';

--
-- Dumping data for table `jos_vm_currency`
--

INSERT INTO `jos_vm_currency` (`currency_id`, `currency_name`, `currency_code`) VALUES
(1, 'Andorran Peseta', 'ADP'),
(2, 'United Arab Emirates Dirham', 'AED'),
(3, 'Afghanistan Afghani', 'AFA'),
(4, 'Albanian Lek', 'ALL'),
(5, 'Netherlands Antillian Guilder', 'ANG'),
(6, 'Angolan Kwanza', 'AOK'),
(7, 'Argentinian Austral', 'ARA'),
(9, 'Australian Dollar', 'AUD'),
(10, 'Aruban Florin', 'AWG'),
(11, 'Barbados Dollar', 'BBD'),
(12, 'Bangladeshi Taka', 'BDT'),
(14, 'Bulgarian Lev', 'BGL'),
(15, 'Bahraini Dinar', 'BHD'),
(16, 'Burundi Franc', 'BIF'),
(17, 'Bermudian Dollar', 'BMD'),
(18, 'Brunei Dollar', 'BND'),
(19, 'Bolivian Boliviano', 'BOB'),
(20, 'Brazilian Real', 'BRL'),
(21, 'Bahamian Dollar', 'BSD'),
(22, 'Bhutan Ngultrum', 'BTN'),
(23, 'Burma Kyat', 'BUK'),
(24, 'Botswanian Pula', 'BWP'),
(25, 'Belize Dollar', 'BZD'),
(26, 'Canadian Dollar', 'CAD'),
(27, 'Swiss Franc', 'CHF'),
(28, 'Chilean Unidades de Fomento', 'CLF'),
(29, 'Chilean Peso', 'CLP'),
(30, 'Yuan (Chinese) Renminbi', 'CNY'),
(31, 'Colombian Peso', 'COP'),
(32, 'Costa Rican Colon', 'CRC'),
(33, 'Czech Koruna', 'CZK'),
(34, 'Cuban Peso', 'CUP'),
(35, 'Cape Verde Escudo', 'CVE'),
(36, 'Cyprus Pound', 'CYP'),
(40, 'Danish Krone', 'DKK'),
(41, 'Dominican Peso', 'DOP'),
(42, 'Algerian Dinar', 'DZD'),
(43, 'Ecuador Sucre', 'ECS'),
(44, 'Egyptian Pound', 'EGP'),
(46, 'Ethiopian Birr', 'ETB'),
(47, 'Euro', 'EUR'),
(49, 'Fiji Dollar', 'FJD'),
(50, 'Falkland Islands Pound', 'FKP'),
(52, 'British Pound', 'GBP'),
(53, 'Ghanaian Cedi', 'GHC'),
(54, 'Gibraltar Pound', 'GIP'),
(55, 'Gambian Dalasi', 'GMD'),
(56, 'Guinea Franc', 'GNF'),
(58, 'Guatemalan Quetzal', 'GTQ'),
(59, 'Guinea-Bissau Peso', 'GWP'),
(60, 'Guyanan Dollar', 'GYD'),
(61, 'Hong Kong Dollar', 'HKD'),
(62, 'Honduran Lempira', 'HNL'),
(63, 'Haitian Gourde', 'HTG'),
(64, 'Hungarian Forint', 'HUF'),
(65, 'Indonesian Rupiah', 'IDR'),
(66, 'Irish Punt', 'IEP'),
(67, 'Israeli Shekel', 'ILS'),
(68, 'Indian Rupee', 'INR'),
(69, 'Iraqi Dinar', 'IQD'),
(70, 'Iranian Rial', 'IRR'),
(73, 'Jamaican Dollar', 'JMD'),
(74, 'Jordanian Dinar', 'JOD'),
(75, 'Japanese Yen', 'JPY'),
(76, 'Kenyan Schilling', 'KES'),
(77, 'Kampuchean (Cambodian) Riel', 'KHR'),
(78, 'Comoros Franc', 'KMF'),
(79, 'North Korean Won', 'KPW'),
(80, '(South) Korean Won', 'KRW'),
(81, 'Kuwaiti Dinar', 'KWD'),
(82, 'Cayman Islands Dollar', 'KYD'),
(83, 'Lao Kip', 'LAK'),
(84, 'Lebanese Pound', 'LBP'),
(85, 'Sri Lanka Rupee', 'LKR'),
(86, 'Liberian Dollar', 'LRD'),
(87, 'Lesotho Loti', 'LSL'),
(89, 'Libyan Dinar', 'LYD'),
(90, 'Moroccan Dirham', 'MAD'),
(91, 'Malagasy Franc', 'MGF'),
(92, 'Mongolian Tugrik', 'MNT'),
(93, 'Macau Pataca', 'MOP'),
(94, 'Mauritanian Ouguiya', 'MRO'),
(95, 'Maltese Lira', 'MTL'),
(96, 'Mauritius Rupee', 'MUR'),
(97, 'Maldive Rufiyaa', 'MVR'),
(98, 'Malawi Kwacha', 'MWK'),
(99, 'Mexican Peso', 'MXP'),
(100, 'Malaysian Ringgit', 'MYR'),
(101, 'Mozambique Metical', 'MZM'),
(102, 'Nigerian Naira', 'NGN'),
(103, 'Nicaraguan Cordoba', 'NIC'),
(105, 'Norwegian Kroner', 'NOK'),
(106, 'Nepalese Rupee', 'NPR'),
(107, 'New Zealand Dollar', 'NZD'),
(108, 'Omani Rial', 'OMR'),
(109, 'Panamanian Balboa', 'PAB'),
(110, 'Peruvian Inti', 'PEI'),
(111, 'Papua New Guinea Kina', 'PGK'),
(112, 'Philippine Peso', 'PHP'),
(113, 'Pakistan Rupee', 'PKR'),
(114, 'Polish Zloty', 'PLZ'),
(116, 'Paraguay Guarani', 'PYG'),
(117, 'Qatari Rial', 'QAR'),
(118, 'Romanian Leu', 'ROL'),
(119, 'Rwanda Franc', 'RWF'),
(120, 'Saudi Arabian Riyal', 'SAR'),
(121, 'Solomon Islands Dollar', 'SBD'),
(122, 'Seychelles Rupee', 'SCR'),
(123, 'Sudanese Pound', 'SDP'),
(124, 'Swedish Krona', 'SEK'),
(125, 'Singapore Dollar', 'SGD'),
(126, 'St. Helena Pound', 'SHP'),
(127, 'Sierra Leone Leone', 'SLL'),
(128, 'Somali Schilling', 'SOS'),
(129, 'Suriname Guilder', 'SRG'),
(130, 'Sao Tome and Principe Dobra', 'STD'),
(131, 'Russian Ruble', 'SUR'),
(132, 'El Salvador Colon', 'SVC'),
(133, 'Syrian Potmd', 'SYP'),
(134, 'Swaziland Lilangeni', 'SZL'),
(135, 'Thai Bath', 'THB'),
(136, 'Tunisian Dinar', 'TND'),
(137, 'Tongan Pa''anga', 'TOP'),
(138, 'East Timor Escudo', 'TPE'),
(139, 'Turkish Lira', 'TRL'),
(140, 'Trinidad and Tobago Dollar', 'TTD'),
(141, 'Taiwan Dollar', 'TWD'),
(142, 'Tanzanian Schilling', 'TZS'),
(143, 'Uganda Shilling', 'UGS'),
(144, 'US Dollar', 'USD'),
(145, 'Uruguayan Peso', 'UYP'),
(146, 'Venezualan Bolivar', 'VEB'),
(147, 'Vietnamese Dong', 'VND'),
(148, 'Vanuatu Vatu', 'VUV'),
(149, 'Samoan Tala', 'WST'),
(150, 'Democratic Yemeni Dinar', 'YDD'),
(151, 'Yemeni Rial', 'YER'),
(152, 'New Yugoslavia Dinar', 'YUD'),
(153, 'South African Rand', 'ZAR'),
(154, 'Zambian Kwacha', 'ZMK'),
(155, 'Zaire Zaire', 'ZRZ'),
(156, 'Zimbabwe Dollar', 'ZWD'),
(157, 'Slovak Koruna', 'SKK');

-- --------------------------------------------------------

--
-- Table structure for table `jos_vm_function`
--

CREATE TABLE IF NOT EXISTS `jos_vm_function` (
  `function_id` int(11) NOT NULL,
  `module_id` int(11) DEFAULT NULL,
  `function_name` varchar(32) DEFAULT NULL,
  `function_class` varchar(32) DEFAULT NULL,
  `function_method` varchar(32) DEFAULT NULL,
  `function_description` text,
  `function_perms` varchar(255) DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=169 DEFAULT CHARSET=utf8 COMMENT='Used to map a function alias to a ''real'' class::function';

--
-- Dumping data for table `jos_vm_function`
--

INSERT INTO `jos_vm_function` (`function_id`, `module_id`, `function_name`, `function_class`, `function_method`, `function_description`, `function_perms`) VALUES
(1, 1, 'userAdd', 'ps_user', 'add', '', 'admin,storeadmin'),
(2, 1, 'userDelete', 'ps_user', 'delete', '', 'admin,storeadmin'),
(3, 1, 'userUpdate', 'ps_user', 'update', '', 'admin,storeadmin'),
(4, 1, 'adminPasswdUpdate', 'ps_user', 'update_admin_passwd', 'Updates Site Administrator Password', 'admin'),
(31, 2, 'productAdd', 'ps_product', 'add', '', 'admin,storeadmin'),
(6, 1, 'functionAdd', 'ps_function', 'add', '', 'admin'),
(7, 1, 'functionUpdate', 'ps_function', 'update', '', 'admin'),
(8, 1, 'functionDelete', 'ps_function', 'delete', '', 'admin'),
(9, 1, 'userLogout', 'ps_user', 'logout', '', 'none'),
(10, 1, 'userAddressAdd', 'ps_user_address', 'add', '', 'admin,storeadmin,shopper,demo'),
(11, 1, 'userAddressUpdate', 'ps_user_address', 'update', '', 'admin,storeadmin,shopper'),
(12, 1, 'userAddressDelete', 'ps_user_address', 'delete', '', 'admin,storeadmin,shopper'),
(13, 1, 'moduleAdd', 'ps_module', 'add', '', 'admin'),
(14, 1, 'moduleUpdate', 'ps_module', 'update', '', 'admin'),
(15, 1, 'moduleDelete', 'ps_module', 'delete', '', 'admin'),
(16, 1, 'userLogin', 'ps_user', 'login', '', 'none'),
(17, 3, 'vendorAdd', 'ps_vendor', 'add', '', 'admin'),
(18, 3, 'vendorUpdate', 'ps_vendor', 'update', '', 'admin,storeadmin'),
(19, 3, 'vendorDelete', 'ps_vendor', 'delete', '', 'admin'),
(20, 3, 'vendorCategoryAdd', 'ps_vendor_category', 'add', '', 'admin'),
(21, 3, 'vendorCategoryUpdate', 'ps_vendor_category', 'update', '', 'admin'),
(22, 3, 'vendorCategoryDelete', 'ps_vendor_category', 'delete', '', 'admin'),
(23, 4, 'shopperAdd', 'ps_shopper', 'add', '', 'none'),
(24, 4, 'shopperDelete', 'ps_shopper', 'delete', '', 'admin,storeadmin'),
(25, 4, 'shopperUpdate', 'ps_shopper', 'update', '', 'admin,storeadmin,shopper'),
(26, 4, 'shopperGroupAdd', 'ps_shopper_group', 'add', '', 'admin,storeadmin'),
(27, 4, 'shopperGroupUpdate', 'ps_shopper_group', 'update', '', 'admin,storeadmin'),
(28, 4, 'shopperGroupDelete', 'ps_shopper_group', 'delete', '', 'admin,storeadmin'),
(29, 5, 'orderSearch', 'ps_order', 'find', '', 'admin,storeadmin,demo'),
(30, 5, 'orderStatusSet', 'ps_order', 'order_status_update', '', 'admin,storeadmin'),
(32, 2, 'productDelete', 'ps_product', 'delete', '', 'admin,storeadmin'),
(33, 2, 'productUpdate', 'ps_product', 'update', '', 'admin,storeadmin'),
(34, 2, 'productCategoryAdd', 'ps_product_category', 'add', '', 'admin,storeadmin'),
(35, 2, 'productCategoryUpdate', 'ps_product_category', 'update', '', 'admin,storeadmin'),
(36, 2, 'productCategoryDelete', 'ps_product_category', 'delete', '', 'admin,storeadmin'),
(37, 2, 'productPriceAdd', 'ps_product_price', 'add', '', 'admin,storeadmin'),
(38, 2, 'productPriceUpdate', 'ps_product_price', 'update', '', 'admin,storeadmin'),
(39, 2, 'productPriceDelete', 'ps_product_price', 'delete', '', 'admin,storeadmin'),
(40, 2, 'productAttributeAdd', 'ps_product_attribute', 'add', '', 'admin,storeadmin'),
(41, 2, 'productAttributeUpdate', 'ps_product_attribute', 'update', '', 'admin,storeadmin'),
(42, 2, 'productAttributeDelete', 'ps_product_attribute', 'delete', '', 'admin,storeadmin'),
(43, 7, 'cartAdd', 'ps_cart', 'add', '', 'none'),
(44, 7, 'cartUpdate', 'ps_cart', 'update', '', 'none'),
(45, 7, 'cartDelete', 'ps_cart', 'delete', '', 'none'),
(46, 10, 'checkoutComplete', 'ps_checkout', 'add', '', 'shopper,storeadmin,admin'),
(47, 1, 'setLanguage', 'ps_module', 'set_language', '', 'none'),
(48, 8, 'paymentMethodUpdate', 'ps_payment_method', 'update', '', 'admin,storeadmin'),
(49, 8, 'paymentMethodAdd', 'ps_payment_method', 'add', '', 'admin,storeadmin'),
(50, 8, 'paymentMethodDelete', 'ps_payment_method', 'delete', '', 'admin,storeadmin'),
(51, 5, 'orderDelete', 'ps_order', 'delete', '', 'admin,storeadmin'),
(52, 11, 'addTaxRate', 'ps_tax', 'add', '', 'admin,storeadmin'),
(53, 11, 'updateTaxRate', 'ps_tax', 'update', '', 'admin,storeadmin'),
(54, 11, 'deleteTaxRate', 'ps_tax', 'delete', '', 'admin,storeadmin'),
(55, 10, 'checkoutValidateST', 'ps_checkout', 'validate_shipto', '', 'none'),
(59, 5, 'orderStatusUpdate', 'ps_order_status', 'update', '', 'admin,storeadmin'),
(60, 5, 'orderStatusAdd', 'ps_order_status', 'add', '', 'storeadmin,admin'),
(61, 5, 'orderStatusDelete', 'ps_order_status', 'delete', '', 'admin,storeadmin'),
(62, 1, 'currencyAdd', 'ps_currency', 'add', 'add a currency', 'storeadmin,admin'),
(63, 1, 'currencyUpdate', 'ps_currency', 'update', '        update a currency', 'storeadmin,admin'),
(64, 1, 'currencyDelete', 'ps_currency', 'delete', 'delete a currency', 'storeadmin,admin'),
(65, 1, 'countryAdd', 'ps_country', 'add', 'Add a country ', 'storeadmin,admin'),
(66, 1, 'countryUpdate', 'ps_country', 'update', 'Update a country record', 'storeadmin,admin'),
(67, 1, 'countryDelete', 'ps_country', 'delete', 'Delete a country record', 'storeadmin,admin'),
(68, 2, 'product_csv', 'ps_csv', 'upload_csv', '', 'admin'),
(110, 7, 'waitingListAdd', 'zw_waiting_list', 'add', '', 'none'),
(111, 13, 'addzone', 'ps_zone', 'add', 'This will add a zone', 'admin,storeadmin'),
(112, 13, 'updatezone', 'ps_zone', 'update', 'This will update a zone', 'admin,storeadmin'),
(113, 13, 'deletezone', 'ps_zone', 'delete', 'This will delete a zone', 'admin,storeadmin'),
(114, 13, 'zoneassign', 'ps_zone', 'assign', 'This will assign a country to a zone', 'admin,storeadmin'),
(115, 1, 'writeConfig', 'ps_config', 'writeconfig', 'This will write the configuration details to phpshop.cfg.php', 'admin'),
(116, 12839, 'carrierAdd', 'ps_shipping', 'add', '', 'admin,storeadmin'),
(117, 12839, 'carrierDelete', 'ps_shipping', 'delete', '', 'admin,storeadmin'),
(118, 12839, 'carrierUpdate', 'ps_shipping', 'update', '', 'admin,storeadmin'),
(119, 12839, 'rateAdd', 'ps_shipping', 'rate_add', '', 'admin,storeadmin'),
(120, 12839, 'rateUpdate', 'ps_shipping', 'rate_update', '', 'admin,shopadmin'),
(121, 12839, 'rateDelete', 'ps_shipping', 'rate_delete', '', 'admin,storeadmin'),
(122, 10, 'checkoutProcess', 'ps_checkout', 'process', '', 'shopper,storeadmin,admin,demo'),
(123, 5, 'downloadRequest', 'ps_order', 'download_request', 'This checks if the download request is valid and sends the file to the browser as file download if the request was successful, otherwise echoes an error', 'admin,storeadmin,shopper'),
(124, 98, 'affiliateAdd', 'ps_affiliate', 'add', '', 'admin,storeadmin'),
(125, 98, 'affiliateUpdate', 'ps_affiliate', 'update', '', 'admin,storeadmin'),
(126, 98, 'affiliateDelete', 'ps_affiliate', 'delete', '', 'admin,storeadmin'),
(127, 98, 'affiliateEmail', 'ps_affiliate', 'email', '', 'admin,storeadmin'),
(128, 99, 'manufacturerAdd', 'ps_manufacturer', 'add', '', 'admin,storeadmin'),
(129, 99, 'manufacturerUpdate', 'ps_manufacturer', 'update', '', 'admin,storeadmin'),
(130, 99, 'manufacturerDelete', 'ps_manufacturer', 'delete', '', 'admin,storeadmin'),
(131, 99, 'manufacturercategoryAdd', 'ps_manufacturer_category', 'add', '', 'admin,storeadmin'),
(132, 99, 'manufacturercategoryUpdate', 'ps_manufacturer_category', 'update', '', 'admin,storeadmin'),
(133, 99, 'manufacturercategoryDelete', 'ps_manufacturer_category', 'delete', '', 'admin,storeadmin'),
(134, 7, 'addReview', 'ps_reviews', 'process_review', 'This lets the user add a review and rating to a product.', 'admin,storeadmin,shopper,demo'),
(135, 7, 'productReviewDelete', 'ps_reviews', 'delete_review', 'This deletes a review and from a product.', 'admin,storeadmin'),
(136, 8, 'creditcardAdd', 'ps_creditcard', 'add', 'Adds a Credit Card entry.', 'admin,storeadmin'),
(137, 8, 'creditcardUpdate', 'ps_creditcard', 'update', 'Updates a Credit Card entry.', 'admin,storeadmin'),
(138, 8, 'creditcardDelete', 'ps_creditcard', 'delete', 'Deletes a Credit Card entry.', 'admin,storeadmin'),
(139, 2, 'changePublishState', 'vmAbstractObject.class', 'handlePublishState', 'Changes the publish field, so that a record can be published or unpublished easily.', 'admin,storeadmin'),
(140, 2, 'export_csv', 'ps_csv', 'export_csv', 'This function exports all relevant product data to CSV.', 'admin,storeadmin'),
(141, 2, 'reorder', 'ps_product_category', 'reorder', 'Changes the list order of a category.', 'admin,storeadmin'),
(142, 2, 'discountAdd', 'ps_product_discount', 'add', 'Adds a discount.', 'admin,storeadmin'),
(143, 2, 'discountUpdate', 'ps_product_discount', 'update', 'Updates a discount.', 'admin,storeadmin'),
(144, 2, 'discountDelete', 'ps_product_discount', 'delete', 'Deletes a discount.', 'admin,storeadmin'),
(145, 8, 'shippingmethodSave', 'ps_shipping_method', 'save', '', 'admin,storeadmin'),
(146, 2, 'uploadProductFile', 'ps_product_files', 'add', 'Uploads and Adds a Product Image/File.', 'admin,storeadmin'),
(147, 2, 'updateProductFile', 'ps_product_files', 'update', 'Updates a Product Image/File.', 'admin,storeadmin'),
(148, 2, 'deleteProductFile', 'ps_product_files', 'delete', 'Deletes a Product Image/File.', 'admin,storeadmin'),
(149, 12843, 'couponAdd', 'ps_coupon', 'add_coupon_code', 'Adds a Coupon.', 'admin,storeadmin'),
(150, 12843, 'couponUpdate', 'ps_coupon', 'update_coupon', 'Updates a Coupon.', 'admin,storeadmin'),
(151, 12843, 'couponDelete', 'ps_coupon', 'remove_coupon_code', 'Deletes a Coupon.', 'admin,storeadmin'),
(152, 12843, 'couponProcess', 'ps_coupon', 'process_coupon_code', 'Processes a Coupon.', 'admin,storeadmin,shopper,demo'),
(153, 2, 'ProductTypeAdd', 'ps_product_type', 'add', 'Function add a Product Type and create new table product_type_<id>.', 'admin'),
(154, 2, 'ProductTypeUpdate', 'ps_product_type', 'update', 'Update a Product Type.', 'admin'),
(155, 2, 'ProductTypeDelete', 'ps_product_type', 'delete', 'Delete a Product Type and drop table product_type_<id>.', 'admin'),
(156, 2, 'ProductTypeReorder', 'ps_product_type', 'reorder', 'Changes the list order of a Product Type.', 'admin'),
(157, 2, 'ProductTypeAddParam', 'ps_product_type_parameter', 'add_parameter', 'Function add a Parameter into a Product Type and create new column in table product_type_<id>.', 'admin'),
(158, 2, 'ProductTypeUpdateParam', 'ps_product_type_parameter', 'update_parameter', 'Function update a Parameter in a Product Type and a column in table product_type_<id>.', 'admin'),
(159, 2, 'ProductTypeDeleteParam', 'ps_product_type_parameter', 'delete_parameter', 'Function delete a Parameter from a Product Type and drop a column in table product_type_<id>.', 'admin'),
(160, 2, 'ProductTypeReorderParam', 'ps_product_type_parameter', 'reorder_parameter', 'Changes the list order of a Parameter.', 'admin'),
(161, 2, 'productProductTypeAdd', 'ps_product_product_type', 'add', 'Add a Product into a Product Type.', 'admin,storeadmin'),
(162, 2, 'productProductTypeDelete', 'ps_product_product_type', 'delete', 'Delete a Product from a Product Type.', 'admin,storeadmin'),
(163, 1, 'stateAdd', 'ps_country', 'addState', 'Add a State ', 'storeadmin,admin'),
(164, 1, 'stateUpdate', 'ps_country', 'updateState', 'Update a state record', 'storeadmin,admin'),
(165, 1, 'stateDelete', 'ps_country', 'deleteState', 'Delete a state record', 'storeadmin,admin'),
(166, 2, 'csvFieldAdd', 'ps_csv', 'add', 'Add a CSV Field ', 'storeadmin,admin'),
(167, 2, 'csvFieldUpdate', 'ps_csv', 'update', 'Update a CSV Field', 'storeadmin,admin'),
(168, 2, 'csvFieldDelete', 'ps_csv', 'delete', 'Delete a CSV Field', 'storeadmin,admin');

-- --------------------------------------------------------

--
-- Table structure for table `jos_vm_manufacturer`
--

CREATE TABLE IF NOT EXISTS `jos_vm_manufacturer` (
  `manufacturer_id` int(11) NOT NULL,
  `mf_name` varchar(64) DEFAULT NULL,
  `mf_email` varchar(255) DEFAULT NULL,
  `mf_desc` text,
  `mf_category_id` int(11) DEFAULT NULL,
  `mf_url` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='Manufacturers are those who create products';

--
-- Dumping data for table `jos_vm_manufacturer`
--

INSERT INTO `jos_vm_manufacturer` (`manufacturer_id`, `mf_name`, `mf_email`, `mf_desc`, `mf_category_id`, `mf_url`) VALUES
(1, 'Manufacturer', 'info@manufacturer.com', 'An example for a manufacturer', 1, 'http://www.a-url.com');

-- --------------------------------------------------------

--
-- Table structure for table `jos_vm_manufacturer_category`
--

CREATE TABLE IF NOT EXISTS `jos_vm_manufacturer_category` (
  `mf_category_id` int(11) NOT NULL,
  `mf_category_name` varchar(64) DEFAULT NULL,
  `mf_category_desc` text
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='Manufactorers are assigned to these categories';

--
-- Dumping data for table `jos_vm_manufacturer_category`
--

INSERT INTO `jos_vm_manufacturer_category` (`mf_category_id`, `mf_category_name`, `mf_category_desc`) VALUES
(1, '-default-', 'This is the default manufacturer category');

-- --------------------------------------------------------

--
-- Table structure for table `jos_vm_module`
--

CREATE TABLE IF NOT EXISTS `jos_vm_module` (
  `module_id` int(11) NOT NULL,
  `module_name` varchar(255) DEFAULT NULL,
  `module_description` text,
  `module_perms` varchar(255) DEFAULT NULL,
  `module_publish` char(1) DEFAULT NULL,
  `list_order` int(11) DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=12844 DEFAULT CHARSET=utf8 COMMENT='VirtueMart Core Modules, not: Joomla modules';

--
-- Dumping data for table `jos_vm_module`
--

INSERT INTO `jos_vm_module` (`module_id`, `module_name`, `module_description`, `module_perms`, `module_publish`, `list_order`) VALUES
(1, 'admin', '<h4>ADMINISTRATIVE USERS ONLY</h4>\r\n\r\n<p>Only used for the following:</p>\r\n<OL>\r\n\r\n<LI>User Maintenance</LI>\r\n<LI>Module Maintenance</LI>\r\n<LI>Function Maintenance</LI>\r\n</OL>\r\n', 'admin', 'Y', 1),
(2, 'product', '<p>Here you can adminster your online catalog of products.  The Product Administrator allows you to create product categories, create new products, edit product attributes, and add product items for each attribute value.</p>', 'storeadmin,admin', 'Y', 4),
(3, 'vendor', '<h4>ADMINISTRATIVE USERS ONLY</h4>\r\n<p>Here you can manage the vendors on the phpShop system.</p>', 'admin', 'Y', 6),
(4, 'shopper', '<p>Manage shoppers in your store.  Allows you to create shopper groups.  Shopper groups can be used when setting the price for a product.  This allows you to create different prices for different types of users.  An example of this would be to have a ''wholesale'' group and a ''retail'' group. </p>', 'admin,storeadmin', 'Y', 4),
(5, 'order', '<p>View Order and Update Order Status.</p>', 'admin,storeadmin', 'Y', 5),
(6, 'msgs', 'This module is unprotected an used for displaying system messages to users.  We need to have an area that does not require authorization when things go wrong.', 'none', 'N', 99),
(7, 'shop', 'This is the Washupito store module.  This is the demo store included with the phpShop distribution.', 'none', 'Y', 99),
(8, 'store', '', 'storeadmin,admin', 'Y', 2),
(9, 'account', 'This module allows shoppers to update their account information and view previously placed orders.', 'shopper,storeadmin,admin,demo', 'N', 99),
(10, 'checkout', '', 'none', 'N', 99),
(11, 'tax', 'The tax module allows you to set tax rates for states or regions within a country.  The rate is set as a decimal figure.  For example, 2 percent tax would be 0.02.', 'admin,storeadmin', 'Y', 8),
(12, 'reportbasic', 'The report basic module allows you to do queries on all orders.', 'admin,storeadmin', 'Y', 7),
(13, 'zone', 'This is the zone-shipping module. Here you can manage your shipping costs according to Zones.', 'admin,storeadmin', 'N', 9),
(12839, 'shipping', '<h4>Shipping</h4><p>Let this module calculate the shipping fees for your customers.<br>Create carriers for shipping areas and weight groups.</p>', 'admin,storeadmin', 'Y', 10),
(98, 'affiliate', 'administrate the affiliates on your store.', 'storeadmin,admin', 'N', 99),
(99, 'manufacturer', 'Manage the manufacturers of products in your store.', 'storeadmin,admin', 'Y', 12),
(12842, 'help', 'Help Module', 'admin,storeadmin', 'Y', 13),
(12843, 'coupon', 'Coupon Management', 'admin,storeadmin', 'Y', 11);

-- --------------------------------------------------------

--
-- Table structure for table `jos_vm_orders`
--

CREATE TABLE IF NOT EXISTS `jos_vm_orders` (
  `order_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `vendor_id` int(11) NOT NULL DEFAULT '0',
  `order_number` varchar(32) DEFAULT NULL,
  `user_info_id` varchar(32) DEFAULT NULL,
  `order_total` decimal(15,2) NOT NULL DEFAULT '0.00',
  `order_subtotal` decimal(15,5) DEFAULT NULL,
  `order_tax` decimal(10,2) DEFAULT NULL,
  `order_tax_details` text NOT NULL,
  `order_shipping` decimal(10,2) DEFAULT NULL,
  `order_shipping_tax` decimal(10,2) DEFAULT NULL,
  `coupon_discount` decimal(12,2) NOT NULL DEFAULT '0.00',
  `order_discount` decimal(12,2) NOT NULL DEFAULT '0.00',
  `order_currency` varchar(16) DEFAULT NULL,
  `order_status` char(1) DEFAULT NULL,
  `cdate` int(11) DEFAULT NULL,
  `mdate` int(11) DEFAULT NULL,
  `ship_method_id` varchar(255) DEFAULT NULL,
  `customer_note` text NOT NULL,
  `ip_address` varchar(15) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Used to store all orders';

-- --------------------------------------------------------

--
-- Table structure for table `jos_vm_order_history`
--

CREATE TABLE IF NOT EXISTS `jos_vm_order_history` (
  `order_status_history_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL DEFAULT '0',
  `order_status_code` char(1) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `customer_notified` int(1) DEFAULT '0',
  `comments` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Stores all actions and changes that occur to an order';

-- --------------------------------------------------------

--
-- Table structure for table `jos_vm_order_item`
--

CREATE TABLE IF NOT EXISTS `jos_vm_order_item` (
  `order_item_id` int(11) NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `user_info_id` varchar(32) DEFAULT NULL,
  `vendor_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `order_item_sku` varchar(64) NOT NULL DEFAULT '',
  `order_item_name` varchar(64) NOT NULL DEFAULT '',
  `product_quantity` int(11) DEFAULT NULL,
  `product_item_price` decimal(15,5) DEFAULT NULL,
  `product_final_price` decimal(12,2) NOT NULL DEFAULT '0.00',
  `order_item_currency` varchar(16) DEFAULT NULL,
  `order_status` char(1) DEFAULT NULL,
  `cdate` int(11) DEFAULT NULL,
  `mdate` int(11) DEFAULT NULL,
  `product_attribute` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Stores all items (products) which are part of an order';

-- --------------------------------------------------------

--
-- Table structure for table `jos_vm_order_payment`
--

CREATE TABLE IF NOT EXISTS `jos_vm_order_payment` (
  `order_id` int(11) NOT NULL DEFAULT '0',
  `payment_method_id` int(11) DEFAULT NULL,
  `order_payment_code` varchar(30) NOT NULL DEFAULT '',
  `order_payment_number` blob,
  `order_payment_expire` int(11) DEFAULT NULL,
  `order_payment_name` varchar(255) DEFAULT NULL,
  `order_payment_log` text,
  `order_payment_trans_id` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='The payment method that was chosen for a specific order';

-- --------------------------------------------------------

--
-- Table structure for table `jos_vm_order_status`
--

CREATE TABLE IF NOT EXISTS `jos_vm_order_status` (
  `order_status_id` int(11) NOT NULL,
  `order_status_code` char(1) NOT NULL DEFAULT '',
  `order_status_name` varchar(64) DEFAULT NULL,
  `list_order` int(11) DEFAULT NULL,
  `vendor_id` int(11) DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='All available order statuses';

--
-- Dumping data for table `jos_vm_order_status`
--

INSERT INTO `jos_vm_order_status` (`order_status_id`, `order_status_code`, `order_status_name`, `list_order`, `vendor_id`) VALUES
(1, 'P', 'Pending', 1, 1),
(2, 'C', 'Confirmed', 2, 1),
(3, 'X', 'Cancelled', 3, 1),
(4, 'R', 'Refunded', 4, 1),
(5, 'S', 'Shipped', 5, 1);

-- --------------------------------------------------------

--
-- Table structure for table `jos_vm_order_user_info`
--

CREATE TABLE IF NOT EXISTS `jos_vm_order_user_info` (
  `order_info_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `address_type` char(2) DEFAULT NULL,
  `address_type_name` varchar(32) DEFAULT NULL,
  `company` varchar(64) DEFAULT NULL,
  `title` varchar(32) DEFAULT NULL,
  `last_name` varchar(32) DEFAULT NULL,
  `first_name` varchar(32) DEFAULT NULL,
  `middle_name` varchar(32) DEFAULT NULL,
  `phone_1` varchar(32) DEFAULT NULL,
  `phone_2` varchar(32) DEFAULT NULL,
  `fax` varchar(32) DEFAULT NULL,
  `address_1` varchar(64) NOT NULL DEFAULT '',
  `address_2` varchar(64) DEFAULT NULL,
  `city` varchar(32) NOT NULL DEFAULT '',
  `state` varchar(32) NOT NULL DEFAULT '',
  `country` varchar(32) NOT NULL DEFAULT 'US',
  `zip` varchar(32) NOT NULL DEFAULT '',
  `user_email` varchar(255) DEFAULT NULL,
  `extra_field_1` varchar(255) DEFAULT NULL,
  `extra_field_2` varchar(255) DEFAULT NULL,
  `extra_field_3` varchar(255) DEFAULT NULL,
  `extra_field_4` char(1) DEFAULT NULL,
  `extra_field_5` char(1) DEFAULT NULL,
  `bank_account_nr` varchar(32) NOT NULL DEFAULT '',
  `bank_name` varchar(32) NOT NULL DEFAULT '',
  `bank_sort_code` varchar(16) NOT NULL DEFAULT '',
  `bank_iban` varchar(64) NOT NULL DEFAULT '',
  `bank_account_holder` varchar(48) NOT NULL DEFAULT '',
  `bank_account_type` enum('Checking','Business Checking','Savings') NOT NULL DEFAULT 'Checking'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Stores the BillTo and ShipTo Information at order time';

-- --------------------------------------------------------

--
-- Table structure for table `jos_vm_payment_method`
--

CREATE TABLE IF NOT EXISTS `jos_vm_payment_method` (
  `payment_method_id` int(11) NOT NULL,
  `vendor_id` int(11) DEFAULT NULL,
  `payment_method_name` varchar(255) DEFAULT NULL,
  `payment_class` varchar(50) NOT NULL DEFAULT '',
  `shopper_group_id` int(11) DEFAULT NULL,
  `payment_method_discount` decimal(12,2) DEFAULT NULL,
  `list_order` int(11) DEFAULT NULL,
  `payment_method_code` varchar(8) DEFAULT NULL,
  `enable_processor` char(1) DEFAULT NULL,
  `is_creditcard` tinyint(1) NOT NULL DEFAULT '0',
  `payment_enabled` char(1) NOT NULL DEFAULT 'N',
  `accepted_creditcards` varchar(128) NOT NULL DEFAULT '',
  `payment_extrainfo` text NOT NULL,
  `payment_passkey` blob NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='The payment methods of your store';

--
-- Dumping data for table `jos_vm_payment_method`
--

INSERT INTO `jos_vm_payment_method` (`payment_method_id`, `vendor_id`, `payment_method_name`, `payment_class`, `shopper_group_id`, `payment_method_discount`, `list_order`, `payment_method_code`, `enable_processor`, `is_creditcard`, `payment_enabled`, `accepted_creditcards`, `payment_extrainfo`, `payment_passkey`) VALUES
(1, 1, 'Purchase Order', '', 6, '0.00', 4, 'PO', 'N', 0, 'Y', '', '', ''),
(2, 1, 'Cash On Delivery', '', 5, '-2.00', 5, 'COD', 'N', 0, 'Y', '', '', ''),
(3, 1, 'Credit Card', 'ps_authorize', 5, '0.00', 0, 'AN', 'Y', 0, 'Y', '1,2,6,7,', '', ''),
(4, 1, 'PayPal', 'ps_paypal', 5, '0.00', 0, 'PP', 'P', 0, 'Y', '', '\n<?php\n$url = "https://www.paypal.com/cgi-bin/webscr";\n$tax_total = $db->f("order_tax") + $db->f("order_shipping_tax");\n$discount_total = $db->f("coupon_discount") + $db->f("order_discount");\n$post_variables = Array(\n"cmd" => "_xclick",\n"business" => PAYPAL_EMAIL,\n"receiver_email" => PAYPAL_EMAIL,\n"item_name" => $VM_LANG->_PHPSHOP_ORDER_PRINT_PO_NUMBER.": ". $db->f("order_id"),\n"order_id" => $db->f("order_id"),\n"invoice" => $db->f("order_number"),\n"amount" => round( $db->f("order_subtotal")+$tax_total-$discount_total, 2),\n"shipping" => sprintf("%.2f", $db->f("order_shipping")),\n"currency_code" => $_SESSION[''vendor_currency''],\n"image_url" => $vendor_image_url,\n"return" => SECUREURL ."index.php?option=com_virtuemart&page=checkout.result&order_id=".$db->f("order_id"),\n"notify_url" => SECUREURL ."administrator/components/com_virtuemart/notify.php",\n"cancel_return" => SECUREURL ."index.php",\n"undefined_quantity" => "0",\n"test_ipn" => PAYPAL_DEBUG,\n"pal" => "NRUBJXESJTY24",\n"no_shipping" => "1",\n"no_note" => "1"\n);\nif( $page == "checkout.thankyou" ) {\n$query_string = "?";\nforeach( $post_variables as $name => $value ) {\n$query_string .= $name. "=" . urlencode($value) ."&";\n}\nmosRedirect( $url . $query_string );\n} else {\n\necho ''<form action="''.$url.''" method="post" target="_blank">'';\necho ''<input type="image" name="submit" src="http://images.paypal.com/images/x-click-but6.gif" border="0" alt="Make payments with PayPal, it is fast, free, and secure!">'';\n\nforeach( $post_variables as $name => $value ) {\necho ''<input type="hidden" name="''.$name.''" value="''.$value.''" />'';\n}\n\necho ''</form>'';\n\n}\n?>', ''),
(5, 1, 'PayMate', 'ps_paymate', 5, '0.00', 0, 'PM', 'P', 0, 'N', '', '<script type="text/javascript" language="javascript">\n  function openExpress(){\n	var url = ''https://www.paymate.com.au/PayMate/ExpressPayment?mid=<?php echo PAYMATE_USERNAME.\n	  "&amt=".$db->f("order_total").\n	  "&currency=".$_SESSION[''vendor_currency''].\n	  "&ref=".$db->f("order_id").\n	  "&pmt_sender_email=".$user->email.\n	  "&pmt_contact_firstname=".$user->first_name.\n	  "&pmt_contact_surname=".$user->last_name.\n	  "&regindi_address1=".$user->address_1.\n	  "&regindi_address2=".$user->address_2.\n	  "&regindi_sub=".$user->city.\n	  "&regindi_pcode=".$user->zip;?>''\n	var newWin = window.open(url, ''wizard'', ''height=640,width=500,scrollbars=0,toolbar=no'');\n	self.name = ''parent'';\n	newWin.focus();\n  }\n  </script>\n  <div align="center">\n  <p>\n  <a href="javascript:openExpress();">\n  <img src="https://www.paymate.com.au/homepage/images/butt_PayNow.gif" border="0" alt="Pay with Paymate Express">\n  <br />click here to pay your account</a>\n  </p>\n  </div>', ''),
(6, 1, 'WorldPay', 'ps_worldpay', 5, '0.00', 0, 'WP', 'P', 0, 'N', '', '<form action="https://select.worldpay.com/wcc/purchase" method="post">\n						  <input type=hidden name="testMode" value="100"> \n						  <input type="hidden" name="instId" value="<?php echo WORLDPAY_INST_ID ?>" />\n						  <input type="hidden" name="cartId" value="<?php echo $db->f("order_id") ?>" />\n						  <input type="hidden" name="amount" value="<?php echo $db->f("order_total") ?>" />\n						  <input type="hidden" name="currency" value="<?php echo $_SESSION[''vendor_currency''] ?>" />\n						  <input type="hidden" name="desc" value="Products" />\n						  <input type="hidden" name="email" value="<?php echo $user->email?>" />\n						  <input type="hidden" name="address" value="<?php echo $user->address_1?>&#10<?php echo $user->address_2?>&#10<?php echo\n						  $user->city?>&#10<?php echo $user->state?>" />\n						  <input type="hidden" name="name" value="<?php echo $user->title?><?php echo $user->first_name?>. <?php echo $user->middle_name?><?php echo $user->last_name?>" />\n						  <input type="hidden" name="country" value="<?php echo $user->country?>"/>\n						  <input type="hidden" name="postcode" value="<?php echo $user->zip?>" />\n						  <input type="hidden" name="tel"  value="<?php echo $user->phone_1?>">\n						  <input type="hidden" name="withDelivery"  value="true">\n						  <br />\n						  <input type="submit" value ="PROCEED TO PAYMENT PAGE" />\n						  </form>', ''),
(7, 1, '2Checkout', 'ps_twocheckout', 5, '0.00', 0, '2CO', 'P', 0, 'N', '', '<?php\n	$q  = "SELECT * FROM #__users WHERE user_info_id=''".$db->f("user_info_id")."''"; \n	$dbbt = new ps_DB;\n	$dbbt->setQuery($q);\n	$dbbt->query();\n	$dbbt->next_record(); \n	// Get ship_to information\n	if( $db->f("user_info_id") != $dbbt->f("user_info_id")) {\n	  $q2  = "SELECT * FROM #__vm_user_info WHERE user_info_id=''".$db->f("user_info_id")."''"; \n	  $dbst = new ps_DB;\n	  $dbst->setQuery($q2);\n	  $dbst->query();\n	  $dbst->next_record();\n	}\n	else  {\n	  $dbst = $dbbt;\n	}\n			\n	//Authnet vars to send\n	$formdata = array (\n	 ''x_login'' => TWOCO_LOGIN,\n	 ''x_email_merchant'' => ((TWOCO_MERCHANT_EMAIL == ''True'') ? ''TRUE'' : ''FALSE''),\n			 \n	 // Customer Name and Billing Address\n	 ''x_first_name'' => $dbbt->f("first_name"),\n	 ''x_last_name'' => $dbbt->f("last_name"),\n	 ''x_company'' => $dbbt->f("company"),\n	 ''x_address'' => $dbbt->f("address_1"),\n	 ''x_city'' => $dbbt->f("city"),\n	 ''x_state'' => $dbbt->f("state"),\n	 ''x_zip'' => $dbbt->f("zip"),\n	 ''x_country'' => $dbbt->f("country"),\n	 ''x_phone'' => $dbbt->f("phone_1"),\n	 ''x_fax'' => $dbbt->f("fax"),\n	 ''x_email'' => $dbbt->f("email"),\n	\n	 // Customer Shipping Address\n	 ''x_ship_to_first_name'' => $dbst->f("first_name"),\n	 ''x_ship_to_last_name'' => $dbst->f("last_name"),\n	 ''x_ship_to_company'' => $dbst->f("company"),\n	 ''x_ship_to_address'' => $dbst->f("address_1"),\n	 ''x_ship_to_city'' => $dbst->f("city"),\n	 ''x_ship_to_state'' => $dbst->f("state"),\n	 ''x_ship_to_zip'' => $dbst->f("zip"),\n	 ''x_ship_to_country'' => $dbst->f("country"),\n	\n	 ''x_invoice_num'' => $db->f("order_number"),\n	 ''x_receipt_link_url'' => SECUREURL."2checkout_notify.php"\n	 );\n	 \n	if( TWOCO_TESTMODE == "Y" )\n	  $formdata[''demo''] = "Y";\n	\n	 $version = "2";\n	 $url = "https://www2.2checkout.com/2co/buyer/purchase";\n	 $formdata[''x_amount''] = $db->f("order_total");\n	\n	 //build the post string\n	 $poststring = '''';\n	 foreach($formdata AS $key => $val){\n	   $poststring .= "<input type=''hidden'' name=''$key'' value=''$val'' />\n	";\n	 }\n	\n	?>\n	<form action="<?php echo $url ?>" method="post" target="_blank">\n	<?php echo $poststring ?>\n	<p>Click on the Image below to pay...</p>\n	<input type="image" name="submit" src="https://www.2checkout.com/images/buy_logo.gif" border="0" alt="Make payments with 2Checkout, it''s fast and secure!" title="Pay your Order with 2Checkout, it''s fast and secure!" />\n	</form>', ''),
(8, 1, 'NoChex', 'ps_nochex', 5, '0.00', 0, 'NOCHEX', 'P', 0, 'N', '', '<form action="https://www.nochex.com/nochex.dll/checkout" method=post target="_blank"> \n											<input type="hidden" name="email" value="<?php echo NOCHEX_EMAIL ?>" />\n											<input type="hidden" name="amount" value="<?php printf("%.2f", $db->f("order_total"))?>" />\n											<input type="hidden" name="ordernumber" value="<?php $db->p("order_id") ?>" />\n											<input type="hidden" name="logo" value="<?php echo $vendor_image_url ?>" />\n											<input type="hidden" name="returnurl" value="<?php echo SECUREURL ."index.php?option=com_virtuemart&amp;page=checkout.result&amp;order_id=".$db->f("order_id") ?>" />\n											<input type="image" name="submit" src="http://www.nochex.com/web/images/paymeanimated.gif"> \n											</form>', ''),
(9, 1, 'Credit Card (PayMeNow)', 'ps_paymenow', 5, '0.00', 0, 'PN', 'Y', 0, 'N', '1,2,3,', '', ''),
(10, 1, 'eWay', 'ps_eway', 5, '0.00', 0, 'EW', 'Y', 0, 'N', '', '', ''),
(11, 1, 'eCheck.net', 'ps_echeck', 5, '0.00', 0, 'ECK', 'B', 0, 'N', '', '', ''),
(12, 1, 'Credit Card (eProcessingNetwork)', 'ps_epn', 5, '0.00', 0, 'EPN', 'Y', 0, 'N', '1,2,3,', '', ''),
(13, 1, 'iKobo', '', 5, '0.00', 0, 'IK', 'P', 0, 'N', '', '<form action="https://www.iKobo.com/store/index.php" method="post"> \n  <input type="hidden" name="cmd" value="cart" />Click on the image below to Pay with iKobo\n  <input type="image" src="https://www.ikobo.com/merchant/buttons/ikobo_pay1.gif" name="submit" alt="Pay with iKobo" /> \n  <input type="hidden" name="poid" value="USER_ID" /> \n  <input type="hidden" name="item" value="Order: <?php $db->p("order_id") ?>" /> \n  <input type="hidden" name="price" value="<?php printf("%.2f", $db->f("order_total"))?>" /> \n  <input type="hidden" name="firstname" value="<?php echo $user->first_name?>" /> \n  <input type="hidden" name="lastname" value="<?php echo $user->last_name?>" /> \n  <input type="hidden" name="address" value="<?php echo $user->address_1?>&#10<?php echo $user->address_2?>" /> \n  <input type="hidden" name="city" value="<?php echo $user->city?>" /> \n  <input type="hidden" name="state" value="<?php echo $user->state?>" /> \n  <input type="hidden" name="zip" value="<?php echo $user->zip?>" /> \n  <input type="hidden" name="phone" value="<?php echo $user->phone_1?>" /> \n  <input type="hidden" name="email" value="<?php echo $user->email?>" /> \n  </form> >', ''),
(14, 1, 'iTransact', '', 5, '0.00', 0, 'ITR', 'P', 0, 'N', '', '<?php\n  //your iTransact account details\n  $vendorID = "XXXXX";\n  global $vendor_name;\n  $mername = $vendor_name;\n  \n  //order details\n  $total = $db->f("order_total");$first_name = $user->first_name;$last_name = $user->last_name;$address = $user->address_1;$city = $user->city;$state = $user->state;$zip = $user->zip;$country = $user->country;$email = $user->email;$phone = $user->phone_1;$home_page = $mosConfig_live_site."/index.php";$ret_addr = $mosConfig_live_site."/index.php";$cc_payment_image = $mosConfig_live_site."/components/com_virtuemart/shop_image/ps_image/cc_payment.jpg";\n  ?>\n  <form action="https://secure.paymentclearing.com/cgi-bin/mas/split.cgi" method="POST"> \n		<input type="hidden" name="vendor_id" value="<?php echo $vendorID; ?>" />\n		<input type="hidden" name="home_page" value="<?php echo $home_page; ?>" />\n		<input type="hidden" name="ret_addr" value="<?php echo $ret_addr; ?>" />\n		<input type="hidden" name="mername" value="<?php echo $mername; ?>" />\n		<!--Enter text in the next value that should appear on the bottom of the order form.-->\n		<INPUT type="hidden" name="mertext" value="" />\n		<!--If you are accepting checks, enter the number 1 in the next value.  Enter the number 0 if you are not accepting checks.-->\n		<INPUT type="hidden" name="acceptchecks" value="0" />\n		<!--Enter the number 1 in the next value if you want to allow pre-registered customers to pay with a check.  Enter the number 0 if not.-->\n		<INPUT type="hidden" name="allowreg" value="0" />\n		<!--If you are set up with Check Guarantee, enter the number 1 in the next value.  Enter the number 0 if not.-->\n		<INPUT type="hidden" name="checkguar" value="0" />\n		<!--Enter the number 1 in the next value if you are accepting credit card payments.  Enter the number zero if not.-->\n		<INPUT type="hidden" name="acceptcards" value="1">\n		<!--Enter the number 1 in the next value if you want to allow a separate mailing address for credit card orders.  Enter the number 0 if not.-->\n		<INPUT type="hidden" name="altaddr" value="0" />\n		<!--Enter the number 1 in the next value if you want the customer to enter the CVV number for card orders.  Enter the number 0 if not.-->\n		<INPUT type="hidden" name="showcvv" value="1" />\n		\n		<input type="hidden" name="1-desc" value="Order Total" />\n		<input type="hidden" name="1-cost" value="<?php echo $total; ?>" />\n		<input type="hidden" name="1-qty" value="1" />\n		<input type="hidden" name="total" value="<?php echo $total; ?>" />\n		<input type="hidden" name="first_name" value="<?php echo $first_name; ?>" />\n		<input type="hidden" name="last_name" value="<?php echo $last_name; ?>" />\n		<input type="hidden" name="address" value="<?php echo $address; ?>" />\n		<input type="hidden" name="city" value="<?php echo $city; ?>" />\n		<input type="hidden" name="state" value="<?php echo $state; ?>" />\n		<input type="hidden" name="zip" value="<?php echo $zip; ?>" />\n		<input type="hidden" name="country" value="<?php echo $country; ?>" />\n		<input type="hidden" name="phone" value="<?php echo $phone; ?>" />\n		<input type="hidden" name="email" value="<?php echo $email; ?>" />\n		<p><input type="image" alt="Process Secure Credit Card Transaction using iTransact" border="0" height="60" width="210" src="<?php echo $cc_payment_image; ?>" /> </p>\n		</form>', ''),
(15, 1, 'Dankort / PBS', 'ps_pbs', 5, '0.00', 0, 'PBS', 'P', 0, 'N', '', '', ''),
(16, 1, 'Verisign PayFlow Pro', 'ps_pfp', 5, '0.00', 0, 'PFP', 'Y', 0, 'Y', '1,2,6,7,', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `jos_vm_product`
--

CREATE TABLE IF NOT EXISTS `jos_vm_product` (
  `product_id` int(11) NOT NULL,
  `vendor_id` int(11) NOT NULL DEFAULT '0',
  `product_parent_id` int(11) NOT NULL DEFAULT '0',
  `product_sku` varchar(64) NOT NULL DEFAULT '',
  `product_s_desc` varchar(255) DEFAULT NULL,
  `product_desc` text,
  `product_thumb_image` varchar(255) DEFAULT NULL,
  `product_full_image` varchar(255) DEFAULT NULL,
  `product_publish` char(1) DEFAULT NULL,
  `product_weight` decimal(10,4) DEFAULT NULL,
  `product_weight_uom` varchar(32) DEFAULT 'pounds.',
  `product_length` decimal(10,4) DEFAULT NULL,
  `product_width` decimal(10,4) DEFAULT NULL,
  `product_height` decimal(10,4) DEFAULT NULL,
  `product_lwh_uom` varchar(32) DEFAULT 'inches',
  `product_url` varchar(255) DEFAULT NULL,
  `product_in_stock` int(11) unsigned DEFAULT NULL,
  `product_available_date` int(11) DEFAULT NULL,
  `product_availability` varchar(56) NOT NULL DEFAULT '',
  `product_special` char(1) DEFAULT NULL,
  `product_discount_id` int(11) DEFAULT NULL,
  `ship_code_id` int(11) DEFAULT NULL,
  `cdate` int(11) DEFAULT NULL,
  `mdate` int(11) DEFAULT NULL,
  `product_name` varchar(64) DEFAULT NULL,
  `product_sales` int(11) NOT NULL DEFAULT '0',
  `attribute` text,
  `custom_attribute` text NOT NULL,
  `product_tax_id` tinyint(2) NOT NULL DEFAULT '0',
  `product_unit` varchar(32) DEFAULT NULL,
  `product_packaging` int(11) DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='All products are stored here.';

--
-- Dumping data for table `jos_vm_product`
--

INSERT INTO `jos_vm_product` (`product_id`, `vendor_id`, `product_parent_id`, `product_sku`, `product_s_desc`, `product_desc`, `product_thumb_image`, `product_full_image`, `product_publish`, `product_weight`, `product_weight_uom`, `product_length`, `product_width`, `product_height`, `product_lwh_uom`, `product_url`, `product_in_stock`, `product_available_date`, `product_availability`, `product_special`, `product_discount_id`, `ship_code_id`, `cdate`, `mdate`, `product_name`, `product_sales`, `attribute`, `custom_attribute`, `product_tax_id`, `product_unit`, `product_packaging`) VALUES
(1, 1, 0, 'G01', '<p>Nice hand shovel to dig with in the yard.</p>\r\n', '\r\n<ul>  <li>Hand crafted handle with maximum grip torque  </li><li>Titanium tipped shovel platter  </li><li>Half degree offset for less accidents  </li><li>Includes HowTo Video narrated by Bob Costas  </li></ul>    <b>Specifications</b><br>  5" Diameter<br>  Tungsten handle tip with 5 point loft<br>\r\n', '8d886c5855770cc01a3b8a2db57f6600.jpg', 'cca3cd5db813ee6badf6a3598832f2fc.jpg', 'Y', '10.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 10, 1072911600, '48h.gif', 'Y', 1, NULL, 950320117, 1084907592, 'Hand Shovel', 0, '', '', 2, NULL, NULL),
(2, 1, 0, 'G02', 'A really long ladder to reach high places.', '\r\n<ul>  <li>Hand crafted handle with maximum grip torque  </li><li>Titanium tipped shovel platter  </li><li>Half degree offset for less accidents  </li><li>Includes HowTo Video narrated by Bob Costas  </li></ul>    <b>Specifications</b><br>  5" Diameter<br>  Tungsten handle tip with 5 point loft<br>\r\n', 'ffd5d5ace2840232c8c32de59553cd8d.jpg', '8cb8d644ef299639b7eab25829d13dbc.jpg', 'Y', '10.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 76, 1072911600, '3-5d.gif', 'N', 0, NULL, 950320180, 1084907618, 'Ladder', 0, '', '', 2, NULL, NULL),
(3, 1, 0, 'G03', 'Nice shovel.  You can dig your way to China with this one.', '\r\n<ul>  <li>Hand crafted handle with maximum grip torque  </li><li>Titanium tipped shovel platter  </li><li>Half degree offset for less accidents  </li><li>Includes HowTo Video narrated by Bob Costas  </li></ul>    <b>Specifications</b><br>  5" Diameter<br>  Tungsten handle tip with 5 point loft<br>\r\n', '8147a3a9666aec0296525dbd81f9705e.jpg', '520efefd6d7977f91b16fac1149c7438.jpg', 'Y', '10.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 32, 1072911600, '7d.gif', 'N', 0, NULL, 950320243, 1084907765, 'Shovel', 0, 'Size,XL[+1.99],M,S[-2.99];Colour,Red,Green,Yellow,ExpensiveColor[=24.00]', '', 2, NULL, NULL),
(4, 1, 0, 'G04', 'This shovel is smaller but you''ll be able to dig real quick.', '\r\n<ul>  <li>Hand crafted handle with maximum grip torque  </li><li>Titanium tipped shovel platter  </li><li>Half degree offset for less accidents  </li><li>Includes HowTo Video narrated by Bob Costas  </li></ul>    <b>Specifications</b><br>  5" Diameter<br>  Tungsten handle tip with 5 point loft<br>\r\n', 'a04395a8aefacd9c1659ebca4dbfd4ba.jpg', '1b0c96d67abdbea648cd0ea96fd6abcb.jpg', 'Y', '10.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 98, 1088632800, 'on-order.gif', 'N', 0, NULL, 950320378, 1084907867, 'Smaller Shovel', 0, 'Size,big[+2.99],medium;Color,red[+0.99],green[-0.99]', '', 2, NULL, NULL),
(5, 1, 0, 'H01', 'This saw is great for getting cutting through downed limbs.', '\r\n<ul>  <li>Hand crafted handle with maximum grip torque  </li><li>Titanium tipped shovel platter  </li><li>Half degree offset for less accidents  </li><li>Includes HowTo Video narrated by Bob Costas  </li></ul>    <b>Specifications</b><br>  5" Diameter<br>  Tungsten handle tip with 5 point loft<br>\r\n', '1aa8846d3cfe3504b2ccaf7c23bb748f.jpg', 'e614ba08c3ee0c2adc62fd9e5b9440eb.jpg', 'Y', '10.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 32, 1072911600, '1-4w.gif', 'Y', 2, NULL, 950321256, 1084907669, 'Nice Saw', 0, 'Size,big,small,medium;Power,100W,200W,500W', '', 2, NULL, NULL),
(6, 1, 0, 'H02', 'A great hammer to hammer away with.', '\r\n<ul>  <li>Hand crafted handle with maximum grip torque  </li><li>Titanium tipped shovel platter  </li><li>Half degree offset for less accidents  </li><li>Includes HowTo Video narrated by Bob Costas  </li></ul>    <b>Specifications</b><br>  5" Diameter<br>  Tungsten handle tip with 5 point loft<br>\r\n', 'dccb8223891a17d752bfc1477d320da9.jpg', '578563851019e01264a9b40dcf1c4ab6.jpg', 'Y', '10.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 500, 1072911600, '24h.gif', 'N', 0, NULL, 950321631, 1084907947, 'Hammer', 0, 'Size,big,medium,small;Material,wood and metal,plastic and metal[-0.99]', '', 2, NULL, NULL),
(7, 1, 0, 'P01', 'Don''t do it with an axe.  Get a chain saw.', '\r\n<ul>  <li>Tool-free tensioner for easy, convenient chain adjustment  </li><li>3-Way Auto Stop; stops chain a fraction of a second  </li><li>Automatic chain oiler regulates oil for proper chain lubrication  </li><li>Small radius guide bar reduces kick-back  </li></ul>  <br>  <b>Specifications</b><br>  12.5 AMPS   <br>   16" Bar Length   <br>   3.5 HP   <br>   8.05 LBS. Weight   <br>\r\n', '8716aefc3b0dce8870360604e6eb8744.jpg', 'c3a5bf074da14f30c849d13a2dd87d2c.jpg', 'Y', '10.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 45, 1088632800, '48h.gif', 'N', 0, NULL, 950321725, 1084907512, 'Chain Saw', 0, '', '', 2, NULL, NULL),
(8, 1, 0, 'P02', 'Cut rings around wood.  This saw can handle the most delicate projects.', '\r\n<ul>  <li>Patented Sightline; Window provides maximum visibility for straight cuts  </li><li>Adjustable dust chute for cleaner work area  </li><li>Bail handle for controlled cutting in 90', 'b4a748303d0d996b29d5a1e1d1112537.jpg', '9a4448bb13e2f7699613b2cfd7cd51ad.jpg', 'Y', '10.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 33, 1072911600, '3-5d.gif', 'Y', 1, NULL, 950321795, 1084907537, 'Circular Saw', 0, 'Size,XL[+1],M,S[-2];Power,strong,middle,poor[=24]', '', 2, NULL, NULL),
(9, 1, 0, 'P03', 'Drill through anything.  This drill has the power you need for those demanding hole boring duties.', '\r\n<font color="#000000" size="3"><ul><li>High power motor and double gear reduction for increased durability and improved performance  </li><li>Mid-handle design and two finger trigger for increased balance and comfort  </li><li>Variable speed switch with lock-on button for continuous use  </li><li><b>Includes:</b> Chuck key &amp; holder  </li></ul>  <br>  <b>Specifications</b><br>  4.0 AMPS   <br>   0-1,350 RPM   <br>   Capacity: 3/8" Steel, 1" Wood   <br><br>  </font>\r\n', 'c70a3f47baf9a4020aeeee919eb3fda4.jpg', '1ff5f2527907ca86103288e1b7cc3446.jpg', 'Y', '10.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 3, 1072911600, '2-3d.gif', 'N', 0, NULL, 950321879, 1084907557, 'Drill', 0, '', '', 2, NULL, NULL),
(10, 1, 0, 'P04', 'Blast away that paint job from the past.  Use this power sander to really show them you mean business.', '\r\n<ul>  <li>Lever activated paper clamps for simple sandpaper changes  </li><li>Dust sealed rocker switch extends product life and keeps dust out of motor  </li><li>Flush sands on three sides to get into corners  </li><li>Front handle for extra control  </li><li>Dust extraction port for cleaner work environment   </li></ul>  <br>  <b>Specifications</b><br>  1.2 AMPS    <br>   10,000 OPM    <br>\r\n', '7a36a05526e93964a086f2ddf17fc609.jpg', '480655b410d98a5cc3bef3927e786866.jpg', 'Y', '10.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 2, 1072911600, '1-2m.gif', 'N', 2, NULL, 950321963, 1084907719, 'Power Sander', 0, 'Size,big,medium,small;Power,100W,200W,300W', '', 2, NULL, NULL),
(11, 1, 1, 'G01-01', '', '', '', '', 'Y', '10.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 0, '', '', 0, NULL, 955696949, 960372163, 'Hand Shovel', 0, NULL, '', 0, NULL, NULL),
(12, 1, 1, 'G01-02', '', '', '', '', 'Y', '10.0000', '', '0.0000', '0.0000', '0.0000', '', '', 0, 0, '', '', 0, NULL, 955697006, 960372187, 'Hand Shovel', 0, NULL, '', 0, NULL, NULL),
(13, 1, 1, 'G01-03', '', '', '', '', 'Y', '10.0000', '', '0.0000', '0.0000', '0.0000', '', '', 0, 0, '', '', 0, NULL, 955697044, 960372206, 'Hand Shovel', 0, NULL, '', 0, NULL, NULL),
(14, 1, 2, 'L01', '', '', '', '', 'Y', '10.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 22, 1072911600, '', 'N', 0, NULL, 962351149, 1084902820, 'Metal Ladder', 0, NULL, '', 2, NULL, NULL),
(15, 1, 2, 'L02', '', '', '', '', 'Y', '10.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 0, '', '', 0, NULL, 962351165, 962351165, 'Wooden Ladder', 0, NULL, '', 0, NULL, NULL),
(16, 1, 2, 'L03', '', '', '', '', 'Y', '10.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 0, '', '', 0, NULL, 962351180, 962351180, 'Plastic Ladder', 0, NULL, '', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `jos_vm_product_attribute`
--

CREATE TABLE IF NOT EXISTS `jos_vm_product_attribute` (
  `product_id` int(11) NOT NULL DEFAULT '0',
  `attribute_name` char(255) NOT NULL DEFAULT '',
  `attribute_value` char(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Stores attributes + their specific values for Child Products';

--
-- Dumping data for table `jos_vm_product_attribute`
--

INSERT INTO `jos_vm_product_attribute` (`product_id`, `attribute_name`, `attribute_value`) VALUES
(11, 'Color', 'Red'),
(12, 'Color', 'Green'),
(13, 'Color', 'Blue'),
(11, 'Size', 'Small'),
(12, 'Size', 'Medium'),
(13, 'Size', 'Large'),
(14, 'Material', 'Metal'),
(15, 'Material', 'Wood'),
(16, 'Material', 'Plastic');

-- --------------------------------------------------------

--
-- Table structure for table `jos_vm_product_attribute_sku`
--

CREATE TABLE IF NOT EXISTS `jos_vm_product_attribute_sku` (
  `product_id` int(11) NOT NULL DEFAULT '0',
  `attribute_name` char(255) NOT NULL DEFAULT '',
  `attribute_list` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Attributes for a Parent Product used by its Child Products';

--
-- Dumping data for table `jos_vm_product_attribute_sku`
--

INSERT INTO `jos_vm_product_attribute_sku` (`product_id`, `attribute_name`, `attribute_list`) VALUES
(1, 'Color', 1),
(1, 'Size', 2),
(2, 'Material', 1);

-- --------------------------------------------------------

--
-- Table structure for table `jos_vm_product_category_xref`
--

CREATE TABLE IF NOT EXISTS `jos_vm_product_category_xref` (
  `category_id` int(11) NOT NULL DEFAULT '0',
  `product_id` int(11) NOT NULL DEFAULT '0',
  `product_list` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Maps Products to Categories';

--
-- Dumping data for table `jos_vm_product_category_xref`
--

INSERT INTO `jos_vm_product_category_xref` (`category_id`, `product_id`, `product_list`) VALUES
(1, 1, NULL),
(3, 2, NULL),
(3, 3, NULL),
(3, 4, NULL),
(1, 5, NULL),
(1, 6, NULL),
(4, 7, NULL),
(2, 8, NULL),
(5, 9, NULL),
(2, 10, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `jos_vm_product_discount`
--

CREATE TABLE IF NOT EXISTS `jos_vm_product_discount` (
  `discount_id` int(11) NOT NULL,
  `amount` decimal(12,2) NOT NULL DEFAULT '0.00',
  `is_percent` tinyint(1) NOT NULL DEFAULT '0',
  `start_date` int(11) NOT NULL DEFAULT '0',
  `end_date` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='Discounts that can be assigned to products';

--
-- Dumping data for table `jos_vm_product_discount`
--

INSERT INTO `jos_vm_product_discount` (`discount_id`, `amount`, `is_percent`, `start_date`, `end_date`) VALUES
(1, '20.00', 1, 1097704800, 1194390000),
(2, '2.00', 0, 1098655200, 0);

-- --------------------------------------------------------

--
-- Table structure for table `jos_vm_product_download`
--

CREATE TABLE IF NOT EXISTS `jos_vm_product_download` (
  `product_id` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `order_id` int(11) NOT NULL DEFAULT '0',
  `end_date` int(11) NOT NULL DEFAULT '0',
  `download_max` int(11) NOT NULL DEFAULT '0',
  `download_id` varchar(32) NOT NULL DEFAULT '',
  `file_name` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Active downloads for selling downloadable goods';

-- --------------------------------------------------------

--
-- Table structure for table `jos_vm_product_files`
--

CREATE TABLE IF NOT EXISTS `jos_vm_product_files` (
  `file_id` int(19) NOT NULL,
  `file_product_id` int(11) NOT NULL DEFAULT '0',
  `file_name` varchar(128) NOT NULL DEFAULT '',
  `file_title` varchar(128) NOT NULL DEFAULT '',
  `file_description` mediumtext NOT NULL,
  `file_extension` varchar(128) NOT NULL DEFAULT '',
  `file_mimetype` varchar(64) NOT NULL DEFAULT '',
  `file_url` varchar(254) NOT NULL DEFAULT '',
  `file_published` tinyint(1) NOT NULL DEFAULT '0',
  `file_is_image` tinyint(1) NOT NULL DEFAULT '0',
  `file_image_height` int(11) NOT NULL DEFAULT '0',
  `file_image_width` int(11) NOT NULL DEFAULT '0',
  `file_image_thumb_height` int(11) NOT NULL DEFAULT '50',
  `file_image_thumb_width` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Additional Images and Files which are assigned to products';

-- --------------------------------------------------------

--
-- Table structure for table `jos_vm_product_mf_xref`
--

CREATE TABLE IF NOT EXISTS `jos_vm_product_mf_xref` (
  `product_id` int(11) DEFAULT NULL,
  `manufacturer_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Maps a product to a manufacturer';

--
-- Dumping data for table `jos_vm_product_mf_xref`
--

INSERT INTO `jos_vm_product_mf_xref` (`product_id`, `manufacturer_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1);

-- --------------------------------------------------------

--
-- Table structure for table `jos_vm_product_price`
--

CREATE TABLE IF NOT EXISTS `jos_vm_product_price` (
  `product_price_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL DEFAULT '0',
  `product_price` decimal(10,5) DEFAULT NULL,
  `product_currency` char(16) DEFAULT NULL,
  `product_price_vdate` int(11) DEFAULT NULL,
  `product_price_edate` int(11) DEFAULT NULL,
  `cdate` int(11) DEFAULT NULL,
  `mdate` int(11) DEFAULT NULL,
  `shopper_group_id` int(11) DEFAULT NULL,
  `price_quantity_start` int(11) unsigned NOT NULL DEFAULT '0',
  `price_quantity_end` int(11) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='Holds price records for a product';

--
-- Dumping data for table `jos_vm_product_price`
--

INSERT INTO `jos_vm_product_price` (`product_price_id`, `product_id`, `product_price`, `product_currency`, `product_price_vdate`, `product_price_edate`, `cdate`, `mdate`, `shopper_group_id`, `price_quantity_start`, `price_quantity_end`) VALUES
(1, 5, '24.99000', 'USD', 0, 0, 950321309, 950321309, 5, 0, 0),
(2, 1, '4.99000', 'USD', 0, 0, 950321324, 950321324, 5, 0, 0),
(3, 2, '49.99000', 'USD', 0, 0, 950321340, 950321340, 5, 0, 0),
(4, 3, '24.99000', 'USD', 0, 0, 950321368, 950321368, 5, 0, 0),
(5, 4, '19.99000', 'USD', 0, 0, 950321385, 950321385, 5, 0, 0),
(6, 6, '1.00000', 'USD', 0, 0, 950321686, 963808699, 5, 0, 0),
(7, 7, '149.99000', 'USD', 0, 0, 950321754, 966506270, 5, 0, 0),
(8, 8, '220.90000', 'USD', 0, 0, 950321833, 955614388, 5, 0, 0),
(9, 9, '48.12000', 'USD', 0, 0, 950321933, 950321933, 5, 0, 0),
(10, 10, '74.99000', 'USD', 0, 0, 950322005, 950322005, 5, 0, 0),
(11, 1, '2.99000', 'USD', 0, 0, 955626841, 955626841, 6, 0, 0),
(12, 13, '14.99000', 'USD', 0, 0, 955697213, 955697213, 5, 0, 0),
(13, 14, '79.99000', 'USD', 0, 0, 962351197, 962351271, 5, 0, 0),
(14, 15, '49.99000', 'USD', 0, 0, 962351233, 962351233, 5, 0, 0),
(15, 16, '59.99000', 'USD', 0, 0, 962351259, 962351259, 5, 0, 0),
(16, 7, '2.99000', 'USD', 0, 0, 966589140, 966589140, 6, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `jos_vm_product_product_type_xref`
--

CREATE TABLE IF NOT EXISTS `jos_vm_product_product_type_xref` (
  `product_id` int(11) NOT NULL DEFAULT '0',
  `product_type_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Maps products to a product type';

-- --------------------------------------------------------

--
-- Table structure for table `jos_vm_product_relations`
--

CREATE TABLE IF NOT EXISTS `jos_vm_product_relations` (
  `product_id` int(11) NOT NULL DEFAULT '0',
  `related_products` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `jos_vm_product_reviews`
--

CREATE TABLE IF NOT EXISTS `jos_vm_product_reviews` (
  `product_id` varchar(255) NOT NULL DEFAULT '',
  `comment` text NOT NULL,
  `userid` int(11) NOT NULL DEFAULT '0',
  `time` int(11) NOT NULL DEFAULT '0',
  `user_rating` tinyint(1) NOT NULL DEFAULT '0',
  `review_ok` int(11) NOT NULL DEFAULT '0',
  `review_votes` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `jos_vm_product_type`
--

CREATE TABLE IF NOT EXISTS `jos_vm_product_type` (
  `product_type_id` int(11) NOT NULL,
  `product_type_name` varchar(255) NOT NULL DEFAULT '',
  `product_type_description` text,
  `product_type_publish` char(1) DEFAULT NULL,
  `product_type_browsepage` varchar(255) DEFAULT NULL,
  `product_type_flypage` varchar(255) DEFAULT NULL,
  `product_type_list_order` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `jos_vm_product_type_parameter`
--

CREATE TABLE IF NOT EXISTS `jos_vm_product_type_parameter` (
  `product_type_id` int(11) NOT NULL DEFAULT '0',
  `parameter_name` varchar(255) NOT NULL DEFAULT '',
  `parameter_label` varchar(255) NOT NULL DEFAULT '',
  `parameter_description` text,
  `parameter_list_order` int(11) NOT NULL DEFAULT '0',
  `parameter_type` char(1) NOT NULL DEFAULT 'T',
  `parameter_values` varchar(255) DEFAULT NULL,
  `parameter_multiselect` char(1) DEFAULT NULL,
  `parameter_default` varchar(255) DEFAULT NULL,
  `parameter_unit` varchar(32) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Parameters which are part of a product type';

-- --------------------------------------------------------

--
-- Table structure for table `jos_vm_product_votes`
--

CREATE TABLE IF NOT EXISTS `jos_vm_product_votes` (
  `product_id` int(255) NOT NULL DEFAULT '0',
  `votes` text NOT NULL,
  `allvotes` int(11) NOT NULL DEFAULT '0',
  `rating` tinyint(1) NOT NULL DEFAULT '0',
  `lastip` varchar(50) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Stores all votes for a product';

-- --------------------------------------------------------

--
-- Table structure for table `jos_vm_shipping_carrier`
--

CREATE TABLE IF NOT EXISTS `jos_vm_shipping_carrier` (
  `shipping_carrier_id` int(11) NOT NULL,
  `shipping_carrier_name` char(80) NOT NULL DEFAULT '',
  `shipping_carrier_list_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='Shipping Carriers as used by the Standard Shipping Module';

--
-- Dumping data for table `jos_vm_shipping_carrier`
--

INSERT INTO `jos_vm_shipping_carrier` (`shipping_carrier_id`, `shipping_carrier_name`, `shipping_carrier_list_order`) VALUES
(1, 'DHL', 0),
(2, 'UPS', 1);

-- --------------------------------------------------------

--
-- Table structure for table `jos_vm_shipping_rate`
--

CREATE TABLE IF NOT EXISTS `jos_vm_shipping_rate` (
  `shipping_rate_id` int(11) NOT NULL,
  `shipping_rate_name` varchar(255) NOT NULL DEFAULT '',
  `shipping_rate_carrier_id` int(11) NOT NULL DEFAULT '0',
  `shipping_rate_country` text NOT NULL,
  `shipping_rate_zip_start` varchar(32) NOT NULL DEFAULT '',
  `shipping_rate_zip_end` varchar(32) NOT NULL DEFAULT '',
  `shipping_rate_weight_start` decimal(10,3) NOT NULL DEFAULT '0.000',
  `shipping_rate_weight_end` decimal(10,3) NOT NULL DEFAULT '0.000',
  `shipping_rate_value` decimal(10,2) NOT NULL DEFAULT '0.00',
  `shipping_rate_package_fee` decimal(10,2) NOT NULL DEFAULT '0.00',
  `shipping_rate_currency_id` int(11) NOT NULL DEFAULT '0',
  `shipping_rate_vat_id` int(11) NOT NULL DEFAULT '0',
  `shipping_rate_list_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COMMENT='Shipping Rates, used by the Standard Shipping Module';

--
-- Dumping data for table `jos_vm_shipping_rate`
--

INSERT INTO `jos_vm_shipping_rate` (`shipping_rate_id`, `shipping_rate_name`, `shipping_rate_carrier_id`, `shipping_rate_country`, `shipping_rate_zip_start`, `shipping_rate_zip_end`, `shipping_rate_weight_start`, `shipping_rate_weight_end`, `shipping_rate_value`, `shipping_rate_package_fee`, `shipping_rate_currency_id`, `shipping_rate_vat_id`, `shipping_rate_list_order`) VALUES
(1, 'Inland &gt; 4kg', 1, 'DEU', '00000', '99999', '0.000', '4.000', '5.62', '2.00', 47, 0, 1),
(2, 'Inland &gt; 8kg', 1, 'DEU', '00000', '99999', '4.000', '8.000', '6.39', '2.00', 47, 0, 2),
(3, 'Inland &gt; 12kg', 1, 'DEU', '00000', '99999', '8.000', '12.000', '7.16', '2.00', 47, 0, 3),
(4, 'Inland &gt; 20kg', 1, 'DEU', '00000', '99999', '12.000', '20.000', '8.69', '2.00', 47, 0, 4),
(5, 'EU+ &gt;  4kg', 1, 'AND;BEL;DNK;FRO;FIN;FRA;GRC;GRL;GBR;IRL;ITA;LIE;LUX;MCO;NLD;AUT;POL;PRT;SMR;SWE;CHE;SVK;ESP;CZE', '00000', '99999', '0.000', '4.000', '14.57', '2.00', 47, 0, 5),
(6, 'EU+ &gt;  8kg', 1, 'AND;BEL;DNK;FRO;FIN;FRA;GRC;GRL;GBR;IRL;ITA;LIE;LUX;MCO;NLD;AUT;POL;PRT;SMR;SWE;CHE;SVK;ESP;CZE', '00000', '99999', '4.000', '8.000', '18.66', '2.00', 47, 0, 6),
(7, 'EU+ &gt; 12kg', 1, 'AND;BEL;DNK;FRO;FIN;FRA;GRC;GRL;GBR;IRL;ITA;LIE;LUX;MCO;NLD;AUT;POL;PRT;SMR;SWE;CHE;SVK;ESP;CZE', '00000', '99999', '8.000', '12.000', '22.57', '2.00', 47, 0, 7),
(8, 'EU+ &gt; 20kg', 1, 'AND;BEL;DNK;FRO;FIN;FRA;GRC;GRL;GBR;IRL;ITA;LIE;LUX;MCO;NLD;AUT;POL;PRT;SMR;SWE;CHE;SVK;ESP;CZE', '00000', '99999', '12.000', '20.000', '30.93', '2.00', 47, 0, 8),
(9, 'Europe &gt; 4kg', 1, 'ALB;ARM;AZE;BLR;BIH;BGR;EST;GEO;GIB;ISL;YUG;KAZ;HRV;LVA;LTU;MLT;MKD;MDA;NOR;ROM;RUS;SVN;TUR;UKR;HUN;BLR;CYP', '00000', '99999', '0.000', '4.000', '23.78', '2.00', 47, 0, 9),
(10, 'Europe &gt;  8kg', 1, 'ALB;ARM;AZE;BLR;BIH;BGR;EST;GEO;GIB;ISL;YUG;KAZ;HRV;LVA;LTU;MLT;MKD;MDA;NOR;ROM;RUS;SVN;TUR;UKR;HUN;BLR;CYP', '00000', '99999', '4.000', '8.000', '29.91', '2.00', 47, 0, 10),
(11, 'Europe &gt; 12kg', 1, 'ALB;ARM;AZE;BLR;BIH;BGR;EST;GEO;GIB;ISL;YUG;KAZ;HRV;LVA;LTU;MLT;MKD;MDA;NOR;ROM;RUS;SVN;TUR;UKR;HUN;BLR;CYP', '00000', '99999', '8.000', '12.000', '36.05', '2.00', 47, 0, 11),
(12, 'Europe &gt; 20kg', 1, 'ALB;ARM;AZE;BLR;BIH;BGR;EST;GEO;GIB;ISL;YUG;KAZ;HRV;LVA;LTU;MLT;MKD;MDA;NOR;ROM;RUS;SVN;TUR;UKR;HUN;BLR;CYP', '00000', '99999', '12.000', '20.000', '48.32', '2.00', 47, 0, 12),
(13, 'World_1 &gt;  4kg', 1, 'EGY;DZA;BHR;IRQ;IRN;ISR;YEM;JOR;CAN;QAT;KWT;LBN;LBY;MAR;OMN;SAU;SYR;TUN;ARE;USA', '00000', '99999', '0.000', '4.000', '26.84', '2.00', 47, 0, 13),
(14, 'World_1 &gt; 8kg', 1, 'EGY;DZA;BHR;IRQ;IRN;ISR;YEM;JOR;CAN;QAT;KWT;LBN;LBY;MAR;OMN;SAU;SYR;TUN;ARE;USA', '00000', '99999', '4.000', '8.000', '35.02', '2.00', 47, 0, 14),
(15, 'World_1 &gt;12kg', 1, 'EGY;DZA;BHR;IRQ;IRN;ISR;YEM;JOR;CAN;QAT;KWT;LBN;LBY;MAR;OMN;SAU;SYR;TUN;ARE;USA', '00000', '99999', '8.000', '12.000', '43.20', '2.00', 47, 0, 15),
(16, 'World_1 &gt;20kg', 1, 'EGY;DZA;BHR;IRQ;IRN;ISR;YEM;JOR;CAN;QAT;KWT;LBN;LBY;MAR;OMN;SAU;SYR;TUN;ARE;USA', '00000', '99999', '12.000', '20.000', '59.57', '2.00', 47, 0, 16),
(17, 'World_2 &gt; 4kg', 1, '', '00000', '99999', '0.000', '4.000', '32.98', '2.00', 47, 0, 17),
(18, 'World_2 &gt; 8kg', 1, '', '00000', '99999', '4.000', '8.000', '47.29', '2.00', 47, 0, 18),
(19, 'World_2 &gt; 12kg', 1, '', '00000', '99999', '8.000', '12.000', '61.61', '2.00', 47, 0, 19),
(20, 'World_2 &gt; 20kg', 1, '', '00000', '99999', '12.000', '20.000', '90.24', '2.00', 47, 0, 20),
(21, 'UPS Express', 2, 'AND;BEL;DNK;FRO;FIN;FRA;GRC;GRL;GBR;IRL;ITA;LIE;LUX;MCO;NLD;AUT;POL;PRT;SMR;SWE;CHE;SVK;ESP;CZE', '00000', '99999', '0.000', '20.000', '5.24', '2.00', 47, 0, 21);

-- --------------------------------------------------------

--
-- Table structure for table `jos_vm_shopper_group`
--

CREATE TABLE IF NOT EXISTS `jos_vm_shopper_group` (
  `shopper_group_id` int(11) NOT NULL,
  `vendor_id` int(11) DEFAULT NULL,
  `shopper_group_name` varchar(32) DEFAULT NULL,
  `shopper_group_desc` text,
  `shopper_group_discount` decimal(5,2) NOT NULL DEFAULT '0.00',
  `show_price_including_tax` tinyint(1) NOT NULL DEFAULT '1',
  `default` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='Shopper Groups that users can be assigned to';

--
-- Dumping data for table `jos_vm_shopper_group`
--

INSERT INTO `jos_vm_shopper_group` (`shopper_group_id`, `vendor_id`, `shopper_group_name`, `shopper_group_desc`, `shopper_group_discount`, `show_price_including_tax`, `default`) VALUES
(5, 1, '-default-', 'This is the default shopper group.', '0.00', 1, 1),
(6, 1, 'Gold Level', 'Gold Level phpShoppers.', '0.00', 1, 0),
(7, 1, 'Wholesale', 'Shoppers that can buy at wholesale.', '0.00', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `jos_vm_shopper_vendor_xref`
--

CREATE TABLE IF NOT EXISTS `jos_vm_shopper_vendor_xref` (
  `user_id` int(11) DEFAULT NULL,
  `vendor_id` int(11) DEFAULT NULL,
  `shopper_group_id` int(11) DEFAULT NULL,
  `customer_number` varchar(32) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Maps a user to a Shopper Group of a Vendor';

--
-- Dumping data for table `jos_vm_shopper_vendor_xref`
--

INSERT INTO `jos_vm_shopper_vendor_xref` (`user_id`, `vendor_id`, `shopper_group_id`, `customer_number`) VALUES
(62, 1, 5, '');

-- --------------------------------------------------------

--
-- Table structure for table `jos_vm_state`
--

CREATE TABLE IF NOT EXISTS `jos_vm_state` (
  `state_id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL DEFAULT '1',
  `state_name` varchar(64) DEFAULT NULL,
  `state_3_code` char(3) DEFAULT NULL,
  `state_2_code` char(2) DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=166 DEFAULT CHARSET=utf8 COMMENT='States that are assigned to a country';

--
-- Dumping data for table `jos_vm_state`
--

INSERT INTO `jos_vm_state` (`state_id`, `country_id`, `state_name`, `state_3_code`, `state_2_code`) VALUES
(1, 223, 'Alabama', 'ALA', 'AL'),
(2, 223, 'Alaska', 'ALK', 'AK'),
(3, 223, 'Arizona', 'ARZ', 'AZ'),
(4, 223, 'Arkansas', 'ARK', 'AR'),
(5, 223, 'California', 'CAL', 'CA'),
(6, 223, 'Colorado', 'COL', 'CO'),
(7, 223, 'Connecticut', 'CCT', 'CT'),
(8, 223, 'Delaware', 'DEL', 'DE'),
(9, 223, 'District Of Columbia', 'DOC', 'DC'),
(10, 223, 'Florida', 'FLO', 'FL'),
(11, 223, 'Georgia', 'GEA', 'GA'),
(12, 223, 'Hawaii', 'HWI', 'HI'),
(13, 223, 'Idaho', 'IDA', 'ID'),
(14, 223, 'Illinois', 'ILL', 'IL'),
(15, 223, 'Indiana', 'IND', 'IN'),
(16, 223, 'Iowa', 'IOA', 'IA'),
(17, 223, 'Kansas', 'KAS', 'KS'),
(18, 223, 'Kentucky', 'KTY', 'KY'),
(19, 223, 'Louisiana', 'LOA', 'LA'),
(20, 223, 'Maine', 'MAI', 'ME'),
(21, 223, 'Maryland', 'MLD', 'MD'),
(22, 223, 'Massachusetts', 'MSA', 'MA'),
(23, 223, 'Michigan', 'MIC', 'MI'),
(24, 223, 'Minnesota', 'MIN', 'MN'),
(25, 223, 'Mississippi', 'MIS', 'MS'),
(26, 223, 'Missouri', 'MIO', 'MO'),
(27, 223, 'Montana', 'MOT', 'MT'),
(28, 223, 'Nebraska', 'NEB', 'NE'),
(29, 223, 'Nevada', 'NEV', 'NV'),
(30, 223, 'New Hampshire', 'NEH', 'NH'),
(31, 223, 'New Jersey', 'NEJ', 'NJ'),
(32, 223, 'New Mexico', 'NEM', 'NM'),
(33, 223, 'New York', 'NEY', 'NY'),
(34, 223, 'North Carolina', 'NOC', 'NC'),
(35, 223, 'North Dakota', 'NOD', 'ND'),
(36, 223, 'Ohio', 'OHI', 'OH'),
(37, 223, 'Oklahoma', 'OKL', 'OK'),
(38, 223, 'Oregon', 'ORN', 'OR'),
(39, 223, 'Pennsylvania', 'PEA', 'PA'),
(40, 223, 'Rhode Island', 'RHI', 'RI'),
(41, 223, 'South Carolina', 'SOC', 'SC'),
(42, 223, 'South Dakota', 'SOD', 'SD'),
(43, 223, 'Tennessee', 'TEN', 'TN'),
(44, 223, 'Texas', 'TXS', 'TX'),
(45, 223, 'Utah', 'UTA', 'UT'),
(46, 223, 'Vermont', 'VMT', 'VT'),
(47, 223, 'Virginia', 'VIA', 'VA'),
(48, 223, 'Washington', 'WAS', 'WA'),
(49, 223, 'West Virginia', 'WEV', 'WV'),
(50, 223, 'Wisconsin', 'WIS', 'WI'),
(51, 223, 'Wyoming', 'WYO', 'WY'),
(52, 38, 'Alberta', 'ALB', 'AB'),
(53, 38, 'British Columbia', 'BRC', 'BC'),
(54, 38, 'Manitoba', 'MAB', 'MB'),
(55, 38, 'New Brunswick', 'NEB', 'NB'),
(56, 38, 'Newfoundland and Labrador', 'NFL', 'NL'),
(57, 38, 'Northwest Territories', 'NWT', 'NT'),
(58, 38, 'Nova Scotia', 'NOS', 'NS'),
(59, 38, 'Nunavut', 'NUT', 'NU'),
(60, 38, 'Ontario', 'ONT', 'ON'),
(61, 38, 'Prince Edward Island', 'PEI', 'PE'),
(62, 38, 'Quebec', 'QEC', 'QC'),
(63, 38, 'Saskatchewan', 'SAK', 'SK'),
(64, 38, 'Yukon', 'YUT', 'YT'),
(65, 222, 'England', 'ENG', 'EN'),
(66, 222, 'Northern Ireland', 'NOI', 'NI'),
(67, 222, 'Scotland', 'SCO', 'SD'),
(68, 222, 'Wales', 'WLS', 'WS'),
(69, 13, 'Australian Capital Territory', 'ACT', 'AT'),
(70, 13, 'New South Wales', 'NSW', 'NW'),
(71, 13, 'Northern Territory', 'NOT', 'NT'),
(72, 13, 'Queensland', 'QLD', 'QL'),
(73, 13, 'South Australia', 'SOA', 'SA'),
(74, 13, 'Tasmania', 'TAS', 'TA'),
(75, 13, 'Victoria', 'VIC', 'VI'),
(76, 13, 'Western Australia', 'WEA', 'WA'),
(77, 138, 'Aguascalientes', 'AGS', 'AG'),
(78, 138, 'Baja California Norte', 'BCN', 'BN'),
(79, 138, 'Baja California Sur', 'BCS', 'BS'),
(80, 138, 'Campeche', 'CAM', 'CA'),
(81, 138, 'Chiapas', 'CHI', 'CS'),
(82, 138, 'Chihuahua', 'CHA', 'CH'),
(83, 138, 'Coahuila', 'COA', 'CO'),
(84, 138, 'Colima', 'COL', 'CM'),
(85, 138, 'Distrito Federal', 'DFM', 'DF'),
(86, 138, 'Durango', 'DGO', 'DO'),
(87, 138, 'Guanajuato', 'GTO', 'GO'),
(88, 138, 'Guerrero', 'GRO', 'GU'),
(89, 138, 'Hidalgo', 'HGO', 'HI'),
(90, 138, 'Jalisco', 'JAL', 'JA'),
(91, 138, 'México (Estado de)', 'EDM', 'EM'),
(92, 138, 'Michoacán', 'MCN', 'MI'),
(93, 138, 'Morelos', 'MOR', 'MO'),
(94, 138, 'Nayarit', 'NAY', 'NY'),
(95, 138, 'Nuevo León', 'NUL', 'NL'),
(96, 138, 'Oaxaca', 'OAX', 'OA'),
(97, 138, 'Puebla', 'PUE', 'PU'),
(98, 138, 'Querétaro', 'QRO', 'QU'),
(99, 138, 'Quintana Roo', 'QUR', 'QR'),
(100, 138, 'San Luis Potosí', 'SLP', 'SP'),
(101, 138, 'Sinaloa', 'SIN', 'SI'),
(102, 138, 'Sonora', 'SON', 'SO'),
(103, 138, 'Tabasco', 'TAB', 'TA'),
(104, 138, 'Tamaulipas', 'TAM', 'TM'),
(105, 138, 'Tlaxcala', 'TLX', 'TX'),
(106, 138, 'Veracruz', 'VER', 'VZ'),
(107, 138, 'Yucatán', 'YUC', 'YU'),
(108, 138, 'Zacatecas', 'ZAC', 'ZA'),
(109, 30, 'Acre', 'ACR', 'AC'),
(110, 30, 'Alagoas', 'ALG', 'AL'),
(111, 30, 'Amapá', 'AMP', 'AP'),
(112, 30, 'Amazonas', 'AMZ', 'AM'),
(113, 30, 'Bahía', 'BAH', 'BA'),
(114, 30, 'Ceará', 'CEA', 'CE'),
(115, 30, 'Distrito Federal', 'DFB', 'DF'),
(116, 30, 'Espirito Santo', 'ESS', 'ES'),
(117, 30, 'Goiás', 'GOI', 'GO'),
(118, 30, 'Maranhão', 'MAR', 'MA'),
(119, 30, 'Mato Grosso', 'MAT', 'MT'),
(120, 30, 'Mato Grosso do Sul', 'MGS', 'MS'),
(121, 30, 'Minas Geraís', 'MIG', 'MG'),
(122, 30, 'Paraná', 'PAR', 'PR'),
(123, 30, 'Paraíba', 'PRB', 'PB'),
(124, 30, 'Pará', 'PAB', 'PA'),
(125, 30, 'Pernambuco', 'PER', 'PR'),
(126, 30, 'Piauí', 'PIA', 'PI'),
(127, 30, 'Rio Grande do Norte', 'RGN', 'RN'),
(128, 30, 'Rio Grande do Sul', 'RGS', 'RS'),
(129, 30, 'Rio de Janeiro', 'RDJ', 'RJ'),
(130, 30, 'Rondônia', 'RON', 'RO'),
(131, 30, 'Roraima', 'ROR', 'RR'),
(132, 30, 'Santa Catarina', 'SAC', 'SC'),
(133, 30, 'Sergipe', 'SER', 'SE'),
(134, 30, 'São Paulo', 'SAP', 'SP'),
(135, 30, 'Tocantins', 'TOC', 'TO'),
(136, 44, 'Anhui', 'ANH', 'AN'),
(137, 44, 'Beijing', 'BEI', 'BE'),
(138, 44, 'Fujian', 'FUJ', 'FJ'),
(139, 44, 'Gansu', 'GAN', 'GU'),
(140, 44, 'Guangdong', 'GUA', 'GU'),
(141, 44, 'Guangxi Zhuang', 'GUZ', 'GZ'),
(142, 44, 'Guizhou', 'GUI', 'GI'),
(143, 44, 'Hainan', 'HAI', 'HA'),
(144, 44, 'Hebei', 'HEB', 'HE'),
(145, 44, 'Heilongjiang', 'HEI', 'HG'),
(146, 44, 'Henan', 'HEN', 'HN'),
(147, 44, 'Hubei', 'HUB', 'HI'),
(148, 44, 'Hunan', 'HUN', 'HU'),
(149, 44, 'Jiangsu', 'JIA', 'JI'),
(150, 44, 'Jiangxi', 'JIX', 'JX'),
(151, 44, 'Jilin', 'JIL', 'JN'),
(152, 44, 'Liaoning', 'LIA', 'LI'),
(153, 44, 'Nei Mongol', 'NML', 'NM'),
(154, 44, 'Ningxia Hui', 'NIH', 'NH'),
(155, 44, 'Qinghai', 'QIN', 'QI'),
(156, 44, 'Shaanxi', 'SHA', 'SH'),
(157, 44, 'Shandong', 'SNG', 'SG'),
(158, 44, 'Shanghai', 'SHH', 'SI'),
(159, 44, 'Shanxi', 'SHX', 'SX'),
(160, 44, 'Sichuan', 'SIC', 'SN'),
(161, 44, 'Tianjin', 'TIA', 'TI'),
(162, 44, 'Xinjiang Uygur', 'XIU', 'XU'),
(163, 44, 'Xizang', 'XIZ', 'XI'),
(164, 44, 'Yunnan', 'YUN', 'YU'),
(165, 44, 'Zhejiang', 'ZHE', 'ZH');

-- --------------------------------------------------------

--
-- Table structure for table `jos_vm_tax_rate`
--

CREATE TABLE IF NOT EXISTS `jos_vm_tax_rate` (
  `tax_rate_id` int(11) NOT NULL,
  `vendor_id` int(11) DEFAULT NULL,
  `tax_state` varchar(64) DEFAULT NULL,
  `tax_country` varchar(64) DEFAULT NULL,
  `mdate` int(11) DEFAULT NULL,
  `tax_rate` decimal(10,4) DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='The tax rates for your store';

--
-- Dumping data for table `jos_vm_tax_rate`
--

INSERT INTO `jos_vm_tax_rate` (`tax_rate_id`, `vendor_id`, `tax_state`, `tax_country`, `mdate`, `tax_rate`) VALUES
(2, 1, 'CA', 'USA', 964565926, '0.0825');

-- --------------------------------------------------------

--
-- Table structure for table `jos_vm_user_info`
--

CREATE TABLE IF NOT EXISTS `jos_vm_user_info` (
  `user_info_id` varchar(32) NOT NULL DEFAULT '',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `address_type` char(2) DEFAULT NULL,
  `address_type_name` varchar(32) DEFAULT NULL,
  `company` varchar(64) DEFAULT NULL,
  `title` varchar(32) DEFAULT NULL,
  `last_name` varchar(32) DEFAULT NULL,
  `first_name` varchar(32) DEFAULT NULL,
  `middle_name` varchar(32) DEFAULT NULL,
  `phone_1` varchar(32) DEFAULT NULL,
  `phone_2` varchar(32) DEFAULT NULL,
  `fax` varchar(32) DEFAULT NULL,
  `address_1` varchar(64) NOT NULL DEFAULT '',
  `address_2` varchar(64) DEFAULT NULL,
  `city` varchar(32) NOT NULL DEFAULT '',
  `state` varchar(32) NOT NULL DEFAULT '',
  `country` varchar(32) NOT NULL DEFAULT 'US',
  `zip` varchar(32) NOT NULL DEFAULT '',
  `user_email` varchar(255) DEFAULT NULL,
  `extra_field_1` varchar(255) DEFAULT NULL,
  `extra_field_2` varchar(255) DEFAULT NULL,
  `extra_field_3` varchar(255) DEFAULT NULL,
  `extra_field_4` char(1) DEFAULT NULL,
  `extra_field_5` char(1) DEFAULT NULL,
  `cdate` int(11) DEFAULT NULL,
  `mdate` int(11) DEFAULT NULL,
  `perms` varchar(40) NOT NULL DEFAULT 'shopper',
  `bank_account_nr` varchar(32) NOT NULL DEFAULT '',
  `bank_name` varchar(32) NOT NULL DEFAULT '',
  `bank_sort_code` varchar(16) NOT NULL DEFAULT '',
  `bank_iban` varchar(64) NOT NULL DEFAULT '',
  `bank_account_holder` varchar(48) NOT NULL DEFAULT '',
  `bank_account_type` enum('Checking','Business Checking','Savings') NOT NULL DEFAULT 'Checking'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Customer Information, BT = BillTo and ST = ShipTo';

--
-- Dumping data for table `jos_vm_user_info`
--

INSERT INTO `jos_vm_user_info` (`user_info_id`, `user_id`, `address_type`, `address_type_name`, `company`, `title`, `last_name`, `first_name`, `middle_name`, `phone_1`, `phone_2`, `fax`, `address_1`, `address_2`, `city`, `state`, `country`, `zip`, `user_email`, `extra_field_1`, `extra_field_2`, `extra_field_3`, `extra_field_4`, `extra_field_5`, `cdate`, `mdate`, `perms`, `bank_account_nr`, `bank_name`, `bank_sort_code`, `bank_iban`, `bank_account_holder`, `bank_account_type`) VALUES
('68bc5f9ff80ced596f3350da99d2b8ce', 62, 'BT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, '', '', 'US', '', 'sanya@vdconvergence.com', NULL, NULL, NULL, NULL, NULL, 1180175361, 0, 'shopper', '', '', '', '', '', 'Checking');

-- --------------------------------------------------------

--
-- Table structure for table `jos_vm_vendor`
--

CREATE TABLE IF NOT EXISTS `jos_vm_vendor` (
  `vendor_id` int(11) NOT NULL,
  `vendor_name` varchar(64) DEFAULT NULL,
  `contact_last_name` varchar(32) NOT NULL DEFAULT '',
  `contact_first_name` varchar(32) NOT NULL DEFAULT '',
  `contact_middle_name` varchar(32) DEFAULT NULL,
  `contact_title` varchar(32) DEFAULT NULL,
  `contact_phone_1` varchar(32) NOT NULL DEFAULT '',
  `contact_phone_2` varchar(32) DEFAULT NULL,
  `contact_fax` varchar(32) DEFAULT NULL,
  `contact_email` varchar(255) DEFAULT NULL,
  `vendor_phone` varchar(32) DEFAULT NULL,
  `vendor_address_1` varchar(64) NOT NULL DEFAULT '',
  `vendor_address_2` varchar(64) DEFAULT NULL,
  `vendor_city` varchar(32) NOT NULL DEFAULT '',
  `vendor_state` varchar(32) NOT NULL DEFAULT '',
  `vendor_country` varchar(32) NOT NULL DEFAULT 'US',
  `vendor_zip` varchar(32) NOT NULL DEFAULT '',
  `vendor_store_name` varchar(128) NOT NULL DEFAULT '',
  `vendor_store_desc` text,
  `vendor_category_id` int(11) DEFAULT NULL,
  `vendor_thumb_image` varchar(255) DEFAULT NULL,
  `vendor_full_image` varchar(255) DEFAULT NULL,
  `vendor_currency` varchar(16) DEFAULT NULL,
  `cdate` int(11) DEFAULT NULL,
  `mdate` int(11) DEFAULT NULL,
  `vendor_image_path` varchar(255) DEFAULT NULL,
  `vendor_terms_of_service` text NOT NULL,
  `vendor_url` varchar(255) NOT NULL DEFAULT '',
  `vendor_min_pov` decimal(10,2) DEFAULT NULL,
  `vendor_freeshipping` decimal(10,2) NOT NULL DEFAULT '0.00',
  `vendor_currency_display_style` varchar(64) NOT NULL DEFAULT ''
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='Vendors manage their products in your store';

--
-- Dumping data for table `jos_vm_vendor`
--

INSERT INTO `jos_vm_vendor` (`vendor_id`, `vendor_name`, `contact_last_name`, `contact_first_name`, `contact_middle_name`, `contact_title`, `contact_phone_1`, `contact_phone_2`, `contact_fax`, `contact_email`, `vendor_phone`, `vendor_address_1`, `vendor_address_2`, `vendor_city`, `vendor_state`, `vendor_country`, `vendor_zip`, `vendor_store_name`, `vendor_store_desc`, `vendor_category_id`, `vendor_thumb_image`, `vendor_full_image`, `vendor_currency`, `cdate`, `mdate`, `vendor_image_path`, `vendor_terms_of_service`, `vendor_url`, `vendor_min_pov`, `vendor_freeshipping`, `vendor_currency_display_style`) VALUES
(1, 'Washupito''s Tiendita', 'Owner', 'Demo', 'Store', 'Mr.', '555-555-1212', '555-555-1212', '555-555-1212', 'demo_order@virtuemart.net', '555-555-1212', '100 Washupito Avenue, N.W.', '', 'Lake Forest', 'CA', 'USA', '92630', 'Washupito''s Tiendita', '<p>We have the best tools for do-it-yourselfers.  Check us out! </p>\r\n		<p>We were established in 1969 in a time when getting good tools was expensive, but the quality was good.  Now that only a select few of those authentic tools survive, we have dedicated this store to bringing the experience alive for collectors and master mechanics everywhere.</p>\r\n		<p>You can easily find products selecting the category you would like to browse above.</p>', 0, '', 'c19970d6f2970cb0d1b13bea3af3144a.gif', 'USD', 950302468, 968309845, 'shop_image/', '<h5>You haven''t configured any terms of service yet. Click <a href=administrator/index2.php?page=store.store_form&option=com_phpshop>here</a> to change this text.</h5>', 'http://virtuemart.net', '0.00', '0.00', '1|$|2|.| |2|1');

-- --------------------------------------------------------

--
-- Table structure for table `jos_vm_vendor_category`
--

CREATE TABLE IF NOT EXISTS `jos_vm_vendor_category` (
  `vendor_category_id` int(11) NOT NULL,
  `vendor_category_name` varchar(64) DEFAULT NULL,
  `vendor_category_desc` text
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='The categories that vendors are assigned to';

--
-- Dumping data for table `jos_vm_vendor_category`
--

INSERT INTO `jos_vm_vendor_category` (`vendor_category_id`, `vendor_category_name`, `vendor_category_desc`) VALUES
(6, '-default-', 'Default');

-- --------------------------------------------------------

--
-- Table structure for table `jos_vm_visit`
--

CREATE TABLE IF NOT EXISTS `jos_vm_visit` (
  `visit_id` varchar(255) NOT NULL DEFAULT '',
  `affiliate_id` int(11) NOT NULL DEFAULT '0',
  `pages` int(11) NOT NULL DEFAULT '0',
  `entry_page` varchar(255) NOT NULL DEFAULT '',
  `exit_page` varchar(255) NOT NULL DEFAULT '',
  `sdate` int(11) NOT NULL DEFAULT '0',
  `edate` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Records the visit of an affiliate';

-- --------------------------------------------------------

--
-- Table structure for table `jos_vm_waiting_list`
--

CREATE TABLE IF NOT EXISTS `jos_vm_waiting_list` (
  `waiting_list_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `notify_email` varchar(150) NOT NULL DEFAULT '',
  `notified` enum('0','1') DEFAULT '0',
  `notify_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Stores notifications, users waiting f. products out of stock';

-- --------------------------------------------------------

--
-- Table structure for table `jos_vm_zone_shipping`
--

CREATE TABLE IF NOT EXISTS `jos_vm_zone_shipping` (
  `zone_id` int(11) NOT NULL,
  `zone_name` varchar(255) DEFAULT NULL,
  `zone_cost` decimal(10,2) DEFAULT NULL,
  `zone_limit` decimal(10,2) DEFAULT NULL,
  `zone_description` text NOT NULL,
  `zone_tax_rate` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='The Zones managed by the Zone Shipping Module';

--
-- Dumping data for table `jos_vm_zone_shipping`
--

INSERT INTO `jos_vm_zone_shipping` (`zone_id`, `zone_name`, `zone_cost`, `zone_limit`, `zone_description`, `zone_tax_rate`) VALUES
(1, 'Default', '6.00', '35.00', 'This is the default Shipping Zone. This is the zone information that all countries will use until you assign each individual country to a Zone.', 2),
(2, 'Zone 1', '1000.00', '10000.00', 'This is a zone example', 2),
(3, 'Zone 2', '2.00', '22.00', 'This is the second zone. You can use this for notes about this zone', 2),
(4, 'Zone 3', '11.00', '64.00', 'Another usefull thing might be details about this zone or special instructions.', 2);

-- --------------------------------------------------------

--
-- Table structure for table `jos_weblinks`
--

CREATE TABLE IF NOT EXISTS `jos_weblinks` (
  `id` int(11) unsigned NOT NULL,
  `catid` int(11) NOT NULL DEFAULT '0',
  `sid` int(11) NOT NULL DEFAULT '0',
  `title` varchar(250) NOT NULL DEFAULT '',
  `url` varchar(250) NOT NULL DEFAULT '',
  `description` varchar(250) NOT NULL DEFAULT '',
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(11) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `archived` tinyint(1) NOT NULL DEFAULT '0',
  `approved` tinyint(1) NOT NULL DEFAULT '1',
  `params` text NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jos_weblinks`
--

INSERT INTO `jos_weblinks` (`id`, `catid`, `sid`, `title`, `url`, `description`, `date`, `hits`, `published`, `checked_out`, `checked_out_time`, `ordering`, `archived`, `approved`, `params`) VALUES
(1, 2, 0, 'Joomla!', 'http://www.joomla.org', 'Home of Joomla!', '2005-02-14 15:19:02', 6, 1, 0, '0000-00-00 00:00:00', 1, 0, 1, 'target=0'),
(2, 2, 0, 'php.net', 'http://www.php.net', 'The language that Joomla! is developed in', '2004-07-07 11:33:24', 4, 1, 0, '0000-00-00 00:00:00', 3, 0, 1, ''),
(3, 2, 0, 'MySQL', 'http://www.mysql.com', 'The database that Joomla! uses', '2004-07-07 10:18:31', 3, 1, 0, '0000-00-00 00:00:00', 5, 0, 1, ''),
(4, 2, 0, 'OpenSourceMatters', 'http://www.opensourcematters.org', 'Home of OSM', '2005-02-14 15:19:02', 6, 1, 0, '0000-00-00 00:00:00', 1, 0, 1, 'target=0'),
(5, 2, 0, 'Joomla! - Forums', 'http://forum.joomla.org', 'Joomla! Forums', '2005-02-14 15:19:02', 5, 1, 0, '0000-00-00 00:00:00', 1, 0, 1, 'target=0');

-- --------------------------------------------------------

--
-- Table structure for table `mos_banner`
--

CREATE TABLE IF NOT EXISTS `mos_banner` (
  `bid` int(11) NOT NULL,
  `cid` int(11) NOT NULL DEFAULT '0',
  `type` varchar(10) NOT NULL DEFAULT 'banner',
  `name` varchar(50) NOT NULL DEFAULT '',
  `imptotal` int(11) NOT NULL DEFAULT '0',
  `impmade` int(11) NOT NULL DEFAULT '0',
  `clicks` int(11) NOT NULL DEFAULT '0',
  `imageurl` varchar(100) NOT NULL DEFAULT '',
  `clickurl` varchar(200) NOT NULL DEFAULT '',
  `date` datetime DEFAULT NULL,
  `showBanner` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `editor` varchar(50) DEFAULT NULL,
  `custombannercode` text
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=tis620;

--
-- Dumping data for table `mos_banner`
--

INSERT INTO `mos_banner` (`bid`, `cid`, `type`, `name`, `imptotal`, `impmade`, `clicks`, `imageurl`, `clickurl`, `date`, `showBanner`, `checked_out`, `checked_out_time`, `editor`, `custombannercode`) VALUES
(1, 1, 'banner', 'Ka-Ching', 0, 42, 0, 'ka-chingBanner.gif', 'http://www.miro.com.au', '2004-07-07 15:31:29', 1, 0, '2000-00-00 00:00:00', NULL, NULL),
(2, 1, 'banner', 'Oi!', 0, 48, 0, 'OiBanner.gif', 'http://www.miro.com.au', '2004-07-07 15:31:29', 1, 0, '2000-00-00 00:00:00', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `mos_bannerclient`
--

CREATE TABLE IF NOT EXISTS `mos_bannerclient` (
  `cid` int(11) NOT NULL,
  `name` varchar(60) NOT NULL DEFAULT '',
  `contact` varchar(60) NOT NULL DEFAULT '',
  `email` varchar(60) NOT NULL DEFAULT '',
  `extrainfo` text NOT NULL,
  `checked_out` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out_time` time DEFAULT NULL,
  `editor` varchar(50) DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=tis620;

--
-- Dumping data for table `mos_bannerclient`
--

INSERT INTO `mos_bannerclient` (`cid`, `name`, `contact`, `email`, `extrainfo`, `checked_out`, `checked_out_time`, `editor`) VALUES
(1, 'Miro International Pty.', 'Administrator', 'admin@miro.com.au', '', 0, '00:00:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `mos_bannerfinish`
--

CREATE TABLE IF NOT EXISTS `mos_bannerfinish` (
  `bid` int(11) NOT NULL,
  `cid` int(11) NOT NULL DEFAULT '0',
  `type` varchar(10) NOT NULL DEFAULT '',
  `name` varchar(50) NOT NULL DEFAULT '',
  `impressions` int(11) NOT NULL DEFAULT '0',
  `clicks` int(11) NOT NULL DEFAULT '0',
  `imageurl` varchar(50) NOT NULL DEFAULT '',
  `datestart` datetime DEFAULT NULL,
  `dateend` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=tis620;

-- --------------------------------------------------------

--
-- Table structure for table `mos_categories`
--

CREATE TABLE IF NOT EXISTS `mos_categories` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `title` varchar(50) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `image` varchar(100) NOT NULL DEFAULT '',
  `section` varchar(50) NOT NULL DEFAULT '',
  `image_position` varchar(10) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `editor` varchar(50) DEFAULT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `access` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `count` int(11) NOT NULL DEFAULT '0',
  `params` text NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=tis620;

--
-- Dumping data for table `mos_categories`
--

INSERT INTO `mos_categories` (`id`, `parent_id`, `title`, `name`, `image`, `section`, `image_position`, `description`, `published`, `checked_out`, `checked_out_time`, `editor`, `ordering`, `access`, `count`, `params`) VALUES
(1, 0, 'Latest', 'Latest News', 'taking_notes.jpg', '1', 'left', 'The latest news from the Mambo Team', 1, 0, '0000-00-00 00:00:00', '', 0, 0, 1, ''),
(2, 0, 'Mambo', 'Mambo', 'clock.jpg', 'com_weblinks', 'left', 'A selection of links that are all related to the Mambo project.', 1, 0, '0000-00-00 00:00:00', NULL, 0, 0, 0, ''),
(3, 0, 'Newsflash', 'Newsflash', '', '2', 'left', '', 1, 0, '0000-00-00 00:00:00', '', 0, 0, 0, ''),
(4, 0, 'Mambo', 'Mambo', '', 'com_newsfeeds', 'left', '', 1, 0, '0000-00-00 00:00:00', NULL, 2, 0, 0, ''),
(5, 0, 'Business: general', 'Business: general', '', 'com_newsfeeds', 'left', '', 1, 0, '0000-00-00 00:00:00', NULL, 1, 0, 0, ''),
(7, 0, 'Examples', 'Example FAQs', 'key.jpg', '3', 'left', 'Here you will find an example set of FAQs.', 1, 0, '0000-00-00 00:00:00', NULL, 0, 0, 2, ''),
(9, 0, 'Finance', 'Finance', '', 'com_newsfeeds', 'left', '', 1, 0, '0000-00-00 00:00:00', NULL, 5, 0, 0, ''),
(10, 0, 'Linux', 'Linux', '', 'com_newsfeeds', 'left', '<br />\r\n', 1, 0, '0000-00-00 00:00:00', NULL, 6, 0, 0, ''),
(11, 0, 'Internet', 'Internet', '', 'com_newsfeeds', 'left', '', 1, 0, '0000-00-00 00:00:00', NULL, 7, 0, 0, ''),
(12, 0, 'Contacts', 'Contacts', '', 'com_contact_details', 'left', 'Contact Details for this website', 1, 0, '0000-00-00 00:00:00', NULL, 0, 0, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `mos_components`
--

CREATE TABLE IF NOT EXISTS `mos_components` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL DEFAULT '',
  `link` varchar(255) NOT NULL DEFAULT '',
  `menuid` int(11) unsigned NOT NULL DEFAULT '0',
  `parent` int(11) unsigned NOT NULL DEFAULT '0',
  `admin_menu_link` varchar(255) NOT NULL DEFAULT '',
  `admin_menu_alt` varchar(255) NOT NULL DEFAULT '',
  `option` varchar(50) NOT NULL DEFAULT '',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `admin_menu_img` varchar(255) NOT NULL DEFAULT '',
  `iscore` tinyint(4) NOT NULL DEFAULT '0',
  `params` text NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=tis620;

--
-- Dumping data for table `mos_components`
--

INSERT INTO `mos_components` (`id`, `name`, `link`, `menuid`, `parent`, `admin_menu_link`, `admin_menu_alt`, `option`, `ordering`, `admin_menu_img`, `iscore`, `params`) VALUES
(1, 'Banners', '', 0, 0, '', 'Banner Management', 'com_banners', 0, 'js/ThemeOffice/component.png', 0, ''),
(2, 'Manage Banners', '', 0, 1, 'option=com_banners', 'Active Banners', 'com_banners', 1, 'js/ThemeOffice/edit.png', 0, ''),
(3, 'Manage Clients', '', 0, 1, 'option=com_banners&task=listclients', 'Manage Clients', 'com_banners', 2, 'js/ThemeOffice/categories.png', 0, ''),
(4, 'Web Links', 'option=com_weblinks', 0, 0, '', 'Manage Weblinks', 'com_weblinks', 0, 'js/ThemeOffice/globe2.png', 0, ''),
(5, 'Weblink Items', '', 0, 4, 'option=com_weblinks', 'View existing weblinks', 'com_weblinks', 1, 'js/ThemeOffice/edit.png', 0, ''),
(6, 'Weblink Categories', '', 0, 4, 'option=categories&section=com_weblinks', 'Manage weblink categories', '', 2, 'js/ThemeOffice/categories.png', 0, ''),
(7, 'Contacts', 'option=com_contact', 0, 0, '', 'Edit contact details', 'com_contact', 0, 'js/ThemeOffice/user.png', 1, ''),
(8, 'Manage Contacts', '', 0, 7, 'option=com_contact', 'Edit contact details', 'com_contact', 0, 'js/ThemeOffice/edit.png', 1, ''),
(9, 'Contact Categories', '', 0, 7, 'option=categories&section=com_contact_details', 'Manage contact categories', '', 2, 'js/ThemeOffice/categories.png', 1, ''),
(10, 'FrontPage', 'option=com_frontpage', 0, 0, '', 'Manage Front Page Items', 'com_frontpage', 0, 'js/ThemeOffice/component.png', 1, ''),
(11, 'Polls', 'option=com_poll', 0, 0, 'option=com_poll', 'Manage Polls', 'com_poll', 0, 'js/ThemeOffice/component.png', 0, ''),
(12, 'News Feeds', 'option=com_newsfeeds', 0, 0, '', 'News Feeds Management', 'com_newsfeeds', 0, 'js/ThemeOffice/component.png', 0, ''),
(13, 'Manage News Feeds', '', 0, 12, 'option=com_newsfeeds', 'Manage News Feeds', 'com_newsfeeds', 1, 'js/ThemeOffice/edit.png', 0, ''),
(14, 'Manage Categories', '', 0, 12, 'option=com_categories&section=com_newsfeeds', 'Manage Categories', '', 2, 'js/ThemeOffice/categories.png', 0, ''),
(15, 'Login', 'option=com_login', 0, 0, '', '', 'com_login', 0, '', 1, ''),
(16, 'Search', 'option=com_search', 0, 0, '', '', 'com_search', 0, '', 1, ''),
(17, 'Syndicate', '', 0, 0, 'option=com_syndicate&hidemainmenu=1', 'Manage Syndication Settings', 'com_syndicate', 0, 'js/ThemeOffice/component.png', 0, ''),
(18, 'Mass Mail', '', 0, 0, 'option=com_massmail&hidemainmenu=1', 'Send Mass Mail', 'com_massmail', 0, 'js/ThemeOffice/mass_email.png', 0, ''),
(19, 'mambo-phpShop', 'option=com_phpshop', 0, 0, 'option=com_phpshop', 'mambo-phpShop', 'com_phpshop', 0, 'js/ThemeOffice/component.png', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `mos_contact_details`
--

CREATE TABLE IF NOT EXISTS `mos_contact_details` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL DEFAULT '',
  `con_position` varchar(50) DEFAULT NULL,
  `address` text,
  `suburb` varchar(50) DEFAULT NULL,
  `state` varchar(20) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  `postcode` varchar(10) DEFAULT NULL,
  `telephone` varchar(25) DEFAULT NULL,
  `fax` varchar(25) DEFAULT NULL,
  `misc` mediumtext,
  `image` varchar(100) DEFAULT NULL,
  `imagepos` varchar(20) DEFAULT NULL,
  `email_to` varchar(100) DEFAULT NULL,
  `default_con` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `catid` int(11) NOT NULL DEFAULT '0',
  `access` tinyint(3) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=tis620;

--
-- Dumping data for table `mos_contact_details`
--

INSERT INTO `mos_contact_details` (`id`, `name`, `con_position`, `address`, `suburb`, `state`, `country`, `postcode`, `telephone`, `fax`, `misc`, `image`, `imagepos`, `email_to`, `default_con`, `published`, `checked_out`, `checked_out_time`, `ordering`, `params`, `user_id`, `catid`, `access`) VALUES
(1, 'Name', 'Position', 'Street', 'Suburb', 'State', 'Country', 'Zip Code', 'Telephone', 'Fax', 'Miscellanous info', 'asterisk.png', 'top', 'email@email.com', 1, 1, 0, '0000-00-00 00:00:00', 1, '', 0, 12, 0);

-- --------------------------------------------------------

--
-- Table structure for table `mos_content`
--

CREATE TABLE IF NOT EXISTS `mos_content` (
  `id` int(11) unsigned NOT NULL,
  `title` varchar(100) NOT NULL DEFAULT '',
  `title_alias` varchar(100) NOT NULL DEFAULT '',
  `introtext` mediumtext NOT NULL,
  `fulltext` mediumtext NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `sectionid` int(11) unsigned NOT NULL DEFAULT '0',
  `mask` int(11) unsigned NOT NULL DEFAULT '0',
  `catid` int(11) unsigned NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(100) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text NOT NULL,
  `urls` text NOT NULL,
  `attribs` text NOT NULL,
  `version` int(11) unsigned NOT NULL DEFAULT '1',
  `parentid` int(11) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `access` int(11) unsigned NOT NULL DEFAULT '0',
  `hits` int(11) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=tis620;

--
-- Dumping data for table `mos_content`
--

INSERT INTO `mos_content` (`id`, `title`, `title_alias`, `introtext`, `fulltext`, `state`, `sectionid`, `mask`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `parentid`, `ordering`, `metakey`, `metadesc`, `access`, `hits`) VALUES
(1, 'Welcome to Mambo', 'Welcome', 'If you''ve read anything at all about Content Management Systems (CMS), you''ll probably know at least three things: CMS are the most exciting way to do business, CMS can be really, I mean <i>really</i>, complicated and lastly Portals are absolutely, outrageously, often <i>unaffordably</i> expensive. <br /><br />{mosimage}Mambo is set to change all that ... Mambo is different from the normal models for portal software. For a start, it''s not complicated. Mambo has been developed for the masses. It''s licensed under the GNU/GPL license, easy to install and administer and reliable. Mambo doesn''t even require the user or administrator of the system to know HTML to operate it once it''s up and running.', '<h4><font color="#ff6600">Mambo features:</font></h4>\r\n<ul>\r\n<li>Completely database driven site engins </li>\r\n<li>News, products or services sections fully editable and manageable</li> \r\n<li>Topics sections can be added to by contributing authors </li>\r\n<li>Fully customisable layouts including left, center and right menu boxes </li>\r\n<li>Browser upload of images to your own library for use anywhere in the site </li>\r\n<li>Dynamic Forum/Poll/Voting booth for on-the-spot results </li>\r\n<li>Runs on Linux, FreeBSD, MacOSX server, Solaris and AIX \r\n</li></ul>\r\n<h4>Extensive Administration:</h4>\r\n<ul>\r\n<li>Change order of objects including news, FAQs, articles etc. </li>\r\n<li>Random Newsflash generator </li>\r\n<li>Remote author submission module for News, Articles, FAQs and Links </li>\r\n<li>Object hierarchy - as many sections, departments, divisions and pages as you want </li>\r\n<li>Image library - store all your PNGs, PDFs, DOCs, XLSs, GIFs and JPEGs online for easy use </li>\r\n<li>Automatic Path-Finder. Place a picture and let Mambo fix the link </li>\r\n<li>News feed manager. Choose from over 360 news feeds from around the world </li>\r\n<li>Archive manager. Put your old articles into cold storage rather than throw them out </li>\r\n<li>Email-a-friend and Print-format for every story and article </li>\r\n<li>In-line Text editor similar to Word Pad </li>\r\n<li>User editable look and feel </li>\r\n<li>Polls/Surveys - Now put a different one on each page </li>\r\n<li>Custom Page Modules. Download custom page modules to spice up your site </li>\r\n<li>Template Manager. Download templates and implement them in seconds </li>\r\n<li>Layout preview. See how it looks before going live </li>\r\n<li>Banner manager. Make money out of your site</li></ul>', 1, 1, 0, 1, '2004-06-12 11:54:06', 62, 'Web Master', '2004-06-12 12:33:27', 62, 0, '0000-00-00 00:00:00', '2004-01-01 00:00:00', '0000-00-00 00:00:00', 'asterisk.png|left|Mambo Logo|1|Mambo Flower Logo|bottom|center|120', '', '', 1, 0, 1, '', '', 0, 0),
(2, 'Newsflash 1', '', 'Mambo 4.5 is ''Power In Simplicity''!. It has never been easier to create\r\nyour own dynamic site. Manage all your content from the best CMS admin\r\ninterface.', '', 1, 2, 1, 3, '2004-08-09 08:30:34', 62, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2004-08-09 00:00:00', '0000-00-00 00:00:00', '', '', '', 1, 0, 1, '', '', 0, 0),
(3, 'Newsflash 2', '', 'Yesterday all servers in the U.S. went out on strike in a bid to get more RAM and better CPUs. A spokes person said that the need for better RAM was due to some fool increasing the front-side bus speed. In future, busses will be told to slow down in residential motherboards.', '', 1, 2, 1, 3, '2004-08-09 08:30:34', 62, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2004-08-09 00:00:00', '0000-00-00 00:00:00', '', '', '', 1, 0, 2, '', '', 0, 0),
(4, 'Newsflash 3', '', 'Aoccdrnig to a rscheearch at an Elingsh uinervtisy, it deosn''t mttaer in waht oredr the ltteers in a wrod are, the olny iprmoetnt tihng is taht frist and lsat ltteer is at the rghit pclae. The rset can be a toatl mses and you can sitll raed it wouthit porbelm. Tihs is bcuseae we do not raed ervey lteter by itslef but the wrod as a wlohe.', '', 1, 2, 1, 3, '2004-08-09 08:30:34', 62, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2004-08-09 00:00:00', '0000-00-00 00:00:00', '', '', '', 1, 0, 3, '', '', 0, 1),
(5, 'Mambo License Guidelines', '', 'Learn more about how Mambo is licensed and how this affects you.<br />  <br />  Mambo is released under the GNU General Public license (GNU GPL).The\r\nGNU GPL provides for a person or persons to distribute Mambo for a fee,\r\nbut not actually charging for the software itself, because Mambo is\r\nfree. Mambo is free to share and change, but if you do change it in\r\nanyway, can you also change the license and make it commercial? No! The\r\nwhole GPL is devoted to ensuring this does not happen. Copyright, a\r\nmuch more refined and stringent law will prevent this as well.<br />  <br />  So with regard to Mambo, the GPL and copyright:  <p>You <strong>MAY</strong> distribute it and charge for that service. You <strong>MAY</strong> change it, add design and content to it and you <strong>MAY</strong> charge for that. You may <strong>NOT</strong> alter the license and you must <strong>NOT</strong> alter the copyright. You do <strong>NOT</strong>     have to show a ''Powered by Mambo'' graphic, as it not a copyright notice.</p>  <p>In other words, you must NOT pretend that Mambo is yours, and you must NOT charge     people for Mambo.</p>\r\nUse Mambo to empower yourself and your clients by taking away the\r\n''Black Magic'' that surrounds putting content on the internet. Charge\r\nfor the value you add and not for the hard work that Miro, the Mambo\r\nDevelopment Team and the Mambo community have put into it.<br />  <br />  <strong>Guidelines:</strong>  <p>Mambo is "free" software released under the GNU General Public License (GPL). </p>  <p>The\r\nword "free'''' has two legitimate general meanings; it can refer either\r\nto freedom or to price. When we speak of "free software'''', we''re\r\ntalking about freedom, not price. (Think of "free speech'''', not "free\r\nbeer''''.) </p>  <p><em>Free software is a matter of the users'' freedom\r\nto run, copy, distribute, study, change and improve the software. More\r\nprecisely, it refers to four kinds of freedom, for the users of the\r\nsoftware:</em></p>  <ul>  <li>The freedom to run the program, for any purpose.</li><li> The freedom to study how the program works, and adapt it to your needs        <ul><li><em>Access to the source code is a precondition for this. </em></li></ul>    </li><li>The freedom to redistribute copies so you can help your neighbour.</li><li>The  freedom to improve the program, and release your improvements to the  public, so that the whole community benefits. <ul><li><em>Access to the source code is a precondition for this </em></li></ul>    </li>  </ul>{mospagebreak heading=Introduction&title=Guidelines}  <p><strong>1. What license is Mambo released under?</strong></p>  <p>Mambo  is released under the GNU GPL. A copy of this is included with your  copy     of Mambo and can also be found at <em>http://www.fsf.org/licenses/gpl.html</em>.     Unofficial translations can also be found at <em>http://www.fsf.org/licenses/translations.html</em>.</p>  <p><strong>2. Who owns the copyright to Mambo?</strong></p>  <p>The\r\ncopyright to Mambo is held by Miro International Pty Ltd. Miro were the\r\noriginal authors of Mambo and continue to actively support the project.</p>  <p><strong>3. Are there any restrictions to your use of Mambo?</strong></p>  <p>The GNU GPL grants you the freedom to use the software for whatever purpose you     see fit.</p>  <strong>4. May I charge money for Mambo?</strong>  <p>The\r\nGPL allows everyone the freedom to do this. The right to charge money\r\nto distribute Mambo is part of the definition of "free" software. </p>  <p>When\r\npeople think of "selling software'''', they usually imagine doing it the\r\nway most companies do it: making the software proprietary rather than\r\nfree. So to avoid ambiguity you may you may charge to distribute the\r\nsoftware and any other service you provide along the way. You may not\r\ncharge for the software itself.</p>  <p>Remember if  someone pays your fee the GPL also gives him or her the freedom to pass on the software with or without a fee.</p>  <p><strong>5. May I remove "powered by Mambo, Copyright Miro etc" from the footer?</strong></p>  <p>Yes you can although we would hope that you would retain it as a badge of honour.</p>  <p><strong>6. May I remove the "copyright" statements from the source code to Mambo?</strong></p>  <p>No, you must keep all copyright notices and credits in the source code.</p>  <p><strong>7. Does the GPL mean that my website content is also GPL?</strong></p>  <p>No.\r\nThe copyright and license of Mambo does not cover the content that you\r\ncreate. Using Mambo does not place any restrictions, legally, on the\r\nlicense or copyright you use for the content of your website.</p>  <p><strong>8. I have modified Mambo for my own web site. Do I have to release these     modifications?</strong></p>  <p>The\r\nGPL permits anyone to make a modified version for their own use without\r\nthe requirement to distribute it or pass on those changes to others.</p>  <p><strong>9. I have made a modification (hack) to the Mambo core code. Do I have     to release it under the GPL?</strong></p>  <p>If\r\nyou chose to distribute your modifications to others it must be\r\nreleased under the same terms that you received the original code. So\r\nyour modifications must be released under the GPL. You may of course in\r\nthis case modify the headers for the source code to include your own\r\ncopyright statement. If you do so you must clearly annotate in the\r\nsource code your amendments, changes or additions.</p>  <p><strong>10. I have written a Component, Module, Template for Mambo. Do I have     to release it under the GPL? </strong></p>  <p>No  The GPL allows you to write your own extensions for Mambo and to  release those extensions under whatever license you chose.</p>  <p><strong>11.\r\nI have written a Component, Module, Template for Mambo and released it\r\nunder the GPL and I charge a fee for it, but website X is giving it\r\naway for free.</strong></p>  <p>If someone pays your fee the GPL also\r\ngives him or her the freedom to pass on the software with or without a\r\nfee. Placing a restriction on someone''s use of GPL licensed software is\r\nin breach of the GPL itself.</p>  <p><strong>12. May I purchase a copy of Mambo, which has the copyright statements     removed?</strong></p>  <p>Although other GPL products may be available in this way Mambo is not.</p>  <p><strong>13. I believe person A is in breach of the GPL what should I do?</strong></p>  <p>You should report it. First check all the facts that you can and then report it     by sending an e-mail to <em>license-violation@mamboserver.com</em>.</p>  <p><strong>14. Who has the power to enforce the GNU GPL license of Mambo?</strong></p>  <p>Only\r\nthe copyright holder, Miro International Pty Ltd, has the power to do\r\nthis. If the Mambo Development Team finds, or is made aware of, a\r\nbreach of the GPL they will report it to Miro for them to take any\r\nnecessary action. </p>  <p><strong><em>Miro takes copyright infringement very seriously and will prosecute to     the full extent of the law.</em></strong></p>  <p><strong>15.\r\nWebsite X is using, or offering, my non-GPL Component, Module, Template\r\nwithout my permission, or in breach of its license, can you help me?</strong></p>  <p>Whilst\r\nthis is not within the remit or responsibility of Mambo we are willing\r\nto act as intermediaries in this on your behalf. In most cases these\r\nsituations arise out of simple misunderstandings and can be settled\r\namicably. You should e-mail full details to <em>license-violation@mamboserver.com</em>.</p>  <p><strong>DISCLAIMER</strong></p>  <p>This\r\ndocument refers to the software program Mambo, Version 4.x and all\r\nsubsequent versions, released under the GNU General Public License and\r\ncopyright Miro International Pty Ltd.</p>  <p>This document is subject to additions, modifications and other changes at any time without notice.</p>  <p>A\r\nlawyer has not prepared this document. You should consult a lawyer\r\nexperienced in copyright, licensing and intellectual property for\r\nclarification.</p>  <p>Document Rev. 1.4 - 17th August 2004<br />  <br />  </p>  <br />', '', 1, 0, 0, 0, '2004-08-19 20:11:07', 62, '', '2004-08-19 20:14:49', 62, 0, '0000-00-00 00:00:00', '2004-08-19 00:00:00', '0000-00-00 00:00:00', '', '', 'menu_image=\nitem_title=1\npageclass_sfx=\nback_button=\nrating=\nauthor=\ncreatedate=\nmodifydate=\npdf=\nprint=\nemail=', 1, 0, 11, '', '', 0, 10),
(6, 'Example News Item 1', 'News1', '{mosimage}Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat,\r\nsed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit\r\namet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam\r\nvoluptua. At vero eos et accusam et justo duo dolores et ea rebum.', '<p>{mosimage}Duis autem vel eum iriure dolor in hendrerit in vulputate\r\nvelit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at\r\nvero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum\r\nzzril delenit augue duis dolore te feugait nulla facilisi. Lorem ipsum dolor\r\nsit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt\r\nut laoreet dolore magna aliquam erat volutpat.</p>\r\n\r\n<p>Ut wisi enim ad minim veniam, quis nostrud exerci tation\r\nullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis\r\nautem vel eum iriure dolor in hendrerit in vulputate velit esse molestie\r\nconsequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan\r\net iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis\r\ndolore te feugait nulla facilisi.</p>\r\n\r\n<p>Nam liber tempor cum soluta nobis eleifend option congue\r\nnihil imperdiet doming id quod mazim placerat facer possim assum. Lorem ipsum\r\ndolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod\r\ntincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim\r\nveniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut\r\naliquip ex ea commodo consequat.</p>\r\n\r\n<p>Duis autem vel eum iriure dolor in hendrerit in vulputate\r\nvelit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis. At\r\nvero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd\r\ngubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum\r\ndolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor\r\ninvidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero\r\neos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no\r\nsea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit\r\namet, consetetur sadipscing elitr, At accusam aliquyam diam diam dolore dolores\r\nduo eirmod eos erat, et nonumy sed tempor et et invidunt justo labore Stet\r\nclita ea et gubergren, kasd magna no rebum. sanctus sea sed takimata ut vero\r\nvoluptua. est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet,\r\nconsetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore\r\net dolore magna aliquyam erat.</p>\r\n\r\n<p>Consetetur sadipscing elitr, sed diam nonumy eirmod tempor\r\ninvidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero\r\neos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no\r\nsea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit\r\namet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut\r\nlabore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam\r\net justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata\r\nsanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur\r\nsadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore\r\nmagna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo\r\ndolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est\r\nLorem ipsum dolor sit amet.</p>', 1, 1, 0, 1, '2004-07-07 11:54:06', 62, '', '2004-07-07 18:05:05', 62, 0, '0000-00-00 00:00:00', '2004-07-07 00:00:00', '0000-00-00 00:00:00', 'food/coffee.jpg|left||0\r\nfood/bread.jpg|right||0', '', '', 1, 0, 2, '', '', 0, 4),
(7, 'Example News Item 2', 'News2', '<p>{mosimage}Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat,\r\nsed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit\r\namet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam\r\nvoluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem\r\nipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At\r\nvero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.</p>', '', 1, 1, 0, 1, '2004-07-07 11:54:06', 62, '', '2004-07-07 18:11:30', 62, 0, '0000-00-00 00:00:00', '2004-07-07 00:00:00', '0000-00-00 00:00:00', 'food/bun.jpg|right||0', '', '', 1, 0, 3, '', '', 0, 2),
(8, 'Example News Item 3', 'News3', '<p>{mosimage}Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat,\r\nsed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit\r\namet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam\r\nvoluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem\r\nipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At\r\nvero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.</p>', '', 1, 1, 0, 1, '2004-04-12 11:54:06', 62, '', '2004-07-07 18:08:23', 62, 0, '0000-00-00 00:00:00', '2004-07-07 00:00:00', '0000-00-00 00:00:00', 'fruit/pears.jpg|right||0', '', '', 1, 0, 4, '', '', 0, 1),
(9, 'Example News Item 4', 'News4', '<p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat,\r\nsed diam voluptua. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam\r\nvoluptua. At\r\nvero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.</p>', '<p>{mosimage}Duis autem vel eum iriure dolor in hendrerit in vulputate\r\nvelit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at\r\nvero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum\r\nzzril delenit augue duis dolore te feugait nulla facilisi. Lorem ipsum dolor\r\nsit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt\r\nut laoreet dolore magna aliquam erat volutpat.</p>\r\n\r\n{mospagebreak}<p>{mosimage}Ut wisi enim ad minim veniam, quis nostrud exerci tation\r\nullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis\r\nautem vel eum iriure dolor in hendrerit in vulputate velit esse molestie\r\nconsequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan\r\net iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis\r\ndolore te feugait nulla facilisi.</p>\r\n\r\n<p>{mosimage}Nam liber tempor cum soluta nobis eleifend option congue\r\nnihil imperdiet doming id quod mazim placerat facer possim assum. Lorem ipsum\r\ndolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod\r\ntincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim\r\nveniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut\r\naliquip ex ea commodo consequat.</p>\r\n\r\n<p>Duis autem vel eum iriure dolor in hendrerit in vulputate\r\nvelit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis. At\r\nvero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd\r\ngubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum\r\ndolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor\r\ninvidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero\r\neos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no\r\nsea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit\r\namet, consetetur sadipscing elitr, At accusam aliquyam diam diam dolore dolores\r\nduo eirmod eos erat, et nonumy sed tempor et et invidunt justo labore Stet\r\nclita ea et gubergren, kasd magna no rebum. sanctus sea sed takimata ut vero\r\nvoluptua. est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet,\r\nconsetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore\r\net dolore magna aliquyam erat.</p>\r\n\r\n{mospagebreak}<p>Consetetur sadipscing elitr, sed diam nonumy eirmod tempor\r\ninvidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero\r\neos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no\r\nsea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit\r\namet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut\r\nlabore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam\r\net justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata\r\nsanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur\r\nsadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore\r\nmagna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo\r\ndolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est\r\nLorem ipsum dolor sit amet.</p>', 1, 1, 0, 1, '2004-07-07 11:54:06', 62, '', '2004-07-07 18:10:23', 62, 0, '0000-00-00 00:00:00', '2004-07-07 00:00:00', '0000-00-00 00:00:00', 'fruit/strawberry.jpg|left||0\r\nfruit/pears.jpg|right||0\r\nfruit/cherry.jpg|left||0', '', '', 1, 0, 5, '', '', 0, 6),
(10, 'Example FAQ Item 1', 'FAQ1', '<p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat,\r\nsed diam voluptua. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam\r\nvoluptua. At\r\nvero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.</p>', '', 1, 3, 0, 7, '2004-05-12 11:54:06', 62, '', '2004-07-07 18:10:23', 62, 0, '0000-00-00 00:00:00', '2004-01-01 00:00:00', '0000-00-00 00:00:00', '', '', '', 1, 0, 5, '', '', 0, 8),
(11, 'Example FAQ Item 2', 'FAQ2', '<p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat,\r\nsed diam voluptua. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam\r\nvoluptua. At\r\nvero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.</p>', '<p>{mosimage}Duis autem vel eum iriure dolor in hendrerit in vulputate\r\nvelit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at\r\nvero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum\r\nzzril delenit augue duis dolore te feugait nulla facilisi. Lorem ipsum dolor\r\nsit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt\r\nut laoreet dolore magna aliquam erat volutpat.</p>\r\n\r\n<p>{mosimage}Ut wisi enim ad minim veniam, quis nostrud exerci tation\r\nullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis\r\nautem vel eum iriure dolor in hendrerit in vulputate velit esse molestie\r\nconsequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan\r\net iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis\r\ndolore te feugait nulla facilisi.</p>\r\n\r\n<p>{mosimage}Nam liber tempor cum soluta nobis eleifend option congue\r\nnihil imperdiet doming id quod mazim placerat facer possim assum. Lorem ipsum\r\ndolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod\r\ntincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim\r\nveniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut\r\naliquip ex ea commodo consequat.</p>\r\n\r\n<p>Duis autem vel eum iriure dolor in hendrerit in vulputate\r\nvelit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis. At\r\nvero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd\r\ngubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum\r\ndolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor\r\ninvidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero\r\neos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no\r\nsea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit\r\namet, consetetur sadipscing elitr, At accusam aliquyam diam diam dolore dolores\r\nduo eirmod eos erat, et nonumy sed tempor et et invidunt justo labore Stet\r\nclita ea et gubergren, kasd magna no rebum. sanctus sea sed takimata ut vero\r\nvoluptua. est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet,\r\nconsetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore\r\net dolore magna aliquyam erat.</p>\r\n\r\n<p>Consetetur sadipscing elitr, sed diam nonumy eirmod tempor\r\ninvidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero\r\neos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no\r\nsea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit\r\namet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut\r\nlabore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam\r\net justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata\r\nsanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur\r\nsadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore\r\nmagna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo\r\ndolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est\r\nLorem ipsum dolor sit amet.</p>', 1, 3, 0, 7, '2004-05-12 11:54:06', 62, 'Web master', '2004-07-07 18:10:23', 62, 0, '0000-00-00 00:00:00', '2004-01-01 00:00:00', '0000-00-00 00:00:00', 'fruit/cherry.jpg|left||0\r\nfruit/peas.jpg|right||0\r\nfood/milk.jpg|left||0', '', '', 1, 0, 5, '', '', 0, 10);

-- --------------------------------------------------------

--
-- Table structure for table `mos_content_frontpage`
--

CREATE TABLE IF NOT EXISTS `mos_content_frontpage` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=tis620;

--
-- Dumping data for table `mos_content_frontpage`
--

INSERT INTO `mos_content_frontpage` (`content_id`, `ordering`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5);

-- --------------------------------------------------------

--
-- Table structure for table `mos_core_acl_aro`
--

CREATE TABLE IF NOT EXISTS `mos_core_acl_aro` (
  `aro_id` int(11) NOT NULL,
  `section_value` varchar(240) NOT NULL DEFAULT '0',
  `value` varchar(240) NOT NULL DEFAULT '',
  `order_value` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `hidden` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=tis620;

-- --------------------------------------------------------

--
-- Table structure for table `mos_core_acl_aro_groups`
--

CREATE TABLE IF NOT EXISTS `mos_core_acl_aro_groups` (
  `group_id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=tis620;

--
-- Dumping data for table `mos_core_acl_aro_groups`
--

INSERT INTO `mos_core_acl_aro_groups` (`group_id`, `parent_id`, `name`, `lft`, `rgt`) VALUES
(17, 0, 'ROOT', 1, 22),
(28, 17, 'USERS', 2, 21),
(29, 28, 'Public Frontend', 3, 12),
(18, 29, 'Registered', 4, 11),
(19, 18, 'Author', 5, 10),
(20, 19, 'Editor', 6, 9),
(21, 20, 'Publisher', 7, 8),
(30, 28, 'Public Backend', 13, 20),
(23, 30, 'Manager', 14, 19),
(24, 23, 'Administrator', 15, 18),
(25, 24, 'Super Administrator', 16, 17);

-- --------------------------------------------------------

--
-- Table structure for table `mos_core_acl_aro_sections`
--

CREATE TABLE IF NOT EXISTS `mos_core_acl_aro_sections` (
  `section_id` int(11) NOT NULL,
  `value` varchar(230) NOT NULL DEFAULT '',
  `order_value` int(11) NOT NULL DEFAULT '0',
  `name` varchar(230) NOT NULL DEFAULT '',
  `hidden` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=tis620;

--
-- Dumping data for table `mos_core_acl_aro_sections`
--

INSERT INTO `mos_core_acl_aro_sections` (`section_id`, `value`, `order_value`, `name`, `hidden`) VALUES
(10, 'users', 1, 'Users', 0);

-- --------------------------------------------------------

--
-- Table structure for table `mos_core_acl_groups_aro_map`
--

CREATE TABLE IF NOT EXISTS `mos_core_acl_groups_aro_map` (
  `group_id` int(11) NOT NULL DEFAULT '0',
  `section_value` varchar(240) NOT NULL DEFAULT '',
  `aro_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=tis620;

-- --------------------------------------------------------

--
-- Table structure for table `mos_core_log_items`
--

CREATE TABLE IF NOT EXISTS `mos_core_log_items` (
  `time_stamp` date NOT NULL DEFAULT '0000-00-00',
  `item_table` varchar(50) NOT NULL DEFAULT '',
  `item_id` int(11) unsigned NOT NULL DEFAULT '0',
  `hits` int(11) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=tis620;

-- --------------------------------------------------------

--
-- Table structure for table `mos_core_log_searches`
--

CREATE TABLE IF NOT EXISTS `mos_core_log_searches` (
  `search_term` varchar(128) NOT NULL DEFAULT '',
  `hits` int(11) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=tis620;

-- --------------------------------------------------------

--
-- Table structure for table `mos_groups`
--

CREATE TABLE IF NOT EXISTS `mos_groups` (
  `id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `name` varchar(50) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=tis620;

--
-- Dumping data for table `mos_groups`
--

INSERT INTO `mos_groups` (`id`, `name`) VALUES
(0, 'Public'),
(1, 'Registered'),
(2, 'Special');

-- --------------------------------------------------------

--
-- Table structure for table `mos_mambots`
--

CREATE TABLE IF NOT EXISTS `mos_mambots` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL DEFAULT '',
  `element` varchar(100) NOT NULL DEFAULT '',
  `folder` varchar(100) NOT NULL DEFAULT '',
  `access` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `published` tinyint(3) NOT NULL DEFAULT '0',
  `iscore` tinyint(3) NOT NULL DEFAULT '0',
  `client_id` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `params` text NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=tis620;

--
-- Dumping data for table `mos_mambots`
--

INSERT INTO `mos_mambots` (`id`, `name`, `element`, `folder`, `access`, `ordering`, `published`, `iscore`, `client_id`, `checked_out`, `checked_out_time`, `params`) VALUES
(1, 'MOS Image', 'mosimage', 'content', 0, -10000, 1, 1, 0, 0, '0000-00-00 00:00:00', ''),
(2, 'MOS Pagination', 'mospaging', 'content', 0, 10000, 1, 1, 0, 0, '0000-00-00 00:00:00', ''),
(3, 'Legacy Mambot Includer', 'legacybots', 'content', 0, 1, 0, 1, 0, 0, '0000-00-00 00:00:00', ''),
(4, 'SEF', 'mossef', 'content', 0, 3, 1, 0, 0, 0, '0000-00-00 00:00:00', ''),
(5, 'MOS Rating', 'mosvote', 'content', 0, 4, 1, 1, 0, 0, '0000-00-00 00:00:00', ''),
(6, 'Search Content', 'content.searchbot', 'search', 0, 1, 1, 1, 0, 0, '0000-00-00 00:00:00', ''),
(7, 'Search Weblinks', 'weblinks.searchbot', 'search', 0, 2, 1, 1, 0, 0, '0000-00-00 00:00:00', ''),
(8, 'Code support', 'moscode', 'content', 0, 2, 0, 0, 0, 0, '0000-00-00 00:00:00', ''),
(9, 'No WYSIWYG Editor', 'none', 'editors', 0, 0, 0, 1, 0, 0, '0000-00-00 00:00:00', ''),
(10, 'TinyMCE WYSIWYG Editor', 'tinymce', 'editors', 0, 0, 0, 1, 0, 0, '0000-00-00 00:00:00', 'theme=advanced'),
(11, 'MOS Image Editor Button', 'mosimage.btn', 'editors-xtd', 0, 0, 1, 0, 0, 0, '0000-00-00 00:00:00', ''),
(12, 'MOS Pagebreak Editor Button', 'mospage.btn', 'editors-xtd', 0, 0, 1, 0, 0, 0, '0000-00-00 00:00:00', ''),
(13, 'Search Contacts', 'contacts.searchbot', 'search', 0, 3, 1, 1, 0, 0, '0000-00-00 00:00:00', ''),
(14, 'Search Categories', 'categories.searchbot', 'search', 0, 4, 1, 0, 0, 0, '0000-00-00 00:00:00', ''),
(15, 'Search Sections', 'sections.searchbot', 'search', 0, 5, 1, 0, 0, 0, '0000-00-00 00:00:00', ''),
(16, 'Email Cloaking', 'mosemailcloak', 'content', 0, 5, 1, 0, 0, 0, '0000-00-00 00:00:00', ''),
(17, 'GeSHi', 'geshi', 'content', 0, 5, 0, 0, 0, 0, '0000-00-00 00:00:00', ''),
(18, 'Search Newsfeeds', 'newsfeeds.searchbot', 'search', 0, 6, 1, 0, 0, 0, '0000-00-00 00:00:00', ''),
(19, 'Load Module Positions', 'mosloadposition', 'content', 0, 6, 1, 0, 0, 0, '0000-00-00 00:00:00', ''),
(20, 'mosproductsnap', 'mosproductsnap', 'content', 0, 0, 1, 0, 0, 0, '0000-00-00 00:00:00', ''),
(21, 'ProductSearchBot', 'phpshop.searchbot', 'search', 0, 0, 1, 0, 0, 0, '0000-00-00 00:00:00', ''),
(22, 'HTMLArea3 XTD', 'htmlarea3_xtd', 'editors', 0, 3, 1, 0, 0, 0, '0000-00-00 00:00:00', 'insertsmiley=1\ntableoperations=1\nenterparagraphs=1\ncontextmenu=1\ncss=1\ncsspreview=1\nlanguage=en');

-- --------------------------------------------------------

--
-- Table structure for table `mos_menu`
--

CREATE TABLE IF NOT EXISTS `mos_menu` (
  `id` int(11) NOT NULL,
  `menutype` varchar(25) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `link` text,
  `type` varchar(50) NOT NULL DEFAULT '',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `parent` int(11) unsigned NOT NULL DEFAULT '0',
  `componentid` int(11) unsigned NOT NULL DEFAULT '0',
  `sublevel` int(11) DEFAULT '0',
  `ordering` int(11) DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `pollid` int(11) NOT NULL DEFAULT '0',
  `browserNav` tinyint(4) DEFAULT '0',
  `access` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `utaccess` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=tis620;

--
-- Dumping data for table `mos_menu`
--

INSERT INTO `mos_menu` (`id`, `menutype`, `name`, `link`, `type`, `published`, `parent`, `componentid`, `sublevel`, `ordering`, `checked_out`, `checked_out_time`, `pollid`, `browserNav`, `access`, `utaccess`, `params`) VALUES
(1, 'mainmenu', 'Home', 'index.php?option=com_frontpage', 'components', 1, 0, 10, 0, 1, 0, '0000-00-00 00:00:00', 0, 0, 0, 3, 'leading=1\r\nintro=2\r\nlink=1\r\nimage=1\r\npage_title=0\r\nheader=Welcome to the Frontpage\r\norderby_sec=front\r\nprint=0\r\npdf=0\r\nemail=0'),
(2, 'mainmenu', 'News', 'index.php?option=com_content&task=section&id=1', 'content_section', 1, 0, 1, 0, 3, 0, '0000-00-00 00:00:00', 0, 0, 0, 3, ''),
(3, 'mainmenu', 'Contact Us', 'index.php?option=com_contact', 'components', 1, 0, 7, 0, 6, 0, '0000-00-00 00:00:00', 0, 0, 0, 3, ''),
(23, 'mainmenu', 'Links', 'index.php?option=com_weblinks', 'components', 1, 0, 4, 0, 5, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'menu_image=web_links.jpg\npageclass_sfx=\nback_button=\npage_title=1\nheader=\nheadings=1\nhits=\nitem_description=1\nother_cat=1\ndescription=1\ndescription_text=\nimage=-1\nimage_align=right\nweblink_icons='),
(5, 'mainmenu', 'Search', 'index.php?option=com_search', 'components', 1, 0, 16, 0, 7, 0, '0000-00-00 00:00:00', 0, 0, 0, 3, ''),
(6, 'mainmenu', 'Mambo License', 'index.php?option=com_content&task=view&id=5', 'content_typed', 1, 0, 11, 0, 2, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, ''),
(7, 'mainmenu', 'News Feeds', 'index.php?option=com_newsfeeds', 'components', 1, 0, 12, 0, 8, 0, '0000-00-00 00:00:00', 0, 0, 0, 3, 'menu_image=-1\npageclass_sfx=\nback_button=\npage_title=1\nheader='),
(8, 'mainmenu', 'Wrapper', 'index.php?option=com_wrapper', 'wrapper', 1, 0, 0, 0, 10, 0, '0000-00-00 00:00:00', 0, 0, 0, 3, 'menu_image=-1\npageclass_sfx=\nback_button=\npage_title=1\nheader=\nscrolling=auto\nwidth=100%\nheight=600\nheight_auto=1\nurl=www.mamboserver.com'),
(9, 'mainmenu', 'Blog', 'index.php?option=com_content&task=blogsection&id=0', 'content_blog_section', 1, 0, 0, 0, 4, 0, '0000-00-00 00:00:00', 0, 0, 0, 3, 'menu_image=-1\npageclass_sfx=\nback_button=\nheader=A blog of all section with no images\npage_title=1\nleading=1\nintro=3\ncolumns=2\nlink=4\norderby_pri=\norderby_sec=\npagination=2\npagination_results=1\nimage=0\ndescription=0\ndescription_image=0\ncategory=0\ncategory_link=0\nitem_title=1\nlink_titles=\nreadmore=\nrating=\nauthor=\ncreatedate=\nmodifydate=\npdf=\nprint=\nemail=\nsectionid='),
(10, 'othermenu', 'MamboServer', 'http://www.mamboserver.com', 'url', 1, 0, 0, 0, 1, 0, '0000-00-00 00:00:00', 0, 0, 0, 3, ''),
(11, 'othermenu', 'Administrator', 'administrator/', 'url', 1, 0, 0, 0, 3, 0, '0000-00-00 00:00:00', 0, 0, 0, 3, 'menu_image=-1'),
(12, 'othermenu', 'MamboForge', 'http://mamboforge.net', 'url', 1, 0, 0, 0, 2, 0, '0000-00-00 00:00:00', 0, 0, 0, 3, ''),
(21, 'usermenu', 'Your Details', 'index.php?option=com_user&task=UserDetails', 'url', 1, 0, 0, 0, 1, 0, '2000-00-00 00:00:00', 0, 0, 1, 3, ''),
(13, 'usermenu', 'Submit News', 'index.php?option=com_content&task=new&sectionid=1&Itemid=0', 'url', 1, 0, 0, 0, 2, 0, '2000-00-00 00:00:00', 0, 0, 1, 2, ''),
(14, 'usermenu', 'Submit WebLink', 'index.php?option=com_weblinks&task=new', 'url', 1, 0, 0, 0, 4, 0, '2000-00-00 00:00:00', 0, 0, 1, 2, ''),
(15, 'usermenu', 'Check-In My Items', 'index.php?option=com_user&task=CheckIn', 'url', 1, 0, 0, 0, 5, 0, '0000-00-00 00:00:00', 0, 0, 1, 2, ''),
(16, 'usermenu', 'Logout', 'index.php?option=com_login', 'components', 1, 0, 15, 0, 5, 0, '0000-00-00 00:00:00', 0, 0, 1, 3, ''),
(17, 'topmenu', 'Home', 'index.php', 'url', 1, 0, 0, 0, 4, 0, '0000-00-00 00:00:00', 0, 0, 0, 3, ''),
(18, 'topmenu', 'Contact Us', 'index.php?option=com_contact&Itemid=3', 'url', 1, 0, 0, 0, 2, 0, '0000-00-00 00:00:00', 0, 0, 0, 3, ''),
(19, 'topmenu', 'News', 'index.php?option=com_content&task=section&id=1&Itemid=2', 'url', 1, 0, 0, 0, 3, 0, '0000-00-00 00:00:00', 0, 0, 0, 3, ''),
(20, 'topmenu', 'Links', 'index.php?option=com_weblinks&Itemid=22', 'url', 1, 0, 0, 0, 1, 0, '0000-00-00 00:00:00', 0, 0, 0, 3, 'menu_image=-1'),
(25, 'mainmenu', 'FAQ''s', 'index.php?option=com_content&task=category&sectionid=3&id=7', 'content_category', 1, 0, 7, 0, 9, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'menu_image=-1\npage_title=1\npageclass_sfx=\nback_button=\norderby=\ndate_format=\ndate=\nauthor=\ntitle=1\nhits=\nheadings=1\nnavigation=1\norder_select=1\ndisplay=1\ndisplay_num=50\nfilter=1\nfilter_type=title\nother_cat=1\nempty_cat=0\ncat_items=1\ncat_description=1');

-- --------------------------------------------------------

--
-- Table structure for table `mos_messages`
--

CREATE TABLE IF NOT EXISTS `mos_messages` (
  `message_id` int(10) unsigned NOT NULL,
  `user_id_from` int(10) unsigned NOT NULL DEFAULT '0',
  `user_id_to` int(10) unsigned NOT NULL DEFAULT '0',
  `folder_id` int(10) unsigned NOT NULL DEFAULT '0',
  `date_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `state` int(11) NOT NULL DEFAULT '0',
  `priority` int(1) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(230) NOT NULL DEFAULT '',
  `message` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=tis620;

-- --------------------------------------------------------

--
-- Table structure for table `mos_messages_cfg`
--

CREATE TABLE IF NOT EXISTS `mos_messages_cfg` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `cfg_name` varchar(100) NOT NULL DEFAULT '',
  `cfg_value` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=tis620;

-- --------------------------------------------------------

--
-- Table structure for table `mos_modules`
--

CREATE TABLE IF NOT EXISTS `mos_modules` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `content` text NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `position` varchar(10) DEFAULT NULL,
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `module` varchar(50) DEFAULT NULL,
  `numnews` int(11) NOT NULL DEFAULT '0',
  `access` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `showtitle` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `params` text NOT NULL,
  `iscore` tinyint(4) NOT NULL DEFAULT '0',
  `client_id` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=43 DEFAULT CHARSET=tis620;

--
-- Dumping data for table `mos_modules`
--

INSERT INTO `mos_modules` (`id`, `title`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `published`, `module`, `numnews`, `access`, `showtitle`, `params`, `iscore`, `client_id`) VALUES
(1, 'Polls', '', 1, 'right', 0, '0000-00-00 00:00:00', 1, 'mod_poll', 0, 0, 1, '', 0, 0),
(2, 'User Menu', '', 2, 'left', 0, '0000-00-00 00:00:00', 1, 'mod_mainmenu', 0, 1, 1, 'menutype=usermenu', 1, 0),
(3, 'Main Menu', '', 1, 'left', 0, '0000-00-00 00:00:00', 1, 'mod_mainmenu', 0, 0, 1, 'menutype=mainmenu', 1, 0),
(4, 'Login Form', '', 3, 'left', 0, '0000-00-00 00:00:00', 1, 'mod_login', 0, 0, 1, '', 1, 0),
(5, 'Syndicate', '', 4, 'left', 0, '0000-00-00 00:00:00', 1, 'mod_rssfeed', 0, 0, 1, '', 1, 0),
(6, 'Latest News', '', 4, 'user1', 0, '0000-00-00 00:00:00', 1, 'mod_latestnews', 0, 0, 1, '', 1, 0),
(7, 'Statistics', '', 4, 'left', 0, '0000-00-00 00:00:00', 0, 'mod_stats', 0, 0, 1, 'serverinfo=1\nsiteinfo=1\ncounter=1\nincrease=0\nmoduleclass_sfx=', 0, 0),
(8, 'Who''s Online', '', 1, 'right', 0, '0000-00-00 00:00:00', 1, 'mod_whosonline', 0, 0, 1, 'online=1\nusers=1\nmoduleclass_sfx=', 0, 0),
(9, 'Popular', '', 6, 'user2', 0, '0000-00-00 00:00:00', 1, 'mod_mostread', 0, 0, 1, '', 0, 0),
(10, 'Template Chooser', '', 6, 'left', 0, '0000-00-00 00:00:00', 0, 'mod_templatechooser', 0, 0, 1, 'show_preview=1', 0, 0),
(11, 'Archive', '', 7, 'left', 0, '0000-00-00 00:00:00', 0, 'mod_archive', 0, 0, 1, '', 1, 0),
(12, 'Sections', '', 8, 'left', 0, '0000-00-00 00:00:00', 0, 'mod_sections', 0, 0, 1, '', 1, 0),
(13, 'Newsflash', '', 1, 'top', 0, '0000-00-00 00:00:00', 0, 'mod_newsflash', 0, 0, 1, 'catid=3\r\nstyle=random\r\nitems=\r\nmoduleclass_sfx=', 0, 0),
(14, 'Related Items', '', 9, 'left', 0, '0000-00-00 00:00:00', 0, 'mod_related_items', 0, 0, 1, '', 0, 0),
(15, 'Search', '', 1, 'user4', 0, '0000-00-00 00:00:00', 1, 'mod_search', 0, 0, 0, '', 0, 0),
(16, 'Random Image', '', 9, 'right', 0, '0000-00-00 00:00:00', 1, 'mod_random_image', 0, 0, 1, '', 0, 0),
(17, 'Top Menu', '', 1, 'user3', 0, '0000-00-00 00:00:00', 1, 'mod_mainmenu', 0, 0, 0, 'menutype=topmenu\nmenu_style=list_flat\nmenu_images=n\nmenu_images_align=left\nexpand_menu=n\nclass_sfx=-nav\nmoduleclass_sfx=\nindent_image1=0\nindent_image2=0\nindent_image3=0\nindent_image4=0\nindent_image5=0\nindent_image6=0', 1, 0),
(18, 'Banners', '', 1, 'banner', 0, '0000-00-00 00:00:00', 1, 'mod_banners', 0, 0, 0, 'banner_cids=\nmoduleclass_sfx=\n', 1, 0),
(19, 'Components', '', 2, 'cpanel', 0, '0000-00-00 00:00:00', 1, 'mod_components', 0, 99, 1, '', 1, 1),
(20, 'Popular', '', 3, 'cpanel', 0, '0000-00-00 00:00:00', 1, 'mod_popular', 0, 99, 1, '', 0, 1),
(21, 'Latest Items', '', 4, 'cpanel', 0, '0000-00-00 00:00:00', 1, 'mod_latest', 0, 99, 1, '', 0, 1),
(22, 'Menu Stats', '', 5, 'cpanel', 0, '0000-00-00 00:00:00', 1, 'mod_stats', 0, 99, 1, '', 0, 1),
(23, 'Unread Messages', '', 1, 'header', 0, '0000-00-00 00:00:00', 1, 'mod_unread', 0, 99, 1, '', 1, 1),
(24, 'Online Users', '', 2, 'header', 0, '0000-00-00 00:00:00', 1, 'mod_online', 0, 99, 1, '', 1, 1),
(25, 'Full Menu', '', 1, 'top', 0, '0000-00-00 00:00:00', 1, 'mod_fullmenu', 0, 99, 1, '', 1, 1),
(26, 'Pathway', '', 1, 'pathway', 0, '0000-00-00 00:00:00', 1, 'mod_pathway', 0, 99, 1, '', 1, 1),
(27, 'Toolbar', '', 1, 'toolbar', 0, '0000-00-00 00:00:00', 1, 'mod_toolbar', 0, 99, 1, '', 1, 1),
(28, 'System Message', '', 1, 'inset', 0, '0000-00-00 00:00:00', 1, 'mod_mosmsg', 0, 99, 1, '', 1, 1),
(29, 'Quick Icons', '', 1, 'icon', 0, '0000-00-00 00:00:00', 1, 'mod_quickicon', 0, 99, 1, '', 1, 1),
(30, 'Mamboforge', '', 1, 'cpanel', 0, '0000-00-00 00:00:00', 0, '', 0, 99, 1, 'rssurl=http://mamboforge.net/export/rss_sfnews.php\nrssitems=5\nrssdesc=1\ncache=0\nmoduleclass_sfx=', 0, 1),
(31, 'Other Menu', '', 2, 'left', 0, '0000-00-00 00:00:00', 1, 'mod_mainmenu', 0, 0, 0, 'menutype=othermenu\nmenu_style=vert_indent\ncache=0\nmenu_images=0\nmenu_images_align=0\nexpand_menu=0\nclass_sfx=\nmoduleclass_sfx=\nindent_image=0\nindent_image1=\nindent_image2=\nindent_image3=\nindent_image4=\nindent_image5=\nindent_image6=', 0, 0),
(32, 'Wrapper', '', 10, 'left', 0, '0000-00-00 00:00:00', 1, 'mod_wrapper', 0, 0, 1, '', 0, 0),
(33, 'Logged', '', 0, 'cpanel', 0, '0000-00-00 00:00:00', 1, 'mod_logged', 0, 99, 1, '', 0, 1),
(41, 'Online-Shop', '', 3, 'left', 0, '0000-00-00 00:00:00', 1, 'mod_phpshop', 0, 0, 1, 'class_sfx=\npretext=Categories\nshow_listall=yes\nshow_minicart=no\nshow_productsearch=yes\nmenutype=links\nroot_label=Shop', 0, 0),
(42, 'Check the Shop', '', 17, 'left', 0, '0000-00-00 00:00:00', 0, 'mod_phpshop_allinone', 0, 0, 1, '', 0, 0),
(34, 'Your Cart', '', 2, 'top', 0, '0000-00-00 00:00:00', 1, 'mod_phpshop_cart', 0, 0, 1, '', 0, 0),
(35, 'phpShop featured products Module', '', 16, 'left', 0, '0000-00-00 00:00:00', 0, 'mod_phpshop_featureprod', 0, 0, 1, '', 0, 0),
(36, 'phpShop latest products', '', 15, 'left', 0, '0000-00-00 00:00:00', 0, 'mod_phpshop_latestprod', 0, 0, 1, '', 0, 0),
(37, 'phpShop Manufacturers', '', 14, 'left', 0, '0000-00-00 00:00:00', 0, 'mod_phpshop_manufacturers', 0, 0, 1, '', 0, 0),
(38, 'phpShop random products Module', '', 13, 'left', 0, '0000-00-00 00:00:00', 0, 'mod_phpshop_randomprod', 0, 0, 1, '', 0, 0),
(39, 'phpShop Search Module', '', 12, 'left', 0, '0000-00-00 00:00:00', 0, 'mod_phpshop_search', 0, 0, 1, '', 0, 0),
(40, 'phpShop TopTen products Module', '', 18, 'left', 0, '0000-00-00 00:00:00', 0, 'mod_phpshop_topten', 0, 0, 1, '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `mos_modules_menu`
--

CREATE TABLE IF NOT EXISTS `mos_modules_menu` (
  `moduleid` int(11) NOT NULL DEFAULT '0',
  `menuid` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=tis620;

--
-- Dumping data for table `mos_modules_menu`
--

INSERT INTO `mos_modules_menu` (`moduleid`, `menuid`) VALUES
(1, 1),
(2, 0),
(3, 0),
(4, 1),
(5, 1),
(6, 1),
(6, 2),
(6, 4),
(6, 27),
(6, 36),
(8, 1),
(9, 1),
(9, 2),
(9, 4),
(9, 27),
(9, 36),
(10, 1),
(13, 0),
(15, 0),
(17, 0),
(18, 0),
(31, 0),
(34, 0),
(35, 0),
(36, 0),
(37, 0),
(38, 0),
(39, 0),
(40, 0),
(41, 0),
(42, 0);

-- --------------------------------------------------------

--
-- Table structure for table `mos_newsfeeds`
--

CREATE TABLE IF NOT EXISTS `mos_newsfeeds` (
  `catid` int(11) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `link` text NOT NULL,
  `filename` varchar(200) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `numarticles` int(11) unsigned NOT NULL DEFAULT '1',
  `cache_time` int(11) unsigned NOT NULL DEFAULT '3600',
  `checked_out` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=tis620;

--
-- Dumping data for table `mos_newsfeeds`
--

INSERT INTO `mos_newsfeeds` (`catid`, `id`, `name`, `link`, `filename`, `published`, `numarticles`, `cache_time`, `checked_out`, `checked_out_time`, `ordering`) VALUES
(4, 1, 'Mamboforge.net', 'http://mamboforge.net/export/rss_sfnews.php', '', 1, 5, 3600, 0, '0000-00-00 00:00:00', 8),
(4, 2, 'Mamboportal', 'http://www.mamboportal.com/index2.php?option=com_rss&no_html=1', '', 1, 5, 3600, 0, '0000-00-00 00:00:00', 9),
(4, 3, 'Mambohut', 'http://www.mambohut.com/index2.php?option=com_rss&no_html=1', '', 1, 5, 3600, 0, '0000-00-00 00:00:00', 10),
(10, 4, 'Linux Today', 'http://linuxtoday.com/backend/my-netscape.rdf', '', 1, 3, 3600, 0, '0000-00-00 00:00:00', 1),
(5, 5, 'Business News', 'http://headlines.internet.com/internetnews/bus-news/news.rss', '', 1, 3, 3600, 0, '0000-00-00 00:00:00', 2),
(11, 6, 'Web Developer News', 'http://headlines.internet.com/internetnews/wd-news/news.rss', '', 1, 3, 3600, 0, '0000-00-00 00:00:00', 3),
(10, 7, 'Linux Central:New Products', 'http://linuxcentral.com/backend/lcnew.rdf', '', 1, 3, 3600, 0, '0000-00-00 00:00:00', 4),
(10, 8, 'Linux Central:Best Selling', 'http://linuxcentral.com/backend/lcbestns.rdf', '', 1, 3, 3600, 0, '0000-00-00 00:00:00', 5),
(10, 9, 'Linux Central:Daily Specials', 'http://linuxcentral.com/backend/lcspecialns.rdf', '', 1, 3, 3600, 0, '0000-00-00 00:00:00', 6),
(9, 10, 'Internet:Finance News', 'http://headlines.internet.com/internetnews/fina-news/news.rss', '', 1, 3, 3600, 0, '0000-00-00 00:00:00', 7);

-- --------------------------------------------------------

--
-- Table structure for table `mos_polls`
--

CREATE TABLE IF NOT EXISTS `mos_polls` (
  `id` int(11) unsigned NOT NULL,
  `title` varchar(100) NOT NULL DEFAULT '',
  `voters` int(9) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `access` int(11) NOT NULL DEFAULT '0',
  `lag` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=tis620;

--
-- Dumping data for table `mos_polls`
--

INSERT INTO `mos_polls` (`id`, `title`, `voters`, `checked_out`, `checked_out_time`, `published`, `access`, `lag`) VALUES
(14, 'This Mambo installation was ....', 0, 0, '2000-00-00 00:00:00', 1, 0, 86400);

-- --------------------------------------------------------

--
-- Table structure for table `mos_poll_data`
--

CREATE TABLE IF NOT EXISTS `mos_poll_data` (
  `id` int(11) NOT NULL,
  `pollid` int(4) NOT NULL DEFAULT '0',
  `text` text NOT NULL,
  `hits` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=tis620;

--
-- Dumping data for table `mos_poll_data`
--

INSERT INTO `mos_poll_data` (`id`, `pollid`, `text`, `hits`) VALUES
(1, 14, 'Absolutely simple', 1),
(2, 14, 'Reasonably easy', 0),
(3, 14, 'Not straight-forward but I worked it out', 0),
(4, 14, 'I had to install extra server stuff', 0),
(5, 14, 'I had no idea and got my friend to do it', 0),
(6, 14, 'My dog ran away with the README ...', 0),
(7, 14, '', 0),
(8, 14, '', 0),
(9, 14, '', 0),
(10, 14, '', 0),
(11, 14, '', 0),
(12, 14, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `mos_poll_date`
--

CREATE TABLE IF NOT EXISTS `mos_poll_date` (
  `id` bigint(20) NOT NULL,
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `vote_id` int(11) NOT NULL DEFAULT '0',
  `poll_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=tis620;

-- --------------------------------------------------------

--
-- Table structure for table `mos_poll_menu`
--

CREATE TABLE IF NOT EXISTS `mos_poll_menu` (
  `pollid` int(11) NOT NULL DEFAULT '0',
  `menuid` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=tis620;

--
-- Dumping data for table `mos_poll_menu`
--

INSERT INTO `mos_poll_menu` (`pollid`, `menuid`) VALUES
(14, 1);

-- --------------------------------------------------------

--
-- Table structure for table `mos_pshop_affiliate`
--

CREATE TABLE IF NOT EXISTS `mos_pshop_affiliate` (
  `affiliate_id` int(11) NOT NULL,
  `user_id` varchar(32) NOT NULL,
  `active` char(1) NOT NULL DEFAULT 'N',
  `rate` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=tis620;

-- --------------------------------------------------------

--
-- Table structure for table `mos_pshop_affiliate_sale`
--

CREATE TABLE IF NOT EXISTS `mos_pshop_affiliate_sale` (
  `order_id` int(11) NOT NULL,
  `visit_id` varchar(32) NOT NULL,
  `affiliate_id` int(11) NOT NULL,
  `rate` int(2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=tis620;

-- --------------------------------------------------------

--
-- Table structure for table `mos_pshop_auth_user_vendor`
--

CREATE TABLE IF NOT EXISTS `mos_pshop_auth_user_vendor` (
  `user_id` varchar(32) DEFAULT NULL,
  `vendor_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=tis620;

-- --------------------------------------------------------

--
-- Table structure for table `mos_pshop_category`
--

CREATE TABLE IF NOT EXISTS `mos_pshop_category` (
  `category_id` varchar(32) NOT NULL DEFAULT '',
  `vendor_id` int(11) NOT NULL DEFAULT '0',
  `category_name` varchar(128) NOT NULL DEFAULT '',
  `category_description` text,
  `category_thumb_image` varchar(255) DEFAULT NULL,
  `category_full_image` varchar(255) DEFAULT NULL,
  `category_publish` char(1) DEFAULT NULL,
  `cdate` int(11) DEFAULT NULL,
  `mdate` int(11) DEFAULT NULL,
  `category_browsepage` varchar(255) NOT NULL DEFAULT 'browse_1',
  `products_per_row` tinyint(2) NOT NULL DEFAULT '1',
  `category_flypage` varchar(255) DEFAULT NULL,
  `list_order` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=tis620;

--
-- Dumping data for table `mos_pshop_category`
--

INSERT INTO `mos_pshop_category` (`category_id`, `vendor_id`, `category_name`, `category_description`, `category_thumb_image`, `category_full_image`, `category_publish`, `cdate`, `mdate`, `category_browsepage`, `products_per_row`, `category_flypage`, `list_order`) VALUES
('541a03b2b0e1b6dbd972e9f5af5ca992', 1, 'Hand Tools', 'Hand Tools', NULL, NULL, 'Y', 950319905, 960304194, 'browse_3', 3, '', 1),
('1c914424d2569bea3439fbcca9123a27', 1, 'Power Tools', 'Power Tools', NULL, NULL, 'Y', 950319916, 960304104, 'browse_4', 4, '', 2),
('6834dda8e3e6e5aa18bafc63a57fd04a', 1, 'Garden Tools', 'Garden Tools', NULL, NULL, 'Y', 950321122, 960304338, 'browse_2', 2, 'shop.garden_flypage', 3),
('f85e462baf927f8e53989dd969c0e430', 1, 'Outdoor Tools', 'Outdoor Tools', NULL, NULL, 'Y', 955626629, 958889528, 'browse_1', 1, NULL, 4),
('2f34f8bf003a5f27bed2e8dfe0b6f33a', 1, 'Indoor Tools', 'Indoor Tools', NULL, NULL, 'Y', 958892894, 958892894, 'browse_1', 1, NULL, 5);

-- --------------------------------------------------------

--
-- Table structure for table `mos_pshop_category_xref`
--

CREATE TABLE IF NOT EXISTS `mos_pshop_category_xref` (
  `category_parent_id` varchar(32) NOT NULL DEFAULT '0',
  `category_child_id` varchar(32) NOT NULL DEFAULT '0',
  `category_list` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=tis620;

--
-- Dumping data for table `mos_pshop_category_xref`
--

INSERT INTO `mos_pshop_category_xref` (`category_parent_id`, `category_child_id`, `category_list`) VALUES
('0', '541a03b2b0e1b6dbd972e9f5af5ca992', NULL),
('0', '1c914424d2569bea3439fbcca9123a27', NULL),
('0', '6834dda8e3e6e5aa18bafc63a57fd04a', NULL),
('1c914424d2569bea3439fbcca9123a27', 'f85e462baf927f8e53989dd969c0e430', NULL),
('1c914424d2569bea3439fbcca9123a27', '2f34f8bf003a5f27bed2e8dfe0b6f33a', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `mos_pshop_country`
--

CREATE TABLE IF NOT EXISTS `mos_pshop_country` (
  `country_id` int(11) NOT NULL,
  `zone_id` int(11) NOT NULL DEFAULT '1',
  `country_name` varchar(64) DEFAULT NULL,
  `country_3_code` char(3) DEFAULT NULL,
  `country_2_code` char(2) DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=240 DEFAULT CHARSET=tis620;

--
-- Dumping data for table `mos_pshop_country`
--

INSERT INTO `mos_pshop_country` (`country_id`, `zone_id`, `country_name`, `country_3_code`, `country_2_code`) VALUES
(1, 1, 'Afghanistan', 'AFG', 'AF'),
(2, 1, 'Albania', 'ALB', 'AL'),
(3, 1, 'Algeria', 'DZA', 'DZ'),
(4, 1, 'American Samoa', 'ASM', 'AS'),
(5, 1, 'Andorra', 'AND', 'AD'),
(6, 1, 'Angola', 'AGO', 'AO'),
(7, 1, 'Anguilla', 'AIA', 'AI'),
(8, 1, 'Antarctica', 'ATA', 'AQ'),
(9, 1, 'Antigua and Barbuda', 'ATG', 'AG'),
(10, 1, 'Argentina', 'ARG', 'AR'),
(11, 1, 'Armenia', 'ARM', 'AM'),
(12, 1, 'Aruba', 'ABW', 'AW'),
(13, 1, 'Australia', 'AUS', 'AU'),
(14, 1, 'Austria', 'AUT', 'AT'),
(15, 1, 'Azerbaijan', 'AZE', 'AZ'),
(16, 1, 'Bahamas', 'BHS', 'BS'),
(17, 1, 'Bahrain', 'BHR', 'BH'),
(18, 1, 'Bangladesh', 'BGD', 'BD'),
(19, 1, 'Barbados', 'BRB', 'BB'),
(20, 1, 'Belarus', 'BLR', 'BY'),
(21, 1, 'Belgium', 'BEL', 'BE'),
(22, 1, 'Belize', 'BLZ', 'BZ'),
(23, 1, 'Benin', 'BEN', 'BJ'),
(24, 1, 'Bermuda', 'BMU', 'BM'),
(25, 1, 'Bhutan', 'BTN', 'BT'),
(26, 1, 'Bolivia', 'BOL', 'BO'),
(27, 1, 'Bosnia and Herzegowina', 'BIH', 'BA'),
(28, 1, 'Botswana', 'BWA', 'BW'),
(29, 1, 'Bouvet Island', 'BVT', 'BV'),
(30, 1, 'Brazil', 'BRA', 'BR'),
(31, 1, 'British Indian Ocean Territory', 'IOT', 'IO'),
(32, 1, 'Brunei Darussalam', 'BRN', 'BN'),
(33, 1, 'Bulgaria', 'BGR', 'BG'),
(34, 1, 'Burkina Faso', 'BFA', 'BF'),
(35, 1, 'Burundi', 'BDI', 'BI'),
(36, 1, 'Cambodia', 'KHM', 'KH'),
(37, 1, 'Cameroon', 'CMR', 'CM'),
(38, 1, 'Canada', 'CAN', 'CA'),
(39, 1, 'Cape Verde', 'CPV', 'CV'),
(40, 1, 'Cayman Islands', 'CYM', 'KY'),
(41, 1, 'Central African Republic', 'CAF', 'CF'),
(42, 1, 'Chad', 'TCD', 'TD'),
(43, 1, 'Chile', 'CHL', 'CL'),
(44, 1, 'China', 'CHN', 'CN'),
(45, 1, 'Christmas Island', 'CXR', 'CX'),
(46, 1, 'Cocos (Keeling) Islands', 'CCK', 'CC'),
(47, 1, 'Colombia', 'COL', 'CO'),
(48, 1, 'Comoros', 'COM', 'KM'),
(49, 1, 'Congo', 'COG', 'CG'),
(50, 1, 'Cook Islands', 'COK', 'CK'),
(51, 1, 'Costa Rica', 'CRI', 'CR'),
(52, 1, 'Cote D''Ivoire', 'CIV', 'CI'),
(53, 1, 'Croatia', 'HRV', 'HR'),
(54, 1, 'Cuba', 'CUB', 'CU'),
(55, 1, 'Cyprus', 'CYP', 'CY'),
(56, 1, 'Czech Republic', 'CZE', 'CZ'),
(57, 1, 'Denmark', 'DNK', 'DK'),
(58, 1, 'Djibouti', 'DJI', 'DJ'),
(59, 1, 'Dominica', 'DMA', 'DM'),
(60, 1, 'Dominican Republic', 'DOM', 'DO'),
(61, 1, 'East Timor', 'TMP', 'TP'),
(62, 1, 'Ecuador', 'ECU', 'EC'),
(63, 1, 'Egypt', 'EGY', 'EG'),
(64, 1, 'El Salvador', 'SLV', 'SV'),
(65, 1, 'Equatorial Guinea', 'GNQ', 'GQ'),
(66, 1, 'Eritrea', 'ERI', 'ER'),
(67, 1, 'Estonia', 'EST', 'EE'),
(68, 1, 'Ethiopia', 'ETH', 'ET'),
(69, 1, 'Falkland Islands (Malvinas)', 'FLK', 'FK'),
(70, 1, 'Faroe Islands', 'FRO', 'FO'),
(71, 1, 'Fiji', 'FJI', 'FJ'),
(72, 1, 'Finland', 'FIN', 'FI'),
(73, 1, 'France', 'FRA', 'FR'),
(74, 1, 'France, Metropolitan', 'FXX', 'FX'),
(75, 1, 'French Guiana', 'GUF', 'GF'),
(76, 1, 'French Polynesia', 'PYF', 'PF'),
(77, 1, 'French Southern Territories', 'ATF', 'TF'),
(78, 1, 'Gabon', 'GAB', 'GA'),
(79, 1, 'Gambia', 'GMB', 'GM'),
(80, 1, 'Georgia', 'GEO', 'GE'),
(81, 1, 'Germany', 'DEU', 'DE'),
(82, 1, 'Ghana', 'GHA', 'GH'),
(83, 1, 'Gibraltar', 'GIB', 'GI'),
(84, 1, 'Greece', 'GRC', 'GR'),
(85, 1, 'Greenland', 'GRL', 'GL'),
(86, 1, 'Grenada', 'GRD', 'GD'),
(87, 1, 'Guadeloupe', 'GLP', 'GP'),
(88, 1, 'Guam', 'GUM', 'GU'),
(89, 1, 'Guatemala', 'GTM', 'GT'),
(90, 1, 'Guinea', 'GIN', 'GN'),
(91, 1, 'Guinea-bissau', 'GNB', 'GW'),
(92, 1, 'Guyana', 'GUY', 'GY'),
(93, 1, 'Haiti', 'HTI', 'HT'),
(94, 1, 'Heard and Mc Donald Islands', 'HMD', 'HM'),
(95, 1, 'Honduras', 'HND', 'HN'),
(96, 1, 'Hong Kong', 'HKG', 'HK'),
(97, 1, 'Hungary', 'HUN', 'HU'),
(98, 1, 'Iceland', 'ISL', 'IS'),
(99, 1, 'India', 'IND', 'IN'),
(100, 1, 'Indonesia', 'IDN', 'ID'),
(101, 1, 'Iran (Islamic Republic of)', 'IRN', 'IR'),
(102, 1, 'Iraq', 'IRQ', 'IQ'),
(103, 1, 'Ireland', 'IRL', 'IE'),
(104, 1, 'Israel', 'ISR', 'IL'),
(105, 1, 'Italy', 'ITA', 'IT'),
(106, 1, 'Jamaica', 'JAM', 'JM'),
(107, 1, 'Japan', 'JPN', 'JP'),
(108, 1, 'Jordan', 'JOR', 'JO'),
(109, 1, 'Kazakhstan', 'KAZ', 'KZ'),
(110, 1, 'Kenya', 'KEN', 'KE'),
(111, 1, 'Kiribati', 'KIR', 'KI'),
(112, 1, 'Korea, Democratic People''s Republic of', 'PRK', 'KP'),
(113, 1, 'Korea, Republic of', 'KOR', 'KR'),
(114, 1, 'Kuwait', 'KWT', 'KW'),
(115, 1, 'Kyrgyzstan', 'KGZ', 'KG'),
(116, 1, 'Lao People''s Democratic Republic', 'LAO', 'LA'),
(117, 1, 'Latvia', 'LVA', 'LV'),
(118, 1, 'Lebanon', 'LBN', 'LB'),
(119, 1, 'Lesotho', 'LSO', 'LS'),
(120, 1, 'Liberia', 'LBR', 'LR'),
(121, 1, 'Libyan Arab Jamahiriya', 'LBY', 'LY'),
(122, 1, 'Liechtenstein', 'LIE', 'LI'),
(123, 1, 'Lithuania', 'LTU', 'LT'),
(124, 1, 'Luxembourg', 'LUX', 'LU'),
(125, 1, 'Macau', 'MAC', 'MO'),
(126, 1, 'Macedonia, The Former Yugoslav Republic of', 'MKD', 'MK'),
(127, 1, 'Madagascar', 'MDG', 'MG'),
(128, 1, 'Malawi', 'MWI', 'MW'),
(129, 1, 'Malaysia', 'MYS', 'MY'),
(130, 1, 'Maldives', 'MDV', 'MV'),
(131, 1, 'Mali', 'MLI', 'ML'),
(132, 1, 'Malta', 'MLT', 'MT'),
(133, 1, 'Marshall Islands', 'MHL', 'MH'),
(134, 1, 'Martinique', 'MTQ', 'MQ'),
(135, 1, 'Mauritania', 'MRT', 'MR'),
(136, 1, 'Mauritius', 'MUS', 'MU'),
(137, 1, 'Mayotte', 'MYT', 'YT'),
(138, 1, 'Mexico', 'MEX', 'MX'),
(139, 1, 'Micronesia, Federated States of', 'FSM', 'FM'),
(140, 1, 'Moldova, Republic of', 'MDA', 'MD'),
(141, 1, 'Monaco', 'MCO', 'MC'),
(142, 1, 'Mongolia', 'MNG', 'MN'),
(143, 1, 'Montserrat', 'MSR', 'MS'),
(144, 1, 'Morocco', 'MAR', 'MA'),
(145, 1, 'Mozambique', 'MOZ', 'MZ'),
(146, 1, 'Myanmar', 'MMR', 'MM'),
(147, 1, 'Namibia', 'NAM', 'NA'),
(148, 1, 'Nauru', 'NRU', 'NR'),
(149, 1, 'Nepal', 'NPL', 'NP'),
(150, 1, 'Netherlands', 'NLD', 'NL'),
(151, 1, 'Netherlands Antilles', 'ANT', 'AN'),
(152, 1, 'New Caledonia', 'NCL', 'NC'),
(153, 1, 'New Zealand', 'NZL', 'NZ'),
(154, 1, 'Nicaragua', 'NIC', 'NI'),
(155, 1, 'Niger', 'NER', 'NE'),
(156, 1, 'Nigeria', 'NGA', 'NG'),
(157, 1, 'Niue', 'NIU', 'NU'),
(158, 1, 'Norfolk Island', 'NFK', 'NF'),
(159, 1, 'Northern Mariana Islands', 'MNP', 'MP'),
(160, 1, 'Norway', 'NOR', 'NO'),
(161, 1, 'Oman', 'OMN', 'OM'),
(162, 1, 'Pakistan', 'PAK', 'PK'),
(163, 1, 'Palau', 'PLW', 'PW'),
(164, 1, 'Panama', 'PAN', 'PA'),
(165, 1, 'Papua New Guinea', 'PNG', 'PG'),
(166, 1, 'Paraguay', 'PRY', 'PY'),
(167, 1, 'Peru', 'PER', 'PE'),
(168, 1, 'Philippines', 'PHL', 'PH'),
(169, 1, 'Pitcairn', 'PCN', 'PN'),
(170, 1, 'Poland', 'POL', 'PL'),
(171, 1, 'Portugal', 'PRT', 'PT'),
(172, 1, 'Puerto Rico', 'PRI', 'PR'),
(173, 1, 'Qatar', 'QAT', 'QA'),
(174, 1, 'Reunion', 'REU', 'RE'),
(175, 1, 'Romania', 'ROM', 'RO'),
(176, 1, 'Russian Federation', 'RUS', 'RU'),
(177, 1, 'Rwanda', 'RWA', 'RW'),
(178, 1, 'Saint Kitts and Nevis', 'KNA', 'KN'),
(179, 1, 'Saint Lucia', 'LCA', 'LC'),
(180, 1, 'Saint Vincent and the Grenadines', 'VCT', 'VC'),
(181, 1, 'Samoa', 'WSM', 'WS'),
(182, 1, 'San Marino', 'SMR', 'SM'),
(183, 1, 'Sao Tome and Principe', 'STP', 'ST'),
(184, 1, 'Saudi Arabia', 'SAU', 'SA'),
(185, 1, 'Senegal', 'SEN', 'SN'),
(186, 1, 'Seychelles', 'SYC', 'SC'),
(187, 1, 'Sierra Leone', 'SLE', 'SL'),
(188, 1, 'Singapore', 'SGP', 'SG'),
(189, 1, 'Slovakia (Slovak Republic)', 'SVK', 'SK'),
(190, 1, 'Slovenia', 'SVN', 'SI'),
(191, 1, 'Solomon Islands', 'SLB', 'SB'),
(192, 1, 'Somalia', 'SOM', 'SO'),
(193, 1, 'South Africa', 'ZAF', 'ZA'),
(194, 1, 'South Georgia and the South Sandwich Islands', 'SGS', 'GS'),
(195, 1, 'Spain', 'ESP', 'ES'),
(196, 1, 'Sri Lanka', 'LKA', 'LK'),
(197, 1, 'St. Helena', 'SHN', 'SH'),
(198, 1, 'St. Pierre and Miquelon', 'SPM', 'PM'),
(199, 1, 'Sudan', 'SDN', 'SD'),
(200, 1, 'Suriname', 'SUR', 'SR'),
(201, 1, 'Svalbard and Jan Mayen Islands', 'SJM', 'SJ'),
(202, 1, 'Swaziland', 'SWZ', 'SZ'),
(203, 1, 'Sweden', 'SWE', 'SE'),
(204, 1, 'Switzerland', 'CHE', 'CH'),
(205, 1, 'Syrian Arab Republic', 'SYR', 'SY'),
(206, 1, 'Taiwan', 'TWN', 'TW'),
(207, 1, 'Tajikistan', 'TJK', 'TJ'),
(208, 1, 'Tanzania, United Republic of', 'TZA', 'TZ'),
(209, 1, 'Thailand', 'THA', 'TH'),
(210, 1, 'Togo', 'TGO', 'TG'),
(211, 1, 'Tokelau', 'TKL', 'TK'),
(212, 1, 'Tonga', 'TON', 'TO'),
(213, 1, 'Trinidad and Tobago', 'TTO', 'TT'),
(214, 1, 'Tunisia', 'TUN', 'TN'),
(215, 1, 'Turkey', 'TUR', 'TR'),
(216, 1, 'Turkmenistan', 'TKM', 'TM'),
(217, 1, 'Turks and Caicos Islands', 'TCA', 'TC'),
(218, 1, 'Tuvalu', 'TUV', 'TV'),
(219, 1, 'Uganda', 'UGA', 'UG'),
(220, 1, 'Ukraine', 'UKR', 'UA'),
(221, 1, 'United Arab Emirates', 'ARE', 'AE'),
(222, 1, 'United Kingdom', 'GBR', 'GB'),
(223, 1, 'United States', 'USA', 'US'),
(224, 1, 'United States Minor Outlying Islands', 'UMI', 'UM'),
(225, 1, 'Uruguay', 'URY', 'UY'),
(226, 1, 'Uzbekistan', 'UZB', 'UZ'),
(227, 1, 'Vanuatu', 'VUT', 'VU'),
(228, 1, 'Vatican City State (Holy See)', 'VAT', 'VA'),
(229, 1, 'Venezuela', 'VEN', 'VE'),
(230, 1, 'Viet Nam', 'VNM', 'VN'),
(231, 1, 'Virgin Islands (British)', 'VGB', 'VG'),
(232, 1, 'Virgin Islands (U.S.)', 'VIR', 'VI'),
(233, 1, 'Wallis and Futuna Islands', 'WLF', 'WF'),
(234, 1, 'Western Sahara', 'ESH', 'EH'),
(235, 1, 'Yemen', 'YEM', 'YE'),
(236, 1, 'Yugoslavia', 'YUG', 'YU'),
(237, 1, 'Zaire', 'ZAR', 'ZR'),
(238, 1, 'Zambia', 'ZMB', 'ZM'),
(239, 1, 'Zimbabwe', 'ZWE', 'ZW');

-- --------------------------------------------------------

--
-- Table structure for table `mos_pshop_coupons`
--

CREATE TABLE IF NOT EXISTS `mos_pshop_coupons` (
  `coupon_id` int(16) NOT NULL,
  `coupon_code` varchar(32) NOT NULL DEFAULT '',
  `percent_or_total` enum('percent','total') NOT NULL DEFAULT 'percent',
  `coupon_type` enum('gift','permanent') NOT NULL DEFAULT 'gift',
  `coupon_value` decimal(10,2) NOT NULL DEFAULT '0.00'
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=tis620;

--
-- Dumping data for table `mos_pshop_coupons`
--

INSERT INTO `mos_pshop_coupons` (`coupon_id`, `coupon_code`, `percent_or_total`, `coupon_type`, `coupon_value`) VALUES
(1, 'test1', 'total', 'gift', '6.00'),
(2, 'test2', 'percent', 'permanent', '15.00'),
(3, 'test3', 'total', 'permanent', '4.00'),
(4, 'test4', 'total', 'gift', '15.00');

-- --------------------------------------------------------

--
-- Table structure for table `mos_pshop_creditcard`
--

CREATE TABLE IF NOT EXISTS `mos_pshop_creditcard` (
  `creditcard_id` int(11) NOT NULL,
  `vendor_id` int(11) NOT NULL,
  `creditcard_name` varchar(70) NOT NULL,
  `creditcard_code` varchar(30) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=tis620;

--
-- Dumping data for table `mos_pshop_creditcard`
--

INSERT INTO `mos_pshop_creditcard` (`creditcard_id`, `vendor_id`, `creditcard_name`, `creditcard_code`) VALUES
(1, 1, 'Visa', 'VISA'),
(2, 1, 'MasterCard', 'MC'),
(3, 1, 'American Express', 'amex'),
(4, 1, 'Discover Card', 'discover'),
(5, 1, 'Diners Club', 'diners'),
(6, 1, 'JCB', 'jcb'),
(7, 1, 'Australian Bankcard', 'australian_bc');

-- --------------------------------------------------------

--
-- Table structure for table `mos_pshop_csv`
--

CREATE TABLE IF NOT EXISTS `mos_pshop_csv` (
  `csv_product_sku` int(2) DEFAULT NULL,
  `csv_product_s_desc` int(2) DEFAULT NULL,
  `csv_product_desc` int(2) DEFAULT NULL,
  `csv_product_thumb_image` int(2) DEFAULT NULL,
  `csv_product_full_image` int(2) DEFAULT NULL,
  `csv_product_weight` int(2) DEFAULT NULL,
  `csv_product_weight_uom` int(2) DEFAULT NULL,
  `csv_product_length` int(2) DEFAULT NULL,
  `csv_product_width` int(2) DEFAULT NULL,
  `csv_product_height` int(2) DEFAULT NULL,
  `csv_product_lwh_uom` int(2) DEFAULT NULL,
  `csv_product_in_stock` int(2) DEFAULT NULL,
  `csv_product_available_date` int(2) DEFAULT NULL,
  `csv_product_special` int(2) DEFAULT NULL,
  `csv_product_discount_id` int(2) DEFAULT NULL,
  `csv_product_name` int(2) DEFAULT NULL,
  `csv_product_price` int(2) DEFAULT NULL,
  `csv_category_path` int(2) DEFAULT NULL,
  `csv_manufacturer_id` int(2) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=tis620;

--
-- Dumping data for table `mos_pshop_csv`
--

INSERT INTO `mos_pshop_csv` (`csv_product_sku`, `csv_product_s_desc`, `csv_product_desc`, `csv_product_thumb_image`, `csv_product_full_image`, `csv_product_weight`, `csv_product_weight_uom`, `csv_product_length`, `csv_product_width`, `csv_product_height`, `csv_product_lwh_uom`, `csv_product_in_stock`, `csv_product_available_date`, `csv_product_special`, `csv_product_discount_id`, `csv_product_name`, `csv_product_price`, `csv_category_path`, `csv_manufacturer_id`) VALUES
(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19);

-- --------------------------------------------------------

--
-- Table structure for table `mos_pshop_currency`
--

CREATE TABLE IF NOT EXISTS `mos_pshop_currency` (
  `currency_id` int(11) NOT NULL,
  `currency_name` varchar(64) DEFAULT NULL,
  `currency_code` char(3) DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=157 DEFAULT CHARSET=tis620;

--
-- Dumping data for table `mos_pshop_currency`
--

INSERT INTO `mos_pshop_currency` (`currency_id`, `currency_name`, `currency_code`) VALUES
(1, 'Andorran Peseta', 'ADP'),
(2, 'United Arab Emirates Dirham', 'AED'),
(3, 'Afghanistan Afghani', 'AFA'),
(4, 'Albanian Lek', 'ALL'),
(5, 'Netherlands Antillian Guilder', 'ANG'),
(6, 'Angolan Kwanza', 'AOK'),
(7, 'Argentinian Austral', 'ARA'),
(9, 'Australian Dollar', 'AUD'),
(10, 'Aruban Florin', 'AWG'),
(11, 'Barbados Dollar', 'BBD'),
(12, 'Bangladeshi Taka', 'BDT'),
(14, 'Bulgarian Lev', 'BGL'),
(15, 'Bahraini Dinar', 'BHD'),
(16, 'Burundi Franc', 'BIF'),
(17, 'Bermudian Dollar', 'BMD'),
(18, 'Brunei Dollar', 'BND'),
(19, 'Bolivian Boliviano', 'BOB'),
(20, 'Brazilian Cruzeiro', 'BRC'),
(21, 'Bahamian Dollar', 'BSD'),
(22, 'Bhutan Ngultrum', 'BTN'),
(23, 'Burma Kyat', 'BUK'),
(24, 'Botswanian Pula', 'BWP'),
(25, 'Belize Dollar', 'BZD'),
(26, 'Canadian Dollar', 'CAD'),
(27, 'Swiss Franc', 'CHF'),
(28, 'Chilean Unidades de Fomento', 'CLF'),
(29, 'Chilean Peso', 'CLP'),
(30, 'Yuan (Chinese) Renminbi', 'CNY'),
(31, 'Colombian Peso', 'COP'),
(32, 'Costa Rican Colon', 'CRC'),
(33, 'Czech Koruna', 'CSK'),
(34, 'Cuban Peso', 'CUP'),
(35, 'Cape Verde Escudo', 'CVE'),
(36, 'Cyprus Pound', 'CYP'),
(40, 'Danish Krone', 'DKK'),
(41, 'Dominican Peso', 'DOP'),
(42, 'Algerian Dinar', 'DZD'),
(43, 'Ecuador Sucre', 'ECS'),
(44, 'Egyptian Pound', 'EGP'),
(46, 'Ethiopian Birr', 'ETB'),
(47, 'Euro', 'EUR'),
(49, 'Fiji Dollar', 'FJD'),
(50, 'Falkland Islands Pound', 'FKP'),
(52, 'British Pound', 'GBP'),
(53, 'Ghanaian Cedi', 'GHC'),
(54, 'Gibraltar Pound', 'GIP'),
(55, 'Gambian Dalasi', 'GMD'),
(56, 'Guinea Franc', 'GNF'),
(58, 'Guatemalan Quetzal', 'GTQ'),
(59, 'Guinea-Bissau Peso', 'GWP'),
(60, 'Guyanan Dollar', 'GYD'),
(61, 'Hong Kong Dollar', 'HKD'),
(62, 'Honduran Lempira', 'HNL'),
(63, 'Haitian Gourde', 'HTG'),
(64, 'Hungarian Forint', 'HUF'),
(65, 'Indonesian Rupiah', 'IDR'),
(66, 'Irish Punt', 'IEP'),
(67, 'Israeli Shekel', 'ILS'),
(68, 'Indian Rupee', 'INR'),
(69, 'Iraqi Dinar', 'IQD'),
(70, 'Iranian Rial', 'IRR'),
(73, 'Jamaican Dollar', 'JMD'),
(74, 'Jordanian Dinar', 'JOD'),
(75, 'Japanese Yen', 'JPY'),
(76, 'Kenyan Schilling', 'KES'),
(77, 'Kampuchean (Cambodian) Riel', 'KHR'),
(78, 'Comoros Franc', 'KMF'),
(79, 'North Korean Won', 'KPW'),
(80, '(South) Korean Won', 'KRW'),
(81, 'Kuwaiti Dinar', 'KWD'),
(82, 'Cayman Islands Dollar', 'KYD'),
(83, 'Lao Kip', 'LAK'),
(84, 'Lebanese Pound', 'LBP'),
(85, 'Sri Lanka Rupee', 'LKR'),
(86, 'Liberian Dollar', 'LRD'),
(87, 'Lesotho Loti', 'LSL'),
(89, 'Libyan Dinar', 'LYD'),
(90, 'Moroccan Dirham', 'MAD'),
(91, 'Malagasy Franc', 'MGF'),
(92, 'Mongolian Tugrik', 'MNT'),
(93, 'Macau Pataca', 'MOP'),
(94, 'Mauritanian Ouguiya', 'MRO'),
(95, 'Maltese Lira', 'MTL'),
(96, 'Mauritius Rupee', 'MUR'),
(97, 'Maldive Rufiyaa', 'MVR'),
(98, 'Malawi Kwacha', 'MWK'),
(99, 'Mexican Peso', 'MXP'),
(100, 'Malaysian Ringgit', 'MYR'),
(101, 'Mozambique Metical', 'MZM'),
(102, 'Nigerian Naira', 'NGN'),
(103, 'Nicaraguan Cordoba', 'NIC'),
(105, 'Norwegian Kroner', 'NOK'),
(106, 'Nepalese Rupee', 'NPR'),
(107, 'New Zealand Dollar', 'NZD'),
(108, 'Omani Rial', 'OMR'),
(109, 'Panamanian Balboa', 'PAB'),
(110, 'Peruvian Inti', 'PEI'),
(111, 'Papua New Guinea Kina', 'PGK'),
(112, 'Philippine Peso', 'PHP'),
(113, 'Pakistan Rupee', 'PKR'),
(114, 'Polish Zloty', 'PLZ'),
(116, 'Paraguay Guarani', 'PYG'),
(117, 'Qatari Rial', 'QAR'),
(118, 'Romanian Leu', 'ROL'),
(119, 'Rwanda Franc', 'RWF'),
(120, 'Saudi Arabian Riyal', 'SAR'),
(121, 'Solomon Islands Dollar', 'SBD'),
(122, 'Seychelles Rupee', 'SCR'),
(123, 'Sudanese Pound', 'SDP'),
(124, 'Swedish Krona', 'SEK'),
(125, 'Singapore Dollar', 'SGD'),
(126, 'St. Helena Pound', 'SHP'),
(127, 'Sierra Leone Leone', 'SLL'),
(128, 'Somali Schilling', 'SOS'),
(129, 'Suriname Guilder', 'SRG'),
(130, 'Sao Tome and Principe Dobra', 'STD'),
(131, 'USSR Rouble', 'SUR'),
(132, 'El Salvador Colon', 'SVC'),
(133, 'Syrian Potmd', 'SYP'),
(134, 'Swaziland Lilangeni', 'SZL'),
(135, 'Thai Bhat', 'THB'),
(136, 'Tunisian Dinar', 'TND'),
(137, 'Tongan Pa''anga', 'TOP'),
(138, 'East Timor Escudo', 'TPE'),
(139, 'Turkish Lira', 'TRL'),
(140, 'Trinidad and Tobago Dollar', 'TTD'),
(141, 'Taiwan Dollar', 'TWD'),
(142, 'Tanzanian Schilling', 'TZS'),
(143, 'Uganda Shilling', 'UGS'),
(144, 'US Dollar', 'USD'),
(145, 'Uruguayan Peso', 'UYP'),
(146, 'Venezualan Bolivar', 'VEB'),
(147, 'Vietnamese Dong', 'VND'),
(148, 'Vanuatu Vatu', 'VUV'),
(149, 'Samoan Tala', 'WST'),
(150, 'Democratic Yemeni Dinar', 'YDD'),
(151, 'Yemeni Rial', 'YER'),
(152, 'New Yugoslavia Dinar', 'YUD'),
(153, 'South African Rand', 'ZAR'),
(154, 'Zambian Kwacha', 'ZMK'),
(155, 'Zaire Zaire', 'ZRZ'),
(156, 'Zimbabwe Dollar', 'ZWD');

-- --------------------------------------------------------

--
-- Table structure for table `mos_pshop_function`
--

CREATE TABLE IF NOT EXISTS `mos_pshop_function` (
  `function_id` int(11) NOT NULL,
  `module_id` int(11) DEFAULT NULL,
  `function_name` varchar(32) DEFAULT NULL,
  `function_class` varchar(32) DEFAULT NULL,
  `function_method` varchar(32) DEFAULT NULL,
  `function_description` text,
  `function_perms` varchar(255) DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=149 DEFAULT CHARSET=tis620;

--
-- Dumping data for table `mos_pshop_function`
--

INSERT INTO `mos_pshop_function` (`function_id`, `module_id`, `function_name`, `function_class`, `function_method`, `function_description`, `function_perms`) VALUES
(1, 1, 'userAdd', 'ps_user', 'add', '', 'admin,storeadmin'),
(2, 1, 'userDelete', 'ps_user', 'delete', '', 'admin,storeadmin'),
(3, 1, 'userUpdate', 'ps_user', 'update', '', 'admin,storeadmin'),
(4, 1, 'adminPasswdUpdate', 'ps_user', 'update_admin_passwd', 'Updates Site Administrator Password', 'admin'),
(31, 2, 'productAdd', 'ps_product', 'add', '', 'admin,storeadmin'),
(6, 1, 'functionAdd', 'ps_function', 'add', '', 'admin'),
(7, 1, 'functionUpdate', 'ps_function', 'update', '', 'admin'),
(8, 1, 'functionDelete', 'ps_function', 'delete', '', 'admin'),
(9, 1, 'userLogout', 'ps_user', 'logout', '', 'none'),
(10, 1, 'userAddressAdd', 'ps_user_address', 'add', '', 'admin,storeadmin,shopper,demo'),
(11, 1, 'userAddressUpdate', 'ps_user_address', 'update', '', 'admin,storeadmin,shopper'),
(12, 1, 'userAddressDelete', 'ps_user_address', 'delete', '', 'admin,storeadmin,shopper'),
(13, 1, 'moduleAdd', 'ps_module', 'add', '', 'admin'),
(14, 1, 'moduleUpdate', 'ps_module', 'update', '', 'admin'),
(15, 1, 'moduleDelete', 'ps_module', 'delete', '', 'admin'),
(16, 1, 'userLogin', 'ps_user', 'login', '', 'none'),
(17, 3, 'vendorAdd', 'ps_vendor', 'add', '', 'admin'),
(18, 3, 'vendorUpdate', 'ps_vendor', 'update', '', 'admin,storeadmin'),
(19, 3, 'vendorDelete', 'ps_vendor', 'delete', '', 'admin'),
(20, 3, 'vendorCategoryAdd', 'ps_vendor_category', 'add', '', 'admin'),
(21, 3, 'vendorCategoryUpdate', 'ps_vendor_category', 'update', '', 'admin'),
(22, 3, 'vendorCategoryDelete', 'ps_vendor_category', 'delete', '', 'admin'),
(23, 4, 'shopperAdd', 'ps_shopper', 'add', '', 'none'),
(24, 4, 'shopperDelete', 'ps_shopper', 'delete', '', 'admin,storeadmin'),
(25, 4, 'shopperUpdate', 'ps_shopper', 'update', '', 'admin,storeadmin,shopper'),
(26, 4, 'shopperGroupAdd', 'ps_shopper_group', 'add', '', 'admin,storeadmin'),
(27, 4, 'shopperGroupUpdate', 'ps_shopper_group', 'update', '', 'admin,storeadmin'),
(28, 4, 'shopperGroupDelete', 'ps_shopper_group', 'delete', '', 'admin,storeadmin'),
(29, 5, 'orderSearch', 'ps_order', 'find', '', 'admin,storeadmin,demo'),
(30, 5, 'orderStatusSet', 'ps_order', 'order_status_update', '', 'admin,storeadmin'),
(32, 2, 'productDelete', 'ps_product', 'delete', '', 'admin,storeadmin'),
(33, 2, 'productUpdate', 'ps_product', 'update', '', 'admin,storeadmin'),
(34, 2, 'productCategoryAdd', 'ps_product_category', 'add', '', 'admin,storeadmin'),
(35, 2, 'productCategoryUpdate', 'ps_product_category', 'update', '', 'admin,storeadmin'),
(36, 2, 'productCategoryDelete', 'ps_product_category', 'delete', '', 'admin,storeadmin'),
(37, 2, 'productPriceAdd', 'ps_product_price', 'add', '', 'admin,storeadmin'),
(38, 2, 'productPriceUpdate', 'ps_product_price', 'update', '', 'admin,storeadmin'),
(39, 2, 'productPriceDelete', 'ps_product_price', 'delete', '', 'admin,storeadmin'),
(40, 2, 'productAttributeAdd', 'ps_product_attribute', 'add', '', 'admin,storeadmin'),
(41, 2, 'productAttributeUpdate', 'ps_product_attribute', 'update', '', 'admin,storeadmin'),
(42, 2, 'productAttributeDelete', 'ps_product_attribute', 'delete', '', 'admin,storeadmin'),
(43, 7, 'cartAdd', 'ps_cart', 'add', '', 'none'),
(44, 7, 'cartUpdate', 'ps_cart', 'update', '', 'none'),
(45, 7, 'cartDelete', 'ps_cart', 'delete', '', 'none'),
(46, 10, 'checkoutComplete', 'ps_checkout', 'add', '', 'shopper,storeadmin,admin'),
(47, 1, 'setLanguage', 'ps_module', 'set_language', '', 'none'),
(48, 8, 'paymentMethodUpdate', 'ps_payment_method', 'update', '', 'admin,storeadmin'),
(49, 8, 'paymentMethodAdd', 'ps_payment_method', 'add', '', 'admin,storeadmin'),
(50, 8, 'paymentMethodDelete', 'ps_payment_method', 'delete', '', 'admin,storeadmin'),
(51, 5, 'orderDelete', 'ps_order', 'delete', '', 'admin,storeadmin'),
(52, 11, 'addTaxRate', 'ps_tax', 'add', '', 'admin,storeadmin'),
(53, 11, 'updateTaxRate', 'ps_tax', 'update', '', 'admin,storeadmin'),
(54, 11, 'deleteTaxRate', 'ps_tax', 'delete', '', 'admin,storeadmin'),
(55, 10, 'checkoutValidateST', 'ps_checkout', 'validate_shipto', '', 'none'),
(59, 5, 'orderStatusUpdate', 'ps_order_status', 'update', '', 'admin,storeadmin'),
(60, 5, 'orderStatusAdd', 'ps_order_status', 'add', '', 'storeadmin,admin'),
(61, 5, 'orderStatusDelete', 'ps_order_status', 'delete', '', 'admin,storeadmin'),
(62, 1, 'currencyAdd', 'ps_currency', 'add', 'add a currency', 'storeadmin,admin'),
(63, 1, 'currencyUpdate', 'ps_currency', 'update', '        update a currency', 'storeadmin,admin'),
(64, 1, 'currencyDelete', 'ps_currency', 'delete', 'delete a currency', 'storeadmin,admin'),
(65, 1, 'countryAdd', 'ps_country', 'add', 'Add a country ', 'storeadmin,admin'),
(66, 1, 'countryUpdate', 'ps_country', 'update', 'Update a country record', 'storeadmin,admin'),
(67, 1, 'countryDelete', 'ps_country', 'delete', 'Delete a country record', 'storeadmin,admin'),
(68, 2, 'product_csv', 'ps_csv', 'upload_csv', '', 'admin'),
(110, 7, 'waitingListAdd', 'zw_waiting_list', 'add', '', 'none'),
(111, 13, 'addzone', 'ps_zone', 'add', 'This will add a zone', 'admin,storeadmin'),
(112, 13, 'updatezone', 'ps_zone', 'update', 'This will update a zone', 'admin,storeadmin'),
(113, 13, 'deletezone', 'ps_zone', 'delete', 'This will delete a zone', 'admin,storeadmin'),
(114, 13, 'zoneassign', 'ps_zone', 'assign', 'This will assign a country to a zone', 'admin,storeadmin'),
(115, 1, 'writeConfig', 'ps_config', 'writeconfig', 'This will write the configuration details to phpshop.cfg.php', 'admin'),
(116, 12839, 'carrierAdd', 'ps_shipping', 'add', '', 'admin,storeadmin'),
(117, 12839, 'carrierDelete', 'ps_shipping', 'delete', '', 'admin,storeadmin'),
(118, 12839, 'carrierUpdate', 'ps_shipping', 'update', '', 'admin,storeadmin'),
(119, 12839, 'rateAdd', 'ps_shipping', 'rate_add', '', 'admin,storeadmin'),
(120, 12839, 'rateUpdate', 'ps_shipping', 'rate_update', '', 'admin,shopadmin'),
(121, 12839, 'rateDelete', 'ps_shipping', 'rate_delete', '', 'admin,storeadmin'),
(122, 10, 'checkoutProcess', 'ps_checkout', 'process', '', 'shopper,storeadmin,admin,demo'),
(123, 5, 'downloadRequest', 'ps_order', 'download_request', 'This checks if the download request is valid and sends the file to the browser as file download if the request was successful, otherwise echoes an error', 'admin,storeadmin,shopper'),
(124, 98, 'affiliateAdd', 'ps_affiliate', 'add', '', 'admin,storeadmin'),
(125, 98, 'affiliateUpdate', 'ps_affiliate', 'update', '', 'admin,storeadmin'),
(126, 98, 'affiliateDelete', 'ps_affiliate', 'delete', '', 'admin,storeadmin'),
(127, 98, 'affiliateEmail', 'ps_affiliate', 'email', '', 'admin,storeadmin'),
(128, 99, 'manufacturerAdd', 'ps_manufacturer', 'add', '', 'admin,storeadmin'),
(129, 99, 'manufacturerUpdate', 'ps_manufacturer', 'update', '', 'admin,storeadmin'),
(130, 99, 'manufacturerDelete', 'ps_manufacturer', 'delete', '', 'admin,storeadmin'),
(131, 99, 'manufacturercategoryAdd', 'ps_manufacturer_category', 'add', '', 'admin,storeadmin'),
(132, 99, 'manufacturercategoryUpdate', 'ps_manufacturer_category', 'update', '', 'admin,storeadmin'),
(133, 99, 'manufacturercategoryDelete', 'ps_manufacturer_category', 'delete', '', 'admin,storeadmin'),
(134, 7, 'addReview', 'ps_reviews', 'process_review', 'This lets the user add a review and rating to a product.', 'admin,storeadmin,shopper,demo'),
(135, 7, 'productReviewDelete', 'ps_reviews', 'delete_review', 'This deletes a review and from a product.', 'admin,storeadmin'),
(136, 8, 'creditcardAdd', 'ps_creditcard', 'add', 'Adds a Credit Card entry.', 'admin,storeadmin'),
(137, 8, 'creditcardUpdate', 'ps_creditcard', 'update', 'Updates a Credit Card entry.', 'admin,storeadmin'),
(138, 8, 'creditcardDelete', 'ps_creditcard', 'delete', 'Deletes a Credit Card entry.', 'admin,storeadmin'),
(139, 2, 'publishProduct', 'ps_product', 'product_publish', 'Changes the product_publish field, so that a product can be published or unpublished easily.', 'admin,storeadmin'),
(140, 2, 'export_csv', 'ps_csv', 'export_csv', 'This function exports all relevant product data to CSV.', 'admin,storeadmin'),
(141, 2, 'reorder', 'ps_product_category', 'reorder', 'Changes the list order of a category.', 'admin,storeadmin'),
(142, 2, 'discountAdd', 'ps_product_discount', 'add', 'Adds a discount.', 'admin,storeadmin'),
(143, 2, 'discountUpdate', 'ps_product_discount', 'update', 'Updates a discount.', 'admin,storeadmin'),
(144, 2, 'discountDelete', 'ps_product_discount', 'delete', 'Deletes a discount.', 'admin,storeadmin'),
(145, 12843, 'couponAdd', 'ps_coupon', 'add_coupon_code', 'Adds a Coupon.', 'admin,storeadmin'),
(146, 12843, 'couponUpdate', 'ps_coupon', 'update_coupon', 'Updates a Coupon.', 'admin,storeadmin'),
(147, 12843, 'couponDelete', 'ps_coupon', 'remove_coupon_code', 'Deletes a Coupon.', 'admin,storeadmin'),
(148, 12843, 'couponProcess', 'ps_coupon', 'process_coupon_code', 'Processes a Coupon.', 'admin,storeadmin,shopper,demo');

-- --------------------------------------------------------

--
-- Table structure for table `mos_pshop_manufacturer`
--

CREATE TABLE IF NOT EXISTS `mos_pshop_manufacturer` (
  `manufacturer_id` int(11) NOT NULL,
  `mf_name` varchar(64) DEFAULT NULL,
  `mf_email` varchar(255) DEFAULT NULL,
  `mf_desc` text,
  `mf_category_id` int(11) DEFAULT NULL,
  `mf_url` varchar(255) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=tis620;

--
-- Dumping data for table `mos_pshop_manufacturer`
--

INSERT INTO `mos_pshop_manufacturer` (`manufacturer_id`, `mf_name`, `mf_email`, `mf_desc`, `mf_category_id`, `mf_url`) VALUES
(1, 'Manufacturer', 'info@manufacturer.com', 'A manufacturer example.', 1, 'http://www.a-url.com');

-- --------------------------------------------------------

--
-- Table structure for table `mos_pshop_manufacturer_category`
--

CREATE TABLE IF NOT EXISTS `mos_pshop_manufacturer_category` (
  `mf_category_id` int(11) NOT NULL,
  `mf_category_name` varchar(64) DEFAULT NULL,
  `mf_category_desc` text
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=tis620;

--
-- Dumping data for table `mos_pshop_manufacturer_category`
--

INSERT INTO `mos_pshop_manufacturer_category` (`mf_category_id`, `mf_category_name`, `mf_category_desc`) VALUES
(1, '-default-', 'This is the default manufacturer category');

-- --------------------------------------------------------

--
-- Table structure for table `mos_pshop_module`
--

CREATE TABLE IF NOT EXISTS `mos_pshop_module` (
  `module_id` int(11) NOT NULL,
  `module_name` varchar(255) DEFAULT NULL,
  `module_description` text,
  `module_perms` varchar(255) DEFAULT NULL,
  `module_header` varchar(255) DEFAULT NULL,
  `module_footer` varchar(255) DEFAULT NULL,
  `module_publish` char(1) DEFAULT NULL,
  `list_order` int(11) DEFAULT NULL,
  `language_code_1` varchar(4) DEFAULT NULL,
  `language_code_2` varchar(4) DEFAULT NULL,
  `language_code_3` varchar(4) DEFAULT NULL,
  `language_code_4` varchar(4) DEFAULT NULL,
  `language_code_5` varchar(4) DEFAULT NULL,
  `language_file_1` varchar(255) DEFAULT NULL,
  `language_file_2` varchar(255) DEFAULT NULL,
  `language_file_3` varchar(255) DEFAULT NULL,
  `language_file_4` varchar(255) DEFAULT NULL,
  `language_file_5` varchar(255) DEFAULT NULL,
  `module_label_1` varchar(255) DEFAULT NULL,
  `module_label_2` varchar(255) DEFAULT NULL,
  `module_label_3` varchar(255) DEFAULT NULL,
  `module_label_4` varchar(255) DEFAULT NULL,
  `module_label_5` varchar(255) DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=12844 DEFAULT CHARSET=tis620;

--
-- Dumping data for table `mos_pshop_module`
--

INSERT INTO `mos_pshop_module` (`module_id`, `module_name`, `module_description`, `module_perms`, `module_header`, `module_footer`, `module_publish`, `list_order`, `language_code_1`, `language_code_2`, `language_code_3`, `language_code_4`, `language_code_5`, `language_file_1`, `language_file_2`, `language_file_3`, `language_file_4`, `language_file_5`, `module_label_1`, `module_label_2`, `module_label_3`, `module_label_4`, `module_label_5`) VALUES
(1, 'admin', '<h4>ADMINISTRATIVE USERS ONLY</h4>\r\n\r\n<p>Only used for the following:</p>\r\n<OL>\r\n\r\n<LI>User Maintenance</LI>\r\n<LI>Module Maintenance</LI>\r\n<LI>Function Maintenance</LI>\r\n</OL>\r\n', 'admin', 'header.ihtml', 'footer.ihtml', 'Y', 1, 'eng', 'esl', '', '', '', 'lang_eng.inc', 'lang_esl.inc', '', '', '', 'Admin', 'Admin', '', '', ''),
(2, 'product', '<p>Here you can adminster your online catalog of products.  The Product Administrator allows you to create product categories, create new products, edit product attributes, and add product items for each attribute value.</p>', 'storeadmin,admin', 'header.ihtml', 'footer.ihtml', 'Y', 4, 'eng', 'esl', '', '', '', 'lang_en.inc', 'lang_es.inc', '', '', '', 'Products', 'Mis<br />Productos', '', '', ''),
(3, 'vendor', '<h4>ADMINISTRATIVE USERS ONLY</h4>\r\n<p>Here you can manage the vendors on the phpShop system.</p>', 'admin', 'header.ihtml', 'footer.ihtml', 'Y', 6, 'eng', 'esl', '', '', '', 'lang_en.inc', 'lang_es.inc', '', '', '', 'Vendors', 'Los<br />Distribuidores', '', '', ''),
(4, 'shopper', '<p>Manage shoppers in your store.  Allows you to create shopper groups.  Shopper groups can be used when setting the price for a product.  This allows you to create different prices for different types of users.  An example of this would be to have a ''wholesale'' group and a ''retail'' group. </p>', 'admin,storeadmin', 'header.ihtml', 'footer.ihtml', 'Y', 4, 'eng', 'esl', '', '', '', 'lang_en.inc', 'lang_es.inc', '', '', '', 'Shoppers', 'Mis<br />Clientes', '', '', ''),
(5, 'order', '<p>View Order and Update Order Status.</p>', 'admin,storeadmin', 'header.ihtml', 'footer.ihtml', 'Y', 5, 'eng', 'esl', '', '', '', 'lang_en.inc', 'lang_es.inc', '', '', '', 'Orders', 'Mis<br />Ordenes', '', '', ''),
(6, 'msgs', 'This module is unprotected an used for displaying system messages to users.  We need to have an area that does not require authorization when things go wrong.', 'none', 'header.ihtml', 'footer.ihtml', 'N', 99, 'eng', 'esl', '', '', '', 'lang_en.inc', '', '', '', '', 'Admin', '', '', '', ''),
(7, 'shop', 'This is the Washupito store module.  This is the demo store included with the phpShop distribution.', 'none', 's_header.ihtml', 's_footer.ihtml', 'Y', 99, 'eng', 'esl', '', '', '', '', '', '', '', '', 'Shop', 'Visita<br />la Tienda', '', '', ''),
(8, 'store', '', 'storeadmin,admin', 'header.ihtml', 'footer.ihtml', 'Y', 2, 'eng', 'esl', '', '', '', 'lang_en.inc', 'lang_es.inc', '', '', '', 'Store', 'Mi<br />Tienda', '', '', ''),
(9, 'account', 'This module allows shoppers to update their account information and view previously placed orders.', 'shopper,storeadmin,admin,demo', 's_header.ihtml', 's_footer.ihtml', 'N', 99, 'eng', 'esl', '', '', '', '', '', '', '', '', 'Account', 'Account', '', '', ''),
(10, 'checkout', '', 'none', 's_header.ihtml', 's_footer.ihtml', 'N', 99, 'eng', 'esl', '', '', '', '', '', '', '', '', 'Checkout', 'Checkout', '', '', ''),
(11, 'tax', 'The tax module allows you to set tax rates for states or regions within a country.  The rate is set as a decimal figure.  For example, 2 percent tax would be 0.02.', 'admin,storeadmin', 'header.ihtml', 'footer.ihtml', 'Y', 8, 'eng', 'esl', '', '', '', '', '', '', '', '', 'Taxes', 'Impuestos', '', '', ''),
(12, 'reportbasic', 'The report basic module allows you to do queries on all orders.', 'admin,storeadmin', 'header.ihtml', 'footer.ihtml', 'Y', 7, 'eng', 'esl', '', '', '', '', '', '', '', '', 'Report Basic', 'Report Basic', '', '', ''),
(13, 'zone', 'This is the zone-shipping module. Here you can manage your shipping costs according to Zones.', 'admin,storeadmin', 'header.ihtml', 'footer.ihtml', 'N', 9, 'eng', 'esl', '', '', '', '', '', '', '', '', 'Zone Shipping', 'Zone Shipping', '', '', ''),
(12839, 'shipping', '<h4>Shipping</h4><p>Let this module calculate the shipping fees for your customers.<br>Create carriers for shipping areas and weight groups.</p>', 'admin,storeadmin', 'header.ihtml', 'footer.ihtml', 'Y', 20, 'eng', 'ger', '', '', '', '', '', '', '', '', 'Shipping', 'Versand', '', '', ''),
(98, 'affiliate', 'administrate the affiliates on your store.', 'storeadmin,admin', 'header.ihtml', 'footer.ihtml', 'N', 99, 'EN', 'ES', '', '', '', 'lang_en.inc', 'lang_es.inc', '', '', '', 'affiliates', '', '', '', ''),
(99, 'manufacturer', 'Manage the manufacturers of products in your store.', 'storeadmin,admin', 'header.ihtml', 'footer.ihtml', 'Y', 99, 'EN', 'ES', '', '', '', 'lang_en.inc', 'lang_es.inc', '', '', '', 'manufacturer', '', '', '', ''),
(12842, 'help', 'Help for phpshop', 'admin,storeadmin', 'header.ihtml', 'footer.ihtml', 'Y', 99, 'eng', '', '', '', '', '', '', '', '', '', 'Help', '', '', '', ''),
(12843, 'coupon', 'Coupon Management', 'admin,storeadmin', 'header.ihtml', 'footer.ihtml', 'Y', 99, 'eng', '', '', '', '', '', '', '', '', '', 'Coupon', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `mos_pshop_order_item`
--

CREATE TABLE IF NOT EXISTS `mos_pshop_order_item` (
  `order_item_id` int(11) NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `user_info_id` varchar(32) DEFAULT NULL,
  `vendor_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `order_item_sku` varchar(64) NOT NULL,
  `order_item_name` varchar(64) NOT NULL,
  `product_quantity` int(11) DEFAULT NULL,
  `product_item_price` decimal(10,2) DEFAULT NULL,
  `order_item_currency` varchar(16) DEFAULT NULL,
  `order_status` char(1) DEFAULT NULL,
  `cdate` int(11) DEFAULT NULL,
  `mdate` int(11) DEFAULT NULL,
  `product_attribute` text
) ENGINE=MyISAM DEFAULT CHARSET=tis620;

-- --------------------------------------------------------

--
-- Table structure for table `mos_pshop_order_payment`
--

CREATE TABLE IF NOT EXISTS `mos_pshop_order_payment` (
  `order_id` int(11) NOT NULL DEFAULT '0',
  `payment_method_id` int(11) DEFAULT NULL,
  `order_payment_code` varchar(30) NOT NULL,
  `order_payment_number` blob,
  `order_payment_expire` int(11) DEFAULT NULL,
  `order_payment_name` varchar(255) DEFAULT NULL,
  `order_payment_log` text,
  `order_payment_trans_id` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=tis620;

-- --------------------------------------------------------

--
-- Table structure for table `mos_pshop_order_status`
--

CREATE TABLE IF NOT EXISTS `mos_pshop_order_status` (
  `order_status_id` int(11) NOT NULL,
  `order_status_code` char(1) NOT NULL DEFAULT '',
  `order_status_name` varchar(64) DEFAULT NULL,
  `list_order` int(11) DEFAULT NULL,
  `vendor_id` int(11) DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=tis620;

--
-- Dumping data for table `mos_pshop_order_status`
--

INSERT INTO `mos_pshop_order_status` (`order_status_id`, `order_status_code`, `order_status_name`, `list_order`, `vendor_id`) VALUES
(1, 'P', 'Pending', 1, 1),
(2, 'C', 'Confirmed', 1, 1),
(3, 'X', 'Cancelled', 3, 1),
(4, 'S', 'Shipped', 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `mos_pshop_order_user_info`
--

CREATE TABLE IF NOT EXISTS `mos_pshop_order_user_info` (
  `order_info_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `user_id` varchar(32) NOT NULL DEFAULT '',
  `address_type` char(2) DEFAULT NULL,
  `address_type_name` varchar(32) DEFAULT NULL,
  `company` varchar(64) DEFAULT NULL,
  `title` varchar(32) DEFAULT NULL,
  `last_name` varchar(32) DEFAULT NULL,
  `first_name` varchar(32) DEFAULT NULL,
  `middle_name` varchar(32) DEFAULT NULL,
  `phone_1` varchar(32) DEFAULT NULL,
  `phone_2` varchar(32) DEFAULT NULL,
  `fax` varchar(32) DEFAULT NULL,
  `address_1` varchar(64) NOT NULL DEFAULT '',
  `address_2` varchar(64) DEFAULT NULL,
  `city` varchar(32) NOT NULL DEFAULT '',
  `state` varchar(32) NOT NULL DEFAULT '',
  `country` varchar(32) NOT NULL DEFAULT 'US',
  `zip` varchar(32) NOT NULL DEFAULT '',
  `user_email` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=tis620;

-- --------------------------------------------------------

--
-- Table structure for table `mos_pshop_payment_method`
--

CREATE TABLE IF NOT EXISTS `mos_pshop_payment_method` (
  `payment_method_id` int(11) NOT NULL,
  `vendor_id` int(11) DEFAULT NULL,
  `payment_method_name` varchar(255) DEFAULT NULL,
  `payment_class` varchar(50) NOT NULL,
  `shopper_group_id` int(11) DEFAULT NULL,
  `payment_method_discount` decimal(10,2) DEFAULT NULL,
  `list_order` int(11) DEFAULT NULL,
  `payment_method_code` varchar(8) DEFAULT NULL,
  `enable_processor` char(1) DEFAULT NULL,
  `is_creditcard` tinyint(1) NOT NULL,
  `payment_enabled` char(1) NOT NULL DEFAULT 'N',
  `accepted_creditcards` varchar(128) NOT NULL,
  `payment_extrainfo` text NOT NULL,
  `payment_passkey` blob NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=tis620;

--
-- Dumping data for table `mos_pshop_payment_method`
--

INSERT INTO `mos_pshop_payment_method` (`payment_method_id`, `vendor_id`, `payment_method_name`, `payment_class`, `shopper_group_id`, `payment_method_discount`, `list_order`, `payment_method_code`, `enable_processor`, `is_creditcard`, `payment_enabled`, `accepted_creditcards`, `payment_extrainfo`, `payment_passkey`) VALUES
(1, 1, 'Purchase Order', '', 5, '0.00', 4, 'PO', 'N', 0, 'Y', '', '', ''),
(2, 1, 'Cash On Delivery', '', 5, '-2.00', 5, 'COD', 'N', 0, 'Y', '', '', ''),
(3, 1, 'Credit Card', 'ps_authorize', 5, '0.00', 0, 'AN', 'Y', 0, 'Y', '1,2,6,7,', '', ''),
(4, 1, 'PayPal', 'ps_paypal', 5, '0.00', 0, 'PP', 'P', 0, 'Y', '', '<form action="https://www.paypal.com/cgi-bin/webscr" method="post" target="_blank">\r\n<input type="image" name="submit" src="http://images.paypal.com/images/x-click-but6.gif" border="0" alt="Make payments with PayPal, it''s fast, free, and secure!">\r\n<input type="hidden" name="cmd" value="_xclick" />\r\n<input type="hidden" name="business" value="<?php echo PAYPAL_EMAIL ?>" />\r\n<input type="hidden" name="receiver_email" value="<?php echo PAYPAL_EMAIL ?>" />\r\n<input type="hidden" name="item_name" value="Order Nr. <?php $db->p("order_id") ?>" />\r\n<input type="hidden" name="invoice" value="<?php $db->p("order_number") ?>" />\r\n<input type="hidden" name="amount" value="<?php printf("%.2f", $db->f("order_total"))?>" />\r\n<input type="hidden" name="currency_code" value="<?php echo $_SESSION[''vendor_currency''] ?>" />\r\n<input type="hidden" name="image_url" value="<?php echo $vendor_image_url ?>" />\r\n<input type="hidden" name="return" value="<?php echo SECUREURL ."index.php?option=com_phpshop&amp;page=checkout.result&amp;order_id=".$db->f("order_id") ?>" />\r\n<input type="hidden" name="notify_url" value="<?php echo SECUREURL ."administrator/components/com_phpshop/notify.php" ?>" />\r\n<input type="hidden" name="cancel_return" value="<?php echo SECUREURL ."index.php" ?>" />\r\n<input type="hidden" name="undefined_quantity" value="0" />\r\n<input type="hidden" name="mrb" value="R-3WH47588B4505740X" />\r\n<input type="hidden" name="no_shipping" value="0" />\r\n<input type="hidden" name="no_note" value="1" />\r\n</form>', ''),
(5, 1, 'PayMate', 'ps_paymate', 5, '0.00', 0, 'PM', 'P', 0, 'Y', '', '<script language="javascript">\r\nfunction openExpress(){\r\n   var url = ''https://www.paymate.com.au/PayMate/ExpressPayment?mid=<?php echo PAYMATE_USERNAME."&amt=".$db->f("order_total")."&currency=".$_SESSION[''vendor_currency'']."&ref=".$db->f("order_id")."&pmt_sender_email=".$dbbt->f("email");?>''\r\n   var newWin = window.open(url, ''wizard'', ''height=580,width=500,scrollbars=1,toolbar=no'');\r\n   self.name = ''parent'';\r\n   newWin.focus();\r\n}\r\n</script>\r\n<div align="center">\r\n<p>\r\n<a href="javascript:openExpress();">\r\n<img src="https://www.paymate.com.au/images/paymate-PE-payment-88x31.gif" border="0" alt="Pay with Paymate Express"></a>\r\n<br />Pay with Paymate Express\r\n</p>\r\n</div>', ''),
(6, 1, 'WorldPay', 'ps_worldpay', 5, '0.00', 0, 'WP', 'P', 0, 'N', '', '<form action="https://select.worldpay.com/wcc/purchase" method="post">\r\n<input type="hidden" name="instId" value="<?php echo WORLDPAY_INST_ID ?>" />\r\n<input type="hidden" name="cartId" value="<?php echo $db->f("order_id") ?>" />\r\n<input type="hidden" name="amount" value="<?php echo $db->f("order_total") ?>" />\r\n<input type="hidden" name="currency" value="<?php echo $_SESSION[''vendor_currency''] ?>" />\r\n<input type="hidden" name="desc" value="" />\r\n<input type="hidden" name="email" value="<?php $dbbt->p("email"); ?>" />\r\n<input type="image" scr="http://www.ecommercetemplates.com/images/worldpay.gif" alt="WorldPay" />\r\n</form>', ''),
(7, 1, 'Credit Card (2Checkout)', 'ps_twocheckout', 5, '0.00', 0, '2CO', 'P', 0, 'N', '', '<?php\r\n$q  = "SELECT * FROM mos_users WHERE user_info_id=''".$db->f("user_info_id")."''"; \r\n$dbbt = new ps_DB;\r\n$dbbt->setQuery($q);\r\n$dbbt->query();\r\n$dbbt->next_record(); \r\n// Get ship_to information\r\nif( $db->f("user_info_id") != $dbbt->f("user_info_id")) {\r\n  $q2  = "SELECT * FROM mos_pshop_user_info WHERE user_info_id=''".$db->f("user_info_id")."''"; \r\n  $dbst = new ps_DB;\r\n  $dbst->setQuery($q2);\r\n  $dbst->query();\r\n  $dbst->next_record();\r\n}\r\nelse  {\r\n  $dbst = $dbbt;\r\n}\r\n        \r\n//Authnet vars to send\r\n$formdata = array (\r\n ''x_login'' => TWOCO_LOGIN,\r\n ''x_email_merchant'' => ((TWOCO_MERCHANT_EMAIL == ''True'') ? ''TRUE'' : ''FALSE''),\r\n         \r\n // Customer Name and Billing Address\r\n ''x_first_name'' => $dbbt->f("first_name"),\r\n ''x_last_name'' => $dbbt->f("last_name"),\r\n ''x_company'' => $dbbt->f("company"),\r\n ''x_address'' => $dbbt->f("address_1"),\r\n ''x_city'' => $dbbt->f("city"),\r\n ''x_state'' => $dbbt->f("state"),\r\n ''x_zip'' => $dbbt->f("zip"),\r\n ''x_country'' => $dbbt->f("country"),\r\n ''x_phone'' => $dbbt->f("phone_1"),\r\n ''x_fax'' => $dbbt->f("fax"),\r\n ''x_email'' => $dbbt->f("email"),\r\n\r\n // Customer Shipping Address\r\n ''x_ship_to_first_name'' => $dbst->f("first_name"),\r\n ''x_ship_to_last_name'' => $dbst->f("last_name"),\r\n ''x_ship_to_company'' => $dbst->f("company"),\r\n ''x_ship_to_address'' => $dbst->f("address_1"),\r\n ''x_ship_to_city'' => $dbst->f("city"),\r\n ''x_ship_to_state'' => $dbst->f("state"),\r\n ''x_ship_to_zip'' => $dbst->f("zip"),\r\n ''x_ship_to_country'' => $dbst->f("country"),\r\n\r\n ''x_invoice_num'' => $db->f("order_number"),\r\n ''x_receipt_link_url'' => SECUREURL."2checkout_notify.php"\r\n );\r\n \r\nif( TWOCO_TESTMODE == "Y" )\r\n  $formdata[''demo''] = "Y";\r\n\r\nif( intval(TWOCO_LOGIN) > 199999 ) {\r\n  $version = "2";\r\n  $url = "https://www2.2checkout.com/2co/buyer/purchase";\r\n  $formdata[''x_amount''] = $db->f("order_total");\r\n}\r\nelse {\r\n  $version = "1";\r\n  $url = "https://www.2checkout.com/cgi-bin/Abuyers/purchase.2c";\r\n  $formdata[''x_amount''] = $_SESSION[''vendor_currency''] . " " . $db->f("order_total");\r\n}  \r\n //build the post string\r\n $poststring = '''';\r\n foreach($formdata AS $key => $val){\r\n   $poststring .= "<input type=''hidden'' name=''$key'' value=''$val'' />\r\n";\r\n }\r\n\r\n?>\r\n<form action="<?php echo $url ?>" method="post" target="_blank">\r\n<?php echo $poststring ?>\r\n<p>Click on the Image below to pay...</p>\r\n<input type="image" name="submit" src="https://www.2checkout.com/images/buy_logo.gif" border="0" alt="Make payments with 2Checkout, it''s fast and secure!" title="Pay your Order with 2Checkout, it''s fast and secure!" />\r\n</form>', ''),
(8, 1, 'NoChex', 'ps_nochex', 5, '0.00', 0, 'NOCHEX', 'P', 0, 'N', '', '<form action="https://www.nochex.com/nochex.dll/checkout" method=post target="_blank"> \r\n                                                <input type="hidden" name="email" value="<?php echo NOCHEX_EMAIL ?>" />\r\n                                                <input type="hidden" name="amount" value="<?php printf("%.2f", $db->f("order_total"))?>" />\r\n                                                <input type="hidden" name="ordernumber" value="<?php $db->p("order_id") ?>" />\r\n                                                <input type="hidden" name="logo" value="<?php echo $vendor_image_url ?>" />\r\n                                                <input type="hidden" name="returnurl" value="<?php echo SECUREURL ."index.php?option=com_phpshop&amp;page=checkout.result&amp;order_id=".$db->f("order_id") ?>" />\r\n                                                <input type="image" name="submit" SRC="http://www.nochex.com/web/images/paymeanimated.gif"> \r\n                                                </form>', ''),
(9, 1, 'Credit Card (PayMeNow)', 'ps_paymenow', 5, '0.00', 0, 'PN', 'Y', 0, 'N', '1,2,3,', '', ''),
(10, 1, 'eWay', 'ps_eway', 5, '0.00', 0, 'EW', 'Y', 0, 'N', '', '', ''),
(11, 1, 'eCheck.net', 'ps_echeck', 5, '0.00', 0, 'ECK', 'B', 0, 'N', '', '', ''),
(12, 1, 'Credit Card (eProcessingNetwork)', 'ps_epn', 5, '0.00', 0, 'EPN', 'Y', 0, 'N', '1,2,3,', '', ''),
(13, 1, 'iKobo', '', 5, '0.00', 0, 'IK', 'P', 0, 'N', '', '<form action="https://www.iKobo.com/store/index.php" method="post"> \r\n    <input type="hidden" name="cmd" value="cart" />Click on the image below to Pay with iKobo\r\n    <input type="image" src="https://www.ikobo.com/merchant/buttons/ikobo_pay1.gif" name="submit" alt="Pay with iKobo" /> \r\n    <input type="hidden" name="poid" value="USER_ID" /> \r\n    <input type="hidden" name="item" value="Order: <?php $db->p("order_id") ?>" /> \r\n    <input type="hidden" name="price" value="<?php printf("%.2f", $db->f("order_total"))?>" /> \r\n    <input type="hidden" name="firstname" value="<?php echo $user->first_name?>" /> \r\n    <input type="hidden" name="lastname" value="<?php echo $user->last_name?>" /> \r\n    <input type="hidden" name="address" value="<?php echo $user->address_1?>&#10<?php echo $user->address_2?>" /> \r\n    <input type="hidden" name="city" value="<?php echo $user->city?>" /> \r\n    <input type="hidden" name="state" value="<?php echo $user->state?>" /> \r\n    <input type="hidden" name="zip" value="<?php echo $user->zip?>" /> \r\n    <input type="hidden" name="phone" value="<?php echo $user->phone_1?>" /> \r\n    <input type="hidden" name="email" value="<?php echo $user->email?>" /> \r\n    </form> >', ''),
(14, 1, 'iTransact', '', 5, '0.00', 0, 'ITR', 'P', 0, 'N', '', '<?php\r\n//your iTransact account details\r\n$vendorID = "XXXXX";\r\nglobal $vendor_name;\r\n$mername = $vendor_name;\r\n\r\n//order details\r\n$total = $db->f("order_total");$first_name = $user->first_name;$last_name = $user->last_name;$address = $user->address_1;$city = $user->city;$state = $user->state;$zip = $user->zip;$country = $user->country;$email = $user->email;$phone = $user->phone_1;$home_page = $mosConfig_live_site."/index.php";$ret_addr = $mosConfig_live_site."/index.php";$cc_payment_image = $mosConfig_live_site."/components/com_phpshop/shop_image/ps_image/cc_payment.jpg";\r\n?>\r\n<form action="https://secure.paymentclearing.com/cgi-bin/mas/split.cgi" method="POST"> \r\n			<input type="hidden" name="vendor_id" value="<?php echo $vendorID; ?>" />\r\n			<input type="hidden" name="home_page" value="<?php echo $home_page; ?>" />\r\n			<input type="hidden" name="ret_addr" value="<?php echo $ret_addr; ?>" />\r\n			<input type="hidden" name="mername" value="<?php echo $mername; ?>" />\r\n			<!--Enter text in the next value that should appear on the bottom of the order form.-->\r\n			<INPUT type="hidden" name="mertext" value="" />\r\n			<!--If you are accepting checks, enter the number 1 in the next value.  Enter the number 0 if you are not accepting checks.-->\r\n			<INPUT type="hidden" name="acceptchecks" value="0" />\r\n			<!--Enter the number 1 in the next value if you want to allow pre-registered customers to pay with a check.  Enter the number 0 if not.-->\r\n			<INPUT type="hidden" name="allowreg" value="0" />\r\n			<!--If you are set up with Check Guarantee, enter the number 1 in the next value.  Enter the number 0 if not.-->\r\n			<INPUT type="hidden" name="checkguar" value="0" />\r\n			<!--Enter the number 1 in the next value if you are accepting credit card payments.  Enter the number zero if not.-->\r\n			<INPUT type="hidden" name="acceptcards" value="1">\r\n			<!--Enter the number 1 in the next value if you want to allow a separate mailing address for credit card orders.  Enter the number 0 if not.-->\r\n			<INPUT type="hidden" name="altaddr" value="0" />\r\n			<!--Enter the number 1 in the next value if you want the customer to enter the CVV number for card orders.  Enter the number 0 if not.-->\r\n			<INPUT type="hidden" name="showcvv" value="1" />\r\n			\r\n			<input type="hidden" name="1-desc" value="Order Total" />\r\n			<input type="hidden" name="1-cost" value="<?php echo $total; ?>" />\r\n			<input type="hidden" name="1-qty" value="1" />\r\n			<input type="hidden" name="total" value="<?php echo $total; ?>" />\r\n			<input type="hidden" name="first_name" value="<?php echo $first_name; ?>" />\r\n			<input type="hidden" name="last_name" value="<?php echo $last_name; ?>" />\r\n			<input type="hidden" name="address" value="<?php echo $address; ?>" />\r\n			<input type="hidden" name="city" value="<?php echo $city; ?>" />\r\n			<input type="hidden" name="state" value="<?php echo $state; ?>" />\r\n			<input type="hidden" name="zip" value="<?php echo $zip; ?>" />\r\n			<input type="hidden" name="country" value="<?php echo $country; ?>" />\r\n			<input type="hidden" name="phone" value="<?php echo $phone; ?>" />\r\n			<input type="hidden" name="email" value="<?php echo $email; ?>" />\r\n			<p><input type="image" alt="Process Secure Credit Card Transaction using iTransact" border="0" height="60" width="210" src="<?php echo $cc_payment_image; ?>" /> </p>\r\n			</form>', '');

-- --------------------------------------------------------

--
-- Table structure for table `mos_pshop_product`
--

CREATE TABLE IF NOT EXISTS `mos_pshop_product` (
  `product_id` int(11) NOT NULL,
  `vendor_id` int(11) NOT NULL DEFAULT '0',
  `product_parent_id` int(11) NOT NULL DEFAULT '0',
  `product_sku` varchar(64) NOT NULL DEFAULT '',
  `product_s_desc` varchar(255) DEFAULT NULL,
  `product_desc` text,
  `product_thumb_image` varchar(255) DEFAULT NULL,
  `product_full_image` varchar(255) DEFAULT NULL,
  `product_publish` char(1) DEFAULT NULL,
  `product_weight` decimal(10,4) DEFAULT NULL,
  `product_weight_uom` varchar(32) DEFAULT 'pounds.',
  `product_length` decimal(10,4) DEFAULT NULL,
  `product_width` decimal(10,4) DEFAULT NULL,
  `product_height` decimal(10,4) DEFAULT NULL,
  `product_lwh_uom` varchar(32) DEFAULT 'inches',
  `product_url` varchar(255) DEFAULT NULL,
  `product_in_stock` int(11) DEFAULT NULL,
  `product_available_date` int(11) DEFAULT NULL,
  `product_availability` varchar(56) NOT NULL,
  `product_special` char(1) DEFAULT NULL,
  `product_discount_id` int(11) DEFAULT NULL,
  `ship_code_id` int(11) DEFAULT NULL,
  `cdate` int(11) DEFAULT NULL,
  `mdate` int(11) DEFAULT NULL,
  `product_name` varchar(64) DEFAULT NULL,
  `product_sales` int(11) NOT NULL DEFAULT '0',
  `attribute` text,
  `custom_attribute` text,
  `product_tax_id` tinyint(2) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=tis620;

--
-- Dumping data for table `mos_pshop_product`
--

INSERT INTO `mos_pshop_product` (`product_id`, `vendor_id`, `product_parent_id`, `product_sku`, `product_s_desc`, `product_desc`, `product_thumb_image`, `product_full_image`, `product_publish`, `product_weight`, `product_weight_uom`, `product_length`, `product_width`, `product_height`, `product_lwh_uom`, `product_url`, `product_in_stock`, `product_available_date`, `product_availability`, `product_special`, `product_discount_id`, `ship_code_id`, `cdate`, `mdate`, `product_name`, `product_sales`, `attribute`, `custom_attribute`, `product_tax_id`) VALUES
(1, 1, 0, 'G01', '<p>Nice hand shovel to dig with in the yard.</p>\r\n', '\r\n<ul>  <li>Hand crafted handle with maximum grip torque  </li><li>Titanium tipped shovel platter  </li><li>Half degree offset for less accidents  </li><li>Includes HowTo Video narrated by Bob Costas  </li></ul>    <b>Specifications</b><br>  5" Diameter<br>  Tungsten handle tip with 5 point loft<br>\r\n', '8d886c5855770cc01a3b8a2db57f6600.jpg', 'cca3cd5db813ee6badf6a3598832f2fc.jpg', 'Y', '10.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 10, 1072911600, '48h.gif', 'Y', 1, NULL, 950320117, 1084907592, 'Hand Shovel', 0, '', '', 2),
(2, 1, 0, 'G02', 'A really long ladder to reach high places.', '\r\n<ul>  <li>Hand crafted handle with maximum grip torque  </li><li>Titanium tipped shovel platter  </li><li>Half degree offset for less accidents  </li><li>Includes HowTo Video narrated by Bob Costas  </li></ul>    <b>Specifications</b><br>  5" Diameter<br>  Tungsten handle tip with 5 point loft<br>\r\n', 'ffd5d5ace2840232c8c32de59553cd8d.jpg', '8cb8d644ef299639b7eab25829d13dbc.jpg', 'Y', '10.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 76, 1072911600, '3-5d.gif', 'N', 0, NULL, 950320180, 1084907618, 'Ladder', 0, '', '', 2),
(3, 1, 0, 'G03', 'Nice shovel.  You can dig your way to China with this one.', '\r\n<ul>  <li>Hand crafted handle with maximum grip torque  </li><li>Titanium tipped shovel platter  </li><li>Half degree offset for less accidents  </li><li>Includes HowTo Video narrated by Bob Costas  </li></ul>    <b>Specifications</b><br>  5" Diameter<br>  Tungsten handle tip with 5 point loft<br>\r\n', '8147a3a9666aec0296525dbd81f9705e.jpg', '520efefd6d7977f91b16fac1149c7438.jpg', 'Y', '10.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 32, 1072911600, '7d.gif', 'N', 0, NULL, 950320243, 1084907765, 'Shovel', 0, 'Size,XL[+1.99],M,S[-2.99];Colour,Red,Green,Yellow,ExpensiveColor[=24.00]', '', 2),
(4, 1, 0, 'G04', 'This shovel is smaller but you''ll be able to dig real quick.', '\r\n<ul>  <li>Hand crafted handle with maximum grip torque  </li><li>Titanium tipped shovel platter  </li><li>Half degree offset for less accidents  </li><li>Includes HowTo Video narrated by Bob Costas  </li></ul>    <b>Specifications</b><br>  5" Diameter<br>  Tungsten handle tip with 5 point loft<br>\r\n', 'a04395a8aefacd9c1659ebca4dbfd4ba.jpg', '1b0c96d67abdbea648cd0ea96fd6abcb.jpg', 'Y', '10.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 98, 1088632800, 'on-order.gif', 'N', 0, NULL, 950320378, 1084907867, 'Smaller Shovel', 0, 'Size,big[+2.99],medium;Color,red[+0.99],green[-0.99]', '', 2),
(5, 1, 0, 'H01', 'This saw is great for getting cutting through downed limbs.', '\r\n<ul>  <li>Hand crafted handle with maximum grip torque  </li><li>Titanium tipped shovel platter  </li><li>Half degree offset for less accidents  </li><li>Includes HowTo Video narrated by Bob Costas  </li></ul>    <b>Specifications</b><br>  5" Diameter<br>  Tungsten handle tip with 5 point loft<br>\r\n', '1aa8846d3cfe3504b2ccaf7c23bb748f.jpg', 'e614ba08c3ee0c2adc62fd9e5b9440eb.jpg', 'Y', '10.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 32, 1072911600, '1-4w.gif', 'Y', 2, NULL, 950321256, 1084907669, 'Nice Saw', 0, 'Size,big,small,medium;Power,100W,200W,500W', '', 2),
(6, 1, 0, 'H02', 'A great hammer to hammer away with.', '\r\n<ul>  <li>Hand crafted handle with maximum grip torque  </li><li>Titanium tipped shovel platter  </li><li>Half degree offset for less accidents  </li><li>Includes HowTo Video narrated by Bob Costas  </li></ul>    <b>Specifications</b><br>  5" Diameter<br>  Tungsten handle tip with 5 point loft<br>\r\n', 'dccb8223891a17d752bfc1477d320da9.jpg', '578563851019e01264a9b40dcf1c4ab6.jpg', 'Y', '10.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 500, 1072911600, '24h.gif', 'N', 0, NULL, 950321631, 1084907947, 'Hammer', 0, 'Size,big,medium,small;Material,wood and metal,plastic and metal[-0.99]', '', 2),
(7, 1, 0, 'P01', 'Don''t do it with an axe.  Get a chain saw.', '\r\n<ul>  <li>Tool-free tensioner for easy, convenient chain adjustment  </li><li>3-Way Auto Stop; stops chain a fraction of a second  </li><li>Automatic chain oiler regulates oil for proper chain lubrication  </li><li>Small radius guide bar reduces kick-back  </li></ul>  <br>  <b>Specifications</b><br>  12.5 AMPS   <br>   16" Bar Length   <br>   3.5 HP   <br>   8.05 LBS. Weight   <br>\r\n', '8716aefc3b0dce8870360604e6eb8744.jpg', 'c3a5bf074da14f30c849d13a2dd87d2c.jpg', 'Y', '10.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 45, 1088632800, '48h.gif', 'N', 0, NULL, 950321725, 1084907512, 'Chain Saw', 0, '', '', 2),
(8, 1, 0, 'P02', 'Cut rings around wood.  This saw can handle the most delicate projects.', '\r\n<ul>  <li>Patented Sightline; Window provides maximum visibility for straight cuts  </li><li>Adjustable dust chute for cleaner work area  </li><li>Bail handle for controlled cutting in 90ฐ to 45ฐ applications  </li><li>1-1/2 to 2-1/2 lbs. lighter and 40% less noise than the average circular saw                     </li><li><b>Includes:</b>Carbide blade  </li></ul>  <br>  <b>Specifications</b><br>  10.0 AMPS   <br>   4,300 RPM   <br>   Capacity: 2-1/16" at 90ฐ, 1-3/4" at 45ฐ<br>\r\n', 'b4a748303d0d996b29d5a1e1d1112537.jpg', '9a4448bb13e2f7699613b2cfd7cd51ad.jpg', 'Y', '10.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 33, 1072911600, '3-5d.gif', 'Y', 1, NULL, 950321795, 1084907537, 'Circular Saw', 0, 'Size,XL[+1],M,S[-2];Power,strong,middle,poor[=24]', '', 2),
(9, 1, 0, 'P03', 'Drill through anything.  This drill has the power you need for those demanding hole boring duties.', '\r\n<font color="#000000" size="3"><ul><li>High power motor and double gear reduction for increased durability and improved performance  </li><li>Mid-handle design and two finger trigger for increased balance and comfort  </li><li>Variable speed switch with lock-on button for continuous use  </li><li><b>Includes:</b> Chuck key &amp; holder  </li></ul>  <br>  <b>Specifications</b><br>  4.0 AMPS   <br>   0-1,350 RPM   <br>   Capacity: 3/8" Steel, 1" Wood   <br><br>  </font>\r\n', 'c70a3f47baf9a4020aeeee919eb3fda4.jpg', '1ff5f2527907ca86103288e1b7cc3446.jpg', 'Y', '10.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 3, 1072911600, '2-3d.gif', 'N', 0, NULL, 950321879, 1084907557, 'Drill', 0, '', '', 2),
(10, 1, 0, 'P04', 'Blast away that paint job from the past.  Use this power sander to really show them you mean business.', '\r\n<ul>  <li>Lever activated paper clamps for simple sandpaper changes  </li><li>Dust sealed rocker switch extends product life and keeps dust out of motor  </li><li>Flush sands on three sides to get into corners  </li><li>Front handle for extra control  </li><li>Dust extraction port for cleaner work environment   </li></ul>  <br>  <b>Specifications</b><br>  1.2 AMPS    <br>   10,000 OPM    <br>\r\n', '7a36a05526e93964a086f2ddf17fc609.jpg', '480655b410d98a5cc3bef3927e786866.jpg', 'Y', '10.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 2, 1072911600, '1-2m.gif', 'N', 2, NULL, 950321963, 1084907719, 'Power Sander', 0, 'Size,big,medium,small;Power,100W,200W,300W', '', 2),
(11, 1, 1, 'G01-01', '', '', '', '', 'Y', '10.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 0, '', '', 0, NULL, 955696949, 960372163, 'Hand Shovel', 0, NULL, '', 0),
(12, 1, 1, 'G01-02', '', '', '', '', 'Y', '10.0000', '', '0.0000', '0.0000', '0.0000', '', '', 0, 0, '', '', 0, NULL, 955697006, 960372187, 'Hand Shovel', 0, NULL, '', 0),
(13, 1, 1, 'G01-03', '', '', '', '', 'Y', '10.0000', '', '0.0000', '0.0000', '0.0000', '', '', 0, 0, '', '', 0, NULL, 955697044, 960372206, 'Hand Shovel', 0, NULL, '', 0),
(14, 1, 2, 'L01', '', '', '', '', 'Y', '10.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 22, 1072911600, '', 'N', 0, NULL, 962351149, 1084902820, 'Metal Ladder', 0, NULL, '', 2),
(15, 1, 2, 'L02', '', '', '', '', 'Y', '10.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 0, '', '', 0, NULL, 962351165, 962351165, 'Wooden Ladder', 0, NULL, '', 0),
(16, 1, 2, 'L03', '', '', '', '', 'Y', '10.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', '', 0, 0, '', '', 0, NULL, 962351180, 962351180, 'Plastic Ladder', 0, NULL, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `mos_pshop_product_attribute`
--

CREATE TABLE IF NOT EXISTS `mos_pshop_product_attribute` (
  `product_id` int(11) NOT NULL DEFAULT '0',
  `attribute_name` char(255) NOT NULL DEFAULT '',
  `attribute_value` char(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=tis620;

--
-- Dumping data for table `mos_pshop_product_attribute`
--

INSERT INTO `mos_pshop_product_attribute` (`product_id`, `attribute_name`, `attribute_value`) VALUES
(11, 'Color', 'Red'),
(12, 'Color', 'Green'),
(13, 'Color', 'Blue'),
(11, 'Size', 'Small'),
(12, 'Size', 'Medium'),
(13, 'Size', 'Large'),
(14, 'Material', 'Metal'),
(15, 'Material', 'Wood'),
(16, 'Material', 'Plastic');

-- --------------------------------------------------------

--
-- Table structure for table `mos_pshop_product_attribute_sku`
--

CREATE TABLE IF NOT EXISTS `mos_pshop_product_attribute_sku` (
  `product_id` int(11) NOT NULL DEFAULT '0',
  `attribute_name` char(255) NOT NULL DEFAULT '',
  `attribute_list` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=tis620;

--
-- Dumping data for table `mos_pshop_product_attribute_sku`
--

INSERT INTO `mos_pshop_product_attribute_sku` (`product_id`, `attribute_name`, `attribute_list`) VALUES
(1, 'Color', 1),
(1, 'Size', 2),
(2, 'Material', 1);

-- --------------------------------------------------------

--
-- Table structure for table `mos_pshop_product_category_xref`
--

CREATE TABLE IF NOT EXISTS `mos_pshop_product_category_xref` (
  `category_id` varchar(32) DEFAULT NULL,
  `product_id` int(11) NOT NULL DEFAULT '0',
  `product_list` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=tis620;

--
-- Dumping data for table `mos_pshop_product_category_xref`
--

INSERT INTO `mos_pshop_product_category_xref` (`category_id`, `product_id`, `product_list`) VALUES
('541a03b2b0e1b6dbd972e9f5af5ca992', 1, NULL),
('6834dda8e3e6e5aa18bafc63a57fd04a', 2, NULL),
('6834dda8e3e6e5aa18bafc63a57fd04a', 3, NULL),
('6834dda8e3e6e5aa18bafc63a57fd04a', 4, NULL),
('541a03b2b0e1b6dbd972e9f5af5ca992', 5, NULL),
('541a03b2b0e1b6dbd972e9f5af5ca992', 6, NULL),
('f85e462baf927f8e53989dd969c0e430', 7, NULL),
('1c914424d2569bea3439fbcca9123a27', 8, NULL),
('2f34f8bf003a5f27bed2e8dfe0b6f33a', 9, NULL),
('1c914424d2569bea3439fbcca9123a27', 10, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `mos_pshop_product_discount`
--

CREATE TABLE IF NOT EXISTS `mos_pshop_product_discount` (
  `discount_id` int(11) NOT NULL,
  `amount` decimal(3,2) NOT NULL DEFAULT '0.00',
  `is_percent` tinyint(1) NOT NULL DEFAULT '0',
  `start_date` int(11) NOT NULL DEFAULT '0',
  `end_date` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=tis620;

--
-- Dumping data for table `mos_pshop_product_discount`
--

INSERT INTO `mos_pshop_product_discount` (`discount_id`, `amount`, `is_percent`, `start_date`, `end_date`) VALUES
(1, '9.99', 1, 1097704800, 1101337200),
(2, '2.00', 0, 1098655200, 0);

-- --------------------------------------------------------

--
-- Table structure for table `mos_pshop_product_download`
--

CREATE TABLE IF NOT EXISTS `mos_pshop_product_download` (
  `product_id` int(11) NOT NULL DEFAULT '0',
  `user_id` varchar(255) NOT NULL DEFAULT '',
  `order_id` varchar(255) NOT NULL DEFAULT '',
  `end_date` varchar(255) NOT NULL DEFAULT '',
  `download_max` varchar(255) NOT NULL DEFAULT '',
  `download_id` varchar(255) NOT NULL DEFAULT '',
  `file_name` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=tis620;

-- --------------------------------------------------------

--
-- Table structure for table `mos_pshop_product_files`
--

CREATE TABLE IF NOT EXISTS `mos_pshop_product_files` (
  `file_id` int(19) NOT NULL,
  `file_product_id` int(11) NOT NULL DEFAULT '0',
  `file_name` varchar(128) NOT NULL DEFAULT '',
  `file_title` varchar(128) NOT NULL DEFAULT '',
  `file_description` mediumtext NOT NULL,
  `file_extension` varchar(128) NOT NULL DEFAULT '',
  `file_mimetype` varchar(64) NOT NULL DEFAULT '',
  `file_url` varchar(254) NOT NULL DEFAULT '',
  `file_published` tinyint(1) NOT NULL DEFAULT '0',
  `file_is_image` tinyint(1) NOT NULL DEFAULT '0',
  `file_image_height` int(11) NOT NULL DEFAULT '0',
  `file_image_width` int(11) NOT NULL DEFAULT '0',
  `file_image_thumb_height` int(11) NOT NULL DEFAULT '50',
  `file_image_thumb_width` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=tis620;

-- --------------------------------------------------------

--
-- Table structure for table `mos_pshop_product_mf_xref`
--

CREATE TABLE IF NOT EXISTS `mos_pshop_product_mf_xref` (
  `product_id` varchar(32) DEFAULT NULL,
  `manufacturer_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=tis620;

--
-- Dumping data for table `mos_pshop_product_mf_xref`
--

INSERT INTO `mos_pshop_product_mf_xref` (`product_id`, `manufacturer_id`) VALUES
('1', 1),
('2', 1),
('3', 1),
('4', 1),
('5', 1),
('6', 1),
('7', 1),
('8', 1),
('9', 1),
('10', 1),
('11', 1),
('12', 1),
('13', 1),
('14', 1),
('15', 1),
('16', 1);

-- --------------------------------------------------------

--
-- Table structure for table `mos_pshop_product_price`
--

CREATE TABLE IF NOT EXISTS `mos_pshop_product_price` (
  `product_price_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL DEFAULT '0',
  `product_price` decimal(10,2) DEFAULT NULL,
  `product_currency` char(16) DEFAULT NULL,
  `product_price_vdate` int(11) DEFAULT NULL,
  `product_price_edate` int(11) DEFAULT NULL,
  `cdate` int(11) DEFAULT NULL,
  `mdate` int(11) DEFAULT NULL,
  `shopper_group_id` int(11) DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=tis620;

--
-- Dumping data for table `mos_pshop_product_price`
--

INSERT INTO `mos_pshop_product_price` (`product_price_id`, `product_id`, `product_price`, `product_currency`, `product_price_vdate`, `product_price_edate`, `cdate`, `mdate`, `shopper_group_id`) VALUES
(1, 5, '24.99', 'USD', 0, 0, 950321309, 950321309, 5),
(2, 1, '4.99', 'USD', 0, 0, 950321324, 950321324, 5),
(3, 2, '49.99', 'USD', 0, 0, 950321340, 950321340, 5),
(4, 3, '24.99', 'USD', 0, 0, 950321368, 950321368, 5),
(5, 4, '19.99', 'USD', 0, 0, 950321385, 950321385, 5),
(6, 6, '1.00', 'USD', 0, 0, 950321686, 963808699, 5),
(7, 7, '149.99', 'USD', 0, 0, 950321754, 966506270, 5),
(8, 8, '220.90', 'USD', 0, 0, 950321833, 955614388, 5),
(9, 9, '48.12', 'USD', 0, 0, 950321933, 950321933, 5),
(10, 10, '74.99', 'USD', 0, 0, 950322005, 950322005, 5),
(11, 1, '2.99', 'USD', 0, 0, 955626841, 955626841, 6),
(12, 13, '14.99', 'USD', 0, 0, 955697213, 955697213, 5),
(13, 14, '79.99', 'USD', 0, 0, 962351197, 962351271, 5),
(14, 15, '49.99', 'USD', 0, 0, 962351233, 962351233, 5),
(15, 16, '59.99', 'USD', 0, 0, 962351259, 962351259, 5),
(16, 7, '2.99', 'USD', 0, 0, 966589140, 966589140, 6);

-- --------------------------------------------------------

--
-- Table structure for table `mos_pshop_product_reviews`
--

CREATE TABLE IF NOT EXISTS `mos_pshop_product_reviews` (
  `product_id` varchar(255) NOT NULL DEFAULT '',
  `comment` text NOT NULL,
  `userid` int(11) NOT NULL DEFAULT '0',
  `time` int(11) NOT NULL DEFAULT '0',
  `user_rating` tinyint(1) NOT NULL DEFAULT '0',
  `review_ok` int(11) NOT NULL DEFAULT '0',
  `review_votes` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=tis620;

-- --------------------------------------------------------

--
-- Table structure for table `mos_pshop_product_votes`
--

CREATE TABLE IF NOT EXISTS `mos_pshop_product_votes` (
  `product_id` int(255) NOT NULL DEFAULT '0',
  `votes` text NOT NULL,
  `allvotes` int(11) NOT NULL DEFAULT '0',
  `rating` tinyint(1) NOT NULL DEFAULT '0',
  `lastip` varchar(50) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=tis620;

-- --------------------------------------------------------

--
-- Table structure for table `mos_pshop_shipping_carrier`
--

CREATE TABLE IF NOT EXISTS `mos_pshop_shipping_carrier` (
  `shipping_carrier_id` int(11) NOT NULL,
  `shipping_carrier_name` char(80) NOT NULL DEFAULT '',
  `shipping_carrier_list_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=tis620;

--
-- Dumping data for table `mos_pshop_shipping_carrier`
--

INSERT INTO `mos_pshop_shipping_carrier` (`shipping_carrier_id`, `shipping_carrier_name`, `shipping_carrier_list_order`) VALUES
(1, 'DHL', 0),
(2, 'UPS', 1);

-- --------------------------------------------------------

--
-- Table structure for table `mos_pshop_shipping_rate`
--

CREATE TABLE IF NOT EXISTS `mos_pshop_shipping_rate` (
  `shipping_rate_id` int(11) NOT NULL,
  `shipping_rate_name` varchar(255) NOT NULL DEFAULT '',
  `shipping_rate_carrier_id` int(11) NOT NULL DEFAULT '0',
  `shipping_rate_country` text NOT NULL,
  `shipping_rate_zip_start` varchar(32) NOT NULL DEFAULT '',
  `shipping_rate_zip_end` varchar(32) NOT NULL DEFAULT '',
  `shipping_rate_weight_start` decimal(10,3) NOT NULL DEFAULT '0.000',
  `shipping_rate_weight_end` decimal(10,3) NOT NULL DEFAULT '0.000',
  `shipping_rate_value` decimal(10,2) NOT NULL DEFAULT '0.00',
  `shipping_rate_package_fee` decimal(10,2) NOT NULL DEFAULT '0.00',
  `shipping_rate_currency_id` int(11) NOT NULL DEFAULT '0',
  `shipping_rate_vat_id` int(11) NOT NULL DEFAULT '0',
  `shipping_rate_list_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=tis620;

--
-- Dumping data for table `mos_pshop_shipping_rate`
--

INSERT INTO `mos_pshop_shipping_rate` (`shipping_rate_id`, `shipping_rate_name`, `shipping_rate_carrier_id`, `shipping_rate_country`, `shipping_rate_zip_start`, `shipping_rate_zip_end`, `shipping_rate_weight_start`, `shipping_rate_weight_end`, `shipping_rate_value`, `shipping_rate_package_fee`, `shipping_rate_currency_id`, `shipping_rate_vat_id`, `shipping_rate_list_order`) VALUES
(1, 'Inland &gt; 4kg', 1, 'DEU', '00000', '99999', '0.000', '4.000', '5.62', '2.00', 47, 0, 1),
(2, 'Inland &gt; 8kg', 1, 'DEU', '00000', '99999', '4.000', '8.000', '6.39', '2.00', 47, 0, 2),
(3, 'Inland &gt; 12kg', 1, 'DEU', '00000', '99999', '8.000', '12.000', '7.16', '2.00', 47, 0, 3),
(4, 'Inland &gt; 20kg', 1, 'DEU', '00000', '99999', '12.000', '20.000', '8.69', '2.00', 47, 0, 4),
(5, 'EU+ &gt;  4kg', 1, 'AND;BEL;DNK;FRO;FIN;FRA;GRC;GRL;GBR;IRL;ITA;LIE;LUX;MCO;NLD;AUT;POL;PRT;SMR;SWE;CHE;SVK;ESP;CZE', '00000', '99999', '0.000', '4.000', '14.00', '2.00', 47, 0, 5),
(6, 'EU+ &gt;  8kg', 1, 'AND;BEL;DNK;FRO;FIN;FRA;GRC;GRL;GBR;IRL;ITA;LIE;LUX;MCO;NLD;AUT;POL;PRT;SMR;SWE;CHE;SVK;ESP;CZE', '00000', '99999', '4.000', '8.000', '18.00', '2.00', 47, 0, 6),
(7, 'EU+ &gt; 12kg', 1, 'AND;BEL;DNK;FRO;FIN;FRA;GRC;GRL;GBR;IRL;ITA;LIE;LUX;MCO;NLD;AUT;POL;PRT;SMR;SWE;CHE;SVK;ESP;CZE', '00000', '99999', '8.000', '12.000', '22.00', '2.00', 47, 0, 7),
(8, 'EU+ &gt; 20kg', 1, 'AND;BEL;DNK;FRO;FIN;FRA;GRC;GRL;GBR;IRL;ITA;LIE;LUX;MCO;NLD;AUT;POL;PRT;SMR;SWE;CHE;SVK;ESP;CZE', '00000', '99999', '12.000', '20.000', '30.00', '2.00', 47, 0, 8),
(9, 'Europe &gt; 4kg', 1, 'ALB;ARM;AZE;BLR;BIH;BGR;EST;GEO;GIB;ISL;YUG;KAZ;HRV;LVA;LTU;MLT;MKD;MDA;NOR;ROM;RUS;SVN;TUR;UKR;HUN;BLR;CYP', '00000', '99999', '0.000', '4.000', '23.00', '2.00', 47, 0, 9),
(10, 'Europe &gt;  8kg', 1, 'ALB;ARM;AZE;BLR;BIH;BGR;EST;GEO;GIB;ISL;YUG;KAZ;HRV;LVA;LTU;MLT;MKD;MDA;NOR;ROM;RUS;SVN;TUR;UKR;HUN;BLR;CYP', '00000', '99999', '4.000', '8.000', '29.00', '2.00', 47, 0, 10),
(11, 'Europe &gt; 12kg', 1, 'ALB;ARM;AZE;BLR;BIH;BGR;EST;GEO;GIB;ISL;YUG;KAZ;HRV;LVA;LTU;MLT;MKD;MDA;NOR;ROM;RUS;SVN;TUR;UKR;HUN;BLR;CYP', '00000', '99999', '8.000', '12.000', '36.00', '2.00', 47, 0, 11),
(12, 'Europe &gt; 20kg', 1, 'ALB;ARM;AZE;BLR;BIH;BGR;EST;GEO;GIB;ISL;YUG;KAZ;HRV;LVA;LTU;MLT;MKD;MDA;NOR;ROM;RUS;SVN;TUR;UKR;HUN;BLR;CYP', '00000', '99999', '12.000', '20.000', '48.00', '2.00', 47, 0, 12),
(13, 'World_1 &gt;  4kg', 1, 'EGY;DZA;BHR;IRQ;IRN;ISR;YEM;JOR;CAN;QAT;KWT;LBN;LBY;MAR;OMN;SAU;SYR;TUN;ARE;USA', '00000', '99999', '0.000', '4.000', '26.00', '2.00', 47, 0, 13),
(14, 'World_1 &gt; 8kg', 1, 'EGY;DZA;BHR;IRQ;IRN;ISR;YEM;JOR;CAN;QAT;KWT;LBN;LBY;MAR;OMN;SAU;SYR;TUN;ARE;USA', '00000', '99999', '4.000', '8.000', '35.00', '2.00', 47, 0, 14),
(15, 'World_1 &gt;12kg', 1, 'EGY;DZA;BHR;IRQ;IRN;ISR;YEM;JOR;CAN;QAT;KWT;LBN;LBY;MAR;OMN;SAU;SYR;TUN;ARE;USA', '00000', '99999', '8.000', '12.000', '43.00', '2.00', 47, 0, 15),
(16, 'World_1 &gt;20kg', 1, 'EGY;DZA;BHR;IRQ;IRN;ISR;YEM;JOR;CAN;QAT;KWT;LBN;LBY;MAR;OMN;SAU;SYR;TUN;ARE;USA', '00000', '99999', '12.000', '20.000', '59.00', '2.00', 47, 0, 16),
(17, 'World_2 &gt; 4kg', 1, '', '00000', '99999', '0.000', '4.000', '32.00', '2.00', 47, 0, 17),
(18, 'World_2 &gt; 8kg', 1, '', '00000', '99999', '4.000', '8.000', '47.00', '2.00', 47, 0, 18),
(19, 'World_2 &gt; 12kg', 1, '', '00000', '99999', '8.000', '12.000', '61.00', '2.00', 47, 0, 19),
(20, 'World_2 &gt; 20kg', 1, '', '00000', '99999', '12.000', '20.000', '90.00', '2.00', 47, 0, 20),
(21, 'UPS Express', 2, 'AND;BEL;DNK;FRO;FIN;FRA;GRC;GRL;GBR;IRL;ITA;LIE;LUX;MCO;NLD;AUT;POL;PRT;SMR;SWE;CHE;SVK;ESP;CZE', '00000', '99999', '0.000', '20.000', '5.00', '2.00', 47, 0, 21);

-- --------------------------------------------------------

--
-- Table structure for table `mos_pshop_shopper_group`
--

CREATE TABLE IF NOT EXISTS `mos_pshop_shopper_group` (
  `shopper_group_id` int(11) NOT NULL,
  `vendor_id` int(11) DEFAULT NULL,
  `shopper_group_name` varchar(32) DEFAULT NULL,
  `shopper_group_desc` text,
  `shopper_group_discount` decimal(3,2) NOT NULL DEFAULT '0.00',
  `default` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=tis620;

--
-- Dumping data for table `mos_pshop_shopper_group`
--

INSERT INTO `mos_pshop_shopper_group` (`shopper_group_id`, `vendor_id`, `shopper_group_name`, `shopper_group_desc`, `shopper_group_discount`, `default`) VALUES
(5, 1, '-default-', 'This is the default shopper group.', '0.00', 1),
(6, 1, 'Gold Level', 'Gold Level phpShoppers.', '0.00', 0),
(7, 1, 'Wholesale', 'Shoppers that can buy at wholesale.', '0.00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `mos_pshop_shopper_vendor_xref`
--

CREATE TABLE IF NOT EXISTS `mos_pshop_shopper_vendor_xref` (
  `user_id` varchar(32) DEFAULT NULL,
  `vendor_id` int(11) DEFAULT NULL,
  `shopper_group_id` int(11) DEFAULT NULL,
  `customer_number` varchar(32) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=tis620;

-- --------------------------------------------------------

--
-- Table structure for table `mos_pshop_tax_rate`
--

CREATE TABLE IF NOT EXISTS `mos_pshop_tax_rate` (
  `tax_rate_id` int(11) NOT NULL,
  `vendor_id` int(11) DEFAULT NULL,
  `tax_state` varchar(64) DEFAULT NULL,
  `tax_country` varchar(64) DEFAULT NULL,
  `mdate` int(11) DEFAULT NULL,
  `tax_rate` decimal(10,4) DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=tis620;

--
-- Dumping data for table `mos_pshop_tax_rate`
--

INSERT INTO `mos_pshop_tax_rate` (`tax_rate_id`, `vendor_id`, `tax_state`, `tax_country`, `mdate`, `tax_rate`) VALUES
(2, 1, 'CA', 'USA', 964565926, '0.0650');

-- --------------------------------------------------------

--
-- Table structure for table `mos_pshop_user_info`
--

CREATE TABLE IF NOT EXISTS `mos_pshop_user_info` (
  `user_info_id` int(11) NOT NULL,
  `user_id` varchar(32) NOT NULL DEFAULT '',
  `address_type` char(2) DEFAULT NULL,
  `address_type_name` varchar(32) DEFAULT NULL,
  `company` varchar(64) DEFAULT NULL,
  `title` varchar(32) DEFAULT NULL,
  `last_name` varchar(32) DEFAULT NULL,
  `first_name` varchar(32) DEFAULT NULL,
  `middle_name` varchar(32) DEFAULT NULL,
  `phone_1` varchar(32) DEFAULT NULL,
  `phone_2` varchar(32) DEFAULT NULL,
  `fax` varchar(32) DEFAULT NULL,
  `address_1` varchar(64) NOT NULL DEFAULT '',
  `address_2` varchar(64) DEFAULT NULL,
  `city` varchar(32) NOT NULL DEFAULT '',
  `state` varchar(32) NOT NULL DEFAULT '',
  `country` varchar(32) NOT NULL DEFAULT 'US',
  `zip` varchar(32) NOT NULL DEFAULT '',
  `user_email` varchar(255) DEFAULT NULL,
  `extra_field_1` varchar(255) DEFAULT NULL,
  `extra_field_2` varchar(255) DEFAULT NULL,
  `extra_field_3` varchar(255) DEFAULT NULL,
  `extra_field_4` char(1) DEFAULT NULL,
  `extra_field_5` char(1) DEFAULT NULL,
  `cdate` int(11) DEFAULT NULL,
  `mdate` int(11) DEFAULT NULL,
  `perms` varchar(40) NOT NULL DEFAULT 'shopper'
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=tis620;

-- --------------------------------------------------------

--
-- Table structure for table `mos_pshop_vendor`
--

CREATE TABLE IF NOT EXISTS `mos_pshop_vendor` (
  `vendor_id` int(11) NOT NULL,
  `vendor_name` varchar(64) DEFAULT NULL,
  `contact_last_name` varchar(32) NOT NULL DEFAULT '',
  `contact_first_name` varchar(32) NOT NULL DEFAULT '',
  `contact_middle_name` varchar(32) DEFAULT NULL,
  `contact_title` varchar(32) DEFAULT NULL,
  `contact_phone_1` varchar(32) NOT NULL DEFAULT '',
  `contact_phone_2` varchar(32) DEFAULT NULL,
  `contact_fax` varchar(32) DEFAULT NULL,
  `contact_email` varchar(255) DEFAULT NULL,
  `vendor_phone` varchar(32) DEFAULT NULL,
  `vendor_address_1` varchar(64) NOT NULL DEFAULT '',
  `vendor_address_2` varchar(64) DEFAULT NULL,
  `vendor_city` varchar(32) NOT NULL DEFAULT '',
  `vendor_state` varchar(32) NOT NULL DEFAULT '',
  `vendor_country` varchar(32) NOT NULL DEFAULT 'US',
  `vendor_zip` varchar(32) NOT NULL DEFAULT '',
  `vendor_store_name` varchar(128) NOT NULL DEFAULT '',
  `vendor_store_desc` text,
  `vendor_category_id` int(11) DEFAULT NULL,
  `vendor_thumb_image` varchar(255) DEFAULT NULL,
  `vendor_full_image` varchar(255) DEFAULT NULL,
  `vendor_currency` varchar(16) DEFAULT NULL,
  `cdate` int(11) DEFAULT NULL,
  `mdate` int(11) DEFAULT NULL,
  `vendor_image_path` varchar(255) DEFAULT NULL,
  `vendor_terms_of_service` text NOT NULL,
  `vendor_url` varchar(255) NOT NULL,
  `vendor_min_pov` decimal(10,2) DEFAULT NULL,
  `vendor_freeshipping` decimal(10,2) NOT NULL,
  `vendor_currency_display_style` varchar(64) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=tis620;

--
-- Dumping data for table `mos_pshop_vendor`
--

INSERT INTO `mos_pshop_vendor` (`vendor_id`, `vendor_name`, `contact_last_name`, `contact_first_name`, `contact_middle_name`, `contact_title`, `contact_phone_1`, `contact_phone_2`, `contact_fax`, `contact_email`, `vendor_phone`, `vendor_address_1`, `vendor_address_2`, `vendor_city`, `vendor_state`, `vendor_country`, `vendor_zip`, `vendor_store_name`, `vendor_store_desc`, `vendor_category_id`, `vendor_thumb_image`, `vendor_full_image`, `vendor_currency`, `cdate`, `mdate`, `vendor_image_path`, `vendor_terms_of_service`, `vendor_url`, `vendor_min_pov`, `vendor_freeshipping`, `vendor_currency_display_style`) VALUES
(1, 'Washupito''s Tiendita', 'Owner', 'Demo', 'Store', 'Mr.', '555-555-1212', '555-555-1212', '555-555-1212', 'demo_order@phpshop.org', '555-555-1212', '100 Washupito Avenue, N.W.', '', 'Lake Forest', 'CA', 'USA', '92630', 'Washupito''s Tiendita', '<p>We have the best tools for do-it-yourselfers.  Check us out! </p>\r\n\r\n  <p>We were established in 1969 in a time when getting good tools was expensive, but the quality was good.  Now that only a select few of those authentic \r\n  tools survive, we have dedicated this store to bringing the experience alive for collectors and master mechanics everywhere.  </p>\r\n\r\n\r\n  <p>You can easily find products selecting the category you would like to browse above.</p>', 0, '', 'c19970d6f2970cb0d1b13bea3af3144a.gif', 'USD', 950302468, 968309845, 'shop_image/', '<h5>You haven''t configured any terms of service yet. Click <a href=administrator/index2.php?page=store.store_form&option=com_phpshop>here</a> to change this text.</h5>', 'http://www.mambo-phpshop.net', '0.00', '0.00', '1|$|2|.| |2|1');

-- --------------------------------------------------------

--
-- Table structure for table `mos_pshop_vendor_category`
--

CREATE TABLE IF NOT EXISTS `mos_pshop_vendor_category` (
  `vendor_category_id` int(11) NOT NULL,
  `vendor_category_name` varchar(64) DEFAULT NULL,
  `vendor_category_desc` text
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=tis620;

--
-- Dumping data for table `mos_pshop_vendor_category`
--

INSERT INTO `mos_pshop_vendor_category` (`vendor_category_id`, `vendor_category_name`, `vendor_category_desc`) VALUES
(6, '-default-', 'Default');

-- --------------------------------------------------------

--
-- Table structure for table `mos_pshop_visit`
--

CREATE TABLE IF NOT EXISTS `mos_pshop_visit` (
  `visit_id` varchar(255) NOT NULL,
  `affiliate_id` int(11) NOT NULL,
  `pages` int(11) NOT NULL,
  `entry_page` varchar(255) NOT NULL,
  `exit_page` varchar(255) NOT NULL,
  `sdate` int(11) NOT NULL,
  `edate` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=tis620;

-- --------------------------------------------------------

--
-- Table structure for table `mos_pshop_waiting_list`
--

CREATE TABLE IF NOT EXISTS `mos_pshop_waiting_list` (
  `waiting_list_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL DEFAULT '0',
  `user_id` varchar(32) NOT NULL DEFAULT '',
  `notify_email` varchar(150) NOT NULL DEFAULT '',
  `notified` enum('0','1') DEFAULT '0',
  `notify_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=tis620;

-- --------------------------------------------------------

--
-- Table structure for table `mos_pshop_zone_shipping`
--

CREATE TABLE IF NOT EXISTS `mos_pshop_zone_shipping` (
  `zone_id` int(11) NOT NULL,
  `zone_name` varchar(255) DEFAULT NULL,
  `zone_cost` decimal(10,2) DEFAULT NULL,
  `zone_limit` decimal(10,2) DEFAULT NULL,
  `zone_description` text NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=tis620;

--
-- Dumping data for table `mos_pshop_zone_shipping`
--

INSERT INTO `mos_pshop_zone_shipping` (`zone_id`, `zone_name`, `zone_cost`, `zone_limit`, `zone_description`) VALUES
(1, 'Default', '6.00', '35.00', 'This is the default Shipping Zone. This is the zone information that all countries will use until you assign each individual country to a Zone.'),
(2, 'Zone 1', '1000.00', '10000.00', 'This is a zone example'),
(3, 'Zone 2', '2.00', '22.00', 'This is the second zone. You can use this for notes about this zone'),
(4, 'Zone 3', '11.00', '64.00', 'Another usefull thing might be details about this zone or special instructions.');

-- --------------------------------------------------------

--
-- Table structure for table `mos_sections`
--

CREATE TABLE IF NOT EXISTS `mos_sections` (
  `id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `image` varchar(100) NOT NULL DEFAULT '',
  `scope` varchar(50) NOT NULL DEFAULT '',
  `image_position` varchar(10) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `access` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `count` int(11) NOT NULL DEFAULT '0',
  `params` text NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=tis620;

--
-- Dumping data for table `mos_sections`
--

INSERT INTO `mos_sections` (`id`, `title`, `name`, `image`, `scope`, `image_position`, `description`, `published`, `checked_out`, `checked_out_time`, `ordering`, `access`, `count`, `params`) VALUES
(1, 'News', 'The News', 'articles.jpg', 'content', 'right', 'Select a news topic from the list below, then select a news article to read.', 1, 0, '0000-00-00 00:00:00', 1, 0, 1, ''),
(2, 'Newsflashes', 'Newsflashes', '', 'content', 'left', '', 1, 0, '0000-00-00 00:00:00', 2, 0, 1, ''),
(3, 'FAQs', 'Frequently Asked Questions', 'pastarchives.jpg', 'content', 'left', 'From the list below choose one of our FAQs topics, then select an FAQ to read. If you have a question which is not in this section, please contact us.', 1, 0, '0000-00-00 00:00:00', 2, 0, 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `mos_session`
--

CREATE TABLE IF NOT EXISTS `mos_session` (
  `username` varchar(50) DEFAULT '',
  `time` varchar(14) DEFAULT '',
  `session_id` varchar(200) NOT NULL DEFAULT '0',
  `guest` tinyint(4) DEFAULT '1',
  `userid` int(11) DEFAULT '0',
  `usertype` varchar(50) DEFAULT '',
  `gid` tinyint(3) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=tis620;

-- --------------------------------------------------------

--
-- Table structure for table `mos_stats_agents`
--

CREATE TABLE IF NOT EXISTS `mos_stats_agents` (
  `agent` varchar(255) NOT NULL DEFAULT '',
  `type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hits` int(11) unsigned NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=tis620;

-- --------------------------------------------------------

--
-- Table structure for table `mos_templates_menu`
--

CREATE TABLE IF NOT EXISTS `mos_templates_menu` (
  `template` varchar(50) NOT NULL DEFAULT '',
  `menuid` int(11) NOT NULL DEFAULT '0',
  `client_id` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=tis620;

--
-- Dumping data for table `mos_templates_menu`
--

INSERT INTO `mos_templates_menu` (`template`, `menuid`, `client_id`) VALUES
('rhuk_solarflare_ii', 0, 0),
('mambo_admin_blue', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `mos_template_positions`
--

CREATE TABLE IF NOT EXISTS `mos_template_positions` (
  `id` int(11) NOT NULL,
  `position` varchar(10) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=tis620;

--
-- Dumping data for table `mos_template_positions`
--

INSERT INTO `mos_template_positions` (`id`, `position`, `description`) VALUES
(1, 'left', ''),
(2, 'right', ''),
(3, 'top', ''),
(4, 'bottom', ''),
(5, 'inset', ''),
(6, 'banner', ''),
(7, 'header', ''),
(8, 'footer', ''),
(9, 'newsflash', ''),
(10, 'legals', ''),
(11, 'pathway', ''),
(12, 'toolbar', ''),
(13, 'cpanel', ''),
(14, 'user1', ''),
(15, 'user2', ''),
(16, 'user3', ''),
(17, 'user4', ''),
(18, 'user5', ''),
(19, 'user6', ''),
(20, 'user7', ''),
(21, 'user8', ''),
(22, 'user9', ''),
(23, 'advert1', ''),
(24, 'advert2', ''),
(25, 'advert3', ''),
(26, 'icon', ''),
(27, 'debug', '');

-- --------------------------------------------------------

--
-- Table structure for table `mos_users`
--

CREATE TABLE IF NOT EXISTS `mos_users` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL DEFAULT '',
  `username` varchar(25) NOT NULL DEFAULT '',
  `email` varchar(100) NOT NULL DEFAULT '',
  `password` varchar(100) NOT NULL DEFAULT '',
  `usertype` varchar(25) NOT NULL DEFAULT '',
  `block` tinyint(4) NOT NULL DEFAULT '0',
  `sendEmail` tinyint(4) DEFAULT '0',
  `gid` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `registerDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lastvisitDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `activation` varchar(100) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  `user_info_id` varchar(32) DEFAULT NULL,
  `address_type` char(2) DEFAULT NULL,
  `address_type_name` varchar(32) DEFAULT NULL,
  `company` varchar(64) DEFAULT NULL,
  `title` varchar(32) DEFAULT NULL,
  `last_name` varchar(32) DEFAULT NULL,
  `first_name` varchar(32) DEFAULT NULL,
  `middle_name` varchar(32) DEFAULT NULL,
  `phone_1` varchar(32) DEFAULT NULL,
  `phone_2` varchar(32) DEFAULT NULL,
  `fax` varchar(32) DEFAULT NULL,
  `address_1` varchar(64) NOT NULL DEFAULT '',
  `address_2` varchar(64) DEFAULT NULL,
  `city` varchar(32) NOT NULL DEFAULT '',
  `state` varchar(32) NOT NULL DEFAULT '',
  `country` varchar(32) NOT NULL DEFAULT 'US',
  `zip` varchar(32) NOT NULL DEFAULT '',
  `extra_field_1` varchar(255) DEFAULT NULL,
  `extra_field_2` varchar(255) DEFAULT NULL,
  `extra_field_3` varchar(255) DEFAULT NULL,
  `extra_field_4` char(1) DEFAULT NULL,
  `extra_field_5` char(1) DEFAULT NULL,
  `perms` varchar(40) NOT NULL DEFAULT 'shopper',
  `bank_account_nr` varchar(32) NOT NULL DEFAULT '',
  `bank_name` varchar(32) NOT NULL DEFAULT '',
  `bank_sort_code` varchar(16) NOT NULL DEFAULT '',
  `bank_iban` varchar(64) NOT NULL DEFAULT '',
  `bank_account_holder` varchar(48) NOT NULL DEFAULT '',
  `bank_account_type` enum('Checking','Business Checking','Savings') NOT NULL DEFAULT 'Checking'
) ENGINE=MyISAM DEFAULT CHARSET=tis620;

-- --------------------------------------------------------

--
-- Table structure for table `mos_usertypes`
--

CREATE TABLE IF NOT EXISTS `mos_usertypes` (
  `id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `name` varchar(50) NOT NULL DEFAULT '',
  `mask` varchar(11) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=tis620;

--
-- Dumping data for table `mos_usertypes`
--

INSERT INTO `mos_usertypes` (`id`, `name`, `mask`) VALUES
(0, 'superadministrator', ''),
(1, 'administrator', ''),
(2, 'editor', ''),
(3, 'user', ''),
(4, 'author', ''),
(5, 'publisher', ''),
(6, 'manager', '');

-- --------------------------------------------------------

--
-- Table structure for table `mos_weblinks`
--

CREATE TABLE IF NOT EXISTS `mos_weblinks` (
  `id` int(11) unsigned NOT NULL,
  `catid` int(11) NOT NULL DEFAULT '0',
  `sid` int(11) NOT NULL DEFAULT '0',
  `title` varchar(250) NOT NULL DEFAULT '',
  `url` varchar(250) NOT NULL DEFAULT '',
  `description` varchar(250) NOT NULL DEFAULT '',
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(11) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `archived` tinyint(1) NOT NULL DEFAULT '0',
  `approved` tinyint(1) NOT NULL DEFAULT '1',
  `params` text NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=tis620;

--
-- Dumping data for table `mos_weblinks`
--

INSERT INTO `mos_weblinks` (`id`, `catid`, `sid`, `title`, `url`, `description`, `date`, `hits`, `published`, `checked_out`, `checked_out_time`, `ordering`, `archived`, `approved`, `params`) VALUES
(1, 2, 0, 'Mambo', 'http://www.mamboserver.com', 'Home of Mambo', '2005-02-14 15:19:02', 2, 1, 0, '0000-00-00 00:00:00', 1, 0, 1, 'target=0'),
(2, 2, 0, 'MamboForge', 'http://mamboforge.net', 'Get your Mambo add-ons here!', '2004-07-07 10:18:31', 0, 1, 0, '0000-00-00 00:00:00', 4, 0, 1, ''),
(3, 2, 0, 'Miro International Pty Ltd', 'http://www.miro.com.au', 'Where Mambo was born', '2004-07-07 11:32:45', 1, 1, 0, '0000-00-00 00:00:00', 2, 0, 1, ''),
(4, 2, 0, 'php.net', 'http://www.php.net', 'The language that Mambo is developed in', '2004-07-07 11:33:24', 0, 1, 0, '0000-00-00 00:00:00', 3, 0, 1, ''),
(5, 2, 0, 'MySQL', 'http://www.mysql.com', 'The database that Mambo uses', '2004-07-07 10:18:31', 0, 1, 0, '0000-00-00 00:00:00', 5, 0, 1, '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `jos_banner`
--
ALTER TABLE `jos_banner`
  ADD PRIMARY KEY (`bid`),
  ADD KEY `viewbanner` (`showBanner`);

--
-- Indexes for table `jos_bannerclient`
--
ALTER TABLE `jos_bannerclient`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `jos_bannerfinish`
--
ALTER TABLE `jos_bannerfinish`
  ADD PRIMARY KEY (`bid`);

--
-- Indexes for table `jos_categories`
--
ALTER TABLE `jos_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cat_idx` (`section`,`published`,`access`),
  ADD KEY `idx_section` (`section`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`);

--
-- Indexes for table `jos_components`
--
ALTER TABLE `jos_components`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jos_contact_details`
--
ALTER TABLE `jos_contact_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jos_content`
--
ALTER TABLE `jos_content`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_section` (`sectionid`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_state` (`state`),
  ADD KEY `idx_catid` (`catid`),
  ADD KEY `idx_mask` (`mask`);

--
-- Indexes for table `jos_content_frontpage`
--
ALTER TABLE `jos_content_frontpage`
  ADD PRIMARY KEY (`content_id`);

--
-- Indexes for table `jos_content_rating`
--
ALTER TABLE `jos_content_rating`
  ADD PRIMARY KEY (`content_id`);

--
-- Indexes for table `jos_core_acl_aro`
--
ALTER TABLE `jos_core_acl_aro`
  ADD PRIMARY KEY (`aro_id`),
  ADD UNIQUE KEY `jos_gacl_section_value_value_aro` (`section_value`(100),`value`(100)),
  ADD KEY `jos_gacl_hidden_aro` (`hidden`);

--
-- Indexes for table `jos_core_acl_aro_groups`
--
ALTER TABLE `jos_core_acl_aro_groups`
  ADD PRIMARY KEY (`group_id`),
  ADD KEY `parent_id_aro_groups` (`parent_id`),
  ADD KEY `jos_gacl_parent_id_aro_groups` (`parent_id`),
  ADD KEY `jos_gacl_lft_rgt_aro_groups` (`lft`,`rgt`);

--
-- Indexes for table `jos_core_acl_aro_sections`
--
ALTER TABLE `jos_core_acl_aro_sections`
  ADD PRIMARY KEY (`section_id`),
  ADD UNIQUE KEY `value_aro_sections` (`value`),
  ADD UNIQUE KEY `jos_gacl_value_aro_sections` (`value`),
  ADD KEY `hidden_aro_sections` (`hidden`),
  ADD KEY `jos_gacl_hidden_aro_sections` (`hidden`);

--
-- Indexes for table `jos_core_acl_groups_aro_map`
--
ALTER TABLE `jos_core_acl_groups_aro_map`
  ADD UNIQUE KEY `group_id_aro_id_groups_aro_map` (`group_id`,`section_value`,`aro_id`);

--
-- Indexes for table `jos_groups`
--
ALTER TABLE `jos_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jos_jce_langs`
--
ALTER TABLE `jos_jce_langs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jos_jce_plugins`
--
ALTER TABLE `jos_jce_plugins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `plugin` (`plugin`);

--
-- Indexes for table `jos_mambots`
--
ALTER TABLE `jos_mambots`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_folder` (`published`,`client_id`,`access`,`folder`);

--
-- Indexes for table `jos_menu`
--
ALTER TABLE `jos_menu`
  ADD PRIMARY KEY (`id`),
  ADD KEY `componentid` (`componentid`,`menutype`,`published`,`access`),
  ADD KEY `menutype` (`menutype`);

--
-- Indexes for table `jos_messages`
--
ALTER TABLE `jos_messages`
  ADD PRIMARY KEY (`message_id`);

--
-- Indexes for table `jos_messages_cfg`
--
ALTER TABLE `jos_messages_cfg`
  ADD UNIQUE KEY `idx_user_var_name` (`user_id`,`cfg_name`);

--
-- Indexes for table `jos_modules`
--
ALTER TABLE `jos_modules`
  ADD PRIMARY KEY (`id`),
  ADD KEY `published` (`published`,`access`),
  ADD KEY `newsfeeds` (`module`,`published`);

--
-- Indexes for table `jos_modules_menu`
--
ALTER TABLE `jos_modules_menu`
  ADD PRIMARY KEY (`moduleid`,`menuid`);

--
-- Indexes for table `jos_newsfeeds`
--
ALTER TABLE `jos_newsfeeds`
  ADD PRIMARY KEY (`id`),
  ADD KEY `published` (`published`);

--
-- Indexes for table `jos_polls`
--
ALTER TABLE `jos_polls`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jos_poll_data`
--
ALTER TABLE `jos_poll_data`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pollid` (`pollid`,`text`(1));

--
-- Indexes for table `jos_poll_date`
--
ALTER TABLE `jos_poll_date`
  ADD PRIMARY KEY (`id`),
  ADD KEY `poll_id` (`poll_id`);

--
-- Indexes for table `jos_poll_menu`
--
ALTER TABLE `jos_poll_menu`
  ADD PRIMARY KEY (`pollid`,`menuid`);

--
-- Indexes for table `jos_sections`
--
ALTER TABLE `jos_sections`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_scope` (`scope`);

--
-- Indexes for table `jos_session`
--
ALTER TABLE `jos_session`
  ADD PRIMARY KEY (`session_id`),
  ADD KEY `whosonline` (`guest`,`usertype`);

--
-- Indexes for table `jos_templates_menu`
--
ALTER TABLE `jos_templates_menu`
  ADD PRIMARY KEY (`template`,`menuid`);

--
-- Indexes for table `jos_template_positions`
--
ALTER TABLE `jos_template_positions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jos_users`
--
ALTER TABLE `jos_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usertype` (`usertype`),
  ADD KEY `idx_name` (`name`);

--
-- Indexes for table `jos_usertypes`
--
ALTER TABLE `jos_usertypes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jos_vm_affiliate`
--
ALTER TABLE `jos_vm_affiliate`
  ADD PRIMARY KEY (`affiliate_id`);

--
-- Indexes for table `jos_vm_affiliate_sale`
--
ALTER TABLE `jos_vm_affiliate_sale`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `jos_vm_auth_user_vendor`
--
ALTER TABLE `jos_vm_auth_user_vendor`
  ADD KEY `idx_auth_user_vendor_user_id` (`user_id`),
  ADD KEY `idx_auth_user_vendor_vendor_id` (`vendor_id`);

--
-- Indexes for table `jos_vm_category`
--
ALTER TABLE `jos_vm_category`
  ADD PRIMARY KEY (`category_id`),
  ADD KEY `idx_category_vendor_id` (`vendor_id`),
  ADD KEY `idx_category_name` (`category_name`);

--
-- Indexes for table `jos_vm_category_xref`
--
ALTER TABLE `jos_vm_category_xref`
  ADD KEY `category_xref_category_parent_id` (`category_parent_id`),
  ADD KEY `category_xref_category_child_id` (`category_child_id`),
  ADD KEY `idx_category_xref_category_list` (`category_list`);

--
-- Indexes for table `jos_vm_country`
--
ALTER TABLE `jos_vm_country`
  ADD PRIMARY KEY (`country_id`),
  ADD KEY `idx_country_name` (`country_name`);

--
-- Indexes for table `jos_vm_coupons`
--
ALTER TABLE `jos_vm_coupons`
  ADD PRIMARY KEY (`coupon_id`);

--
-- Indexes for table `jos_vm_creditcard`
--
ALTER TABLE `jos_vm_creditcard`
  ADD PRIMARY KEY (`creditcard_id`);

--
-- Indexes for table `jos_vm_csv`
--
ALTER TABLE `jos_vm_csv`
  ADD PRIMARY KEY (`field_id`);

--
-- Indexes for table `jos_vm_currency`
--
ALTER TABLE `jos_vm_currency`
  ADD PRIMARY KEY (`currency_id`),
  ADD KEY `idx_currency_name` (`currency_name`);

--
-- Indexes for table `jos_vm_function`
--
ALTER TABLE `jos_vm_function`
  ADD PRIMARY KEY (`function_id`),
  ADD KEY `idx_function_module_id` (`module_id`),
  ADD KEY `idx_function_name` (`function_name`);

--
-- Indexes for table `jos_vm_manufacturer`
--
ALTER TABLE `jos_vm_manufacturer`
  ADD PRIMARY KEY (`manufacturer_id`);

--
-- Indexes for table `jos_vm_manufacturer_category`
--
ALTER TABLE `jos_vm_manufacturer_category`
  ADD PRIMARY KEY (`mf_category_id`),
  ADD KEY `idx_manufacturer_category_category_name` (`mf_category_name`);

--
-- Indexes for table `jos_vm_module`
--
ALTER TABLE `jos_vm_module`
  ADD PRIMARY KEY (`module_id`),
  ADD KEY `idx_module_name` (`module_name`),
  ADD KEY `idx_module_list_order` (`list_order`);

--
-- Indexes for table `jos_vm_orders`
--
ALTER TABLE `jos_vm_orders`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `idx_orders_user_id` (`user_id`),
  ADD KEY `idx_orders_vendor_id` (`vendor_id`),
  ADD KEY `idx_orders_order_number` (`order_number`),
  ADD KEY `idx_orders_user_info_id` (`user_info_id`),
  ADD KEY `idx_orders_ship_method_id` (`ship_method_id`);

--
-- Indexes for table `jos_vm_order_history`
--
ALTER TABLE `jos_vm_order_history`
  ADD PRIMARY KEY (`order_status_history_id`);

--
-- Indexes for table `jos_vm_order_item`
--
ALTER TABLE `jos_vm_order_item`
  ADD PRIMARY KEY (`order_item_id`),
  ADD KEY `idx_order_item_order_id` (`order_id`),
  ADD KEY `idx_order_item_user_info_id` (`user_info_id`),
  ADD KEY `idx_order_item_vendor_id` (`vendor_id`);

--
-- Indexes for table `jos_vm_order_payment`
--
ALTER TABLE `jos_vm_order_payment`
  ADD KEY `idx_order_payment_order_id` (`order_id`),
  ADD KEY `idx_order_payment_method_id` (`payment_method_id`);

--
-- Indexes for table `jos_vm_order_status`
--
ALTER TABLE `jos_vm_order_status`
  ADD PRIMARY KEY (`order_status_id`),
  ADD KEY `idx_order_status_list_order` (`list_order`),
  ADD KEY `idx_order_status_vendor_id` (`vendor_id`);

--
-- Indexes for table `jos_vm_order_user_info`
--
ALTER TABLE `jos_vm_order_user_info`
  ADD PRIMARY KEY (`order_info_id`),
  ADD KEY `idx_order_info_order_id` (`order_id`);

--
-- Indexes for table `jos_vm_payment_method`
--
ALTER TABLE `jos_vm_payment_method`
  ADD PRIMARY KEY (`payment_method_id`),
  ADD KEY `idx_payment_method_vendor_id` (`vendor_id`),
  ADD KEY `idx_payment_method_name` (`payment_method_name`),
  ADD KEY `idx_payment_method_list_order` (`list_order`),
  ADD KEY `idx_payment_method_shopper_group_id` (`shopper_group_id`);

--
-- Indexes for table `jos_vm_product`
--
ALTER TABLE `jos_vm_product`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `idx_product_vendor_id` (`vendor_id`),
  ADD KEY `idx_product_product_parent_id` (`product_parent_id`),
  ADD KEY `idx_product_sku` (`product_sku`),
  ADD KEY `idx_product_ship_code_id` (`ship_code_id`),
  ADD KEY `idx_product_name` (`product_name`);

--
-- Indexes for table `jos_vm_product_attribute`
--
ALTER TABLE `jos_vm_product_attribute`
  ADD KEY `idx_product_attribute_product_id` (`product_id`),
  ADD KEY `idx_product_attribute_name` (`attribute_name`);

--
-- Indexes for table `jos_vm_product_attribute_sku`
--
ALTER TABLE `jos_vm_product_attribute_sku`
  ADD KEY `idx_product_attribute_sku_product_id` (`product_id`),
  ADD KEY `idx_product_attribute_sku_attribute_name` (`attribute_name`),
  ADD KEY `idx_product_attribute_list` (`attribute_list`);

--
-- Indexes for table `jos_vm_product_category_xref`
--
ALTER TABLE `jos_vm_product_category_xref`
  ADD KEY `idx_product_category_xref_category_id` (`category_id`),
  ADD KEY `idx_product_category_xref_product_id` (`product_id`),
  ADD KEY `idx_product_category_xref_product_list` (`product_list`);

--
-- Indexes for table `jos_vm_product_discount`
--
ALTER TABLE `jos_vm_product_discount`
  ADD PRIMARY KEY (`discount_id`);

--
-- Indexes for table `jos_vm_product_download`
--
ALTER TABLE `jos_vm_product_download`
  ADD PRIMARY KEY (`download_id`);

--
-- Indexes for table `jos_vm_product_files`
--
ALTER TABLE `jos_vm_product_files`
  ADD PRIMARY KEY (`file_id`);

--
-- Indexes for table `jos_vm_product_mf_xref`
--
ALTER TABLE `jos_vm_product_mf_xref`
  ADD KEY `idx_product_mf_xref_product_id` (`product_id`),
  ADD KEY `idx_product_mf_xref_manufacturer_id` (`manufacturer_id`);

--
-- Indexes for table `jos_vm_product_price`
--
ALTER TABLE `jos_vm_product_price`
  ADD PRIMARY KEY (`product_price_id`),
  ADD KEY `idx_product_price_product_id` (`product_id`),
  ADD KEY `idx_product_price_shopper_group_id` (`shopper_group_id`);

--
-- Indexes for table `jos_vm_product_product_type_xref`
--
ALTER TABLE `jos_vm_product_product_type_xref`
  ADD KEY `idx_product_product_type_xref_product_id` (`product_id`),
  ADD KEY `idx_product_product_type_xref_product_type_id` (`product_type_id`);

--
-- Indexes for table `jos_vm_product_relations`
--
ALTER TABLE `jos_vm_product_relations`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `jos_vm_product_type`
--
ALTER TABLE `jos_vm_product_type`
  ADD PRIMARY KEY (`product_type_id`);

--
-- Indexes for table `jos_vm_product_type_parameter`
--
ALTER TABLE `jos_vm_product_type_parameter`
  ADD PRIMARY KEY (`product_type_id`,`parameter_name`),
  ADD KEY `idx_product_type_parameter_product_type_id` (`product_type_id`),
  ADD KEY `idx_product_type_parameter_parameter_order` (`parameter_list_order`);

--
-- Indexes for table `jos_vm_shipping_carrier`
--
ALTER TABLE `jos_vm_shipping_carrier`
  ADD PRIMARY KEY (`shipping_carrier_id`);

--
-- Indexes for table `jos_vm_shipping_rate`
--
ALTER TABLE `jos_vm_shipping_rate`
  ADD PRIMARY KEY (`shipping_rate_id`);

--
-- Indexes for table `jos_vm_shopper_group`
--
ALTER TABLE `jos_vm_shopper_group`
  ADD PRIMARY KEY (`shopper_group_id`),
  ADD KEY `idx_shopper_group_vendor_id` (`vendor_id`),
  ADD KEY `idx_shopper_group_name` (`shopper_group_name`);

--
-- Indexes for table `jos_vm_shopper_vendor_xref`
--
ALTER TABLE `jos_vm_shopper_vendor_xref`
  ADD KEY `idx_shopper_vendor_xref_user_id` (`user_id`),
  ADD KEY `idx_shopper_vendor_xref_vendor_id` (`vendor_id`),
  ADD KEY `idx_shopper_vendor_xref_shopper_group_id` (`shopper_group_id`);

--
-- Indexes for table `jos_vm_state`
--
ALTER TABLE `jos_vm_state`
  ADD PRIMARY KEY (`state_id`),
  ADD UNIQUE KEY `state_3_code` (`state_3_code`,`state_2_code`),
  ADD KEY `idx_country_id` (`country_id`);

--
-- Indexes for table `jos_vm_tax_rate`
--
ALTER TABLE `jos_vm_tax_rate`
  ADD PRIMARY KEY (`tax_rate_id`),
  ADD KEY `idx_tax_rate_vendor_id` (`vendor_id`);

--
-- Indexes for table `jos_vm_user_info`
--
ALTER TABLE `jos_vm_user_info`
  ADD PRIMARY KEY (`user_info_id`),
  ADD KEY `idx_user_info_user_id` (`user_id`);

--
-- Indexes for table `jos_vm_vendor`
--
ALTER TABLE `jos_vm_vendor`
  ADD PRIMARY KEY (`vendor_id`),
  ADD KEY `idx_vendor_name` (`vendor_name`),
  ADD KEY `idx_vendor_category_id` (`vendor_category_id`);

--
-- Indexes for table `jos_vm_vendor_category`
--
ALTER TABLE `jos_vm_vendor_category`
  ADD PRIMARY KEY (`vendor_category_id`),
  ADD KEY `idx_vendor_category_category_name` (`vendor_category_name`);

--
-- Indexes for table `jos_vm_visit`
--
ALTER TABLE `jos_vm_visit`
  ADD PRIMARY KEY (`visit_id`);

--
-- Indexes for table `jos_vm_waiting_list`
--
ALTER TABLE `jos_vm_waiting_list`
  ADD PRIMARY KEY (`waiting_list_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `notify_email` (`notify_email`);

--
-- Indexes for table `jos_vm_zone_shipping`
--
ALTER TABLE `jos_vm_zone_shipping`
  ADD PRIMARY KEY (`zone_id`),
  ADD KEY `zone_id` (`zone_id`);

--
-- Indexes for table `jos_weblinks`
--
ALTER TABLE `jos_weblinks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `catid` (`catid`,`published`,`archived`);

--
-- Indexes for table `mos_banner`
--
ALTER TABLE `mos_banner`
  ADD PRIMARY KEY (`bid`),
  ADD KEY `viewbanner` (`showBanner`);

--
-- Indexes for table `mos_bannerclient`
--
ALTER TABLE `mos_bannerclient`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `mos_bannerfinish`
--
ALTER TABLE `mos_bannerfinish`
  ADD PRIMARY KEY (`bid`);

--
-- Indexes for table `mos_categories`
--
ALTER TABLE `mos_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cat_idx` (`section`,`published`,`access`),
  ADD KEY `idx_section` (`section`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`);

--
-- Indexes for table `mos_components`
--
ALTER TABLE `mos_components`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mos_contact_details`
--
ALTER TABLE `mos_contact_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mos_content`
--
ALTER TABLE `mos_content`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_section` (`sectionid`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_state` (`state`),
  ADD KEY `idx_catid` (`catid`),
  ADD KEY `idx_mask` (`mask`);

--
-- Indexes for table `mos_content_frontpage`
--
ALTER TABLE `mos_content_frontpage`
  ADD PRIMARY KEY (`content_id`);

--
-- Indexes for table `mos_core_acl_aro`
--
ALTER TABLE `mos_core_acl_aro`
  ADD PRIMARY KEY (`aro_id`),
  ADD UNIQUE KEY `section_value_value_aro` (`section_value`,`value`),
  ADD UNIQUE KEY `mos_gacl_section_value_value_aro` (`section_value`,`value`),
  ADD KEY `hidden_aro` (`hidden`),
  ADD KEY `mos_gacl_hidden_aro` (`hidden`);

--
-- Indexes for table `mos_core_acl_aro_groups`
--
ALTER TABLE `mos_core_acl_aro_groups`
  ADD PRIMARY KEY (`group_id`),
  ADD KEY `parent_id_aro_groups` (`parent_id`),
  ADD KEY `mos_gacl_parent_id_aro_groups` (`parent_id`),
  ADD KEY `mos_gacl_lft_rgt_aro_groups` (`lft`,`rgt`);

--
-- Indexes for table `mos_core_acl_aro_sections`
--
ALTER TABLE `mos_core_acl_aro_sections`
  ADD PRIMARY KEY (`section_id`),
  ADD UNIQUE KEY `value_aro_sections` (`value`),
  ADD UNIQUE KEY `mos_gacl_value_aro_sections` (`value`),
  ADD KEY `hidden_aro_sections` (`hidden`),
  ADD KEY `mos_gacl_hidden_aro_sections` (`hidden`);

--
-- Indexes for table `mos_core_acl_groups_aro_map`
--
ALTER TABLE `mos_core_acl_groups_aro_map`
  ADD UNIQUE KEY `group_id_aro_id_groups_aro_map` (`group_id`,`section_value`,`aro_id`);

--
-- Indexes for table `mos_groups`
--
ALTER TABLE `mos_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mos_mambots`
--
ALTER TABLE `mos_mambots`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_folder` (`published`,`client_id`,`access`,`folder`);

--
-- Indexes for table `mos_menu`
--
ALTER TABLE `mos_menu`
  ADD PRIMARY KEY (`id`),
  ADD KEY `componentid` (`componentid`,`menutype`,`published`,`access`),
  ADD KEY `menutype` (`menutype`);

--
-- Indexes for table `mos_messages`
--
ALTER TABLE `mos_messages`
  ADD PRIMARY KEY (`message_id`);

--
-- Indexes for table `mos_messages_cfg`
--
ALTER TABLE `mos_messages_cfg`
  ADD UNIQUE KEY `idx_user_var_name` (`user_id`,`cfg_name`);

--
-- Indexes for table `mos_modules`
--
ALTER TABLE `mos_modules`
  ADD PRIMARY KEY (`id`),
  ADD KEY `published` (`published`,`access`),
  ADD KEY `newsfeeds` (`module`,`published`);

--
-- Indexes for table `mos_modules_menu`
--
ALTER TABLE `mos_modules_menu`
  ADD PRIMARY KEY (`moduleid`,`menuid`);

--
-- Indexes for table `mos_newsfeeds`
--
ALTER TABLE `mos_newsfeeds`
  ADD PRIMARY KEY (`id`),
  ADD KEY `published` (`published`);

--
-- Indexes for table `mos_polls`
--
ALTER TABLE `mos_polls`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mos_poll_data`
--
ALTER TABLE `mos_poll_data`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pollid` (`pollid`,`text`(1));

--
-- Indexes for table `mos_poll_date`
--
ALTER TABLE `mos_poll_date`
  ADD PRIMARY KEY (`id`),
  ADD KEY `poll_id` (`poll_id`);

--
-- Indexes for table `mos_poll_menu`
--
ALTER TABLE `mos_poll_menu`
  ADD PRIMARY KEY (`pollid`,`menuid`);

--
-- Indexes for table `mos_pshop_affiliate`
--
ALTER TABLE `mos_pshop_affiliate`
  ADD PRIMARY KEY (`affiliate_id`);

--
-- Indexes for table `mos_pshop_affiliate_sale`
--
ALTER TABLE `mos_pshop_affiliate_sale`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `mos_pshop_auth_user_vendor`
--
ALTER TABLE `mos_pshop_auth_user_vendor`
  ADD KEY `idx_auth_user_vendor_user_id` (`user_id`),
  ADD KEY `idx_auth_user_vendor_vendor_id` (`vendor_id`);

--
-- Indexes for table `mos_pshop_category`
--
ALTER TABLE `mos_pshop_category`
  ADD PRIMARY KEY (`category_id`),
  ADD KEY `idx_category_vendor_id` (`vendor_id`),
  ADD KEY `idx_category_name` (`category_name`);

--
-- Indexes for table `mos_pshop_category_xref`
--
ALTER TABLE `mos_pshop_category_xref`
  ADD KEY `category_xref_category_parent_id` (`category_parent_id`),
  ADD KEY `category_xref_category_child_id` (`category_child_id`),
  ADD KEY `idx_category_xref_category_list` (`category_list`);

--
-- Indexes for table `mos_pshop_country`
--
ALTER TABLE `mos_pshop_country`
  ADD PRIMARY KEY (`country_id`),
  ADD KEY `idx_country_name` (`country_name`);

--
-- Indexes for table `mos_pshop_coupons`
--
ALTER TABLE `mos_pshop_coupons`
  ADD PRIMARY KEY (`coupon_id`);

--
-- Indexes for table `mos_pshop_creditcard`
--
ALTER TABLE `mos_pshop_creditcard`
  ADD PRIMARY KEY (`creditcard_id`);

--
-- Indexes for table `mos_pshop_currency`
--
ALTER TABLE `mos_pshop_currency`
  ADD PRIMARY KEY (`currency_id`),
  ADD KEY `idx_currency_name` (`currency_name`);

--
-- Indexes for table `mos_pshop_function`
--
ALTER TABLE `mos_pshop_function`
  ADD PRIMARY KEY (`function_id`),
  ADD KEY `idx_function_module_id` (`module_id`),
  ADD KEY `idx_function_name` (`function_name`);

--
-- Indexes for table `mos_pshop_manufacturer`
--
ALTER TABLE `mos_pshop_manufacturer`
  ADD PRIMARY KEY (`manufacturer_id`);

--
-- Indexes for table `mos_pshop_manufacturer_category`
--
ALTER TABLE `mos_pshop_manufacturer_category`
  ADD PRIMARY KEY (`mf_category_id`),
  ADD KEY `idx_manufacturer_category_category_name` (`mf_category_name`);

--
-- Indexes for table `mos_pshop_module`
--
ALTER TABLE `mos_pshop_module`
  ADD PRIMARY KEY (`module_id`),
  ADD KEY `idx_module_name` (`module_name`),
  ADD KEY `idx_module_list_order` (`list_order`);

--
-- Indexes for table `mos_pshop_order_item`
--
ALTER TABLE `mos_pshop_order_item`
  ADD PRIMARY KEY (`order_item_id`),
  ADD KEY `idx_order_item_order_id` (`order_id`),
  ADD KEY `idx_order_item_user_info_id` (`user_info_id`),
  ADD KEY `idx_order_item_vendor_id` (`vendor_id`);

--
-- Indexes for table `mos_pshop_order_payment`
--
ALTER TABLE `mos_pshop_order_payment`
  ADD KEY `idx_order_payment_order_id` (`order_id`),
  ADD KEY `idx_order_payment_method_id` (`payment_method_id`);

--
-- Indexes for table `mos_pshop_order_status`
--
ALTER TABLE `mos_pshop_order_status`
  ADD PRIMARY KEY (`order_status_id`),
  ADD KEY `idx_order_status_list_order` (`list_order`),
  ADD KEY `idx_order_status_vendor_id` (`vendor_id`);

--
-- Indexes for table `mos_pshop_order_user_info`
--
ALTER TABLE `mos_pshop_order_user_info`
  ADD PRIMARY KEY (`order_info_id`),
  ADD KEY `idx_order_info_order_id` (`order_id`);

--
-- Indexes for table `mos_pshop_payment_method`
--
ALTER TABLE `mos_pshop_payment_method`
  ADD PRIMARY KEY (`payment_method_id`),
  ADD KEY `idx_payment_method_vendor_id` (`vendor_id`),
  ADD KEY `idx_payment_method_name` (`payment_method_name`),
  ADD KEY `idx_payment_method_list_order` (`list_order`),
  ADD KEY `idx_payment_method_shopper_group_id` (`shopper_group_id`);

--
-- Indexes for table `mos_pshop_product`
--
ALTER TABLE `mos_pshop_product`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `idx_product_vendor_id` (`vendor_id`),
  ADD KEY `idx_product_product_parent_id` (`product_parent_id`),
  ADD KEY `idx_product_sku` (`product_sku`),
  ADD KEY `idx_product_ship_code_id` (`ship_code_id`),
  ADD KEY `idx_product_name` (`product_name`);

--
-- Indexes for table `mos_pshop_product_attribute`
--
ALTER TABLE `mos_pshop_product_attribute`
  ADD KEY `idx_product_attribute_product_id` (`product_id`),
  ADD KEY `idx_product_attribute_name` (`attribute_name`);

--
-- Indexes for table `mos_pshop_product_attribute_sku`
--
ALTER TABLE `mos_pshop_product_attribute_sku`
  ADD KEY `idx_product_attribute_sku_product_id` (`product_id`),
  ADD KEY `idx_product_attribute_sku_attribute_name` (`attribute_name`),
  ADD KEY `idx_product_attribute_list` (`attribute_list`);

--
-- Indexes for table `mos_pshop_product_category_xref`
--
ALTER TABLE `mos_pshop_product_category_xref`
  ADD KEY `idx_product_category_xref_category_id` (`category_id`),
  ADD KEY `idx_product_category_xref_product_id` (`product_id`),
  ADD KEY `idx_product_category_xref_product_list` (`product_list`);

--
-- Indexes for table `mos_pshop_product_discount`
--
ALTER TABLE `mos_pshop_product_discount`
  ADD PRIMARY KEY (`discount_id`);

--
-- Indexes for table `mos_pshop_product_download`
--
ALTER TABLE `mos_pshop_product_download`
  ADD PRIMARY KEY (`download_id`);

--
-- Indexes for table `mos_pshop_product_files`
--
ALTER TABLE `mos_pshop_product_files`
  ADD PRIMARY KEY (`file_id`);

--
-- Indexes for table `mos_pshop_product_mf_xref`
--
ALTER TABLE `mos_pshop_product_mf_xref`
  ADD KEY `idx_product_mf_xref_product_id` (`product_id`),
  ADD KEY `idx_product_mf_xref_manufacturer_id` (`manufacturer_id`);

--
-- Indexes for table `mos_pshop_product_price`
--
ALTER TABLE `mos_pshop_product_price`
  ADD PRIMARY KEY (`product_price_id`),
  ADD KEY `idx_product_price_product_id` (`product_id`),
  ADD KEY `idx_product_price_shopper_group_id` (`shopper_group_id`);

--
-- Indexes for table `mos_pshop_shipping_carrier`
--
ALTER TABLE `mos_pshop_shipping_carrier`
  ADD PRIMARY KEY (`shipping_carrier_id`);

--
-- Indexes for table `mos_pshop_shipping_rate`
--
ALTER TABLE `mos_pshop_shipping_rate`
  ADD PRIMARY KEY (`shipping_rate_id`);

--
-- Indexes for table `mos_pshop_shopper_group`
--
ALTER TABLE `mos_pshop_shopper_group`
  ADD PRIMARY KEY (`shopper_group_id`),
  ADD KEY `idx_shopper_group_vendor_id` (`vendor_id`),
  ADD KEY `idx_shopper_group_name` (`shopper_group_name`);

--
-- Indexes for table `mos_pshop_shopper_vendor_xref`
--
ALTER TABLE `mos_pshop_shopper_vendor_xref`
  ADD KEY `idx_shopper_vendor_xref_user_id` (`user_id`),
  ADD KEY `idx_shopper_vendor_xref_vendor_id` (`vendor_id`),
  ADD KEY `idx_shopper_vendor_xref_shopper_group_id` (`shopper_group_id`);

--
-- Indexes for table `mos_pshop_tax_rate`
--
ALTER TABLE `mos_pshop_tax_rate`
  ADD PRIMARY KEY (`tax_rate_id`),
  ADD KEY `idx_tax_rate_vendor_id` (`vendor_id`);

--
-- Indexes for table `mos_pshop_user_info`
--
ALTER TABLE `mos_pshop_user_info`
  ADD PRIMARY KEY (`user_info_id`),
  ADD KEY `idx_user_info_user_id` (`user_id`);

--
-- Indexes for table `mos_pshop_vendor`
--
ALTER TABLE `mos_pshop_vendor`
  ADD PRIMARY KEY (`vendor_id`),
  ADD KEY `idx_vendor_name` (`vendor_name`),
  ADD KEY `idx_vendor_category_id` (`vendor_category_id`);

--
-- Indexes for table `mos_pshop_vendor_category`
--
ALTER TABLE `mos_pshop_vendor_category`
  ADD PRIMARY KEY (`vendor_category_id`),
  ADD KEY `idx_vendor_category_category_name` (`vendor_category_name`);

--
-- Indexes for table `mos_pshop_visit`
--
ALTER TABLE `mos_pshop_visit`
  ADD PRIMARY KEY (`visit_id`);

--
-- Indexes for table `mos_pshop_waiting_list`
--
ALTER TABLE `mos_pshop_waiting_list`
  ADD PRIMARY KEY (`waiting_list_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `notify_email` (`notify_email`);

--
-- Indexes for table `mos_pshop_zone_shipping`
--
ALTER TABLE `mos_pshop_zone_shipping`
  ADD PRIMARY KEY (`zone_id`),
  ADD KEY `zone_id` (`zone_id`);

--
-- Indexes for table `mos_sections`
--
ALTER TABLE `mos_sections`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_scope` (`scope`);

--
-- Indexes for table `mos_session`
--
ALTER TABLE `mos_session`
  ADD PRIMARY KEY (`session_id`),
  ADD KEY `whosonline` (`guest`,`usertype`);

--
-- Indexes for table `mos_templates_menu`
--
ALTER TABLE `mos_templates_menu`
  ADD PRIMARY KEY (`template`,`menuid`);

--
-- Indexes for table `mos_template_positions`
--
ALTER TABLE `mos_template_positions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mos_users`
--
ALTER TABLE `mos_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usertype` (`usertype`),
  ADD KEY `idx_name` (`name`);

--
-- Indexes for table `mos_usertypes`
--
ALTER TABLE `mos_usertypes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mos_weblinks`
--
ALTER TABLE `mos_weblinks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `catid` (`catid`,`published`,`archived`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `jos_banner`
--
ALTER TABLE `jos_banner`
  MODIFY `bid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `jos_bannerclient`
--
ALTER TABLE `jos_bannerclient`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `jos_bannerfinish`
--
ALTER TABLE `jos_bannerfinish`
  MODIFY `bid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `jos_categories`
--
ALTER TABLE `jos_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `jos_components`
--
ALTER TABLE `jos_components`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `jos_contact_details`
--
ALTER TABLE `jos_contact_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `jos_content`
--
ALTER TABLE `jos_content`
  MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `jos_core_acl_aro`
--
ALTER TABLE `jos_core_acl_aro`
  MODIFY `aro_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `jos_core_acl_aro_groups`
--
ALTER TABLE `jos_core_acl_aro_groups`
  MODIFY `group_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `jos_core_acl_aro_sections`
--
ALTER TABLE `jos_core_acl_aro_sections`
  MODIFY `section_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `jos_jce_langs`
--
ALTER TABLE `jos_jce_langs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `jos_jce_plugins`
--
ALTER TABLE `jos_jce_plugins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=51;
--
-- AUTO_INCREMENT for table `jos_mambots`
--
ALTER TABLE `jos_mambots`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `jos_menu`
--
ALTER TABLE `jos_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `jos_messages`
--
ALTER TABLE `jos_messages`
  MODIFY `message_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `jos_modules`
--
ALTER TABLE `jos_modules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=47;
--
-- AUTO_INCREMENT for table `jos_newsfeeds`
--
ALTER TABLE `jos_newsfeeds`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `jos_polls`
--
ALTER TABLE `jos_polls`
  MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `jos_poll_data`
--
ALTER TABLE `jos_poll_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `jos_poll_date`
--
ALTER TABLE `jos_poll_date`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `jos_sections`
--
ALTER TABLE `jos_sections`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `jos_template_positions`
--
ALTER TABLE `jos_template_positions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `jos_users`
--
ALTER TABLE `jos_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=67;
--
-- AUTO_INCREMENT for table `jos_vm_affiliate`
--
ALTER TABLE `jos_vm_affiliate`
  MODIFY `affiliate_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `jos_vm_category`
--
ALTER TABLE `jos_vm_category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `jos_vm_country`
--
ALTER TABLE `jos_vm_country`
  MODIFY `country_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=240;
--
-- AUTO_INCREMENT for table `jos_vm_coupons`
--
ALTER TABLE `jos_vm_coupons`
  MODIFY `coupon_id` int(16) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `jos_vm_creditcard`
--
ALTER TABLE `jos_vm_creditcard`
  MODIFY `creditcard_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `jos_vm_csv`
--
ALTER TABLE `jos_vm_csv`
  MODIFY `field_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `jos_vm_currency`
--
ALTER TABLE `jos_vm_currency`
  MODIFY `currency_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=158;
--
-- AUTO_INCREMENT for table `jos_vm_function`
--
ALTER TABLE `jos_vm_function`
  MODIFY `function_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=169;
--
-- AUTO_INCREMENT for table `jos_vm_manufacturer`
--
ALTER TABLE `jos_vm_manufacturer`
  MODIFY `manufacturer_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `jos_vm_manufacturer_category`
--
ALTER TABLE `jos_vm_manufacturer_category`
  MODIFY `mf_category_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `jos_vm_module`
--
ALTER TABLE `jos_vm_module`
  MODIFY `module_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12844;
--
-- AUTO_INCREMENT for table `jos_vm_orders`
--
ALTER TABLE `jos_vm_orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `jos_vm_order_history`
--
ALTER TABLE `jos_vm_order_history`
  MODIFY `order_status_history_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `jos_vm_order_item`
--
ALTER TABLE `jos_vm_order_item`
  MODIFY `order_item_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `jos_vm_order_status`
--
ALTER TABLE `jos_vm_order_status`
  MODIFY `order_status_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `jos_vm_order_user_info`
--
ALTER TABLE `jos_vm_order_user_info`
  MODIFY `order_info_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `jos_vm_payment_method`
--
ALTER TABLE `jos_vm_payment_method`
  MODIFY `payment_method_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `jos_vm_product`
--
ALTER TABLE `jos_vm_product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `jos_vm_product_discount`
--
ALTER TABLE `jos_vm_product_discount`
  MODIFY `discount_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `jos_vm_product_files`
--
ALTER TABLE `jos_vm_product_files`
  MODIFY `file_id` int(19) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `jos_vm_product_price`
--
ALTER TABLE `jos_vm_product_price`
  MODIFY `product_price_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `jos_vm_product_type`
--
ALTER TABLE `jos_vm_product_type`
  MODIFY `product_type_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `jos_vm_shipping_carrier`
--
ALTER TABLE `jos_vm_shipping_carrier`
  MODIFY `shipping_carrier_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `jos_vm_shipping_rate`
--
ALTER TABLE `jos_vm_shipping_rate`
  MODIFY `shipping_rate_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `jos_vm_shopper_group`
--
ALTER TABLE `jos_vm_shopper_group`
  MODIFY `shopper_group_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `jos_vm_state`
--
ALTER TABLE `jos_vm_state`
  MODIFY `state_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=166;
--
-- AUTO_INCREMENT for table `jos_vm_tax_rate`
--
ALTER TABLE `jos_vm_tax_rate`
  MODIFY `tax_rate_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `jos_vm_vendor`
--
ALTER TABLE `jos_vm_vendor`
  MODIFY `vendor_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `jos_vm_vendor_category`
--
ALTER TABLE `jos_vm_vendor_category`
  MODIFY `vendor_category_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `jos_vm_waiting_list`
--
ALTER TABLE `jos_vm_waiting_list`
  MODIFY `waiting_list_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `jos_vm_zone_shipping`
--
ALTER TABLE `jos_vm_zone_shipping`
  MODIFY `zone_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `jos_weblinks`
--
ALTER TABLE `jos_weblinks`
  MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `mos_banner`
--
ALTER TABLE `mos_banner`
  MODIFY `bid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `mos_bannerclient`
--
ALTER TABLE `mos_bannerclient`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `mos_bannerfinish`
--
ALTER TABLE `mos_bannerfinish`
  MODIFY `bid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mos_categories`
--
ALTER TABLE `mos_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `mos_components`
--
ALTER TABLE `mos_components`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `mos_contact_details`
--
ALTER TABLE `mos_contact_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `mos_content`
--
ALTER TABLE `mos_content`
  MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `mos_core_acl_aro`
--
ALTER TABLE `mos_core_acl_aro`
  MODIFY `aro_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mos_core_acl_aro_groups`
--
ALTER TABLE `mos_core_acl_aro_groups`
  MODIFY `group_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `mos_core_acl_aro_sections`
--
ALTER TABLE `mos_core_acl_aro_sections`
  MODIFY `section_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `mos_mambots`
--
ALTER TABLE `mos_mambots`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `mos_menu`
--
ALTER TABLE `mos_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `mos_messages`
--
ALTER TABLE `mos_messages`
  MODIFY `message_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mos_modules`
--
ALTER TABLE `mos_modules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=43;
--
-- AUTO_INCREMENT for table `mos_newsfeeds`
--
ALTER TABLE `mos_newsfeeds`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `mos_polls`
--
ALTER TABLE `mos_polls`
  MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `mos_poll_data`
--
ALTER TABLE `mos_poll_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `mos_poll_date`
--
ALTER TABLE `mos_poll_date`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mos_pshop_affiliate`
--
ALTER TABLE `mos_pshop_affiliate`
  MODIFY `affiliate_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mos_pshop_country`
--
ALTER TABLE `mos_pshop_country`
  MODIFY `country_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=240;
--
-- AUTO_INCREMENT for table `mos_pshop_coupons`
--
ALTER TABLE `mos_pshop_coupons`
  MODIFY `coupon_id` int(16) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `mos_pshop_creditcard`
--
ALTER TABLE `mos_pshop_creditcard`
  MODIFY `creditcard_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `mos_pshop_currency`
--
ALTER TABLE `mos_pshop_currency`
  MODIFY `currency_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=157;
--
-- AUTO_INCREMENT for table `mos_pshop_function`
--
ALTER TABLE `mos_pshop_function`
  MODIFY `function_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=149;
--
-- AUTO_INCREMENT for table `mos_pshop_manufacturer`
--
ALTER TABLE `mos_pshop_manufacturer`
  MODIFY `manufacturer_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `mos_pshop_manufacturer_category`
--
ALTER TABLE `mos_pshop_manufacturer_category`
  MODIFY `mf_category_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `mos_pshop_module`
--
ALTER TABLE `mos_pshop_module`
  MODIFY `module_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12844;
--
-- AUTO_INCREMENT for table `mos_pshop_order_item`
--
ALTER TABLE `mos_pshop_order_item`
  MODIFY `order_item_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mos_pshop_order_status`
--
ALTER TABLE `mos_pshop_order_status`
  MODIFY `order_status_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `mos_pshop_order_user_info`
--
ALTER TABLE `mos_pshop_order_user_info`
  MODIFY `order_info_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mos_pshop_payment_method`
--
ALTER TABLE `mos_pshop_payment_method`
  MODIFY `payment_method_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `mos_pshop_product`
--
ALTER TABLE `mos_pshop_product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `mos_pshop_product_discount`
--
ALTER TABLE `mos_pshop_product_discount`
  MODIFY `discount_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `mos_pshop_product_files`
--
ALTER TABLE `mos_pshop_product_files`
  MODIFY `file_id` int(19) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mos_pshop_product_price`
--
ALTER TABLE `mos_pshop_product_price`
  MODIFY `product_price_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `mos_pshop_shipping_carrier`
--
ALTER TABLE `mos_pshop_shipping_carrier`
  MODIFY `shipping_carrier_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `mos_pshop_shipping_rate`
--
ALTER TABLE `mos_pshop_shipping_rate`
  MODIFY `shipping_rate_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `mos_pshop_shopper_group`
--
ALTER TABLE `mos_pshop_shopper_group`
  MODIFY `shopper_group_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `mos_pshop_tax_rate`
--
ALTER TABLE `mos_pshop_tax_rate`
  MODIFY `tax_rate_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `mos_pshop_user_info`
--
ALTER TABLE `mos_pshop_user_info`
  MODIFY `user_info_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `mos_pshop_vendor`
--
ALTER TABLE `mos_pshop_vendor`
  MODIFY `vendor_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `mos_pshop_vendor_category`
--
ALTER TABLE `mos_pshop_vendor_category`
  MODIFY `vendor_category_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `mos_pshop_waiting_list`
--
ALTER TABLE `mos_pshop_waiting_list`
  MODIFY `waiting_list_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mos_pshop_zone_shipping`
--
ALTER TABLE `mos_pshop_zone_shipping`
  MODIFY `zone_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `mos_sections`
--
ALTER TABLE `mos_sections`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `mos_template_positions`
--
ALTER TABLE `mos_template_positions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `mos_users`
--
ALTER TABLE `mos_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mos_weblinks`
--
ALTER TABLE `mos_weblinks`
  MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
