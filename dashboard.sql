-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Сен 01 2022 г., 23:35
-- Версия сервера: 5.7.38
-- Версия PHP: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `dashboard`
--

-- --------------------------------------------------------

--
-- Структура таблицы `groups`
--

CREATE TABLE `groups` (
  `id` int(11) NOT NULL,
  `group_name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `groups`
--

INSERT INTO `groups` (`id`, `group_name`) VALUES
(1, 'ИС-11'),
(2, 'ИС-21'),
(3, 'ИС-31'),
(4, 'ИС-41');

-- --------------------------------------------------------

--
-- Структура таблицы `timetable`
--

CREATE TABLE `timetable` (
  `id` int(11) NOT NULL,
  `day` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `top` text NOT NULL,
  `down` text NOT NULL,
  `lesson` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `timetable`
--

INSERT INTO `timetable` (`id`, `day`, `group_id`, `top`, `down`, `lesson`) VALUES
(113, 1, 1, 'Технологии обр. информации (Лек) Поярков А.В 319/1к', 'Пары нет', 1),
(114, 1, 1, 'Пары нет', 'Физра Харин А.А', 2),
(115, 1, 1, 'Компьютерная графика (Лек) Клочков М.А. 319/1к', 'Пары нет', 3),
(116, 1, 1, 'БЖД (Прак) Римшина А.А. 504/6к', 'БЖД (Лек) Мерзлякова Д.Р. 319/6', 4),
(117, 1, 1, 'Основы управления проектами (Лек) Лашкарев А.Н. 421/6к', 'Пары нет', 5),
(118, 2, 1, 'Технологии обр. информации (Лек) Поярков А.В 319/1к', 'Пары нет', 1),
(119, 2, 1, 'null', 'null', 2),
(120, 2, 1, 'null', 'null', 3),
(121, 2, 1, 'Мат.Логика (Прак) Пупышев В.В. 410а/6к', 'Дифф.Уры (Лек) Новикова Е.В 307/1к', 4),
(122, 2, 1, 'Сис.программирование (Лаб) Трусов А.С. 317/6к', 'Пары нет', 5),
(123, 3, 1, 'Пары нет', 'Дифф.Уры (Прак) Новикова Е.В 410а/6к', 1),
(124, 3, 1, 'Сис.программирование (Лаб) Трусов А.С. 317/6к', 'Компьютерная графика (Лаб) Клочков М.А. 321/6к', 2),
(125, 3, 1, 'СЛПР (Лек) Шрейбер Т.В. 319/1к', 'Компьютерная графика (Лаб) Клочков М.А. 321/6к', 3),
(126, 3, 1, 'БД (Лек) Анисимов А.Е 307/1к', 'Пары нет', 4),
(127, 3, 1, 'СЛПР (Лек) Шрейбер Т.В. 319/1к', 'Дифф.Уры (Лек) Новикова Е.В 307/1к', 5),
(128, 4, 1, 'Пары нет', 'Дифф.Уры (Прак) Новикова Е.В 410а/6к', 1),
(129, 4, 1, 'Сис.программирование (Лаб) Трусов А.С. 317/6к', 'Пары нет', 2),
(130, 4, 1, 'Пары нет', 'БД (Лек) Анисимов А.Е 307/1к', 3),
(131, 4, 1, 'Компьютерная графика (Лек) Клочков М.А. 319/1к', 'Пары нет', 4),
(132, 4, 1, 'Дифф.Уры (Лек) Новикова Е.В 307/1к', 'Мат.Логика (Прак) Пупышев В.В. 410а/6к', 5),
(133, 5, 1, 'Пары нет', 'Основы управления проектами (Лек) Лашкарев А.Н. 421/6к', 1),
(134, 5, 1, 'БД (Лаб) Логов А.Г. 317/6к', 'Дифф.Уры (Лек) Новикова Е.В 307/1к', 2),
(135, 5, 1, 'Пары нет', 'Мат.Логика (Лек) Яшин А.Д 319/1к', 3),
(136, 5, 1, 'БД (Лек) Анисимов А.Е 307/1к', 'Пары нет', 4),
(137, 5, 1, 'Пары нет', 'СЛПР (Прак) Шрейбер Т.В. 311/6к', 5),
(138, 6, 1, 'БЖД (Лек) Мерзлякова Д.Р. 319/6', 'Введение в синт.анализ (Лек) Дюгуров Д.В 421/6к', 1),
(139, 6, 1, 'Введение в синт.анализ (Лаб) Дюгуров Д.В 311/6к', 'БД (Лаб) Логов А.Г. 317/6к', 2),
(140, 6, 1, 'Физика (Лек) Жданова Л.И. 307/1к', 'Пары нет', 3),
(141, 6, 1, 'Пары нет', 'Введение в синт.анализ (Лек) Дюгуров Д.В 421/6к', 4),
(142, 6, 1, 'Дифф.Уры (Прак) Новикова Е.В 410а/6к', 'Пары нет', 5),
(143, 1, 2, 'Пары нет', 'Введение в синт.анализ (Лек) Дюгуров Д.В 421/6к', 1),
(144, 1, 2, 'Компьютерная графика (Лаб) Клочков М.А. 321/6к', 'Компьютерная графика (Лек) Клочков М.А. 319/1к', 2),
(145, 1, 2, 'Введение в синт.анализ (Лек) Дюгуров Д.В 421/6к', 'Пары нет', 3),
(146, 1, 2, 'Пары нет', 'Дифф.Уры (Лек) Новикова Е.В 307/1к', 4),
(147, 1, 2, 'Дифф.Уры (Лек) Новикова Е.В 307/1к', 'Пары нет', 5),
(148, 2, 2, 'Сис.программирование (Лаб) Трусов А.С. 317/6к', 'Технологии обр. информации (Лек) Поярков А.В 319/1к', 1),
(149, 2, 2, 'СЛПР (Прак) Шрейбер Т.В. 311/6к', 'Дифф.Уры (Лек) Новикова Е.В 307/1к', 2),
(150, 2, 2, 'Пары нет', 'Технологии обр. информации (Лек) Поярков А.В 319/1к', 3),
(151, 2, 2, 'БД (Лаб) Логов А.Г. 317/6к', 'Пары нет', 4),
(152, 2, 2, 'Сис.программирование (Лаб) Трусов А.С. 317/6к', 'Введение в синт.анализ (Лаб) Дюгуров Д.В 311/6к', 5),
(153, 3, 2, 'Основы управления проектами (Лек) Лашкарев А.Н. 421/6к', 'Пары нет', 1),
(154, 3, 2, 'БД (Лек) Анисимов А.Е 307/1к', 'Пары нет', 2),
(155, 3, 2, 'БЖД (Лек) Мерзлякова Д.Р. 319/6', 'Физика (Лек) Жданова Л.И. 307/1к', 3),
(156, 3, 2, 'Пары нет', 'Дифф.Уры (Прак) Новикова Е.В 410а/6к', 4),
(157, 3, 2, 'Физра Харин А.А', 'Пары нет', 5),
(158, 4, 2, 'СЛПР (Лек) Шрейбер Т.В. 319/1к', 'Сис.программирование (Лаб) Трусов А.С. 317/6к', 1),
(159, 4, 2, 'Введение в синт.анализ (Лек) Дюгуров Д.В 421/6к', 'Пары нет', 2),
(160, 4, 2, 'Введение в синт.анализ (Лаб) Дюгуров Д.В 311/6к', 'Пары нет', 3),
(161, 4, 2, 'СЛПР (Прак) Шрейбер Т.В. 311/6к', 'Введение в синт.анализ (Лек) Дюгуров Д.В 421/6к', 4),
(162, 4, 2, 'Сис.программирование (Лаб) Трусов А.С. 317/6к', 'Физра Харин А.А', 5),
(163, 5, 2, 'Компьютерная графика (Лек) Клочков М.А. 319/1к', 'Пары нет', 1),
(164, 5, 2, 'Сис.программирование (Лаб) Трусов А.С. 317/6к', 'Физра Харин А.А', 2),
(165, 5, 2, 'null', 'null', 3),
(166, 5, 2, 'Пары нет', 'БЖД (Лек) Мерзлякова Д.Р. 319/6', 4),
(167, 5, 2, 'Основы управления проектами (Лек) Лашкарев А.Н. 421/6к', 'Дифф.Уры (Прак) Новикова Е.В 410а/6к', 5),
(168, 6, 2, 'Сис.программирование (Лаб) Трусов А.С. 317/6к', 'Физра Харин А.А', 1),
(169, 6, 2, 'БД (Лек) Анисимов А.Е 307/1к', 'СЛПР (Лек) Шрейбер Т.В. 319/1к', 2),
(170, 6, 2, 'БЖД (Прак) Римшина А.А. 504/6к', 'Сис.программирование (Лаб) Трусов А.С. 317/6к', 3),
(171, 6, 2, 'БД (Лек) Анисимов А.Е 307/1к', 'Компьютерная графика (Лаб) Клочков М.А. 321/6к', 4),
(172, 6, 2, 'Пары нет', 'Дифф.Уры (Лек) Новикова Е.В 307/1к', 5),
(173, 1, 3, 'Введение в синт.анализ (Лаб) Дюгуров Д.В 311/6к', 'Пары нет', 1),
(174, 1, 3, 'СЛПР (Лек) Шрейбер Т.В. 319/1к', 'Физра Харин А.А', 2),
(175, 1, 3, 'Основы управления проектами (Лек) Лашкарев А.Н. 421/6к', 'Пары нет', 3),
(176, 1, 3, 'Мат.Логика (Лек) Яшин А.Д 319/1к', 'БЖД (Прак) Римшина А.А. 504/6к', 4),
(177, 1, 3, 'БД (Лаб) Логов А.Г. 317/6к', 'Дифф.Уры (Лек) Новикова Е.В 307/1к', 5),
(178, 2, 3, 'undefined', 'Пары нет', 1),
(179, 2, 3, 'Физра Харин А.А', 'Философия (Лек) Щадрин А.А. 229/1к', 2),
(180, 2, 3, 'Сис.программирование (Лаб) Трусов А.С. 317/6к', 'Пары нет', 3),
(181, 2, 3, 'БД (Лек) Анисимов А.Е 307/1к', 'Пары нет', 4),
(182, 2, 3, 'СЛПР (Прак) Шрейбер Т.В. 311/6к', 'Пары нет', 5),
(183, 3, 3, 'Пары нет', 'Основы управления проектами (Лек) Лашкарев А.Н. 421/6к', 1),
(184, 3, 3, 'Пары нет', 'БЖД (Прак) Римшина А.А. 504/6к', 2),
(185, 3, 3, 'Сис.программирование (Лаб) Трусов А.С. 317/6к', 'Пары нет', 3),
(186, 3, 3, 'СЛПР (Прак) Шрейбер Т.В. 311/6к', 'Пары нет', 4),
(187, 3, 3, 'СЛПР (Лек) Шрейбер Т.В. 319/1к', 'СЛПР (Лек) Шрейбер Т.В. 319/1к', 5),
(188, 4, 3, 'Мат.Логика (Лек) Яшин А.Д 319/1к', 'Физра Харин А.А', 1),
(189, 4, 3, 'Мат.Логика (Лек) Яшин А.Д 319/1к', 'Сис.программирование (Лаб) Трусов А.С. 317/6к', 2),
(190, 4, 3, 'Пары нет', 'Философия (Лек) Щадрин А.А. 229/1к', 3),
(191, 4, 3, 'Философия (Лек) Щадрин А.А. 229/1к', 'Физра Харин А.А', 4),
(192, 4, 3, 'Основы управления проектами (Лек) Лашкарев А.Н. 421/6к', 'БД (Лаб) Логов А.Г. 317/6к', 5),
(193, 5, 3, 'Физика (Лек) Жданова Л.И. 307/1к', 'Пары нет', 1),
(194, 5, 3, 'Физика (Лек) Жданова Л.И. 307/1к', 'БЖД (Прак) Римшина А.А. 504/6к', 2),
(195, 5, 3, 'Мат.Логика (Лек) Яшин А.Д 319/1к', 'Пары нет', 3),
(196, 5, 3, 'Компьютерная графика (Лек) Клочков М.А. 319/1к', 'Пары нет', 4),
(197, 5, 3, 'Введение в синт.анализ (Лек) Дюгуров Д.В 421/6к', 'БЖД (Лек) Мерзлякова Д.Р. 319/6', 5),
(198, 6, 3, 'СЛПР (Прак) Шрейбер Т.В. 311/6к', 'Физика (Лек) Жданова Л.И. 307/1к', 1),
(199, 6, 3, 'Физика (Лек) Жданова Л.И. 307/1к', 'Пары нет', 2),
(200, 6, 3, 'Пары нет', 'Дифф.Уры (Прак) Новикова Е.В 410а/6к', 3),
(201, 6, 3, 'Физра Харин А.А', 'Физика (Лек) Жданова Л.И. 307/1к', 4),
(202, 6, 3, 'Мат.Логика (Лек) Яшин А.Д 319/1к', 'Пары нет', 5),
(203, 1, 4, 'Физра Харин А.А', 'Пары нет', 1),
(204, 1, 4, 'Физра Харин А.А', 'БД (Лек) Анисимов А.Е 307/1к', 2),
(205, 1, 4, 'null', 'null', 3),
(206, 1, 4, 'Пары нет', 'Физра Харин А.А', 4),
(207, 1, 4, 'Пары нет', 'undefined', 5),
(208, 2, 4, 'СЛПР (Лек) Шрейбер Т.В. 319/1к', 'СЛПР (Прак) Шрейбер Т.В. 311/6к', 1),
(209, 2, 4, 'Физика (Лек) Жданова Л.И. 307/1к', 'Пары нет', 2),
(210, 2, 4, 'Физика (Лек) Жданова Л.И. 307/1к', 'Введение в синт.анализ (Лаб) Дюгуров Д.В 311/6к', 3),
(211, 2, 4, 'Технологии обр. информации (Лек) Поярков А.В 319/1к', 'Пары нет', 4),
(212, 2, 4, 'Дифф.Уры (Лек) Новикова Е.В 307/1к', 'Компьютерная графика (Лаб) Клочков М.А. 321/6к', 5),
(213, 3, 4, 'Философия (Лек) Щадрин А.А. 229/1к', 'БЖД (Прак) Римшина А.А. 504/6к', 1),
(214, 3, 4, 'null', 'null', 2),
(215, 3, 4, 'Философия (Лек) Щадрин А.А. 229/1к', 'БЖД (Прак) Римшина А.А. 504/6к', 3),
(216, 3, 4, 'СЛПР (Лек) Шрейбер Т.В. 319/1к', 'Введение в синт.анализ (Лаб) Дюгуров Д.В 311/6к', 4),
(217, 3, 4, 'Пары нет', 'Физра Харин А.А', 5),
(218, 4, 4, 'null', 'null', 1),
(219, 4, 4, 'Пары нет', 'Введение в синт.анализ (Лаб) Дюгуров Д.В 311/6к', 2),
(220, 4, 4, 'null', 'null', 3),
(221, 4, 4, 'Пары нет', 'БД (Лаб) Логов А.Г. 317/6к', 4),
(222, 4, 4, 'null', 'null', 5),
(223, 5, 4, 'null', 'null', 1),
(224, 5, 4, 'Основы управления проектами (Лек) Лашкарев А.Н. 421/6к', 'Дифф.Уры (Прак) Новикова Е.В 410а/6к', 2),
(225, 5, 4, 'Физра Харин А.А', 'Пары нет', 3),
(226, 5, 4, 'БД (Лаб) Логов А.Г. 317/6к', 'СЛПР (Прак) Шрейбер Т.В. 311/6к', 4),
(227, 5, 4, 'Пары нет', 'БД (Лаб) Логов А.Г. 317/6к', 5),
(228, 6, 4, 'Компьютерная графика (Лек) Клочков М.А. 319/1к', 'БД (Лаб) Логов А.Г. 317/6к', 1),
(229, 6, 4, 'Компьютерная графика (Лек) Клочков М.А. 319/1к', 'Сис.программирование (Лаб) Трусов А.С. 317/6к', 2),
(230, 6, 4, 'Мат.Логика (Лек) Яшин А.Д 319/1к', 'Пары нет', 3),
(231, 6, 4, 'Пары нет', 'Дифф.Уры (Прак) Новикова Е.В 410а/6к', 4),
(232, 6, 4, 'Сис.программирование (Лаб) Трусов А.С. 317/6к', 'БЖД (Лек) Мерзлякова Д.Р. 319/6', 5);

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `login` varchar(32) NOT NULL,
  `password` text NOT NULL,
  `name` text NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `timetable`
--
ALTER TABLE `timetable`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `login` (`login`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `groups`
--
ALTER TABLE `groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `timetable`
--
ALTER TABLE `timetable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=233;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
