-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Erstellungszeit: 12. Apr 2023 um 13:53
-- Server-Version: 10.4.27-MariaDB
-- PHP-Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `manual`
--
CREATE DATABASE IF NOT EXISTS `manual` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `manual`;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `chapters`
--

CREATE TABLE `chapters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order` int(11) NOT NULL DEFAULT 0,
  `title` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Daten für Tabelle `chapters`
--

INSERT INTO `chapters` (`id`, `order`, `title`, `created_at`, `updated_at`) VALUES
(16, 0, 'Der Sibirische Tiger', '2023-04-11 06:38:10', '2023-04-12 07:36:54'),
(17, 1, 'Königstiger', '2023-04-11 06:39:11', '2023-04-12 07:36:54');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Daten für Tabelle `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_04_23_114430_create_chapters_table', 1),
(6, '2022_04_23_114455_create_topics_table', 1),
(7, '2022_04_29_124535_create_templates_table', 1),
(8, '2022_06_03_061349_settings', 1),
(9, '2022_06_03_061606_create_settings_table', 1);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) NOT NULL,
  `value` text NOT NULL DEFAULT ' ',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Daten für Tabelle `settings`
--

INSERT INTO `settings` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1, 'welcome-page', '<p>Welcome page</p>', '2023-02-22 09:16:06', '2023-04-12 09:47:15'),
(2, 'settings-dark-theme', '1', '2023-02-22 09:16:06', '2023-04-12 05:22:55'),
(3, '--mc-primary', '#71677C', NULL, '2023-04-06 12:26:36'),
(4, '--mc-primary-foreground', 'ghostwhite', NULL, '2023-04-06 12:26:36'),
(5, '--mc-header-shadow', '#7d8da1', NULL, '2023-04-06 12:26:36'),
(6, '--mc-menu-divider', '#bbb', NULL, '2023-04-06 12:26:36'),
(7, '--mc-menu-title', '#323232', NULL, '2023-04-06 12:26:36'),
(8, '--mc-menu-active', 'rgba(132,139,200,0.2)', NULL, '2023-04-06 12:26:36'),
(9, '--mc-menu-text', '#7d8da1', NULL, '2023-04-06 12:26:36'),
(10, '--mc-background', '#EFF2EF', NULL, '2023-04-06 12:26:36'),
(11, '--mc-box-background', '#fff', NULL, '2023-04-06 12:26:36'),
(12, '--mc-box-border', 'rgba(132,139,200,0.2)', NULL, '2023-04-06 12:26:36'),
(13, '--mc-text-font-size', '16px', NULL, '2023-04-06 12:26:36'),
(14, '--mc-text-title', '#323232', NULL, '2023-04-06 12:26:36'),
(15, '--mc-text', '#323232', NULL, '2023-04-06 12:26:36'),
(16, '--mc-text-header', '#00FFFF', NULL, '2023-04-06 12:26:36'),
(17, '--mc-text-bold', '#474A48', NULL, '2023-04-06 12:26:36'),
(18, '--mc-text-link', '#323232', NULL, '2023-04-06 12:26:36'),
(19, '--mc-text-highlight-background', 'rgba(245,235,111,0.29)', NULL, '2023-04-06 12:26:36'),
(20, '--mc-checked-background', '#388ae5', NULL, '2023-04-06 12:26:36'),
(21, '--mc-checked-border', '#388ae5', NULL, '2023-04-06 12:26:36'),
(22, '--mc-checked-foreground', '#fff', NULL, '2023-04-06 12:26:36'),
(23, '--mc-not-checked-background', '#fff', NULL, '2023-04-06 12:26:36'),
(24, '--mc-not-checked-border', '#d0d0d0', NULL, '2023-04-06 12:26:36'),
(25, '--mc-code-background', 'gray', NULL, '2023-04-06 12:26:36'),
(26, '--mc-code-border', '#7d8da1', NULL, '2023-04-06 12:26:36'),
(27, '--mc-code-text', '#666', NULL, '2023-04-06 12:26:36'),
(28, '--mc-warning-background', 'rgb(253 246 178)', NULL, '2023-04-06 12:26:36'),
(29, '--mc-warning-text', '#161616', NULL, '2023-04-06 12:26:36'),
(30, '--mc-warning-left', 'rgb(142 75 16)', NULL, '2023-04-06 12:26:36'),
(31, '--mc-tip-background', 'rgb(10 100 200)', NULL, '2023-04-06 12:26:36'),
(32, '--mc-tip-text', '#161616', NULL, '2023-04-06 12:26:36'),
(33, '--mc-tip-left', 'rgb(142 20 16)', NULL, '2023-04-06 12:26:36'),
(34, '--mc-table-border', 'rgba(132,139,200,0.2)', NULL, '2023-04-06 12:26:36'),
(35, '--mc-table-header-background', '#71677C', NULL, '2023-04-06 12:26:36'),
(36, '--mc-table-header-text', 'ghostwhite', NULL, '2023-04-06 12:26:36'),
(37, '--mc-table-header-font-weight', '600', NULL, '2023-04-06 12:26:36'),
(38, '--mc-table-row-background', '#fff', NULL, '2023-04-06 12:26:36'),
(39, '--mc-table-row-text', '666', NULL, '2023-04-06 12:26:36'),
(40, '--mc-table-alternate-background', '#fff', NULL, '2023-04-06 12:26:36'),
(41, '--mc-table-alternate-text', '#666', NULL, '2023-04-06 12:26:36');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `templates`
--

CREATE TABLE `templates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `html_body` text NOT NULL DEFAULT ' ',
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `topics`
--

