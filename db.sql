-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Июн 10 2024 г., 11:57
-- Версия сервера: 5.7.39
-- Версия PHP: 8.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `otandastar`
--

-- --------------------------------------------------------

--
-- Структура таблицы `cities`
--

CREATE TABLE `cities` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_id` int(11) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `cities`
--

INSERT INTO `cities` (`id`, `name`, `country_id`, `createdAt`, `updatedAt`) VALUES
(1, 'Washington', 1, '2024-06-03 14:25:47', '2024-06-03 14:25:47'),
(2, 'New York', 1, '2024-06-03 14:25:47', '2024-06-03 14:25:47'),
(3, 'Toronto', 2, '2024-06-03 14:25:47', '2024-06-03 14:25:47'),
(4, 'Vancouver', 2, '2024-06-03 14:25:47', '2024-06-03 14:25:47');

-- --------------------------------------------------------

--
-- Структура таблицы `country`
--

CREATE TABLE `country` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `lat` float NOT NULL,
  `lng` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `country`
--

INSERT INTO `country` (`id`, `name`, `createdAt`, `updatedAt`, `lat`, `lng`) VALUES
(1, 'USA', '2024-06-03 14:25:47', '2024-06-03 14:25:47', 37.0902, -95.7129),
(2, 'Canada', '2024-06-03 14:25:47', '2024-06-03 14:25:47', 56.1304, -106.347);

-- --------------------------------------------------------

--
-- Структура таблицы `event`
--

CREATE TABLE `event` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci,
  `date` datetime DEFAULT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `event_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `event`
--

INSERT INTO `event` (`id`, `name`, `body`, `date`, `img`, `createdAt`, `updatedAt`, `event_id`) VALUES
(1, 'Кездесу Оксфорд', 'Замандас кафе', '2024-06-01 00:00:00', 'img_url', '2024-06-03 14:25:47', '2024-06-03 14:25:47', NULL),
(2, 'Event 2', 'Event body 2', '2024-06-02 00:00:00', 'img_url', '2024-06-03 14:25:47', '2024-06-03 14:25:47', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `persons`
--

CREATE TABLE `persons` (
  `id` int(11) NOT NULL,
  `director` tinyint(1) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `img` text COLLATE utf8mb4_unicode_ci,
  `biography` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `social_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `persons`
--

INSERT INTO `persons` (`id`, `director`, `name`, `img`, `biography`, `social_id`, `createdAt`, `updatedAt`) VALUES
(1, 1, 'Еламанов Нурсултан', 'https://scontent.fakx2-1.fna.fbcdn.net/v/t39.30808-6/319943592_630392712217985_1001864539745229836_n.jpg?stp=dst-jpg_s960x960&_nc_cat=111&ccb=1-7&_nc_sid=5f2048&_nc_ohc=7U0Zjm4up7sQ7kNvgGjVBpA&_nc_ht=scontent.fakx2-1.fna&oh=00_AYD8wWZK6vO7iD7eEpyOuDfKtapDBMEEg4LPVccCTKNwwg&oe=66639010', 'Biography text', 'social_id', '2024-06-03 14:25:47', '2024-06-03 14:25:47'),
(2, 0, 'Ахманов Сабит', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSM81HbcxGpQBBenhIhdeIEcUzG0Leb6xdrnKhH4N5k0bwKtgKCHcqybnmMwSeZmUXxQo0&usqp=CAU', 'Biography text', 'social_id', '2024-06-03 14:25:47', '2024-06-03 14:25:47');

-- --------------------------------------------------------

--
-- Структура таблицы `status`
--

CREATE TABLE `status` (
  `id` int(11) NOT NULL,
  `war_uim_id` int(11) DEFAULT NULL,
  `peace_uim_id` int(11) DEFAULT NULL,
  `uim_id` int(11) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `status`
--

INSERT INTO `status` (`id`, `war_uim_id`, `peace_uim_id`, `uim_id`, `createdAt`, `updatedAt`) VALUES
(1, 2, NULL, NULL, '2024-06-03 14:25:47', '2024-06-03 14:25:47'),
(2, 1, NULL, NULL, '2024-06-03 14:25:47', '2024-06-03 14:25:47');

-- --------------------------------------------------------

--
-- Структура таблицы `uim`
--

CREATE TABLE `uim` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `director_id` int(11) DEFAULT NULL,
  `cities_id` int(11) DEFAULT NULL,
  `event_id` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `persons_id` int(11) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `uim`
--

INSERT INTO `uim` (`id`, `name`, `director_id`, `cities_id`, `event_id`, `status`, `persons_id`, `createdAt`, `updatedAt`, `body`) VALUES
(1, '«KAZAKH AMERICAN CENTER» БІРЛЕСТІГІ ', 1, 1, 1, 1, 2, '2024-06-03 14:25:47', '2024-06-03 14:25:47', '«Kazakh American Сenter» Бірлестігі 2011 жылы құрылды. (нақты ақпарат емес)\n\nМАҚСАТЫ: АҚШ-қа келген қазақстандықтардың бейімделуіне көмектесу, заңнамалық тұрғыдан қолдау көрсету, қазақстандықтарды рухани-мәдени байытуға мүмкіндік беретін іс-шаралар (фестивальдар, семинарлар) өткізу.\n\nҚЫЗМЕТІ: «Kazakh American Сenter» Бірлестігі жергілікті қазақтарға жыл сайын Наурыз мерексін өткізуді әдеттке айналдырған. Әр жыл сайын қазақстандық танымал әртістердің Америкада өтетін Наурыздарға қатысуын ұйымдастырады. Мәселен, биылғы жылы Флорида штаты, Орландо қаласында 40-қа жуық танымал қазақстандық әртістердің қатысуымен Наурыз мерекесін тойламақ. Аталған шараға 2000-нан астам адам қатысады деп күтілуде.\n\n«Kazakh American Center» бірлестігінің төрағасы Бағдат АРИПОВ'),
(2, '«KAZCOMMUNITY USA» ОРТАЛЫҒЫ', 2, 2, 2, 2, 1, '2024-06-03 14:25:47', '2024-06-03 14:25:47', '«KАZ Community USA» орталығы 2016 жылы құрылды.\n\n ҚЫЗМЕТІ: 2016 жылдан бастап Америкада қазақстандықтар үшін іс-шаралар ұйымдастыра бастады. Бұл пикниктер, клубтық сипаттағы кештер, коктейль кештері. Көпшілігі жабық жерлерде болды: кафелер, мейрамханалар және түнгі клубтар.\n\n2022 жылы орталық жаңа деңгейге шықты, қазақстандық танымал жұлдыздардың Айқын Төлепберген және «Ирина Кайратовна» тобының АҚШ-тағы концерттік турын Майами, Лос-Анджелес, Чикаго және Нью-Йорк қалаларында ұйымдастырды.\n\n «KАZ Community USA» орталығының жетекшісі Талғат АБДРАХМАНОВ');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `country_id` (`country_id`);

--
-- Индексы таблицы `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`id`),
  ADD KEY `event_id` (`event_id`);

--
-- Индексы таблицы `persons`
--
ALTER TABLE `persons`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`id`),
  ADD KEY `war_uim_id` (`war_uim_id`),
  ADD KEY `peace_uim_id` (`peace_uim_id`),
  ADD KEY `uim_id` (`uim_id`);

