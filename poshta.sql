-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Час створення: Гру 17 2020 р., 16:24
-- Версія сервера: 10.4.14-MariaDB
-- Версія PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База даних: `poshta`
--

-- --------------------------------------------------------

--
-- Структура таблиці `courier`
--

CREATE TABLE `courier` (
  `id` int(11) NOT NULL,
  `suma_zamovlenya` int(11) NOT NULL,
  `kilkist_posilok` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблиці `director_viddilenya_pochty`
--

CREATE TABLE `director_viddilenya_pochty` (
  `id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблиці `otrimuvach`
--

CREATE TABLE `otrimuvach` (
  `groshy` int(11) NOT NULL,
  `vimogy` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблиці `posilka`
--

CREATE TABLE `posilka` (
  `id` int(11) NOT NULL,
  `ocinochna_vartist` int(11) NOT NULL,
  `kilkist` int(11) NOT NULL,
  `yakist` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблиці `viddilenya_pochty`
--

CREATE TABLE `viddilenya_pochty` (
  `id` int(11) NOT NULL,
  `number` int(11) NOT NULL,
  `reputation` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Індекси збережених таблиць
--

--
-- Індекси таблиці `courier`
--
ALTER TABLE `courier`
  ADD PRIMARY KEY (`id`);

--
-- Індекси таблиці `director_viddilenya_pochty`
--
ALTER TABLE `director_viddilenya_pochty`
  ADD PRIMARY KEY (`id`);

--
-- Індекси таблиці `otrimuvach`
--
ALTER TABLE `otrimuvach`
  ADD PRIMARY KEY (`groshy`);

--
-- Індекси таблиці `posilka`
--
ALTER TABLE `posilka`
  ADD PRIMARY KEY (`id`);

--
-- Індекси таблиці `viddilenya_pochty`
--
ALTER TABLE `viddilenya_pochty`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для збережених таблиць
--

--
-- AUTO_INCREMENT для таблиці `courier`
--
ALTER TABLE `courier`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблиці `director_viddilenya_pochty`
--
ALTER TABLE `director_viddilenya_pochty`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблиці `otrimuvach`
--
ALTER TABLE `otrimuvach`
  MODIFY `groshy` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблиці `posilka`
--
ALTER TABLE `posilka`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблиці `viddilenya_pochty`
--
ALTER TABLE `viddilenya_pochty`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