CREATE TABLE `topics` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `chapter_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `html_body` text NOT NULL DEFAULT ' ',
  `template_id` text NOT NULL,
  `order` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Daten für Tabelle `topics`
--

INSERT INTO `topics` (`id`, `chapter_id`, `title`, `html_body`, `template_id`, `order`, `status`, `created_at`, `updated_at`) VALUES
(41, 16, 'Körperbau', '<p style=\"-webkit-text-stroke-width:0px;background-color:rgb(255, 255, 255);color:rgb(32, 33, 34);font-family:sans-serif;font-size:14px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:0.5em 0px;orphans:2;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\">Der Sibirische Tiger ist die größte Unterart des Tigers. Die <a style=\"color:rgb(6, 69, 173);overflow-wrap:break-word;text-decoration:none;\" target=\"_blank\" rel=\"noopener noreferrer\" href=\"https://de.wikipedia.org/wiki/Kopf-Rumpf-L%C3%A4nge\" title=\"Kopf-Rumpf-Länge\">Kopf-Rumpf-Länge</a> beträgt in der Regel bis 200&nbsp;cm, in Ausnahmefällen auch bis zu etwa 230&nbsp;cm; die Schwanzlänge bis zu ca. 100&nbsp;cm, die <a class=\"mw-redirect\" style=\"color:rgb(6, 69, 173);overflow-wrap:break-word;text-decoration:none;\" target=\"_blank\" rel=\"noopener noreferrer\" href=\"https://de.wikipedia.org/wiki/Schulterh%C3%B6he\" title=\"Schulterhöhe\">Schulterhöhe</a> bis 105&nbsp;cm. Somit ist er etwas größer als der <a style=\"color:rgb(6, 69, 173);overflow-wrap:break-word;text-decoration:none;\" target=\"_blank\" rel=\"noopener noreferrer\" href=\"https://de.wikipedia.org/wiki/K%C3%B6nigstiger\" title=\"Königstiger\">Königstiger</a>, der die zweitgrößte Unterart des Tigers repräsentiert. Männliche Sibirische Tiger wiegen zwischen 180 und 306&nbsp;kg, Weibchen 100 bis 167&nbsp;kg.<a style=\"color:rgb(6, 69, 173);overflow-wrap:break-word;text-decoration:none;\" target=\"_blank\" rel=\"noopener noreferrer\" href=\"https://de.wikipedia.org/wiki/Sibirischer_Tiger#cite_note-Maz%C3%A1k-2\"><sup class=\"reference\" style=\"font-family:sans-serif;font-style:normal;font-variant:normal;font-weight:normal;line-height:1;unicode-bidi:isolate;white-space:nowrap;\" id=\"cite_ref-Mazák_2-0\">[2]</sup></a> Die größte Schädellänge, die der Zoologe <a style=\"color:rgb(6, 69, 173);overflow-wrap:break-word;text-decoration:none;\" target=\"_blank\" rel=\"noopener noreferrer\" href=\"https://de.wikipedia.org/wiki/Vratislav_Maz%C3%A1k\" title=\"Vratislav Mazák\">Vratislav Mazák</a> unter zahlreichen männlichen Tieren ermittelt hat, betrug 38 cm.<a style=\"color:rgb(6, 69, 173);overflow-wrap:break-word;text-decoration:none;\" target=\"_blank\" rel=\"noopener noreferrer\" href=\"https://de.wikipedia.org/wiki/Sibirischer_Tiger#cite_note-3\"><sup class=\"reference\" style=\"font-family:sans-serif;font-style:normal;font-variant:normal;font-weight:normal;line-height:1;unicode-bidi:isolate;white-space:nowrap;\" id=\"cite_ref-3\">[3]</sup></a></p><h3 style=\"-webkit-text-stroke-width:0px;background-color:rgb(255, 255, 255);color:rgb(0, 0, 0);font-family:sans-serif;font-size:1.2em;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;letter-spacing:normal;line-height:1.6;margin:0.3em 0px 0px;orphans:2;overflow:hidden;padding-bottom:0px;padding-top:0.5em;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\"><span class=\"mw-headline\" id=\"Fell\"><strong>Fell</strong></span></h3><p style=\"-webkit-text-stroke-width:0px;background-color:rgb(255, 255, 255);color:rgb(32, 33, 34);font-family:sans-serif;font-size:14px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:0.5em 0px;orphans:2;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\">Die Haarlänge des Sibirischen Tigers beträgt am Rücken im Sommer 15 bis 17&nbsp;mm, am Bauch zwischen 25 und 45&nbsp;mm. Das Nackenhaar ist meist verlängert und hat eine Länge zwischen 30 und 55&nbsp;mm. Die Backenbarthaare messen zwischen 70 und 85&nbsp;mm und sind damit deutlich kürzer als beispielsweise die des kleineren <a style=\"color:rgb(6, 69, 173);overflow-wrap:break-word;text-decoration:none;\" target=\"_blank\" rel=\"noopener noreferrer\" href=\"https://de.wikipedia.org/wiki/Sumatra-Tiger\" title=\"Sumatra-Tiger\">Sumatra-Tigers</a>, welche zwischen 80 und 120&nbsp;mm lang sind. Das Winterfell hingegen ist wegen der klimatischen Verhältnisse bedeutend länger: Die Rückenhaare haben dann eine Länge zwischen 40 und 60&nbsp;mm, die Bauchhaare eine Länge von 70 bis 105&nbsp;mm und die Backenbarthaare erreichen 90 bis 120&nbsp;mm. Auch die Haare an Brust und Kehle sind verlängert, so dass die Großkatze aufgrund der recht langen Behaarung ein eher „zottiges“ Aussehen hat.</p><p style=\"-webkit-text-stroke-width:0px;background-color:rgb(255, 255, 255);color:rgb(32, 33, 34);font-family:sans-serif;font-size:14px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:0.5em 0px;orphans:2;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\">Der Sibirische Tiger ist meist deutlich heller als die südlichen Tigerunterarten, obwohl die Bandbreite der Farbtönungen erheblich variieren kann, und so kommen auch Tiere mit dunkelrötlichem Winterfell vor. Das Weiß am <a style=\"color:rgb(6, 69, 173);overflow-wrap:break-word;text-decoration:none;\" target=\"_blank\" rel=\"noopener noreferrer\" href=\"https://de.wikipedia.org/wiki/Abdomen\" title=\"Abdomen\">Bauch</a> und an den Ansätzen der <a style=\"color:rgb(6, 69, 173);overflow-wrap:break-word;text-decoration:none;\" target=\"_blank\" rel=\"noopener noreferrer\" href=\"https://de.wikipedia.org/wiki/Flanke_(Anatomie)\" title=\"Flanke (Anatomie)\">Flanken</a> ist ausgedehnter als bei anderen Unterarten, die Streifen sind oft nicht überall schwarz, sondern oft eher schwarzgrau oder graubraun. Ein dickes und langes Fell schützt ihn vor den niedrigen Temperaturen, die in seiner Heimat auf bis zu minus 45&nbsp;°C fallen können. Im Sommer ist das Fell allerdings wesentlich kürzer als im Winter. Darunter verbirgt sich am Bauch und an den Flanken eine bis zu fünf Zentimeter dicke <a style=\"color:rgb(6, 69, 173);overflow-wrap:break-word;text-decoration:none;\" target=\"_blank\" rel=\"noopener noreferrer\" href=\"https://de.wikipedia.org/wiki/Fettgewebe\" title=\"Fettgewebe\">Fettgewebsschicht</a>, die ihm zusätzlich hilft, extreme Kälte zu überleben.</p><h2 style=\"-webkit-text-stroke-width:0px;background-color:rgb(255, 255, 255);border-bottom:1px solid rgb(162, 169, 177);color:rgb(0, 0, 0);font-family:&quot;Linux Libertine&quot;, Georgia, Times, serif;font-size:1.5em;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:normal;letter-spacing:normal;line-height:1.375;margin:1em 0px 0.25em;orphans:2;overflow:hidden;padding:0px;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\"><span class=\"mw-headline\" id=\"Lebensweise\">Lebensweise</span></h2><p style=\"-webkit-text-stroke-width:0px;background-color:rgb(255, 255, 255);color:rgb(32, 33, 34);font-family:sans-serif;font-size:14px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:0.5em 0px;orphans:2;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\">Der Sibirische Tiger ist sehr anpassungsfähig und bewohnt sowohl laubabwerfende als auch Nadelwälder, Flachland sowie Mittelgebirge der Region. Die meisten Gipfel im Gebiet des heutigen Verbreitungsgebietes liegen ohnehin nur 500–800&nbsp;m über dem Meeresspiegel und nur wenige erreichen Höhen von mehr als 1000 Metern. Die Raubkatze scheint Wälder mit dichtem Bodenbewuchs zu bevorzugen, vermutlich um sich besser anschleichen und verbergen zu können. Der Sibirische Tiger lebt normalerweise als Einzelgänger und markiert sein Revier mit Urin und Kratzspuren. Am Beispiel einer Studie im <a style=\"color:rgb(6, 69, 173);overflow-wrap:break-word;text-decoration:none;\" target=\"_blank\" rel=\"noopener noreferrer\" href=\"https://de.wikipedia.org/wiki/Sichote-Alin-Naturreservat\" title=\"Sichote-Alin-Naturreservat\">Sichote-Alin-Naturreservat</a> werden die enormen Raumansprüche der Tiere deutlich. Die Streifgebiete der Weibchen waren hier zwischen 200 und 400 <a class=\"mw-redirect\" style=\"color:rgb(6, 69, 173);overflow-wrap:break-word;text-decoration:none;\" target=\"_blank\" rel=\"noopener noreferrer\" href=\"https://de.wikipedia.org/wiki/Quadratkilometer\" title=\"Quadratkilometer\">Quadratkilometer</a> groß, die der Männchen 800 bis 1000; diese überlappten sich meist mit denen mehrerer Weibchen. So teilt ein Kater sein Revier im Durchschnitt mit zwei Weibchen. Gelegentlich können die Reviere der Kater sogar 3000 Quadratkilometer umfassen. Männliche Tiger verteidigen ihr Revier gegen Geschlechtsgenossen. Sie konzentrieren sich dabei auf die wichtigen Grenzen zu den Weibchenrevieren und Stellen mit gutem Beutetierbestand. In den besten Tigerlebensräumen des Fernen Ostens findet man etwa einen Tiger auf 100 Quadratkilometern.</p><p style=\"-webkit-text-stroke-width:0px;background-color:rgb(255, 255, 255);color:rgb(32, 33, 34);font-family:sans-serif;font-size:14px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:0.5em 0px;orphans:2;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\">Sibirische Tiger sind vorwiegend nachtaktiv, ihre <a style=\"color:rgb(6, 69, 173);overflow-wrap:break-word;text-decoration:none;\" target=\"_blank\" rel=\"noopener noreferrer\" href=\"https://de.wikipedia.org/wiki/Lebenserwartung\" title=\"Lebenserwartung\">Lebenserwartung</a> liegt zwischen 15 und 20 Jahren.</p><h2 style=\"-webkit-text-stroke-width:0px;background-color:rgb(255, 255, 255);border-bottom:1px solid rgb(162, 169, 177);color:rgb(0, 0, 0);font-family:&quot;Linux Libertine&quot;, Georgia, Times, serif;font-size:1.5em;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:normal;letter-spacing:normal;line-height:1.375;margin:1em 0px 0.25em;orphans:2;overflow:hidden;padding:0px;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\"><span class=\"mw-headline\" id=\"Nahrung_und_Jagd\">Nahrung und Jagd</span></h2><p style=\"-webkit-text-stroke-width:0px;background-color:rgb(255, 255, 255);color:rgb(32, 33, 34);font-family:sans-serif;font-size:14px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:0.5em 0px;orphans:2;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\">Der Sibirische Tiger muss pro Tag 9 bis 10&nbsp;kg <a style=\"color:rgb(6, 69, 173);overflow-wrap:break-word;text-decoration:none;\" target=\"_blank\" rel=\"noopener noreferrer\" href=\"https://de.wikipedia.org/wiki/Fleisch\" title=\"Fleisch\">Fleisch</a> zu sich nehmen, da er enorme <a style=\"color:rgb(6, 69, 173);overflow-wrap:break-word;text-decoration:none;\" target=\"_blank\" rel=\"noopener noreferrer\" href=\"https://de.wikipedia.org/wiki/Energie\" title=\"Energie\">Energiereserven</a> benötigt, um bei dem kalten <a style=\"color:rgb(6, 69, 173);overflow-wrap:break-word;text-decoration:none;\" target=\"_blank\" rel=\"noopener noreferrer\" href=\"https://de.wikipedia.org/wiki/Klima\" title=\"Klima\">Klima</a> zu überleben. Die Hauptbeutetiere sind in dieser Reihenfolge <a style=\"color:rgb(6, 69, 173);overflow-wrap:break-word;text-decoration:none;\" target=\"_blank\" rel=\"noopener noreferrer\" href=\"https://de.wikipedia.org/wiki/Rothirsch\" title=\"Rothirsch\">Rothirsche</a>, <a style=\"color:rgb(6, 69, 173);overflow-wrap:break-word;text-decoration:none;\" target=\"_blank\" rel=\"noopener noreferrer\" href=\"https://de.wikipedia.org/wiki/Wildschwein\" title=\"Wildschwein\">Wildschweine</a>, <a style=\"color:rgb(6, 69, 173);overflow-wrap:break-word;text-decoration:none;\" target=\"_blank\" rel=\"noopener noreferrer\" href=\"https://de.wikipedia.org/wiki/Sikahirsch\" title=\"Sikahirsch\">Sikahirsche</a> und <a style=\"color:rgb(6, 69, 173);overflow-wrap:break-word;text-decoration:none;\" target=\"_blank\" rel=\"noopener noreferrer\" href=\"https://de.wikipedia.org/wiki/Reh\" title=\"Reh\">Rehe</a>. Daneben erbeutet er auch <a style=\"color:rgb(6, 69, 173);overflow-wrap:break-word;text-decoration:none;\" target=\"_blank\" rel=\"noopener noreferrer\" href=\"https://de.wikipedia.org/wiki/Elch\" title=\"Elch\">Elche</a>, <a style=\"color:rgb(6, 69, 173);overflow-wrap:break-word;text-decoration:none;\" target=\"_blank\" rel=\"noopener noreferrer\" href=\"https://de.wikipedia.org/wiki/Gorale\" title=\"Gorale\">Gorale</a>, <a style=\"color:rgb(6, 69, 173);overflow-wrap:break-word;text-decoration:none;\" target=\"_blank\" rel=\"noopener noreferrer\" href=\"https://de.wikipedia.org/wiki/Eurasischer_Luchs\" title=\"Eurasischer Luchs\">Luchse</a> und gelegentlich sogar <a style=\"color:rgb(6, 69, 173);overflow-wrap:break-word;text-decoration:none;\" target=\"_blank\" rel=\"noopener noreferrer\" href=\"https://de.wikipedia.org/wiki/B%C3%A4ren\" title=\"Bären\">Bären</a>. Manchmal reißt er auch <a style=\"color:rgb(6, 69, 173);overflow-wrap:break-word;text-decoration:none;\" target=\"_blank\" rel=\"noopener noreferrer\" href=\"https://de.wikipedia.org/wiki/Hunde\" title=\"Hunde\">Hunde</a> und Hausvieh. Generell scheinen die Beutetierbestände eine viel größere Bedeutung zu haben als bestimmte <a style=\"color:rgb(6, 69, 173);overflow-wrap:break-word;text-decoration:none;\" target=\"_blank\" rel=\"noopener noreferrer\" href=\"https://de.wikipedia.org/wiki/Habitat\" title=\"Habitat\">Habitatstypen</a>.</p><p style=\"-webkit-text-stroke-width:0px;background-color:rgb(255, 255, 255);color:rgb(32, 33, 34);font-family:sans-serif;font-size:14px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:0.5em 0px;orphans:2;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\">Mit seinem kräftigen Körper kann er sehr schwere Beute über weite Strecken tragen, um sie an einem ruhigen Ort zu fressen oder aufzubewahren.</p><p style=\"-webkit-text-stroke-width:0px;background-color:rgb(255, 255, 255);color:rgb(32, 33, 34);font-family:sans-serif;font-size:14px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:0.5em 0px;orphans:2;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\">Der Tiger verbringt viel Zeit mit der Jagd, da nur 10 Prozent seiner Angriffe erfolgreich sind. Ein solcher Angriff beginnt mit dem Anschleichen an die Beute. Ist der Tiger nahe genug herangekommen, springt er mit einem gewaltigen Satz von hinten auf das Opfer, um seine <a style=\"color:rgb(6, 69, 173);overflow-wrap:break-word;text-decoration:none;\" target=\"_blank\" rel=\"noopener noreferrer\" href=\"https://de.wikipedia.org/wiki/Eckzahn\" title=\"Eckzahn\">Eckzähne</a> in dessen <a style=\"color:rgb(6, 69, 173);overflow-wrap:break-word;text-decoration:none;\" target=\"_blank\" rel=\"noopener noreferrer\" href=\"https://de.wikipedia.org/wiki/Nacken\" title=\"Nacken\">Nacken</a> zu schlagen. Mit seinen Hinterbeinen steht er fest auf dem Boden, um das Tier nach unten zu drücken. Größere Tiere werden danach mit einem Kehlenbiss getötet, kleinere Beutetiere sterben bereits an den Verletzungen im Nacken.</p>', '-1', 2, 1, '2023-04-11 06:38:33', '2023-04-11 07:16:15'),
(42, 16, 'Lebensweise', '<p><span style=\"background-color:rgb(255,255,255);color:rgb(32,33,34);font-family:sans-serif;font-size:14px;\"><span style=\"-webkit-text-stroke-width:0px;display:inline !important;float:none;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;orphans:2;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\">Der Sibirische Tiger ist sehr anpassungsfähig und bewohnt sowohl laubabwerfende als auch Nadelwälder, Flachland sowie Mittelgebirge der Region. Die meisten Gipfel im Gebiet des heutigen Verbreitungsgebietes liegen ohnehin nur 500–800&nbsp;m über dem Meeresspiegel und nur wenige erreichen Höhen von mehr als 1000 Metern. Die Raubkatze scheint Wälder mit dichtem Bodenbewuchs zu bevorzugen, vermutlich um sich besser anschleichen und verbergen zu können. Der Sibirische Tiger lebt normalerweise als Einzelgänger und markiert sein Revier mit Urin und Kratzspuren. Am Beispiel einer Studie im </span></span><a style=\"-webkit-text-stroke-width:0px;background-color:rgb(255, 255, 255);color:rgb(6, 69, 173);font-family:sans-serif;font-size:14px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;orphans:2;overflow-wrap:break-word;text-align:start;text-decoration:none;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\" target=\"_blank\" rel=\"noopener noreferrer\" href=\"https://de.wikipedia.org/wiki/Sichote-Alin-Naturreservat\" title=\"Sichote-Alin-Naturreservat\">Sichote-Alin-Naturreservat</a><span style=\"background-color:rgb(255,255,255);color:rgb(32,33,34);font-family:sans-serif;font-size:14px;\"><span style=\"-webkit-text-stroke-width:0px;display:inline !important;float:none;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;orphans:2;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\"> werden die enormen Raumansprüche der Tiere deutlich. Die Streifgebiete der Weibchen waren hier zwischen 200 und 400 </span></span><a class=\"mw-redirect\" style=\"-webkit-text-stroke-width:0px;background-color:rgb(255, 255, 255);color:rgb(6, 69, 173);font-family:sans-serif;font-size:14px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;orphans:2;overflow-wrap:break-word;text-align:start;text-decoration:none;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\" target=\"_blank\" rel=\"noopener noreferrer\" href=\"https://de.wikipedia.org/wiki/Quadratkilometer\" title=\"Quadratkilometer\">Quadratkilometer</a><span style=\"background-color:rgb(255,255,255);color:rgb(32,33,34);font-family:sans-serif;font-size:14px;\"><span style=\"-webkit-text-stroke-width:0px;display:inline !important;float:none;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;orphans:2;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\"> groß, die der Männchen 800 bis 1000; diese überlappten sich meist mit denen mehrerer Weibchen. So teilt ein Kater sein Revier im Durchschnitt mit zwei Weibchen. Gelegentlich können die Reviere der Kater sogar 3000 Quadratkilometer umfassen. Männliche Tiger verteidigen ihr Revier gegen Geschlechtsgenossen. Sie konzentrieren sich dabei auf die wichtigen Grenzen zu den Weibchenrevieren und Stellen mit gutem Beutetierbestand. In den besten Tigerlebensräumen des Fernen Ostens findet man etwa einen Tiger auf 100 Quadratkilometern.</span></span></p>', '-1', 1, 1, '2023-04-11 06:38:40', '2023-04-11 07:16:19'),
(43, 17, 'Merkmale', '<h3 style=\"-webkit-text-stroke-width:0px;background-color:rgb(255, 255, 255);color:rgb(0, 0, 0);font-family:sans-serif;font-size:1.2em;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;letter-spacing:normal;line-height:1.6;margin:0.3em 0px 0px;orphans:2;overflow:hidden;padding-bottom:0px;padding-top:0.5em;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\"><span class=\"mw-headline\" id=\"Körperbau\"><strong>Körperbau</strong></span><span style=\"color:rgb(84,89,93);font-family:sans-serif;font-size:small;\"><span class=\"mw-editsection mw-editsection-bracket\" style=\"font-weight:normal;line-height:0;margin-left:1em;margin-right:0.25em;unicode-bidi:isolate;user-select:none;vertical-align:baseline;\"><strong>[</strong></span></span><a class=\"mw-editsection-visualeditor\" style=\"color:rgb(6, 69, 173);overflow-wrap:break-word;text-decoration:none;white-space:nowrap;\" target=\"_blank\" rel=\"noopener noreferrer\" href=\"https://de.wikipedia.org/w/index.php?title=K%C3%B6nigstiger&amp;veaction=edit&amp;section=3\" title=\"Abschnitt bearbeiten: Körperbau\"><span style=\"font-family:sans-serif;font-size:small;\"><span class=\"mw-editsection\" style=\"font-weight:normal;line-height:0;margin-left:1em;margin-right:0px;unicode-bidi:isolate;user-select:none;vertical-align:baseline;\"><strong>Bearbeiten</strong></span></span></a><span style=\"color:rgb(84,89,93);font-family:sans-serif;font-size:small;\"><span class=\"mw-editsection mw-editsection-divider\" style=\"font-weight:normal;line-height:0;margin-left:1em;margin-right:0px;unicode-bidi:isolate;user-select:none;vertical-align:baseline;\"><strong> | </strong></span></span><a style=\"color:rgb(6, 69, 173);overflow-wrap:break-word;text-decoration:none;white-space:nowrap;\" target=\"_blank\" rel=\"noopener noreferrer\" href=\"https://de.wikipedia.org/w/index.php?title=K%C3%B6nigstiger&amp;action=edit&amp;section=3\" title=\"Abschnitt bearbeiten: Körperbau\"><span style=\"font-family:sans-serif;font-size:small;\"><span class=\"mw-editsection\" style=\"font-weight:normal;line-height:0;margin-left:1em;margin-right:0px;unicode-bidi:isolate;user-select:none;vertical-align:baseline;\"><strong>Quelltext bearbeiten</strong></span></span></a><span style=\"color:rgb(84,89,93);font-family:sans-serif;font-size:small;\"><span class=\"mw-editsection mw-editsection-bracket\" style=\"font-weight:normal;line-height:0;margin-left:0.25em;margin-right:0px;unicode-bidi:isolate;user-select:none;vertical-align:baseline;\"><strong>]</strong></span></span></h3><p style=\"-webkit-text-stroke-width:0px;background-color:rgb(255, 255, 255);color:rgb(32, 33, 34);font-family:sans-serif;font-size:14px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:0.5em 0px;orphans:2;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\">Der männliche Königstiger wird, von der Schnauzen- bis zur Schwanzspitze gemessen, zwischen 270 und 310&nbsp;cm lang, in Ausnahmefällen über 360&nbsp;cm, die Weibchen erreichen 240–270&nbsp;cm. Das Gewicht der Männchen liegt zwischen 180 und 300&nbsp;kg, das der Weibchen zwischen 100 und 180&nbsp;kg. Die Schulterhöhe beträgt zwischen 90 und 100&nbsp;cm. Damit ist er nur geringfügig kleiner als der <a style=\"color:rgb(6, 69, 173);overflow-wrap:break-word;text-decoration:none;\" target=\"_blank\" rel=\"noopener noreferrer\" href=\"https://de.wikipedia.org/wiki/Sibirischer_Tiger\" title=\"Sibirischer Tiger\">Sibirische Tiger</a>, der die größte Unterart des Tigers repräsentiert. Die Schädelform ist der des <a style=\"color:rgb(6, 69, 173);overflow-wrap:break-word;text-decoration:none;\" target=\"_blank\" rel=\"noopener noreferrer\" href=\"https://de.wikipedia.org/wiki/Indochinesischer_Tiger\" title=\"Indochinesischer Tiger\">Indochinesischen</a> und <a style=\"color:rgb(6, 69, 173);overflow-wrap:break-word;text-decoration:none;\" target=\"_blank\" rel=\"noopener noreferrer\" href=\"https://de.wikipedia.org/wiki/Malaysia-Tiger\" title=\"Malaysia-Tiger\">Malaysia-Tigers</a> sehr ähnlich.</p><p style=\"-webkit-text-stroke-width:0px;background-color:rgb(255, 255, 255);color:rgb(32, 33, 34);font-family:sans-serif;font-size:14px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:0.5em 0px;orphans:2;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\">Gegenwärtig messen Wissenschaftler Großkatzen meistens „entlang der Kurven“.<a style=\"color:rgb(6, 69, 173);overflow-wrap:break-word;text-decoration:none;\" target=\"_blank\" rel=\"noopener noreferrer\" href=\"https://de.wikipedia.org/wiki/K%C3%B6nigstiger#cite_note-7\"><sup class=\"reference\" style=\"font-family:sans-serif;font-style:normal;font-variant:normal;font-weight:normal;line-height:1;unicode-bidi:isolate;white-space:nowrap;\" id=\"cite_ref-7\">[7]</sup></a> Im Durchschnitt weicht die Messmethode bei Löwen und Tiger ca. 10 bis 15&nbsp;cm von einer „geraden“ Messung ab.<a style=\"color:rgb(6, 69, 173);overflow-wrap:break-word;text-decoration:none;\" target=\"_blank\" rel=\"noopener noreferrer\" href=\"https://de.wikipedia.org/wiki/K%C3%B6nigstiger#cite_note-8\"><sup class=\"reference\" style=\"font-family:sans-serif;font-style:normal;font-variant:normal;font-weight:normal;line-height:1;unicode-bidi:isolate;white-space:nowrap;\" id=\"cite_ref-8\">[8]</sup></a> Die in der Tabelle angegebenen Werte sind gerade Messungen. Die Anzahl der Stichproben ist mit N gekennzeichnet.<br><span class=\"mw-headline\" id=\"Fell\"><strong>Fell</strong></span><span style=\"color:rgb(84,89,93);font-family:sans-serif;font-size:small;\"><span class=\"mw-editsection mw-editsection-bracket\" style=\"font-weight:normal;line-height:0;margin-left:1em;margin-right:0.25em;unicode-bidi:isolate;user-select:none;vertical-align:baseline;\"><strong>[</strong></span></span><a class=\"mw-editsection-visualeditor\" style=\"color:rgb(6, 69, 173);overflow-wrap:break-word;text-decoration:none;white-space:nowrap;\" target=\"_blank\" rel=\"noopener noreferrer\" href=\"https://de.wikipedia.org/w/index.php?title=K%C3%B6nigstiger&amp;veaction=edit&amp;section=4\" title=\"Abschnitt bearbeiten: Fell\"><span style=\"font-family:sans-serif;font-size:small;\"><span class=\"mw-editsection\" style=\"font-weight:normal;line-height:0;margin-left:1em;margin-right:0px;unicode-bidi:isolate;user-select:none;vertical-align:baseline;\"><strong>Bearbeiten</strong></span></span></a><span style=\"color:rgb(84,89,93);font-family:sans-serif;font-size:small;\"><span class=\"mw-editsection mw-editsection-divider\" style=\"font-weight:normal;line-height:0;margin-left:1em;margin-right:0px;unicode-bidi:isolate;user-select:none;vertical-align:baseline;\"><strong> | </strong></span></span><a style=\"color:rgb(6, 69, 173);overflow-wrap:break-word;text-decoration:none;white-space:nowrap;\" target=\"_blank\" rel=\"noopener noreferrer\" href=\"https://de.wikipedia.org/w/index.php?title=K%C3%B6nigstiger&amp;action=edit&amp;section=4\" title=\"Abschnitt bearbeiten: Fell\"><span style=\"font-family:sans-serif;font-size:small;\"><span class=\"mw-editsection\" style=\"font-weight:normal;line-height:0;margin-left:1em;margin-right:0px;unicode-bidi:isolate;user-select:none;vertical-align:baseline;\"><strong>Quelltext bearbeiten</strong></span></span></a><span style=\"color:rgb(84,89,93);font-family:sans-serif;font-size:small;\"><span class=\"mw-editsection mw-editsection-bracket\" style=\"font-weight:normal;line-height:0;margin-left:0.25em;margin-right:0px;unicode-bidi:isolate;user-select:none;vertical-align:baseline;\"><strong>]</strong></span></span></p><p style=\"-webkit-text-stroke-width:0px;background-color:rgb(255, 255, 255);color:rgb(32, 33, 34);font-family:sans-serif;font-size:14px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:0.5em 0px;orphans:2;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\">Die Haarlänge des Königstigers beträgt am Rücken im Sommer 8 bis 15&nbsp;mm, am Bauch zwischen 20 und 30&nbsp;mm. Im Nacken weist das Haar keine größeren Unterschiede auf und liegt hier in der Messung bei 20 bis 66&nbsp;mm. Der Backenbart hat eine Länge von 50 bis 90&nbsp;mm. Im Winter ist das Fellkleid länger, so dass die Haarlänge am Rücken zwischen 17 und 25&nbsp;mm beträgt. Auch Nacken- und Backenbarthaare sind im Winter länger als im Sommer, mit einem Unterschied zwischen 5 und 10&nbsp;mm.</p><p style=\"-webkit-text-stroke-width:0px;background-color:rgb(255, 255, 255);color:rgb(32, 33, 34);font-family:sans-serif;font-size:14px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:0.5em 0px;orphans:2;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\">Die Grundfarbe des Fells ist ein leuchtendes Rot-Gold. Die Bauchseite sowie die Beininnenseiten des Tigers sind weiß. Die relativ breiten, schwarzen Querstreifen ziehen sich vom Kopf über den ganzen Körper bis zur <a style=\"color:rgb(6, 69, 173);overflow-wrap:break-word;text-decoration:none;\" target=\"_blank\" rel=\"noopener noreferrer\" href=\"https://de.wikipedia.org/wiki/Schwanz\" title=\"Schwanz\">Schwanzspitze</a>, und auch die Hinterbeine sind in gleicher Weise gestreift. Häufig sind die Streifen verdoppelt und auf den Seiten und Schenkeln besonders lang. Die Ringe am Schwanz des Tieres sind recht breit und ebenfalls oft verdoppelt. Die Anzahl liegt bei acht oder neun Ringen.</p><h4 style=\"-webkit-text-stroke-width:0px;background-color:rgb(255, 255, 255);color:rgb(0, 0, 0);font-family:sans-serif;font-size:14px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;letter-spacing:normal;line-height:1.6;margin:0.3em 0px 0px;orphans:2;overflow:hidden;padding-bottom:0px;padding-top:0.5em;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\"><span class=\"mw-headline\" id=\"Farbvarianten\"><strong>Farbvarianten</strong></span><span style=\"color:rgb(84,89,93);font-family:sans-serif;font-size:small;\"><span class=\"mw-editsection mw-editsection-bracket\" style=\"font-weight:normal;line-height:0;margin-left:1em;margin-right:0.25em;unicode-bidi:isolate;user-select:none;vertical-align:baseline;\"><strong>[</strong></span></span><a class=\"mw-editsection-visualeditor\" style=\"color:rgb(6, 69, 173);overflow-wrap:break-word;text-decoration:none;white-space:nowrap;\" target=\"_blank\" rel=\"noopener noreferrer\" href=\"https://de.wikipedia.org/w/index.php?title=K%C3%B6nigstiger&amp;veaction=edit&amp;section=5\" title=\"Abschnitt bearbeiten: Farbvarianten\"><span style=\"font-family:sans-serif;font-size:small;\"><span class=\"mw-editsection\" style=\"font-weight:normal;line-height:0;margin-left:1em;margin-right:0px;unicode-bidi:isolate;user-select:none;vertical-align:baseline;\"><strong>Bearbeiten</strong></span></span></a><span style=\"color:rgb(84,89,93);font-family:sans-serif;font-size:small;\"><span class=\"mw-editsection mw-editsection-divider\" style=\"font-weight:normal;line-height:0;margin-left:1em;margin-right:0px;unicode-bidi:isolate;user-select:none;vertical-align:baseline;\"><strong> | </strong></span></span><a style=\"color:rgb(6, 69, 173);overflow-wrap:break-word;text-decoration:none;white-space:nowrap;\" target=\"_blank\" rel=\"noopener noreferrer\" href=\"https://de.wikipedia.org/w/index.php?title=K%C3%B6nigstiger&amp;action=edit&amp;section=5\" title=\"Abschnitt bearbeiten: Farbvarianten\"><span style=\"font-family:sans-serif;font-size:small;\"><span class=\"mw-editsection\" style=\"font-weight:normal;line-height:0;margin-left:1em;margin-right:0px;unicode-bidi:isolate;user-select:none;vertical-align:baseline;\"><strong>Quelltext bearbeiten</strong></span></span></a><span style=\"color:rgb(84,89,93);font-family:sans-serif;font-size:small;\"><span class=\"mw-editsection mw-editsection-bracket\" style=\"font-weight:normal;line-height:0;margin-left:0.25em;margin-right:0px;unicode-bidi:isolate;user-select:none;vertical-align:baseline;\"><strong>]</strong></span></span></h4><p><a class=\"image\" style=\"color:rgb(6, 69, 173);overflow-wrap:break-word;text-decoration:none;\" target=\"_blank\" rel=\"noopener noreferrer\" href=\"https://de.wikipedia.org/wiki/Datei:Whitetigers.JPG\"><img class=\"thumb tright\" style=\"-webkit-text-stroke-width:0px;background-color:rgb(255, 255, 255);clear:right;color:rgb(32, 33, 34);float:right;font-family:sans-serif;font-size:14px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:0.5em 0px 1.3em 1.4em;orphans:2;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;width:auto;word-spacing:0px;\" src=\"https://upload.wikimedia.org/wikipedia/commons/thumb/7/71/Whitetigers.JPG/220px-Whitetigers.JPG\" srcset=\"//upload.wikimedia.org/wikipedia/commons/thumb/7/71/Whitetigers.JPG/330px-Whitetigers.JPG 1.5x, //upload.wikimedia.org/wikipedia/commons/thumb/7/71/Whitetigers.JPG/440px-Whitetigers.JPG 2x\" sizes=\"100vw\" width=\"220\"></a></p><div class=\"thumb tright\" style=\"-webkit-text-stroke-width:0px;background-color:rgb(255, 255, 255);clear:right;color:rgb(32, 33, 34);float:right;font-family:sans-serif;font-size:14px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:0.5em 0px 1.3em 1.4em;orphans:2;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;width:auto;word-spacing:0px;\"><div class=\"thumbinner\" style=\"background-color:rgb(248, 249, 250);border:1px solid rgb(200, 204, 209);font-size:13.16px;overflow:hidden;padding:3px;text-align:center;width:222px;\"><div class=\"thumbcaption\" style=\"border-width:0px;font-size:12.3704px;line-height:1.4em;padding:3px;text-align:left;\"><div class=\"magnify\" style=\"float:right;margin-left:3px;margin-right:0px;\">&nbsp;</div><p>Weiße Bengal-Tiger im Zoo von <a style=\"color:rgb(6, 69, 173);overflow-wrap:break-word;text-decoration:none;\" target=\"_blank\" rel=\"noopener noreferrer\" href=\"https://de.wikipedia.org/wiki/Singapur\" title=\"Singapur\">Singapur</a></p></div></div></div><p style=\"-webkit-text-stroke-width:0px;background-color:rgb(255, 255, 255);color:rgb(32, 33, 34);font-family:sans-serif;font-size:14px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:0.5em 0px;orphans:2;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\">Nur beim Königstiger kommen in der Natur vereinzelt die sogenannten „Weißen Tiger“ vor. Die Tiere sind Halbalbinos (<a style=\"color:rgb(6, 69, 173);overflow-wrap:break-word;text-decoration:none;\" target=\"_blank\" rel=\"noopener noreferrer\" href=\"https://de.wikipedia.org/wiki/Leuzismus\" title=\"Leuzismus\">Leuzismus</a>), deren Augen blau anstatt rot sind. Alle in Gefangenschaft lebenden Weißen Tiger gehen auf Tigerkater „Mohan“ zurück, der 1951 als Jungtier während einer Jagd von <a style=\"color:rgb(6, 69, 173);overflow-wrap:break-word;text-decoration:none;\" target=\"_blank\" rel=\"noopener noreferrer\" href=\"https://de.wikipedia.org/wiki/Martand_Singh\" title=\"Martand Singh\">Martand Singh</a>, dem <a style=\"color:rgb(6, 69, 173);overflow-wrap:break-word;text-decoration:none;\" target=\"_blank\" rel=\"noopener noreferrer\" href=\"https://de.wikipedia.org/wiki/Maharadscha\" title=\"Maharadscha\">Maharadscha</a> von <a style=\"color:rgb(6, 69, 173);overflow-wrap:break-word;text-decoration:none;\" target=\"_blank\" rel=\"noopener noreferrer\" href=\"https://de.wikipedia.org/wiki/Rewa_(Staat)\" title=\"Rewa (Staat)\">Rewa</a>, im Dschungel von <a style=\"color:rgb(6, 69, 173);overflow-wrap:break-word;text-decoration:none;\" target=\"_blank\" rel=\"noopener noreferrer\" href=\"https://de.wikipedia.org/wiki/Bandhavgarh-Nationalpark\" title=\"Bandhavgarh-Nationalpark\">Bandhavgarh</a> entdeckt wurde. Singh hielt das Tier zwar in einem goldenen Käfig, gab ihm aber seit Erreichung der Geschlechtsreife stets Gelegenheit sich fortzupflanzen. Alle gezüchteten Weißen Tiger, die seitdem in Zoos der <a style=\"color:rgb(6, 69, 173);overflow-wrap:break-word;text-decoration:none;\" target=\"_blank\" rel=\"noopener noreferrer\" href=\"https://de.wikipedia.org/wiki/Vereinigte_Staaten\" title=\"Vereinigte Staaten\">USA</a>, später von <a style=\"color:rgb(6, 69, 173);overflow-wrap:break-word;text-decoration:none;\" target=\"_blank\" rel=\"noopener noreferrer\" href=\"https://de.wikipedia.org/wiki/Zirkus\" title=\"Zirkus\">Zirkussen</a> und Schaustellern weitergezüchtet wurden, sind Nachkommen von Mohan und einer seiner Töchter, deren Wurf der erste mit Weißen Tigern war.<a style=\"color:rgb(6, 69, 173);overflow-wrap:break-word;text-decoration:none;\" target=\"_blank\" rel=\"noopener noreferrer\" href=\"https://de.wikipedia.org/wiki/K%C3%B6nigstiger#cite_note-13\"><sup class=\"reference\" style=\"font-family:sans-serif;font-style:normal;font-variant:normal;font-weight:normal;line-height:1;unicode-bidi:isolate;white-space:nowrap;\" id=\"cite_ref-13\">[13]</sup></a> Die heute unter dem Namen „Weißer Tiger“ (weiß mit schwarzen Streifen), „Schneetiger“ (ganz weiß), „Goldener Tiger“ (gelb mit blassen Streifen) usw. bekannten Show-Tiere sind durch Inzucht gezüchtete Farbformen, in die teilweise <a style=\"color:rgb(6, 69, 173);overflow-wrap:break-word;text-decoration:none;\" target=\"_blank\" rel=\"noopener noreferrer\" href=\"https://de.wikipedia.org/wiki/Sibirischer_Tiger\" title=\"Sibirischer Tiger\">Sibirische Tiger</a> eingekreuzt wurden; sie stellen keine eigenen <a style=\"color:rgb(6, 69, 173);overflow-wrap:break-word;text-decoration:none;\" target=\"_blank\" rel=\"noopener noreferrer\" href=\"https://de.wikipedia.org/wiki/Art_(Biologie)\" title=\"Art (Biologie)\">Arten</a> dar.</p><p style=\"-webkit-text-stroke-width:0px;background-color:rgb(255, 255, 255);color:rgb(32, 33, 34);font-family:sans-serif;font-size:14px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:0.5em 0px;orphans:2;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\">Eine weitere Farbvariante ist die des „Schwarzen Tigers“, von dem ebenso wie von Weißen Tigern in Legenden und in der <a style=\"color:rgb(6, 69, 173);overflow-wrap:break-word;text-decoration:none;\" target=\"_blank\" rel=\"noopener noreferrer\" href=\"https://de.wikipedia.org/wiki/Chinesische_Mythologie\" title=\"Chinesische Mythologie\">chinesischen Mythologie</a> berichtet wird. Diese Tiere sind, im Gegensatz zu <a style=\"color:rgb(6, 69, 173);overflow-wrap:break-word;text-decoration:none;\" target=\"_blank\" rel=\"noopener noreferrer\" href=\"https://de.wikipedia.org/wiki/Leopard\" title=\"Leopard\">Leoparden</a> oder <a style=\"color:rgb(6, 69, 173);overflow-wrap:break-word;text-decoration:none;\" target=\"_blank\" rel=\"noopener noreferrer\" href=\"https://de.wikipedia.org/wiki/Jaguar\" title=\"Jaguar\">Jaguaren</a>, nicht vollständig schwarz gefärbt. Es handelt sich dabei nicht um <a style=\"color:rgb(6, 69, 173);overflow-wrap:break-word;text-decoration:none;\" target=\"_blank\" rel=\"noopener noreferrer\" href=\"https://de.wikipedia.org/wiki/Melanismus\" title=\"Melanismus\">Melanismus</a>, sondern um eine Überpigmentierung<a style=\"color:rgb(6, 69, 173);overflow-wrap:break-word;text-decoration:none;\" target=\"_blank\" rel=\"noopener noreferrer\" href=\"https://de.wikipedia.org/wiki/K%C3%B6nigstiger#cite_note-14\"><sup class=\"reference\" style=\"font-family:sans-serif;font-style:normal;font-variant:normal;font-weight:normal;line-height:1;unicode-bidi:isolate;white-space:nowrap;\" id=\"cite_ref-14\">[14]</sup></a> beziehungsweise eine extreme Ausprägung der schwarzen Streifen im Vergleich zur Grundfarbe, die das Tier fast schwarz erscheinen lassen. Eine ähnliche Überpigmentierung findet sich beispielsweise beim <a style=\"color:rgb(6, 69, 173);overflow-wrap:break-word;text-decoration:none;\" target=\"_blank\" rel=\"noopener noreferrer\" href=\"https://de.wikipedia.org/wiki/Gepard\" title=\"Gepard\">Geparden</a>. Hier können die Punkte zu Streifen verschmelzen und er wird dann als „Königsgepard“ bezeichnet. Wie Weiße Tiger stellen auch „Schwarze Tiger“ eine absolute Seltenheit dar.</p>', '-1', 1, 1, '2023-04-11 06:42:21', '2023-04-11 06:44:59');
INSERT INTO `topics` (`id`, `chapter_id`, `title`, `html_body`, `template_id`, `order`, `status`, `created_at`, `updated_at`) VALUES
(44, 17, 'Bestand und Schutz', '<p style=\"-webkit-text-stroke-width:0px;background-color:rgb(255, 255, 255);color:rgb(32, 33, 34);font-family:sans-serif;font-size:14px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:0.5em 0px;orphans:2;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\">1930 wurde der Gesamtbestand des Königstigers in <a style=\"color:rgb(6, 69, 173);overflow-wrap:break-word;text-decoration:none;\" target=\"_blank\" rel=\"noopener noreferrer\" href=\"https://de.wikipedia.org/wiki/Britisch-Indien\" title=\"Britisch-Indien\">Britisch-Indien</a>, was auch Pakistan und Bangladesch umfasste, auf insgesamt 40.000 Exemplare geschätzt. Innerhalb von dreißig Jahren wurden allein in Indien 30.000 Tiger getötet.<a style=\"color:rgb(6, 69, 173);overflow-wrap:break-word;text-decoration:none;\" target=\"_blank\" rel=\"noopener noreferrer\" href=\"https://de.wikipedia.org/wiki/K%C3%B6nigstiger#cite_note-18\"><sup class=\"reference\" style=\"font-family:sans-serif;font-style:normal;font-variant:normal;font-weight:normal;line-height:1;unicode-bidi:isolate;white-space:nowrap;\" id=\"cite_ref-18\">[18]</sup></a></p><p style=\"-webkit-text-stroke-width:0px;background-color:rgb(255, 255, 255);color:rgb(32, 33, 34);font-family:sans-serif;font-size:14px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:0.5em 0px;orphans:2;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\">Obwohl der Königstiger von allen Unterarten des Tigers 2013 noch den größten Bestand aufweist, ist dieser ebenfalls aufgrund anhaltender <a style=\"color:rgb(6, 69, 173);overflow-wrap:break-word;text-decoration:none;\" target=\"_blank\" rel=\"noopener noreferrer\" href=\"https://de.wikipedia.org/wiki/Wilderei\" title=\"Wilderei\">Wilderei</a>, auch in den ausgewiesenen Schutzgebieten, fortschreitendem <a style=\"color:rgb(6, 69, 173);overflow-wrap:break-word;text-decoration:none;\" target=\"_blank\" rel=\"noopener noreferrer\" href=\"https://de.wikipedia.org/wiki/Habitatverlust\" title=\"Habitatverlust\">Habitatverlust</a> und Beutemangel weiterhin stark rückläufig.<a style=\"color:rgb(6, 69, 173);overflow-wrap:break-word;text-decoration:none;\" target=\"_blank\" rel=\"noopener noreferrer\" href=\"https://de.wikipedia.org/wiki/K%C3%B6nigstiger#cite_note-iucn-1\"><sup class=\"reference\" style=\"font-family:sans-serif;font-style:normal;font-variant:normal;font-weight:normal;line-height:1;unicode-bidi:isolate;white-space:nowrap;\" id=\"cite_ref-iucn_1-2\">[1]</sup></a> Trotz Schutzmaßnahmen nehmen die Bestände in allen Ländern, in denen der Königstiger beheimatet ist, weiter ab und die <a style=\"color:rgb(6, 69, 173);overflow-wrap:break-word;text-decoration:none;\" target=\"_blank\" rel=\"noopener noreferrer\" href=\"https://de.wikipedia.org/wiki/IUCN\" title=\"IUCN\">IUCN</a> listet den Königstiger weiterhin als gefährdet (<i>Endangered</i>).<img class=\"thumbimage\" src=\"https://upload.wikimedia.org/wikipedia/commons/thumb/5/5f/Ranthambore_Tiger.jpg/220px-Ranthambore_Tiger.jpg\" srcset=\"//upload.wikimedia.org/wikipedia/commons/thumb/5/5f/Ranthambore_Tiger.jpg/330px-Ranthambore_Tiger.jpg 1.5x, //upload.wikimedia.org/wikipedia/commons/thumb/5/5f/Ranthambore_Tiger.jpg/440px-Ranthambore_Tiger.jpg 2x\" sizes=\"100vw\" width=\"220\" decoding=\"async\" height=\"167\" data-file-width=\"701\" data-file-height=\"533\"></p><h3 style=\"-webkit-text-stroke-width:0px;background-color:rgb(255, 255, 255);color:rgb(0, 0, 0);font-family:sans-serif;font-size:1.2em;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;letter-spacing:normal;line-height:1.6;margin:0.3em 0px 0px;orphans:2;overflow:hidden;padding-bottom:0px;padding-top:0.5em;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\"><span class=\"mw-headline\" id=\"Indien\"><strong>Indien</strong></span><span style=\"color:rgb(84,89,93);font-family:sans-serif;font-size:small;\"><span class=\"mw-editsection mw-editsection-bracket\" style=\"font-weight:normal;line-height:0;margin-left:1em;margin-right:0.25em;unicode-bidi:isolate;user-select:none;vertical-align:baseline;\"><strong>[</strong></span></span><a class=\"mw-editsection-visualeditor\" style=\"color:rgb(6, 69, 173);overflow-wrap:break-word;text-decoration:none;white-space:nowrap;\" target=\"_blank\" rel=\"noopener noreferrer\" href=\"https://de.wikipedia.org/w/index.php?title=K%C3%B6nigstiger&amp;veaction=edit&amp;section=12\" title=\"Abschnitt bearbeiten: Indien\"><span style=\"font-family:sans-serif;font-size:small;\"><span class=\"mw-editsection\" style=\"font-weight:normal;line-height:0;margin-left:1em;margin-right:0px;unicode-bidi:isolate;user-select:none;vertical-align:baseline;\"><strong>Bearbeiten</strong></span></span></a><span style=\"color:rgb(84,89,93);font-family:sans-serif;font-size:small;\"><span class=\"mw-editsection mw-editsection-divider\" style=\"font-weight:normal;line-height:0;margin-left:1em;margin-right:0px;unicode-bidi:isolate;user-select:none;vertical-align:baseline;\"><strong> | </strong></span></span><a style=\"color:rgb(6, 69, 173);overflow-wrap:break-word;text-decoration:none;white-space:nowrap;\" target=\"_blank\" rel=\"noopener noreferrer\" href=\"https://de.wikipedia.org/w/index.php?title=K%C3%B6nigstiger&amp;action=edit&amp;section=12\" title=\"Abschnitt bearbeiten: Indien\"><span style=\"font-family:sans-serif;font-size:small;\"><span class=\"mw-editsection\" style=\"font-weight:normal;line-height:0;margin-left:1em;margin-right:0px;unicode-bidi:isolate;user-select:none;vertical-align:baseline;\"><strong>Quelltext bearbeiten</strong></span></span></a><span style=\"color:rgb(84,89,93);font-family:sans-serif;font-size:small;\"><span class=\"mw-editsection mw-editsection-bracket\" style=\"font-weight:normal;line-height:0;margin-left:0.25em;margin-right:0px;unicode-bidi:isolate;user-select:none;vertical-align:baseline;\"><strong>]</strong></span></span></h3><p style=\"-webkit-text-stroke-width:0px;background-color:rgb(255, 255, 255);color:rgb(32, 33, 34);font-family:sans-serif;font-size:14px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:0.5em 0px;orphans:2;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\">Die ehemalige indische Premierministerin <a style=\"color:rgb(6, 69, 173);overflow-wrap:break-word;text-decoration:none;\" target=\"_blank\" rel=\"noopener noreferrer\" href=\"https://de.wikipedia.org/wiki/Indira_Gandhi\" title=\"Indira Gandhi\">Indira Gandhi</a> setzte sich sehr für den Schutz der wilden Tiere Indiens, insbesondere aber den Tiger, ein:</p><div class=\"Vorlage_Zitat\" style=\"-webkit-text-stroke-width:0px;background-color:rgb(255, 255, 255);color:rgb(32, 33, 34);font-family:sans-serif;font-size:14px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:1em 40px;orphans:2;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\"><div style=\"margin:1em 0px;\"><blockquote style=\"border-left-style:none;margin:0px;padding:0px;\"><p style=\"margin:0px;\">„Unsere eigenen Anstrengungen zur Rettung der Naturschätze Indiens konzentrieren sich auf den Tiger. Welch anderes Tier kann so wie er in der Verschmelzung von Eleganz und Stärke unsere Phantasie entflammen; so spektakulär das Unersetzliche symbolisieren! Der Tiger hat unter dem Menschen schwer gelitten. Er wurde gejagt und grausam verfolgt. Sein Lebensraum wurde stark beschnitten. Heute steht er am Rande der Ausrottung.“</p></blockquote></div><div class=\"cite\" style=\"margin:-1em 0px 1em 1em;\">– <span class=\"Person\" style=\"font-variant:small-caps;\">Indira Gandhi (1974)</span><a style=\"color:rgb(6, 69, 173);overflow-wrap:break-word;text-decoration:none;\" target=\"_blank\" rel=\"noopener noreferrer\" href=\"https://de.wikipedia.org/wiki/K%C3%B6nigstiger#cite_note-19\"><span class=\"Person\" style=\"font-variant:small-caps;\"><sup class=\"reference\" style=\"font-family:sans-serif;font-style:normal;font-variant:normal;font-weight:normal;line-height:1;unicode-bidi:isolate;white-space:nowrap;\" id=\"cite_ref-19\">[19]</sup></span></a></div></div><p style=\"-webkit-text-stroke-width:0px;background-color:rgb(255, 255, 255);color:rgb(32, 33, 34);font-family:sans-serif;font-size:14px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:0.5em 0px;orphans:2;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\">Der Abschuss von Königstigern ist in Indien seit 1970 gesetzlich verboten. Ebenso der Handel und die Ausfuhr mit Tigerfellen.<a style=\"color:rgb(6, 69, 173);overflow-wrap:break-word;text-decoration:none;\" target=\"_blank\" rel=\"noopener noreferrer\" href=\"https://de.wikipedia.org/wiki/K%C3%B6nigstiger#cite_note-20\"><sup class=\"reference\" style=\"font-family:sans-serif;font-style:normal;font-variant:normal;font-weight:normal;line-height:1;unicode-bidi:isolate;white-space:nowrap;\" id=\"cite_ref-20\">[20]</sup></a> 1972 war der gesamte Tigerbestand Indiens extrem dezimiert. Auf Initiative von <a class=\"new\" style=\"color:rgb(186, 0, 0);overflow-wrap:break-word;text-decoration:none;\" target=\"_blank\" rel=\"noopener noreferrer\" href=\"https://de.wikipedia.org/w/index.php?title=Kailash_Sankhala&amp;action=edit&amp;redlink=1\" title=\"Kailash Sankhala (Seite nicht vorhanden)\">Kailash Sankhala</a> fand in diesem Jahr die erste landesweite Tigerzählung statt und brachte ein Ergebnis von 1827 Tieren. Der sogenannte „Tiger-Zensus“ wird von der Regierung durchgeführt und ist gesetzlich verankert. Das Gesetz sieht eine Zählung in den Reservaten alle zwei und alle vier Jahre landesweit vor. Verschärfte Gesetze zum Schutz des Tigers und das 1973 von Sankhala gegründete <i>Project Tiger</i> verhalfen der Gesamtpopulation des Königstigers wieder zu einem höheren Bestand, so dass 1979 um die 4000 Tiger gezählt werden konnten. Die Zahlen waren dennoch weiterhin schwankend. 1984 waren es knapp 3000, 1989 rund 4300 und 1993 um die 3700 Individuen.<a style=\"color:rgb(6, 69, 173);overflow-wrap:break-word;text-decoration:none;\" target=\"_blank\" rel=\"noopener noreferrer\" href=\"https://de.wikipedia.org/wiki/K%C3%B6nigstiger#cite_note-21\"><sup class=\"reference\" style=\"font-family:sans-serif;font-style:normal;font-variant:normal;font-weight:normal;line-height:1;unicode-bidi:isolate;white-space:nowrap;\" id=\"cite_ref-21\">[21]</sup></a></p><p style=\"-webkit-text-stroke-width:0px;background-color:rgb(255, 255, 255);color:rgb(32, 33, 34);font-family:sans-serif;font-size:14px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:0.5em 0px;orphans:2;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\">In Indien wurden in der Vergangenheit Populationszählungen auf der Basis von Fußabdrücken durchgeführt, eine Methode, die als inakkurat und unzureichend kritisiert wurde.<a style=\"color:rgb(6, 69, 173);overflow-wrap:break-word;text-decoration:none;\" target=\"_blank\" rel=\"noopener noreferrer\" href=\"https://de.wikipedia.org/wiki/K%C3%B6nigstiger#cite_note-22\"><sup class=\"reference\" style=\"font-family:sans-serif;font-style:normal;font-variant:normal;font-weight:normal;line-height:1;unicode-bidi:isolate;white-space:nowrap;\" id=\"cite_ref-22\">[22]</sup></a> Nach Schätzungen, die auf dieser Methode beruhten, gab es in Indien 3642 Individuen im Jahr 2002.<a style=\"color:rgb(6, 69, 173);overflow-wrap:break-word;text-decoration:none;\" target=\"_blank\" rel=\"noopener noreferrer\" href=\"https://de.wikipedia.org/wiki/K%C3%B6nigstiger#cite_note-23\"><sup class=\"reference\" style=\"font-family:sans-serif;font-style:normal;font-variant:normal;font-weight:normal;line-height:1;unicode-bidi:isolate;white-space:nowrap;\" id=\"cite_ref-23\">[23]</sup></a> Zu dieser Zeit nahm die Anzahl der Tiger stark ab; ein wichtiger Faktor war dabei wohl der illegale Handel mit Tigerfellen nach Tibet.<a style=\"color:rgb(6, 69, 173);overflow-wrap:break-word;text-decoration:none;\" target=\"_blank\" rel=\"noopener noreferrer\" href=\"https://de.wikipedia.org/wiki/K%C3%B6nigstiger#cite_note-24\"><sup class=\"reference\" style=\"font-family:sans-serif;font-style:normal;font-variant:normal;font-weight:normal;line-height:1;unicode-bidi:isolate;white-space:nowrap;\" id=\"cite_ref-24\">[24]</sup></a></p><p style=\"-webkit-text-stroke-width:0px;background-color:rgb(255, 255, 255);color:rgb(32, 33, 34);font-family:sans-serif;font-size:14px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:0.5em 0px;orphans:2;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\">2008 wurden in Indien zum ersten Mal <a class=\"mw-redirect\" style=\"color:rgb(6, 69, 173);overflow-wrap:break-word;text-decoration:none;\" target=\"_blank\" rel=\"noopener noreferrer\" href=\"https://de.wikipedia.org/wiki/Kamerafalle\" title=\"Kamerafalle\">Kamerafallen</a> und <a style=\"color:rgb(6, 69, 173);overflow-wrap:break-word;text-decoration:none;\" target=\"_blank\" rel=\"noopener noreferrer\" href=\"https://de.wikipedia.org/wiki/Geoinformationssystem\" title=\"Geoinformationssystem\">geographische Informationssysteme</a> eingesetzt, um die Größe der indischen Populationen in geschützten Gebieten zu ermitteln. Anhand dieser Daten wurde die gesamte Population auf 1165 bis 1657 Individuen geschätzt, die älter als 18 Monate waren.<a style=\"color:rgb(6, 69, 173);overflow-wrap:break-word;text-decoration:none;\" target=\"_blank\" rel=\"noopener noreferrer\" href=\"https://de.wikipedia.org/wiki/K%C3%B6nigstiger#cite_note-jhala2008-25\"><sup class=\"reference\" style=\"font-family:sans-serif;font-style:normal;font-variant:normal;font-weight:normal;line-height:1;unicode-bidi:isolate;white-space:nowrap;\" id=\"cite_ref-jhala2008_25-0\">[25]</sup></a> 2011 wurde die Population auf 1520 bis 1909 Individuen geschätzt.<a style=\"color:rgb(6, 69, 173);overflow-wrap:break-word;text-decoration:none;\" target=\"_blank\" rel=\"noopener noreferrer\" href=\"https://de.wikipedia.org/wiki/K%C3%B6nigstiger#cite_note-26\"><sup class=\"reference\" style=\"font-family:sans-serif;font-style:normal;font-variant:normal;font-weight:normal;line-height:1;unicode-bidi:isolate;white-space:nowrap;\" id=\"cite_ref-26\">[26]</sup></a> Demnach zeigen die Ausweisung von Tiger-Schutzgebieten sowie die Bekämpfung der Wilderei positive Effekte.<a style=\"color:rgb(6, 69, 173);overflow-wrap:break-word;text-decoration:none;\" target=\"_blank\" rel=\"noopener noreferrer\" href=\"https://de.wikipedia.org/wiki/K%C3%B6nigstiger#cite_note-27\"><sup class=\"reference\" style=\"font-family:sans-serif;font-style:normal;font-variant:normal;font-weight:normal;line-height:1;unicode-bidi:isolate;white-space:nowrap;\" id=\"cite_ref-27\">[27]</sup></a></p><h3 style=\"-webkit-text-stroke-width:0px;background-color:rgb(255, 255, 255);color:rgb(0, 0, 0);font-family:sans-serif;font-size:1.2em;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;letter-spacing:normal;line-height:1.6;margin:0.3em 0px 0px;orphans:2;overflow:hidden;padding-bottom:0px;padding-top:0.5em;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\"><span class=\"mw-headline\" id=\"Bangladesch\"><strong>Bangladesch</strong></span><span style=\"color:rgb(84,89,93);font-family:sans-serif;font-size:small;\"><span class=\"mw-editsection mw-editsection-bracket\" style=\"font-weight:normal;line-height:0;margin-left:1em;margin-right:0.25em;unicode-bidi:isolate;user-select:none;vertical-align:baseline;\"><strong>[</strong></span></span><a class=\"mw-editsection-visualeditor\" style=\"color:rgb(6, 69, 173);overflow-wrap:break-word;text-decoration:none;white-space:nowrap;\" target=\"_blank\" rel=\"noopener noreferrer\" href=\"https://de.wikipedia.org/w/index.php?title=K%C3%B6nigstiger&amp;veaction=edit&amp;section=13\" title=\"Abschnitt bearbeiten: Bangladesch\"><span style=\"font-family:sans-serif;font-size:small;\"><span class=\"mw-editsection\" style=\"font-weight:normal;line-height:0;margin-left:1em;margin-right:0px;unicode-bidi:isolate;user-select:none;vertical-align:baseline;\"><strong>Bearbeiten</strong></span></span></a><span style=\"color:rgb(84,89,93);font-family:sans-serif;font-size:small;\"><span class=\"mw-editsection mw-editsection-divider\" style=\"font-weight:normal;line-height:0;margin-left:1em;margin-right:0px;unicode-bidi:isolate;user-select:none;vertical-align:baseline;\"><strong> | </strong></span></span><a style=\"color:rgb(6, 69, 173);overflow-wrap:break-word;text-decoration:none;white-space:nowrap;\" target=\"_blank\" rel=\"noopener noreferrer\" href=\"https://de.wikipedia.org/w/index.php?title=K%C3%B6nigstiger&amp;action=edit&amp;section=13\" title=\"Abschnitt bearbeiten: Bangladesch\"><span style=\"font-family:sans-serif;font-size:small;\"><span class=\"mw-editsection\" style=\"font-weight:normal;line-height:0;margin-left:1em;margin-right:0px;unicode-bidi:isolate;user-select:none;vertical-align:baseline;\"><strong>Quelltext bearbeiten</strong></span></span></a><span style=\"color:rgb(84,89,93);font-family:sans-serif;font-size:small;\"><span class=\"mw-editsection mw-editsection-bracket\" style=\"font-weight:normal;line-height:0;margin-left:0.25em;margin-right:0px;unicode-bidi:isolate;user-select:none;vertical-align:baseline;\"><strong>]</strong></span></span></h3><p style=\"-webkit-text-stroke-width:0px;background-color:rgb(255, 255, 255);color:rgb(32, 33, 34);font-family:sans-serif;font-size:14px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:0.5em 0px;orphans:2;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\">1972 lebten in Bangladesch noch ungefähr 100 Königstiger.<a style=\"color:rgb(6, 69, 173);overflow-wrap:break-word;text-decoration:none;\" target=\"_blank\" rel=\"noopener noreferrer\" href=\"https://de.wikipedia.org/wiki/K%C3%B6nigstiger#cite_note-28\"><sup class=\"reference\" style=\"font-family:sans-serif;font-style:normal;font-variant:normal;font-weight:normal;line-height:1;unicode-bidi:isolate;white-space:nowrap;\" id=\"cite_ref-28\">[28]</sup></a> Schätzungen aus dem Jahr 2004 verzeichnen einen geschätzten Anstieg zwischen 200 und 419 Individuen. Die meisten davon leben in den <a style=\"color:rgb(6, 69, 173);overflow-wrap:break-word;text-decoration:none;\" target=\"_blank\" rel=\"noopener noreferrer\" href=\"https://de.wikipedia.org/wiki/Mangrove_(%C3%96kosystem)\" title=\"Mangrove (Ökosystem)\">Mangrovenwäldern</a> der <a style=\"color:rgb(6, 69, 173);overflow-wrap:break-word;text-decoration:none;\" target=\"_blank\" rel=\"noopener noreferrer\" href=\"https://de.wikipedia.org/wiki/Sundarbans\" title=\"Sundarbans\">Sundarbans</a> und einige wenige im Nordosten des Landes.<a style=\"color:rgb(6, 69, 173);overflow-wrap:break-word;text-decoration:none;\" target=\"_blank\" rel=\"noopener noreferrer\" href=\"https://de.wikipedia.org/wiki/K%C3%B6nigstiger#cite_note-29\"><sup class=\"reference\" style=\"font-family:sans-serif;font-style:normal;font-variant:normal;font-weight:normal;line-height:1;unicode-bidi:isolate;white-space:nowrap;\" id=\"cite_ref-29\">[29]</sup></a></p><h3 style=\"-webkit-text-stroke-width:0px;background-color:rgb(255, 255, 255);color:rgb(0, 0, 0);font-family:sans-serif;font-size:1.2em;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;letter-spacing:normal;line-height:1.6;margin:0.3em 0px 0px;orphans:2;overflow:hidden;padding-bottom:0px;padding-top:0.5em;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\"><span class=\"mw-headline\" id=\"Nepal\"><strong>Nepal</strong></span><span style=\"color:rgb(84,89,93);font-family:sans-serif;font-size:small;\"><span class=\"mw-editsection mw-editsection-bracket\" style=\"font-weight:normal;line-height:0;margin-left:1em;margin-right:0.25em;unicode-bidi:isolate;user-select:none;vertical-align:baseline;\"><strong>[</strong></span></span><a class=\"mw-editsection-visualeditor\" style=\"color:rgb(6, 69, 173);overflow-wrap:break-word;text-decoration:none;white-space:nowrap;\" target=\"_blank\" rel=\"noopener noreferrer\" href=\"https://de.wikipedia.org/w/index.php?title=K%C3%B6nigstiger&amp;veaction=edit&amp;section=14\" title=\"Abschnitt bearbeiten: Nepal\"><span style=\"font-family:sans-serif;font-size:small;\"><span class=\"mw-editsection\" style=\"font-weight:normal;line-height:0;margin-left:1em;margin-right:0px;unicode-bidi:isolate;user-select:none;vertical-align:baseline;\"><strong>Bearbeiten</strong></span></span></a><span style=\"color:rgb(84,89,93);font-family:sans-serif;font-size:small;\"><span class=\"mw-editsection mw-editsection-divider\" style=\"font-weight:normal;line-height:0;margin-left:1em;margin-right:0px;unicode-bidi:isolate;user-select:none;vertical-align:baseline;\"><strong> | </strong></span></span><a style=\"color:rgb(6, 69, 173);overflow-wrap:break-word;text-decoration:none;white-space:nowrap;\" target=\"_blank\" rel=\"noopener noreferrer\" href=\"https://de.wikipedia.org/w/index.php?title=K%C3%B6nigstiger&amp;action=edit&amp;section=14\" title=\"Abschnitt bearbeiten: Nepal\"><span style=\"font-family:sans-serif;font-size:small;\"><span class=\"mw-editsection\" style=\"font-weight:normal;line-height:0;margin-left:1em;margin-right:0px;unicode-bidi:isolate;user-select:none;vertical-align:baseline;\"><strong>Quelltext bearbeiten</strong></span></span></a><span style=\"color:rgb(84,89,93);font-family:sans-serif;font-size:small;\"><span class=\"mw-editsection mw-editsection-bracket\" style=\"font-weight:normal;line-height:0;margin-left:0.25em;margin-right:0px;unicode-bidi:isolate;user-select:none;vertical-align:baseline;\"><strong>]</strong></span></span></h3><p style=\"-webkit-text-stroke-width:0px;background-color:rgb(255, 255, 255);color:rgb(32, 33, 34);font-family:sans-serif;font-size:14px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:0.5em 0px;orphans:2;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\">In Nepal gibt es drei Populationen, die durch landwirtschaftlich genutzte Flächen und dicht besiedelte Gebiete isoliert sind. Die größte Population lebt im <a style=\"color:rgb(6, 69, 173);overflow-wrap:break-word;text-decoration:none;\" target=\"_blank\" rel=\"noopener noreferrer\" href=\"https://de.wikipedia.org/wiki/Chitwan-Nationalpark\" title=\"Chitwan-Nationalpark\">Chitwan-Nationalpark</a> und im benachbarten <a class=\"new\" style=\"color:rgb(186, 0, 0);overflow-wrap:break-word;text-decoration:none;\" target=\"_blank\" rel=\"noopener noreferrer\" href=\"https://de.wikipedia.org/w/index.php?title=Parsa-Wildreservat&amp;action=edit&amp;redlink=1\" title=\"Parsa-Wildreservat (Seite nicht vorhanden)\">Parsa-Wildreservat</a>, die zusammen eine Fläche von 2543&nbsp;km² <a style=\"color:rgb(6, 69, 173);overflow-wrap:break-word;text-decoration:none;\" target=\"_blank\" rel=\"noopener noreferrer\" href=\"https://de.wikipedia.org/wiki/Prim%C3%A4rwald\" title=\"Primärwald\">Primärwald</a> einnehmen. Diese Population ist isoliert von einem Bestand, der weiter westlich lebt, im <a style=\"color:rgb(6, 69, 173);overflow-wrap:break-word;text-decoration:none;\" target=\"_blank\" rel=\"noopener noreferrer\" href=\"https://de.wikipedia.org/wiki/Bardia-Nationalpark\" title=\"Bardia-Nationalpark\">Bardia-Nationalpark</a> und in daran angrenzenden ungeschützten Gebieten. Die kleinste Population lebt im <a class=\"new\" style=\"color:rgb(186, 0, 0);overflow-wrap:break-word;text-decoration:none;\" target=\"_blank\" rel=\"noopener noreferrer\" href=\"https://de.wikipedia.org/w/index.php?title=Sukla_Phanta-Wildreservat&amp;action=edit&amp;redlink=1\" title=\"Sukla Phanta-Wildreservat (Seite nicht vorhanden)\">Sukla Phanta-Wildreservat</a> im äußersten Südwesten Nepals.<a style=\"color:rgb(6, 69, 173);overflow-wrap:break-word;text-decoration:none;\" target=\"_blank\" rel=\"noopener noreferrer\" href=\"https://de.wikipedia.org/wiki/K%C3%B6nigstiger#cite_note-30\"><sup class=\"reference\" style=\"font-family:sans-serif;font-style:normal;font-variant:normal;font-weight:normal;line-height:1;unicode-bidi:isolate;white-space:nowrap;\" id=\"cite_ref-30\">[30]</sup></a> Im Jahr 2010 wurden diese drei Populationen auf 124 bis 229 Individuen geschätzt.<a style=\"color:rgb(6, 69, 173);overflow-wrap:break-word;text-decoration:none;\" target=\"_blank\" rel=\"noopener noreferrer\" href=\"https://de.wikipedia.org/wiki/K%C3%B6nigstiger#cite_note-tet2010-31\"><sup class=\"reference\" style=\"font-family:sans-serif;font-style:normal;font-variant:normal;font-weight:normal;line-height:1;unicode-bidi:isolate;white-space:nowrap;\" id=\"cite_ref-tet2010_31-0\">[31]</sup></a></p><h3 style=\"-webkit-text-stroke-width:0px;background-color:rgb(255, 255, 255);color:rgb(0, 0, 0);font-family:sans-serif;font-size:1.2em;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;letter-spacing:normal;line-height:1.6;margin:0.3em 0px 0px;orphans:2;overflow:hidden;padding-bottom:0px;padding-top:0.5em;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\"><span class=\"mw-headline\" id=\"Bhutan\"><strong>Bhutan</strong></span><span style=\"color:rgb(84,89,93);font-family:sans-serif;font-size:small;\"><span class=\"mw-editsection mw-editsection-bracket\" style=\"font-weight:normal;line-height:0;margin-left:1em;margin-right:0.25em;unicode-bidi:isolate;user-select:none;vertical-align:baseline;\"><strong>[</strong></span></span><a class=\"mw-editsection-visualeditor\" style=\"color:rgb(6, 69, 173);overflow-wrap:break-word;text-decoration:none;white-space:nowrap;\" target=\"_blank\" rel=\"noopener noreferrer\" href=\"https://de.wikipedia.org/w/index.php?title=K%C3%B6nigstiger&amp;veaction=edit&amp;section=15\" title=\"Abschnitt bearbeiten: Bhutan\"><span style=\"font-family:sans-serif;font-size:small;\"><span class=\"mw-editsection\" style=\"font-weight:normal;line-height:0;margin-left:1em;margin-right:0px;unicode-bidi:isolate;user-select:none;vertical-align:baseline;\"><strong>Bearbeiten</strong></span></span></a><span style=\"color:rgb(84,89,93);font-family:sans-serif;font-size:small;\"><span class=\"mw-editsection mw-editsection-divider\" style=\"font-weight:normal;line-height:0;margin-left:1em;margin-right:0px;unicode-bidi:isolate;user-select:none;vertical-align:baseline;\"><strong> | </strong></span></span><a style=\"color:rgb(6, 69, 173);overflow-wrap:break-word;text-decoration:none;white-space:nowrap;\" target=\"_blank\" rel=\"noopener noreferrer\" href=\"https://de.wikipedia.org/w/index.php?title=K%C3%B6nigstiger&amp;action=edit&amp;section=15\" title=\"Abschnitt bearbeiten: Bhutan\"><span style=\"font-family:sans-serif;font-size:small;\"><span class=\"mw-editsection\" style=\"font-weight:normal;line-height:0;margin-left:1em;margin-right:0px;unicode-bidi:isolate;user-select:none;vertical-align:baseline;\"><strong>Quelltext bearbeiten</strong></span></span></a><span style=\"color:rgb(84,89,93);font-family:sans-serif;font-size:small;\"><span class=\"mw-editsection mw-editsection-bracket\" style=\"font-weight:normal;line-height:0;margin-left:0.25em;margin-right:0px;unicode-bidi:isolate;user-select:none;vertical-align:baseline;\"><strong>]</strong></span></span></h3><p style=\"-webkit-text-stroke-width:0px;background-color:rgb(255, 255, 255);color:rgb(32, 33, 34);font-family:sans-serif;font-size:14px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:0.5em 0px;orphans:2;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\">In <a style=\"color:rgb(6, 69, 173);overflow-wrap:break-word;text-decoration:none;\" target=\"_blank\" rel=\"noopener noreferrer\" href=\"https://de.wikipedia.org/wiki/Bhutan\" title=\"Bhutan\">Bhutan</a> wurden im Jahr 2015 der Bestand mit 103 Tieren angegeben.</p><div class=\"sieheauch\" style=\"-webkit-text-stroke-width:0px;background-color:rgb(255, 255, 255);color:rgb(32, 33, 34);font-family:sans-serif;font-size:14px;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;orphans:2;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\" role=\"navigation\"><i><span class=\"sieheauch-text\">Siehe auch</span>: </i><a style=\"color:rgb(6, 69, 173);overflow-wrap:break-word;text-decoration:none;\" target=\"_blank\" rel=\"noopener noreferrer\" href=\"https://de.wikipedia.org/wiki/Wildtierbestand_in_Bhutan\" title=\"Wildtierbestand in Bhutan\"><i>Wildtierbestand in Bhutan</i></a></div><h3 style=\"-webkit-text-stroke-width:0px;background-color:rgb(255, 255, 255);color:rgb(0, 0, 0);font-family:sans-serif;font-size:1.2em;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;letter-spacing:normal;line-height:1.6;margin:0.3em 0px 0px;orphans:2;overflow:hidden;padding-bottom:0px;padding-top:0.5em;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\"><span class=\"mw-headline\" id=\"Pakistan\"><strong>Pakistan</strong></span><span style=\"color:rgb(84,89,93);font-family:sans-serif;font-size:small;\"><span class=\"mw-editsection mw-editsection-bracket\" style=\"font-weight:normal;line-height:0;margin-left:1em;margin-right:0.25em;unicode-bidi:isolate;user-select:none;vertical-align:baseline;\"><strong>[</strong></span></span><a class=\"mw-editsection-visualeditor\" style=\"color:rgb(6, 69, 173);overflow-wrap:break-word;text-decoration:none;white-space:nowrap;\" target=\"_blank\" rel=\"noopener noreferrer\" href=\"https://de.wikipedia.org/w/index.php?title=K%C3%B6nigstiger&amp;veaction=edit&amp;section=16\" title=\"Abschnitt bearbeiten: Pakistan\"><span style=\"font-family:sans-serif;font-size:small;\"><span class=\"mw-editsection\" style=\"font-weight:normal;line-height:0;margin-left:1em;margin-right:0px;unicode-bidi:isolate;user-select:none;vertical-align:baseline;\"><strong>Bearbeiten</strong></span></span></a><span style=\"color:rgb(84,89,93);font-family:sans-serif;font-size:small;\"><span class=\"mw-editsection mw-editsection-divider\" style=\"font-weight:normal;line-height:0;margin-left:1em;margin-right:0px;unicode-bidi:isolate;user-select:none;vertical-align:baseline;\"><strong> | </strong></span></span><a style=\"color:rgb(6, 69, 173);overflow-wrap:break-word;text-decoration:none;white-space:nowrap;\" target=\"_blank\" rel=\"noopener noreferrer\" href=\"https://de.wikipedia.org/w/index.php?title=K%C3%B6nigstiger&amp;action=edit&amp;section=16\" title=\"Abschnitt bearbeiten: Pakistan\"><span style=\"font-family:sans-serif;font-size:small;\"><span class=\"mw-editsection\" style=\"font-weight:normal;line-height:0;margin-left:1em;margin-right:0px;unicode-bidi:isolate;user-select:none;vertical-align:baseline;\"><strong>Quelltext bearbeiten</strong></span></span></a><span style=\"color:rgb(84,89,93);font-family:sans-serif;font-size:small;\"><span class=\"mw-editsection mw-editsection-bracket\" style=\"font-weight:normal;line-height:0;margin-left:0.25em;margin-right:0px;unicode-bidi:isolate;user-select:none;vertical-align:baseline;\"><strong>]</strong></span></span></h3><p style=\"-webkit-text-stroke-width:0px;background-color:rgb(255, 255, 255);color:rgb(32, 33, 34);font-family:sans-serif;font-size:14px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:0.5em 0px;orphans:2;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\">In <a style=\"color:rgb(6, 69, 173);overflow-wrap:break-word;text-decoration:none;\" target=\"_blank\" rel=\"noopener noreferrer\" href=\"https://de.wikipedia.org/wiki/Pakistan\" title=\"Pakistan\">Pakistan</a> ist der Tiger seit 1886 ausgerottet. Allerdings existieren Pläne, ihn im <a style=\"color:rgb(6, 69, 173);overflow-wrap:break-word;text-decoration:none;\" target=\"_blank\" rel=\"noopener noreferrer\" href=\"https://de.wikipedia.org/wiki/Kirthar-Nationalpark\" title=\"Kirthar-Nationalpark\">Kirthar-Nationalpark</a> wieder anzusiedeln.</p>', '-1', 2, 1, '2023-04-11 06:42:37', '2023-04-11 06:44:55'),
(48, 17, 'Random_Kapitel', ' ', '-1', 4, 0, '2023-04-11 11:28:47', '2023-04-11 11:28:53');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Daten für Tabelle `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'wilke', 'admin@wilke.de', NULL, '$2y$10$cuvrAxvgd01HEn8ZqqZqMuczlnO3FCju653RjIg1K.nXc/AMDX8EO', 'hQrv10OkAG8fAPlJBhp7RadkN9wNGEgYMgHo6ewg3ovMz4Q1fvEyt8Hf97HD', '2023-02-22 09:16:06', '2023-02-24 09:24:13');

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `chapters`
--
ALTER TABLE `chapters`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indizes für die Tabelle `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indizes für die Tabelle `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indizes für die Tabelle `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `templates`
--
ALTER TABLE `templates`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `topics`
--
ALTER TABLE `topics`
  ADD PRIMARY KEY (`id`),
  ADD KEY `topics_chapter_id_foreign` (`chapter_id`);

--
-- Indizes für die Tabelle `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `chapters`
--
ALTER TABLE `chapters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT für Tabelle `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT für Tabelle `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT für Tabelle `templates`
--
ALTER TABLE `templates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT für Tabelle `topics`
--
ALTER TABLE `topics`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT für Tabelle `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints der exportierten Tabellen
--

--
-- Constraints der Tabelle `topics`
--
ALTER TABLE `topics`
  ADD CONSTRAINT `topics_chapter_id_foreign` FOREIGN KEY (`chapter_id`) REFERENCES `chapters` (`id`) ON DELETE CASCADE;
--
-- Datenbank: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) NOT NULL DEFAULT '',
  `user` varchar(255) NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `query` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) NOT NULL,
  `col_name` varchar(64) NOT NULL,
  `col_type` varchar(64) NOT NULL,
  `col_length` text DEFAULT NULL,
  `col_collation` varchar(64) NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) DEFAULT '',
  `col_default` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `column_name` varchar(64) NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `transformation` varchar(255) NOT NULL DEFAULT '',
  `transformation_options` varchar(255) NOT NULL DEFAULT '',
  `input_transformation` varchar(255) NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) NOT NULL,
  `settings_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL,
  `export_type` varchar(10) NOT NULL,
  `template_name` varchar(64) NOT NULL,
  `template_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

--
-- Daten für Tabelle `pma__export_templates`
--

INSERT INTO `pma__export_templates` (`id`, `username`, `export_type`, `template_name`, `template_data`) VALUES
(1, 'root', 'server', 'manual', '{\"quick_or_custom\":\"quick\",\"what\":\"sql\",\"db_select[]\":[\"manual\",\"phpmyadmin\",\"test\"],\"aliases_new\":\"\",\"output_format\":\"sendit\",\"filename_template\":\"@SERVER@\",\"remember_template\":\"on\",\"charset\":\"utf-8\",\"compression\":\"none\",\"maxsize\":\"\",\"codegen_structure_or_data\":\"data\",\"codegen_format\":\"0\",\"csv_separator\":\",\",\"csv_enclosed\":\"\\\"\",\"csv_escaped\":\"\\\"\",\"csv_terminated\":\"AUTO\",\"csv_null\":\"NULL\",\"csv_structure_or_data\":\"data\",\"excel_null\":\"NULL\",\"excel_columns\":\"something\",\"excel_edition\":\"win\",\"excel_structure_or_data\":\"data\",\"json_structure_or_data\":\"data\",\"json_unicode\":\"something\",\"latex_caption\":\"something\",\"latex_structure_or_data\":\"structure_and_data\",\"latex_structure_caption\":\"Struktur der Tabelle @TABLE@\",\"latex_structure_continued_caption\":\"Struktur der Tabelle @TABLE@ (Fortsetzung)\",\"latex_structure_label\":\"tab:@TABLE@-structure\",\"latex_relation\":\"something\",\"latex_comments\":\"something\",\"latex_mime\":\"something\",\"latex_columns\":\"something\",\"latex_data_caption\":\"Inhalt der Tabelle @TABLE@\",\"latex_data_continued_caption\":\"Inhalt der Tabelle @TABLE@ (Fortsetzung)\",\"latex_data_label\":\"tab:@TABLE@-data\",\"latex_null\":\"\\\\textit{NULL}\",\"mediawiki_structure_or_data\":\"data\",\"mediawiki_caption\":\"something\",\"mediawiki_headers\":\"something\",\"htmlword_structure_or_data\":\"structure_and_data\",\"htmlword_null\":\"NULL\",\"ods_null\":\"NULL\",\"ods_structure_or_data\":\"data\",\"odt_structure_or_data\":\"structure_and_data\",\"odt_relation\":\"something\",\"odt_comments\":\"something\",\"odt_mime\":\"something\",\"odt_columns\":\"something\",\"odt_null\":\"NULL\",\"pdf_report_title\":\"\",\"pdf_structure_or_data\":\"data\",\"phparray_structure_or_data\":\"data\",\"sql_include_comments\":\"something\",\"sql_header_comment\":\"\",\"sql_use_transaction\":\"something\",\"sql_compatibility\":\"NONE\",\"sql_structure_or_data\":\"structure_and_data\",\"sql_create_table\":\"something\",\"sql_auto_increment\":\"something\",\"sql_create_view\":\"something\",\"sql_create_trigger\":\"something\",\"sql_backquotes\":\"something\",\"sql_type\":\"INSERT\",\"sql_insert_syntax\":\"both\",\"sql_max_query_size\":\"50000\",\"sql_hex_for_binary\":\"something\",\"sql_utc_time\":\"something\",\"texytext_structure_or_data\":\"structure_and_data\",\"texytext_null\":\"NULL\",\"yaml_structure_or_data\":\"data\",\"\":null,\"as_separate_files\":null,\"csv_removeCRLF\":null,\"csv_columns\":null,\"excel_removeCRLF\":null,\"json_pretty_print\":null,\"htmlword_columns\":null,\"ods_columns\":null,\"sql_dates\":null,\"sql_relation\":null,\"sql_mime\":null,\"sql_disable_fk\":null,\"sql_views_as_tables\":null,\"sql_metadata\":null,\"sql_drop_database\":null,\"sql_drop_table\":null,\"sql_if_not_exists\":null,\"sql_simple_view_export\":null,\"sql_view_current_user\":null,\"sql_or_replace_view\":null,\"sql_procedure_function\":null,\"sql_truncate\":null,\"sql_delayed\":null,\"sql_ignore\":null,\"texytext_columns\":null}');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db` varchar(64) NOT NULL DEFAULT '',
  `table` varchar(64) NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) NOT NULL,
  `item_name` varchar(64) NOT NULL,
  `item_type` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Daten für Tabelle `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"manual\",\"table\":\"settings\"},{\"db\":\"manual\",\"table\":\"templates\"},{\"db\":\"manual\",\"table\":\"topics\"},{\"db\":\"manual\",\"table\":\"users\"},{\"db\":\"manual\",\"table\":\"chapters\"},{\"db\":\"manual\",\"table\":\"failed_jobs\"},{\"db\":\"manual\",\"table\":\"migrations\"},{\"db\":\"manual\",\"table\":\"password_resets\"},{\"db\":\"manual\",\"table\":\"personal_access_tokens\"},{\"db\":\"purchase_order_db\",\"table\":\"users\"}]');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) NOT NULL DEFAULT '',
  `master_table` varchar(64) NOT NULL DEFAULT '',
  `master_field` varchar(64) NOT NULL DEFAULT '',
  `foreign_db` varchar(64) NOT NULL DEFAULT '',
  `foreign_table` varchar(64) NOT NULL DEFAULT '',
  `foreign_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `search_name` varchar(64) NOT NULL DEFAULT '',
  `search_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `display_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `prefs` text NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

--
-- Daten für Tabelle `pma__table_uiprefs`
--

INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'manual', 'topics', '{\"sorted_col\":\"`topics`.`order` ASC\"}', '2023-03-30 09:35:27');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text NOT NULL,
  `schema_sql` text DEFAULT NULL,
  `data_sql` longtext DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Daten für Tabelle `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2023-04-12 07:08:44', '{\"Console\\/Mode\":\"collapse\",\"lang\":\"de\"}');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) NOT NULL,
  `tab` varchar(64) NOT NULL,
  `allowed` enum('Y','N') NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) NOT NULL,
  `usergroup` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indizes für die Tabelle `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indizes für die Tabelle `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indizes für die Tabelle `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indizes für die Tabelle `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indizes für die Tabelle `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indizes für die Tabelle `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indizes für die Tabelle `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indizes für die Tabelle `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indizes für die Tabelle `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indizes für die Tabelle `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indizes für die Tabelle `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indizes für die Tabelle `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indizes für die Tabelle `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indizes für die Tabelle `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indizes für die Tabelle `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indizes für die Tabelle `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indizes für die Tabelle `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT für Tabelle `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Datenbank: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