--
-- Индексы таблицы `uim`
--
ALTER TABLE `uim`
  ADD PRIMARY KEY (`id`),
  ADD KEY `director_id` (`director_id`),
  ADD KEY `cities_id` (`cities_id`),
  ADD KEY `event_id` (`event_id`),
  ADD KEY `persons_id` (`persons_id`),
  ADD KEY `status` (`status`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `cities`
--
ALTER TABLE `cities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `country`
--
ALTER TABLE `country`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `event`
--
ALTER TABLE `event`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `persons`
--
ALTER TABLE `persons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `status`
--
ALTER TABLE `status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `uim`
--
ALTER TABLE `uim`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `cities`
--
ALTER TABLE `cities`
  ADD CONSTRAINT `cities_ibfk_1` FOREIGN KEY (`country_id`) REFERENCES `country` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `event`
--
ALTER TABLE `event`
  ADD CONSTRAINT `event_ibfk_1` FOREIGN KEY (`event_id`) REFERENCES `uim` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `status`
--
ALTER TABLE `status`
  ADD CONSTRAINT `status_ibfk_1` FOREIGN KEY (`war_uim_id`) REFERENCES `uim` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `status_ibfk_2` FOREIGN KEY (`peace_uim_id`) REFERENCES `uim` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `status_ibfk_3` FOREIGN KEY (`uim_id`) REFERENCES `uim` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `uim`
--
ALTER TABLE `uim`
  ADD CONSTRAINT `uim_ibfk_100` FOREIGN KEY (`persons_id`) REFERENCES `persons` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `uim_ibfk_96` FOREIGN KEY (`director_id`) REFERENCES `persons` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `uim_ibfk_97` FOREIGN KEY (`cities_id`) REFERENCES `cities` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `uim_ibfk_98` FOREIGN KEY (`event_id`) REFERENCES `event` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `uim_ibfk_99` FOREIGN KEY (`status`) REFERENCES `status` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
