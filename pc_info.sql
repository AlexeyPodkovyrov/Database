-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Хост: 192.168.0.40:3306
-- Время создания: Май 31 2022 г., 05:06
-- Версия сервера: 10.3.13-MariaDB-log
-- Версия PHP: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `pc_info`
--

-- --------------------------------------------------------

--
-- Структура таблицы `bios`
--

CREATE TABLE `bios` (
  `PC_ID` int(11) NOT NULL,
  `ID` int(11) NOT NULL,
  `Description` varchar(70) NOT NULL,
  `Manufacturer` varchar(40) NOT NULL,
  `Version` varchar(10) NOT NULL,
  `SMBIOS_Version` varchar(10) NOT NULL,
  `Date` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `bios`
--

INSERT INTO `bios` (`PC_ID`, `ID`, `Description`, `Manufacturer`, `Version`, `SMBIOS_Version`, `Date`) VALUES
(1, 1, 'BIOS Date: 04/17/13 12:03:18 Ver: 04.06.05 ALASKA - 1072009\r\n', 'American Megatrends Inc.\r\n', 'F9\r\n', '2.7', '26.05.2022'),
(2, 2, 'BIOS Date: 08/18/16 20:28:55 Ver: 05.0000B ALASKA - 1072009\r\n', 'American Megatrends Inc.\r\n', '3402\r\n', '3.0', '26.05.2022'),
(3, 1, 'BIOS Date: 05/24/10 10:57:02 Ver: 08.00.15 052410 - 20100524\r\n', 'American Megatrends Inc.\r\n', '1702   \r\n', '2.6', '26.05.2022'),
(4, 1, 'ZU1 v1.3601 3D01 ACRSYS - 6040000\r\n', 'Acer   \r\n', 'v1.3601\r\n', '2.4', '26.05.2022'),
(5, 1, 'P3.20 ALASKA - 1072009\r\n', 'American Megatrends Inc.\r\n', 'P3.20\r\n', '2.7', '26.05.22 Чт');

-- --------------------------------------------------------

--
-- Структура таблицы `computers`
--

CREATE TABLE `computers` (
  `PC_ID` int(11) NOT NULL,
  `PC_Type` varchar(30) NOT NULL,
  `PC_Name` varchar(30) NOT NULL,
  `User_Name` varchar(30) NOT NULL,
  `Operating_System` varchar(50) NOT NULL,
  `Service_Pack` varchar(2) NOT NULL,
  `Date` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `computers`
--

INSERT INTO `computers` (`PC_ID`, `PC_Type`, `PC_Name`, `User_Name`, `Operating_System`, `Service_Pack`, `Date`) VALUES
(1, 'x64-based PC\r\n', 'ALEX\r\n', 'ALEXUSER\r\n', 'Microsoft Windows 7 Домашняя расширенная \r\n', '1', '26.05.2022'),
(2, 'x64-based PC\r\n', 'SERVER1C\r\n', 'SERVER1CАдминистратор\r\n', 'Microsoft Windows Server 2008 R2 Standard \r\n', '1', '26.05.2022'),
(3, 'x64-based PC\r\n', 'TSERVER\r\n', 'TSERVERАдминистратор\r\n', 'Microsoft Windows Server 2008 R2 Standard \r\n', '1', '26.05.2022'),
(4, 'x64-based PC\r\n', 'ACER\r\n', 'ACERUSER\r\n', 'Microsoft Windows 7 Профессиональная \r\n', '1', '26.05.2022'),
(5, 'x64-based PC\r\n', 'IGOR\r\n', 'IGORUSER\r\n', 'Майкрософт Windows 11 Pro\r\n', '0', '26.05.22 Чт');

-- --------------------------------------------------------

--
-- Структура таблицы `data_storage`
--

CREATE TABLE `data_storage` (
  `PC_ID` int(11) NOT NULL,
  `ID` int(11) NOT NULL,
  `Serial_Number` varchar(30) NOT NULL,
  `Model_ID` varchar(40) NOT NULL,
  `Version` varchar(20) NOT NULL,
  `Interface_Type` varchar(10) NOT NULL,
  `Size` varchar(10) NOT NULL,
  `Logical_Disk` varchar(20) NOT NULL,
  `File_System` varchar(10) NOT NULL,
  `Logical_Disk_Size` varchar(10) NOT NULL,
  `Logical_Disk_Free_Space` varchar(10) NOT NULL,
  `Date` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `data_storage`
--

INSERT INTO `data_storage` (`PC_ID`, `ID`, `Serial_Number`, `Model_ID`, `Version`, `Interface_Type`, `Size`, `Logical_Disk`, `File_System`, `Logical_Disk_Size`, `Logical_Disk_Free_Space`, `Date`) VALUES
(1, 1, '      JP1532FR315HEK\r\n', 'Hitachi HDS721050CLA360 ATA Device\r\n', 'JP2OA50E\r\n', 'IDE\r\n', '465,76 ГБ', 'C: 250 GB\r\n', 'NTFS\r\n', '232,88 ГБ', '14,09 ГБ', '26.05.2022'),
(2, 2, 'S3YANB0K145919K     \r\n', 'ATA Samsung SSD 860 SCSI Disk Device\r\n', '1B6Q\r\n', 'SCSI\r\n', '465,76 ГБ', 'C: 500 GB SSD SYSTEM', 'NTFS\r\n', '465,54 ГБ', '166,2 ГБ', '26.05.2022'),
(3, 1, '      JC0450JQ00HKVE\r\n', 'Hitachi HDS5C1032CLA382 ATA Device\r\n', 'JCFOA3MA\r\n', 'IDE\r\n', '298,09 ГБ', 'C: SYSTEM\r\n', 'NTFS\r\n', '298,09 ГБ', '179,49 ГБ', '26.05.2022'),
(4, 1, 'DCA907611CEE02525474\r\n', 'SPCC Solid State Disk ATA Device\r\n', 'SAFM12.2\r\n', 'IDE\r\n', '223,57 ГБ', 'C: \r\n', 'NTFS\r\n', '223,47 ГБ', '187,64 ГБ', '26.05.2022'),
(5, 1, '202306A01595        \r\n', 'SanDisk SSD G5 BICS4\r\n', '00WD\r\n', 'SCSI\r\n', '465,76 ГБ', 'C: _500 Gb SYS_W11\r\n', 'NTFS\r\n', '465,15 ГБ', '247,23 ГБ', '26.05.22 Чт');

-- --------------------------------------------------------

--
-- Структура таблицы `memory`
--

CREATE TABLE `memory` (
  `PC_ID` int(11) NOT NULL,
  `ID` int(11) NOT NULL,
  `Size` varchar(10) NOT NULL,
  `Speed` varchar(10) NOT NULL,
  `Date` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `memory`
--

INSERT INTO `memory` (`PC_ID`, `ID`, `Size`, `Speed`, `Date`) VALUES
(1, 1, '4 ГБ', '1333', '26.05.2022'),
(2, 2, '8 ГБ', '2133', '26.05.2022'),
(3, 1, '2 ГБ', '1333', '26.05.2022'),
(4, 1, '2 ГБ', '533', '26.05.2022'),
(5, 1, '8 ГБ', '1600', '26.05.22 Чт');

-- --------------------------------------------------------

--
-- Структура таблицы `monitor`
--

CREATE TABLE `monitor` (
  `PC_ID` int(11) NOT NULL,
  `ID` int(11) NOT NULL,
  `Name` varchar(70) NOT NULL,
  `Manufacturer` varchar(40) NOT NULL,
  `Refresh_Rate` varchar(10) NOT NULL,
  `Max_Resolution` varchar(10) NOT NULL,
  `Date` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `monitor`
--

INSERT INTO `monitor` (`PC_ID`, `ID`, `Name`, `Manufacturer`, `Refresh_Rate`, `Max_Resolution`, `Date`) VALUES
(1, 1, 'SyncMaster SB300_S22B300B/S22B315B Plus (Digital)\r\n', 'Samsung\r\n', '60 Гц', '1920x1080\r', '26.05.2022'),
(2, 2, 'Универсальный монитор PnP\r\n', '(Стандартные мониторы)\r\n', '60 Гц', '1280x960\r\n', '26.05.2022'),
(3, 1, 'Универсальный монитор PnP\r\n', '(Стандартные мониторы)\r\n', '60 Гц', '1360x768\r\n', '26.05.2022'),
(4, 1, 'Универсальный монитор PnP\r\n', '(Стандартные мониторы)\r\n', '60 Гц', '1280x800\r\n', '26.05.2022'),
(5, 1, 'Универсальный монитор PnP\r\n', '(Стандартные мониторы)\r\n', '60 Гц', '1920x1080\r', '26.05.22 Чт');

-- --------------------------------------------------------

--
-- Структура таблицы `motherboard`
--

CREATE TABLE `motherboard` (
  `PC_ID` int(11) NOT NULL,
  `ID` int(11) NOT NULL,
  `Name` varchar(30) NOT NULL,
  `Manufacturer` varchar(30) NOT NULL,
  `Date` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `motherboard`
--

INSERT INTO `motherboard` (`PC_ID`, `ID`, `Name`, `Manufacturer`, `Date`) VALUES
(1, 1, 'H61M-DS2\r\n', 'Gigabyte Technology Co., Ltd.', '26.05.2022'),
(2, 2, 'X99-A\r\n', 'ASUSTeK COMPUTER INC.', '26.05.2022'),
(3, 1, 'P7P55D LE\r\n', 'ASUSTeK Computer INC.', '26.05.2022'),
(4, 1, 'Victoria        \r\n', 'Acer, Inc.', '26.05.2022'),
(5, 1, 'Z87 Pro3\r\n', 'ASRock', '26.05.22 Чт');

-- --------------------------------------------------------

--
-- Структура таблицы `processor`
--

CREATE TABLE `processor` (
  `PC_ID` int(11) NOT NULL,
  `ID` int(11) NOT NULL,
  `Name` varchar(60) NOT NULL,
  `Manufacturer` varchar(30) NOT NULL,
  `Description` varchar(40) NOT NULL,
  `Number_of_cores` varchar(2) NOT NULL,
  `Date` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `processor`
--

INSERT INTO `processor` (`PC_ID`, `ID`, `Name`, `Manufacturer`, `Description`, `Number_of_cores`, `Date`) VALUES
(1, 1, 'Intel(R) Core(TM) i5-2310 CPU @ 2.90GHz\r\n', 'GenuineIntel\r\n', 'Intel64 Family 6 Model 42 Stepping 7\r\n', '4', '26.05.2022'),
(2, 2, 'Intel(R) Core(TM) i7-5820K CPU @ 3.30GHz\r\n', 'GenuineIntel\r\n', 'Intel64 Family 6 Model 63 Stepping 2\r\n', '6', '26.05.2022'),
(3, 1, 'Intel(R) Core(TM) i7 CPU         860  @ 2.80GHz\r\n', 'GenuineIntel\r\n', 'Intel64 Family 6 Model 30 Stepping 5\r\n', '4', '26.05.2022'),
(4, 1, 'Intel(R) Core(TM)2 Duo CPU     T7100  @ 1.80GHz\r\n', 'GenuineIntel\r\n', 'Intel64 Family 6 Model 15 Stepping 13\r\n', '2', '26.05.2022'),
(5, 1, 'Intel(R) Core(TM) i5-4440 CPU @ 3.10GHz\r\n', 'GenuineIntel\r\n', 'Intel64 Family 6 Model 60 Stepping 3\r\n', '4', '26.05.22 Чт');

-- --------------------------------------------------------

--
-- Структура таблицы `videocard`
--

CREATE TABLE `videocard` (
  `PC_ID` int(11) NOT NULL,
  `ID` int(11) NOT NULL,
  `Name` varchar(60) NOT NULL,
  `Memory` varchar(10) NOT NULL,
  `Driver_Version` varchar(30) NOT NULL,
  `Date` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `videocard`
--

INSERT INTO `videocard` (`PC_ID`, `ID`, `Name`, `Memory`, `Driver_Version`, `Date`) VALUES
(1, 1, 'NVIDIA GeForce GTX 1050 Ti\r\n', '4 ГБ', '27.21.14.6589', '26.05.2022'),
(2, 2, 'NVIDIA GeForce GT 710\r\n', '1 ГБ', '26.21.14.4166', '26.05.2022'),
(3, 1, 'AMD Radeon HD 5450\r\n', '1 ГБ', '15.201.2001.0', '26.05.2022'),
(4, 1, 'Mobile Intel(R) 965 Express Chipset Family\r\n', '0,38 ГБ', '8.15.10.1930', '26.05.2022'),
(5, 1, 'NVIDIA GeForce GTX 670\r\n', '4 ГБ', '30.0.14.7298', '26.05.22 Чт');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `bios`
--
ALTER TABLE `bios`
  ADD KEY `PC_id` (`PC_ID`);

--
-- Индексы таблицы `computers`
--
ALTER TABLE `computers`
  ADD PRIMARY KEY (`PC_ID`);

--
-- Индексы таблицы `data_storage`
--
ALTER TABLE `data_storage`
  ADD KEY `PC_id` (`PC_ID`);

--
-- Индексы таблицы `memory`
--
ALTER TABLE `memory`
  ADD KEY `PC_id` (`PC_ID`);

--
-- Индексы таблицы `monitor`
--
ALTER TABLE `monitor`
  ADD KEY `PC_id` (`PC_ID`);

--
-- Индексы таблицы `motherboard`
--
ALTER TABLE `motherboard`
  ADD KEY `PC_id` (`PC_ID`);

--
-- Индексы таблицы `processor`
--
ALTER TABLE `processor`
  ADD KEY `PC_id` (`PC_ID`);

--
-- Индексы таблицы `videocard`
--
ALTER TABLE `videocard`
  ADD KEY `PC_id` (`PC_ID`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `bios`
--
ALTER TABLE `bios`
  MODIFY `PC_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `computers`
--
ALTER TABLE `computers`
  MODIFY `PC_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `data_storage`
--
ALTER TABLE `data_storage`
  MODIFY `PC_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `memory`
--
ALTER TABLE `memory`
  MODIFY `PC_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `monitor`
--
ALTER TABLE `monitor`
  MODIFY `PC_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `motherboard`
--
ALTER TABLE `motherboard`
  MODIFY `PC_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `processor`
--
ALTER TABLE `processor`
  MODIFY `PC_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `videocard`
--
ALTER TABLE `videocard`
  MODIFY `PC_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `bios`
--
ALTER TABLE `bios`
  ADD CONSTRAINT `bios_ibfk_1` FOREIGN KEY (`PC_ID`) REFERENCES `computers` (`PC_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `data_storage`
--
ALTER TABLE `data_storage`
  ADD CONSTRAINT `data_storage_ibfk_1` FOREIGN KEY (`PC_ID`) REFERENCES `computers` (`PC_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `memory`
--
ALTER TABLE `memory`
  ADD CONSTRAINT `memory_ibfk_1` FOREIGN KEY (`PC_ID`) REFERENCES `computers` (`PC_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `monitor`
--
ALTER TABLE `monitor`
  ADD CONSTRAINT `monitor_ibfk_1` FOREIGN KEY (`PC_ID`) REFERENCES `computers` (`PC_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `motherboard`
--
ALTER TABLE `motherboard`
  ADD CONSTRAINT `motherboard_ibfk_1` FOREIGN KEY (`PC_ID`) REFERENCES `computers` (`PC_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `processor`
--
ALTER TABLE `processor`
  ADD CONSTRAINT `processor_ibfk_1` FOREIGN KEY (`PC_ID`) REFERENCES `computers` (`PC_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `videocard`
--
ALTER TABLE `videocard`
  ADD CONSTRAINT `videocard_ibfk_1` FOREIGN KEY (`PC_ID`) REFERENCES `computers` (`PC_ID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
