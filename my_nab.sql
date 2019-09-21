-- phpMyAdmin SQL Dump
-- version 4.6.6
-- https://www.phpmyadmin.net/
--
-- 主機: localhost
-- 產生時間： 2018-05-20 04:36:19
-- 伺服器版本: 5.7.17-log
-- PHP 版本： 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `my_nab`
--

-- --------------------------------------------------------

--
-- 資料表結構 `atm_transaction`
--

CREATE TABLE `atm_transaction` (
  `Transaction_number` varchar(10) NOT NULL,
  `Transaction__time` datetime(6) NOT NULL,
  `money` varchar(10) NOT NULL,
  `Trading_Options` varchar(10) NOT NULL,
  `Account__money` varchar(100) NOT NULL,
  `place` varchar(30) NOT NULL,
  `Transaction__date` date NOT NULL,
  `Account_selection` varchar(30) NOT NULL,
  `identity_card` varchar(30) NOT NULL,
  `address` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 資料表結構 `bank`
--

CREATE TABLE `bank` (
  `address` varchar(30) NOT NULL,
  `Bank_name` varchar(30) NOT NULL,
  `phone` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 資料表的匯出資料 `bank`
--

INSERT INTO `bank` (`address`, `Bank_name`, `phone`) VALUES
('三重', '華南銀行', '0945678913'),
('上海', '華南銀行', '0945678924'),
('中和', '華南銀行', '0945678904'),
('中山', '華南銀行', '0945678907'),
('中正', '華南銀行', '0945678900'),
('五股', '華南銀行', '0945678910'),
('京都', '華南銀行', '0945678929'),
('伊朗', '華南銀行', '0945678946'),
('信義', '華南銀行', '0945678919'),
('倫敦', '華南銀行', '0945678930'),
('八德', '華南銀行', '0945678914'),
('冰島', '華南銀行', '0945678937'),
('剛果', '華南銀行', '0945678945'),
('北京', '華南銀行', '0945678922'),
('北投', '華南銀行', '0945678918'),
('印度', '華南銀行', '0945678940'),
('台南', '華南銀行', '0945678950'),
('四川', '華南銀行', '0945678952'),
('士林', '華南銀行', '0945678902'),
('大安', '華南銀行', '0945678920'),
('大直', '華南銀行', '0945678939'),
('富欣', '華南銀行', '0945678909'),
('山東', '華南銀行', '0945678943'),
('左營', '華南銀行', '0945678917'),
('巴黎', '華南銀行', '0945678938'),
('廣東', '華南銀行', '0945678923'),
('明德', '華南銀行', '0945678903'),
('東京', '華南銀行', '0945678928'),
('板橋', '華南銀行', '0945678905'),
('柏林', '華南銀行', '0945678926'),
('永和', '華南銀行', '0945678906'),
('沖繩', '華南銀行', '0945678933'),
('淡水', '華南銀行', '0945678915'),
('瑞典', '華南銀行', '0945678949'),
('瑞士', '華南銀行', '0945678948'),
('石牌', '華南銀行', '0945678901'),
('紐約', '華南銀行', '0945678925'),
('群馬', '華南銀行', '0945678931'),
('芬蘭', '華南銀行', '0945678947'),
('花東', '華南銀行', '0945678951'),
('荷蘭', '華南銀行', '0945678947'),
('華興', '華南銀行', '0945678911'),
('蒙古', '華南銀行', '0945678953'),
('蘆洲', '華南銀行', '0945678912'),
('里約', '華南銀行', '0945678927'),
('開羅', '華南銀行', '0945678934'),
('關渡', '華南銀行', '0945678916'),
('雅典', '華南銀行', '0945678932'),
('雪梨', '華南銀行', '0945678941'),
('青島', '華南銀行', '0945678943'),
('首爾', '華南銀行', '0945678936'),
('香港', '華南銀行', '0945678921');

-- --------------------------------------------------------

--
-- 資料表結構 `bank_department`
--

CREATE TABLE `bank_department` (
  `department` varchar(30) NOT NULL,
  `address` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 資料表結構 `belong`
--

CREATE TABLE `belong` (
  `identity_card` varchar(30) NOT NULL,
  `address` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 資料表結構 `borrow_money`
--

CREATE TABLE `borrow_money` (
  `money` varchar(10) DEFAULT NULL,
  `identity_card` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 資料表的匯出資料 `borrow_money`
--

INSERT INTO `borrow_money` (`money`, `identity_card`) VALUES
('100', 'f'),
('100000', 'z1518748'),
('1200', 'a113791580'),
('1200', 'a120675894'),
('200', 'a123065400'),
('250', 'a123697458'),
('250', 'a123791058'),
('100', 'a125346798'),
('500', 'a128741587'),
('20', 'a138761586'),
('20', 'a153684790'),
('120', 'a157868484'),
('150', 'a265489512'),
('150', 'a287032450'),
('250', 'a305379865'),
('250', 'a328071450'),
('250', 'a359198424'),
('250', 'a408714502'),
('20', 'a423321568'),
('20', 'a425876512'),
('30', 'a451156850'),
('30', 'a453712356'),
('1000', 'a453791586'),
('10', 'a456103798'),
('400', 'a456654912'),
('400', 'a473695207'),
('200', 'a498021450'),
('200', 'a506445961'),
('200', 'a510072431'),
('200', 'a510701450'),
('200', 'a511507450'),
('200', 'a513657450'),
('100', 'a531020307'),
('100', 'a535614502'),
('100', 'a537946572'),
('100', 'a543252124'),
('300', 'a549020475'),
('300', 'a603754812'),
('300', 'a611467450'),
('300', 'a657452124'),
('300', 'a753468512'),
('800', 'a753951268'),
('800', 'a754319206'),
('800', 'a759608424'),
('800', 'a784512036'),
('800', 'a802041657'),
('800', 'a828710450'),
('800', 'a848714502'),
('800', 'a852963147'),
('800', 'a910741450'),
('800', 'a951753210'),
('800', 'a951753486'),
('800', 'a985071450');

-- --------------------------------------------------------

--
-- 資料表結構 `client`
--

CREATE TABLE `client` (
  `client_name` text NOT NULL,
  `identity_card` varchar(30) NOT NULL,
  `age` varchar(10) NOT NULL,
  `address` varchar(0) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `phone` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 資料表的匯出資料 `client`
--

INSERT INTO `client` (`client_name`, `identity_card`, `age`, `address`, `gender`, `phone`) VALUES
('卡普', 'a113791580', '65', '', '男', '0976637588'),
('索爾', 'a120675894', '33', '', '男', '0957386912'),
('詩乃', 'a123065400', '16', '', '女', '0962448653'),
('希達', 'a123697458', '16', '', '女', '0945678950'),
('和真', 'a123791058', '16', '', '男', '0943538241'),
('喬巴', 'a125346798', '10', '', '男', '0987653410'),
('孫悟飯', 'a128741587', '25', '', '男', '0951235798'),
('奇犽', 'a138761586', '12', '', '男', '0976538945'),
('愛衣', 'a153684790', '17', '', '女', '0975309852'),
('一護', 'a157868484', '18', '', '男', '0943791258'),
('梅莉', 'a265489512', '19', '', '女', '0995175382'),
('春野櫻', 'a267145502', '15', '', '女', '0960602241'),
('詩惠美', 'a287032450', '15', '', '女', '0925562241'),
('茶渡', 'a305379865', '18', '', '男', '0901374980'),
('真由里', 'a328071450', '15', '', '女', '0965661241'),
('金', 'a359198424', '23', '', '男', '0965156874'),
('時音', 'a408714502', '17', '', '女', '0915630241'),
('繪里奈', 'a423321568', '16', '', '女', '0912365243'),
('新之助', 'a425876512', '5', '', '男', '0945321987'),
('芽衣子', 'a451156850', '16', '', '女', '0953231241'),
('吾郎', 'a453712356', '31', '', '男', '0986538241'),
('魯夫', 'a453791586', '20', '', '男', '0976538241'),
('達也', 'a456103798', '19', '', '男', '0920334554'),
('里花', 'a456654912', '16', '', '女', '0925075328'),
('娜美', 'a473695207', '19', '', '女', '0973869142'),
('麗子', 'a498021450', '24', '', '女', '0957312241'),
('空', 'a506445961', '19', '', '男', '0905894431'),
('愛瑠', 'a510072431', '12', '', '女', '0932012416'),
('撫子', 'a510701450', '12', '', '女', '0932801241'),
('銀子', 'a511507450', '17', '', '女', '0953101241'),
('祈', 'a513657450', '17', '', '女', '0956781241'),
('和人', 'a531020307', '17', '', '男', '0973128020'),
('夢子', 'a535614502', '15', '', '女', '0925232241'),
('飛鼠', 'a537946572', '26', '', '男', '0956785312'),
('銀時', 'a543252124', '22', '', '男', '0976132584'),
('賈修', 'a549020475', '8', '', '男', '0976053057'),
('艾力克', 'a603754812', '17', '', '男', '0975431085'),
('詩羽', 'a611467450', '17', '', '女', '0961401241'),
('金時', 'a657452124', '22', '', '男', '0965132584'),
('深澄真', 'a753468512', '15', '', '男', '0945339800'),
('宮園薰', 'a753951268', '16', '', '女', '0903507841'),
('新一', 'a754319206', '17', '', '男', '0900125894'),
('小傑', 'a759608424', '12', '', '男', '0965874452'),
('小智', 'a784512036', '10', '', '男', '0989865623'),
('鳴人', 'a802041657', '12', '', '男', '0912059802'),
('莉莉奈', 'a828710450', '15', '', '女', '0925661241'),
('鈴音', 'a848714502', '15', '', '女', '0956020241'),
('孫悟空', 'a852963147', '33', '', '男', '0958023657'),
('羽川翼', 'a910741450', '20', '', '女', '0933101241'),
('深雪', 'a951753210', '19', '', '女', '0995175320'),
('阿克亞', 'a951753486', '20', '', '女', '0923246328'),
('夏目', 'a985071450', '17', '', '女', '0905601241');

-- --------------------------------------------------------

--
-- 資料表結構 `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(11) NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- 資料表結構 `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- 資料表結構 `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- 資料表結構 `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

--
-- 資料表的匯出資料 `pma__designer_settings`
--

INSERT INTO `pma__designer_settings` (`username`, `settings_data`) VALUES
('root', '{\"angular_direct\":\"direct\",\"snap_to_grid\":\"off\",\"relation_lines\":\"true\"}');

-- --------------------------------------------------------

--
-- 資料表結構 `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

--
-- 資料表的匯出資料 `pma__export_templates`
--

INSERT INTO `pma__export_templates` (`id`, `username`, `export_type`, `template_name`, `template_data`) VALUES
(1, 'root', 'table', 'my_nab', '{\"quick_or_custom\":\"quick\",\"what\":\"sql\",\"allrows\":\"1\",\"output_format\":\"sendit\",\"filename_template\":\"@TABLE@\",\"remember_template\":\"on\",\"charset\":\"utf-8\",\"compression\":\"none\",\"maxsize\":\"\",\"codegen_structure_or_data\":\"data\",\"codegen_format\":\"0\",\"csv_separator\":\",\",\"csv_enclosed\":\"\\\"\",\"csv_escaped\":\"\\\"\",\"csv_terminated\":\"AUTO\",\"csv_null\":\"NULL\",\"csv_structure_or_data\":\"data\",\"excel_null\":\"NULL\",\"excel_edition\":\"win\",\"excel_structure_or_data\":\"data\",\"htmlword_structure_or_data\":\"structure_and_data\",\"htmlword_null\":\"NULL\",\"json_structure_or_data\":\"data\",\"latex_caption\":\"something\",\"latex_structure_or_data\":\"structure_and_data\",\"latex_structure_caption\":\"@TABLE@ 資料表結構\",\"latex_structure_continued_caption\":\"@TABLE@ 資料表結構 (續)\",\"latex_structure_label\":\"tab:@TABLE@-structure\",\"latex_relation\":\"something\",\"latex_comments\":\"something\",\"latex_mime\":\"something\",\"latex_columns\":\"something\",\"latex_data_caption\":\"@TABLE@ 表的內容\",\"latex_data_continued_caption\":\"@TABLE@ 表的內容 (續)\",\"latex_data_label\":\"tab:@TABLE@-data\",\"latex_null\":\"\\\\textit{NULL}\",\"mediawiki_structure_or_data\":\"data\",\"mediawiki_caption\":\"something\",\"mediawiki_headers\":\"something\",\"ods_null\":\"NULL\",\"ods_structure_or_data\":\"data\",\"odt_structure_or_data\":\"structure_and_data\",\"odt_relation\":\"something\",\"odt_comments\":\"something\",\"odt_mime\":\"something\",\"odt_columns\":\"something\",\"odt_null\":\"NULL\",\"pdf_report_title\":\"\",\"pdf_structure_or_data\":\"data\",\"phparray_structure_or_data\":\"data\",\"sql_include_comments\":\"something\",\"sql_header_comment\":\"\",\"sql_compatibility\":\"NONE\",\"sql_structure_or_data\":\"structure_and_data\",\"sql_create_table\":\"something\",\"sql_auto_increment\":\"something\",\"sql_create_view\":\"something\",\"sql_create_trigger\":\"something\",\"sql_backquotes\":\"something\",\"sql_type\":\"INSERT\",\"sql_insert_syntax\":\"both\",\"sql_max_query_size\":\"50000\",\"sql_hex_for_binary\":\"something\",\"sql_utc_time\":\"something\",\"texytext_structure_or_data\":\"structure_and_data\",\"texytext_null\":\"NULL\",\"xml_structure_or_data\":\"data\",\"xml_export_events\":\"something\",\"xml_export_functions\":\"something\",\"xml_export_procedures\":\"something\",\"xml_export_tables\":\"something\",\"xml_export_triggers\":\"something\",\"xml_export_views\":\"something\",\"xml_export_contents\":\"something\",\"yaml_structure_or_data\":\"data\",\"\":null,\"lock_tables\":null,\"csv_removeCRLF\":null,\"csv_columns\":null,\"excel_removeCRLF\":null,\"excel_columns\":null,\"htmlword_columns\":null,\"json_pretty_print\":null,\"ods_columns\":null,\"sql_dates\":null,\"sql_relation\":null,\"sql_mime\":null,\"sql_use_transaction\":null,\"sql_disable_fk\":null,\"sql_views_as_tables\":null,\"sql_metadata\":null,\"sql_drop_table\":null,\"sql_if_not_exists\":null,\"sql_procedure_function\":null,\"sql_truncate\":null,\"sql_delayed\":null,\"sql_ignore\":null,\"texytext_columns\":null}'),
(2, 'root', 'database', 'my_nam', '{\"quick_or_custom\":\"quick\",\"what\":\"sql\",\"structure_or_data_forced\":\"0\",\"table_select[]\":[\"atm_transaction\",\"bank\",\"bank_department\",\"belong\",\"borrow_money\",\"client\",\"pma__bookmark\",\"pma__central_columns\",\"pma__column_info\",\"pma__designer_settings\",\"pma__export_templates\",\"pma__favorite\",\"pma__history\",\"pma__navigationhiding\",\"pma__pdf_pages\",\"pma__recent\",\"pma__relation\",\"pma__savedsearches\",\"pma__table_coords\",\"pma__table_info\",\"pma__table_uiprefs\",\"pma__tracking\",\"pma__userconfig\",\"pma__usergroups\",\"pma__users\"],\"table_structure[]\":[\"atm_transaction\",\"bank\",\"bank_department\",\"belong\",\"borrow_money\",\"client\",\"pma__bookmark\",\"pma__central_columns\",\"pma__column_info\",\"pma__designer_settings\",\"pma__export_templates\",\"pma__favorite\",\"pma__history\",\"pma__navigationhiding\",\"pma__pdf_pages\",\"pma__recent\",\"pma__relation\",\"pma__savedsearches\",\"pma__table_coords\",\"pma__table_info\",\"pma__table_uiprefs\",\"pma__tracking\",\"pma__userconfig\",\"pma__usergroups\",\"pma__users\"],\"table_data[]\":[\"atm_transaction\",\"bank\",\"bank_department\",\"belong\",\"borrow_money\",\"client\",\"pma__bookmark\",\"pma__central_columns\",\"pma__column_info\",\"pma__designer_settings\",\"pma__export_templates\",\"pma__favorite\",\"pma__history\",\"pma__navigationhiding\",\"pma__pdf_pages\",\"pma__recent\",\"pma__relation\",\"pma__savedsearches\",\"pma__table_coords\",\"pma__table_info\",\"pma__table_uiprefs\",\"pma__tracking\",\"pma__userconfig\",\"pma__usergroups\",\"pma__users\"],\"output_format\":\"sendit\",\"filename_template\":\"@DATABASE@\",\"remember_template\":\"on\",\"charset\":\"utf-8\",\"compression\":\"none\",\"maxsize\":\"\",\"codegen_structure_or_data\":\"data\",\"codegen_format\":\"0\",\"csv_separator\":\",\",\"csv_enclosed\":\"\\\"\",\"csv_escaped\":\"\\\"\",\"csv_terminated\":\"AUTO\",\"csv_null\":\"NULL\",\"csv_structure_or_data\":\"data\",\"excel_null\":\"NULL\",\"excel_edition\":\"win\",\"excel_structure_or_data\":\"data\",\"htmlword_structure_or_data\":\"structure_and_data\",\"htmlword_null\":\"NULL\",\"json_structure_or_data\":\"data\",\"latex_caption\":\"something\",\"latex_structure_or_data\":\"structure_and_data\",\"latex_structure_caption\":\"@TABLE@ 資料表結構\",\"latex_structure_continued_caption\":\"@TABLE@ 資料表結構 (續)\",\"latex_structure_label\":\"tab:@TABLE@-structure\",\"latex_relation\":\"something\",\"latex_comments\":\"something\",\"latex_mime\":\"something\",\"latex_columns\":\"something\",\"latex_data_caption\":\"@TABLE@ 表的內容\",\"latex_data_continued_caption\":\"@TABLE@ 表的內容 (續)\",\"latex_data_label\":\"tab:@TABLE@-data\",\"latex_null\":\"\\\\textit{NULL}\",\"mediawiki_structure_or_data\":\"structure_and_data\",\"mediawiki_caption\":\"something\",\"mediawiki_headers\":\"something\",\"ods_null\":\"NULL\",\"ods_structure_or_data\":\"data\",\"odt_structure_or_data\":\"structure_and_data\",\"odt_relation\":\"something\",\"odt_comments\":\"something\",\"odt_mime\":\"something\",\"odt_columns\":\"something\",\"odt_null\":\"NULL\",\"pdf_report_title\":\"\",\"pdf_structure_or_data\":\"structure_and_data\",\"phparray_structure_or_data\":\"data\",\"sql_include_comments\":\"something\",\"sql_header_comment\":\"\",\"sql_compatibility\":\"NONE\",\"sql_structure_or_data\":\"structure_and_data\",\"sql_create_table\":\"something\",\"sql_auto_increment\":\"something\",\"sql_create_view\":\"something\",\"sql_procedure_function\":\"something\",\"sql_create_trigger\":\"something\",\"sql_backquotes\":\"something\",\"sql_type\":\"INSERT\",\"sql_insert_syntax\":\"both\",\"sql_max_query_size\":\"50000\",\"sql_hex_for_binary\":\"something\",\"sql_utc_time\":\"something\",\"texytext_structure_or_data\":\"structure_and_data\",\"texytext_null\":\"NULL\",\"xml_structure_or_data\":\"data\",\"xml_export_events\":\"something\",\"xml_export_functions\":\"something\",\"xml_export_procedures\":\"something\",\"xml_export_tables\":\"something\",\"xml_export_triggers\":\"something\",\"xml_export_views\":\"something\",\"xml_export_contents\":\"something\",\"yaml_structure_or_data\":\"data\",\"\":null,\"lock_tables\":null,\"as_separate_files\":null,\"csv_removeCRLF\":null,\"csv_columns\":null,\"excel_removeCRLF\":null,\"excel_columns\":null,\"htmlword_columns\":null,\"json_pretty_print\":null,\"ods_columns\":null,\"sql_dates\":null,\"sql_relation\":null,\"sql_mime\":null,\"sql_use_transaction\":null,\"sql_disable_fk\":null,\"sql_views_as_tables\":null,\"sql_metadata\":null,\"sql_create_database\":null,\"sql_drop_table\":null,\"sql_if_not_exists\":null,\"sql_truncate\":null,\"sql_delayed\":null,\"sql_ignore\":null,\"texytext_columns\":null}');

-- --------------------------------------------------------

--
-- 資料表結構 `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- 資料表結構 `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- 資料表結構 `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- 資料表結構 `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- 資料表結構 `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- 資料表的匯出資料 `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"my_nam\",\"table\":\"borrow_money\"},{\"db\":\"my_nam\",\"table\":\"belong\"},{\"db\":\"my_nam\",\"table\":\"client\"},{\"db\":\"my_nam\",\"table\":\"bank_department\"},{\"db\":\"my_nam\",\"table\":\"bank\"},{\"db\":\"my_nam\",\"table\":\"atm_transaction\"},{\"db\":\"mysql\",\"table\":\"columns_priv\"},{\"db\":\"my_nam\",\"table\":\"pma__userconfig\"},{\"db\":\"my_nab\",\"table\":\"atm_transaction\"},{\"db\":\"my_nab\",\"table\":\"bank\"}]');

-- --------------------------------------------------------

--
-- 資料表結構 `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- 資料表結構 `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- 資料表結構 `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT '0',
  `x` float UNSIGNED NOT NULL DEFAULT '0',
  `y` float UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- 資料表結構 `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- 資料表結構 `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

--
-- 資料表的匯出資料 `pma__table_uiprefs`
--

INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'my_nab', 'atm_transaction', '{\"CREATE_TIME\":\"2018-05-12 23:11:51\",\"col_visib\":[\"1\",\"1\",\"1\",\"1\",\"1\",\"1\",\"1\",\"1\",\"1\",\"1\"]}', '2018-05-13 00:43:44'),
('root', 'my_nab', 'borrow_money', '{\"CREATE_TIME\":\"2018-05-13 04:23:14\",\"col_order\":[\"0\",\"1\"],\"col_visib\":[\"1\",\"1\"]}', '2018-05-12 21:08:02'),
('root', 'my_nab', 'client', '[]', '2018-05-12 22:28:28'),
('root', 'my_nam', 'atm_transaction', '{\"sorted_col\":\"`atm_transaction`.`Account__money` ASC\"}', '2018-05-20 02:55:51'),
('root', 'my_nam', 'client', '{\"sorted_col\":\"`identity_card`  ASC\"}', '2018-05-20 04:01:07');

-- --------------------------------------------------------

--
-- 資料表結構 `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin,
  `data_sql` longtext COLLATE utf8_bin,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- 資料表結構 `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- 資料表的匯出資料 `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2018-05-19 13:00:30', '{\"lang\":\"zh_TW\",\"collation_connection\":\"utf8mb4_unicode_ci\"}');

-- --------------------------------------------------------

--
-- 資料表結構 `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- 資料表結構 `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- 已匯出資料表的索引
--

--
-- 資料表索引 `atm_transaction`
--
ALTER TABLE `atm_transaction`
  ADD PRIMARY KEY (`Transaction_number`),
  ADD KEY `identity_card` (`identity_card`),
  ADD KEY `address` (`address`);

--
-- 資料表索引 `bank`
--
ALTER TABLE `bank`
  ADD PRIMARY KEY (`address`);

--
-- 資料表索引 `bank_department`
--
ALTER TABLE `bank_department`
  ADD PRIMARY KEY (`department`,`address`),
  ADD KEY `address` (`address`);

--
-- 資料表索引 `belong`
--
ALTER TABLE `belong`
  ADD PRIMARY KEY (`identity_card`,`address`),
  ADD KEY `address` (`address`);

--
-- 資料表索引 `borrow_money`
--
ALTER TABLE `borrow_money`
  ADD KEY `identity_card` (`identity_card`);

--
-- 資料表索引 `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`identity_card`);
ALTER TABLE `client` ADD FULLTEXT KEY `identity_card` (`identity_card`);

--
-- 資料表索引 `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- 資料表索引 `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- 資料表索引 `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- 資料表索引 `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- 資料表索引 `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- 資料表索引 `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- 資料表索引 `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- 資料表索引 `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- 資料表索引 `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- 資料表索引 `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- 資料表索引 `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- 資料表索引 `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- 資料表索引 `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- 資料表索引 `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- 資料表索引 `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- 資料表索引 `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- 資料表索引 `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- 資料表索引 `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- 在匯出的資料表使用 AUTO_INCREMENT
--

--
-- 使用資料表 AUTO_INCREMENT `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- 使用資料表 AUTO_INCREMENT `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用資料表 AUTO_INCREMENT `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- 使用資料表 AUTO_INCREMENT `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用資料表 AUTO_INCREMENT `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用資料表 AUTO_INCREMENT `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 已匯出資料表的限制(Constraint)
--

--
-- 資料表的 Constraints `atm_transaction`
--
ALTER TABLE `atm_transaction`
  ADD CONSTRAINT `atm_transaction_ibfk_1` FOREIGN KEY (`identity_card`) REFERENCES `client` (`identity_card`),
  ADD CONSTRAINT `atm_transaction_ibfk_2` FOREIGN KEY (`address`) REFERENCES `bank` (`address`);

--
-- 資料表的 Constraints `bank_department`
--
ALTER TABLE `bank_department`
  ADD CONSTRAINT `bank_department_ibfk_1` FOREIGN KEY (`address`) REFERENCES `bank` (`address`);

--
-- 資料表的 Constraints `belong`
--
ALTER TABLE `belong`
  ADD CONSTRAINT `belong_ibfk_1` FOREIGN KEY (`identity_card`) REFERENCES `client` (`identity_card`),
  ADD CONSTRAINT `belong_ibfk_2` FOREIGN KEY (`address`) REFERENCES `bank` (`address`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
