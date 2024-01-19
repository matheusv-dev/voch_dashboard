-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 19-Jan-2024 às 16:11
-- Versão do servidor: 10.4.24-MariaDB
-- versão do PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `voch_dashboard`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `cargos`
--

CREATE TABLE `cargos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cargo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `cargos`
--

INSERT INTO `cargos` (`id`, `cargo`, `created_at`, `updated_at`) VALUES
(1, 'Administrador de Redes', '2024-01-18 22:55:03', '2024-01-18 22:57:30'),
(2, 'Administrador de Redes Junior', '2024-01-18 22:55:04', '2024-01-18 22:55:04'),
(3, 'Administrador de Redes Pleno', '2024-01-18 22:55:04', '2024-01-18 22:55:04'),
(4, 'Administrador de Redes Senior', '2024-01-18 22:55:04', '2024-01-18 22:55:04'),
(5, 'Administrador de Sistemas', '2024-01-18 22:55:04', '2024-01-18 22:55:04'),
(6, 'Analista de Banco de Dados', '2024-01-18 22:55:04', '2024-01-18 22:55:04'),
(7, 'Analista de Desenvolvimento de Sistemas', '2024-01-18 22:55:04', '2024-01-18 22:55:04'),
(8, 'Analista de Desenvolvimento Web', '2024-01-18 22:55:04', '2024-01-18 22:55:04'),
(9, 'Analista de E-commerce', '2024-01-18 22:55:04', '2024-01-18 22:55:04'),
(10, 'Analista de Informática', '2024-01-18 22:55:04', '2024-01-18 22:55:04'),
(11, 'Analista de Programação', '2024-01-18 22:55:04', '2024-01-18 22:55:04'),
(12, 'Analista de Redes', '2024-01-18 22:55:04', '2024-01-18 22:55:04'),
(13, 'Analista de Sistemas', '2024-01-18 22:55:04', '2024-01-18 22:55:04'),
(14, 'Analista de Suporte Técnico', '2024-01-18 22:55:04', '2024-01-18 22:55:04'),
(15, 'Analista de Tecnologia da Informação (TI)', '2024-01-18 22:55:04', '2024-01-18 22:55:04'),
(16, 'Analista de Telecomunicações', '2024-01-18 22:55:04', '2024-01-18 22:55:04'),
(17, 'Assistente de Desenvolvimento de Sistemas', '2024-01-18 22:55:04', '2024-01-18 22:55:04'),
(18, 'Assistente de E-commerce', '2024-01-18 22:55:04', '2024-01-18 22:55:04'),
(19, 'Assistente de Informática', '2024-01-18 22:55:04', '2024-01-18 22:55:04'),
(20, 'Assistente de Sistemas', '2024-01-18 22:55:04', '2024-01-18 22:55:04'),
(21, 'Assistente de Suporte Técnico', '2024-01-18 22:55:04', '2024-01-18 22:55:04'),
(22, 'Assistente de Tecnologia da Informação (TI)', '2024-01-18 22:55:04', '2024-01-18 22:55:04'),
(23, 'Assistente de Telecomunicações', '2024-01-18 22:55:04', '2024-01-18 22:55:04'),
(24, 'Auxiliar de Banco de Dados', '2024-01-18 22:55:05', '2024-01-18 22:55:05'),
(25, 'Auxiliar de Programação', '2024-01-18 22:55:05', '2024-01-18 22:55:05'),
(26, 'Auxiliar de Web Design', '2024-01-18 22:55:05', '2024-01-18 22:55:05'),
(27, 'Consultor de Administração de Banco de Dados', '2024-01-18 22:55:05', '2024-01-18 22:55:05'),
(28, 'Consultor de Administração de Redes', '2024-01-18 22:55:05', '2024-01-18 22:55:05'),
(29, 'Coordenador de Administração de Banco de Dados', '2024-01-18 22:55:05', '2024-01-18 22:55:05'),
(30, 'Coordenador de Desenvolvimento de Sistemas', '2024-01-18 22:55:05', '2024-01-18 22:55:05'),
(31, 'Coordenador de E-commerce', '2024-01-18 22:55:05', '2024-01-18 22:55:05'),
(32, 'Coordenador de Informática', '2024-01-18 22:55:05', '2024-01-18 22:55:05'),
(33, 'Coordenador de Sistemas', '2024-01-18 22:55:05', '2024-01-18 22:55:05'),
(34, 'Coordenador de Suporte Técnico', '2024-01-18 22:55:05', '2024-01-18 22:55:05'),
(35, 'Coordenador de Tecnologia da Informação (TI)', '2024-01-18 22:55:05', '2024-01-18 22:55:05'),
(36, 'Coordenador de Telecomunicações', '2024-01-18 22:55:05', '2024-01-18 22:55:05'),
(37, 'Coordenador de Web Development', '2024-01-18 22:55:05', '2024-01-18 22:55:05'),
(38, 'Diagramador', '2024-01-18 22:55:05', '2024-01-18 22:55:05'),
(39, 'Diretor de Informática', '2024-01-18 22:55:05', '2024-01-18 22:55:05'),
(40, 'Diretor de Suporte Técnico', '2024-01-18 22:55:05', '2024-01-18 22:55:05'),
(41, 'Diretor de Tecnologia da Informação (TI)', '2024-01-18 22:55:05', '2024-01-18 22:55:05'),
(42, 'Estagiario de Banco de Dados', '2024-01-18 22:55:05', '2024-01-18 22:55:05'),
(43, 'Estagiário de Desenvolvimento de Sistemas', '2024-01-18 22:55:05', '2024-01-18 22:55:05'),
(44, 'Estagiário de Diagramação', '2024-01-18 22:55:05', '2024-01-18 22:55:05'),
(45, 'Estagiário de E-commerce', '2024-01-18 22:55:05', '2024-01-18 22:55:05'),
(46, 'Estagiário de Informática', '2024-01-18 22:55:05', '2024-01-18 22:55:05'),
(47, 'Estagiário de Sistemas', '2024-01-18 22:55:05', '2024-01-18 22:55:05'),
(48, 'Estagiário de Suporte Técnico', '2024-01-18 22:55:05', '2024-01-18 22:55:05'),
(49, 'Estagiário de Tecnologia da Informação (TI)', '2024-01-18 22:55:05', '2024-01-18 22:55:05'),
(50, 'Estagiário de Telecomunicações', '2024-01-18 22:55:05', '2024-01-18 22:55:05'),
(51, 'Estagiário de Web Design', '2024-01-18 22:55:06', '2024-01-18 22:55:06'),
(52, 'Gerente de Desenvolvimento de Sistemas', '2024-01-18 22:55:06', '2024-01-18 22:55:06'),
(53, 'Gerente de E-commerce', '2024-01-18 22:55:06', '2024-01-18 22:55:06'),
(54, 'Gerente de Informática', '2024-01-18 22:55:06', '2024-01-18 22:55:06'),
(55, 'Gerente de Sistemas', '2024-01-18 22:55:06', '2024-01-18 22:55:06'),
(56, 'Gerente de Suporte Técnico', '2024-01-18 22:55:06', '2024-01-18 22:55:06'),
(57, 'Gerente de Tecnologia da Informação (TI)', '2024-01-18 22:55:06', '2024-01-18 22:55:06'),
(58, 'Gerente de Telecomunicações', '2024-01-18 22:55:06', '2024-01-18 22:55:06'),
(59, 'Supervisor de Desenvolvimento de Sistemas', '2024-01-18 22:55:06', '2024-01-18 22:55:06'),
(60, 'Supervisor de E-commerce', '2024-01-18 22:55:06', '2024-01-18 22:55:06'),
(61, 'Supervisor de Informática', '2024-01-18 22:55:06', '2024-01-18 22:55:06'),
(62, 'Supervisor de Sistemas', '2024-01-18 22:55:06', '2024-01-18 22:55:06'),
(63, 'Supervisor de Suporte Técnico', '2024-01-18 22:55:06', '2024-01-18 22:55:06'),
(64, 'Supervisor de Tecnologia da Informação (TI)', '2024-01-18 22:55:06', '2024-01-18 22:55:06'),
(65, 'Supervisor de Telecomunicações', '2024-01-18 22:55:06', '2024-01-18 22:55:06'),
(66, 'Técnico de Suporte', '2024-01-18 22:55:06', '2024-01-18 22:55:06'),
(67, 'Técnico em Hardware', '2024-01-18 22:55:06', '2024-01-18 22:55:06'),
(68, 'Técnico em Redes', '2024-01-18 22:55:06', '2024-01-18 22:55:06'),
(69, 'Técnico Instalador', '2024-01-18 22:55:06', '2024-01-18 22:55:06');

-- --------------------------------------------------------

--
-- Estrutura da tabela `cargo_colaborador`
--

CREATE TABLE `cargo_colaborador` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cargo_id` bigint(20) UNSIGNED NOT NULL,
  `colaborador_id` bigint(20) UNSIGNED NOT NULL,
  `nota_desempenho` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `cargo_colaborador`
--

INSERT INTO `cargo_colaborador` (`id`, `cargo_id`, `colaborador_id`, `nota_desempenho`, `created_at`, `updated_at`) VALUES
(1, 67, 40, 7, '2024-01-19 01:29:14', '2024-01-19 01:41:55'),
(2, 12, 97, 8, '2024-01-19 01:29:14', '2024-01-19 07:23:41'),
(3, 32, 7, 9, '2024-01-19 01:29:14', '2024-01-19 01:29:14'),
(4, 19, 117, 6, '2024-01-19 01:29:14', '2024-01-19 01:29:14'),
(5, 18, 26, 2, '2024-01-19 01:29:14', '2024-01-19 01:29:14'),
(6, 57, 63, 10, '2024-01-19 01:29:15', '2024-01-19 01:29:15'),
(7, 40, 74, 10, '2024-01-19 01:29:15', '2024-01-19 01:29:15'),
(8, 32, 98, 5, '2024-01-19 01:29:15', '2024-01-19 01:29:15'),
(9, 29, 76, 9, '2024-01-19 01:29:15', '2024-01-19 01:29:15'),
(10, 48, 58, 6, '2024-01-19 01:29:15', '2024-01-19 01:29:15'),
(11, 8, 50, 5, '2024-01-19 01:29:15', '2024-01-19 01:29:15'),
(12, 33, 90, 2, '2024-01-19 01:29:15', '2024-01-19 01:29:15'),
(13, 65, 43, 7, '2024-01-19 01:29:15', '2024-01-19 01:29:15'),
(14, 26, 9, 10, '2024-01-19 01:29:15', '2024-01-19 01:29:15'),
(15, 34, 51, 7, '2024-01-19 01:29:15', '2024-01-19 01:29:15'),
(16, 46, 71, 7, '2024-01-19 01:29:15', '2024-01-19 01:29:15'),
(17, 61, 65, 9, '2024-01-19 01:29:15', '2024-01-19 01:29:15'),
(18, 64, 105, 0, '2024-01-19 01:29:15', '2024-01-19 01:29:15'),
(19, 51, 86, 9, '2024-01-19 01:29:15', '2024-01-19 01:29:15'),
(20, 51, 64, 1, '2024-01-19 01:29:15', '2024-01-19 01:29:15'),
(21, 9, 73, 9, '2024-01-19 01:29:15', '2024-01-19 01:29:15'),
(22, 54, 27, 2, '2024-01-19 01:29:15', '2024-01-19 01:29:15'),
(23, 11, 37, 5, '2024-01-19 01:29:15', '2024-01-19 01:29:15'),
(24, 54, 106, 10, '2024-01-19 01:29:15', '2024-01-19 01:29:15'),
(25, 32, 16, 3, '2024-01-19 01:29:15', '2024-01-19 01:29:15'),
(26, 14, 10, 10, '2024-01-19 01:29:15', '2024-01-19 01:29:15'),
(27, 40, 85, 7, '2024-01-19 01:29:15', '2024-01-19 01:29:15'),
(28, 17, 19, 9, '2024-01-19 01:29:15', '2024-01-19 01:29:15'),
(29, 11, 83, 3, '2024-01-19 01:29:15', '2024-01-19 01:29:15'),
(30, 33, 95, 4, '2024-01-19 01:29:15', '2024-01-19 01:29:15'),
(31, 47, 13, 1, '2024-01-19 01:29:15', '2024-01-19 01:29:15'),
(32, 26, 49, 7, '2024-01-19 01:29:15', '2024-01-19 01:29:15'),
(33, 16, 3, 5, '2024-01-19 01:29:15', '2024-01-19 01:29:15'),
(34, 48, 100, 7, '2024-01-19 01:29:15', '2024-01-19 01:29:15'),
(35, 39, 53, 2, '2024-01-19 01:29:15', '2024-01-19 01:29:15'),
(36, 36, 33, 5, '2024-01-19 01:29:15', '2024-01-19 01:29:15'),
(37, 20, 20, 9, '2024-01-19 01:29:15', '2024-01-19 01:29:15'),
(38, 29, 34, 2, '2024-01-19 01:29:15', '2024-01-19 01:29:15'),
(39, 40, 102, 3, '2024-01-19 01:29:16', '2024-01-19 01:29:16'),
(40, 20, 15, 3, '2024-01-19 01:29:16', '2024-01-19 17:39:30'),
(41, 24, 22, 8, '2024-01-19 01:29:16', '2024-01-19 01:29:16'),
(42, 36, 61, 6, '2024-01-19 01:29:16', '2024-01-19 01:29:16'),
(43, 39, 120, 6, '2024-01-19 01:29:16', '2024-01-19 01:29:16'),
(44, 30, 111, 2, '2024-01-19 01:29:16', '2024-01-19 01:29:16'),
(45, 26, 110, 4, '2024-01-19 01:29:16', '2024-01-19 01:29:16'),
(46, 37, 8, 5, '2024-01-19 01:29:16', '2024-01-19 01:29:16'),
(47, 20, 25, 10, '2024-01-19 01:29:16', '2024-01-19 01:29:16'),
(48, 48, 84, 10, '2024-01-19 01:29:16', '2024-01-19 01:29:16'),
(49, 11, 75, 10, '2024-01-19 01:29:16', '2024-01-19 01:29:16'),
(50, 53, 70, 10, '2024-01-19 01:29:16', '2024-01-19 01:29:16'),
(51, 17, 115, 3, '2024-01-19 01:29:16', '2024-01-19 01:29:16'),
(52, 18, 44, 5, '2024-01-19 01:29:16', '2024-01-19 01:29:16'),
(53, 52, 24, 9, '2024-01-19 01:29:16', '2024-01-19 01:29:16'),
(54, 43, 118, 6, '2024-01-19 01:29:16', '2024-01-19 01:29:16'),
(55, 27, 81, 6, '2024-01-19 01:29:16', '2024-01-19 01:29:16'),
(56, 59, 42, 5, '2024-01-19 01:29:16', '2024-01-19 01:29:16'),
(57, 1, 80, 1, '2024-01-19 01:29:16', '2024-01-19 01:29:16'),
(58, 34, 17, 8, '2024-01-19 01:29:16', '2024-01-19 01:29:16'),
(59, 34, 47, 4, '2024-01-19 01:29:17', '2024-01-19 01:29:17'),
(60, 48, 107, 0, '2024-01-19 01:29:17', '2024-01-19 01:29:17'),
(61, 61, 103, 5, '2024-01-19 01:29:17', '2024-01-19 01:29:17'),
(62, 22, 104, 5, '2024-01-19 01:29:17', '2024-01-19 01:29:17'),
(63, 25, 56, 10, '2024-01-19 01:29:17', '2024-01-19 01:29:17'),
(64, 9, 6, 3, '2024-01-19 01:29:17', '2024-01-19 01:29:17'),
(65, 22, 54, 8, '2024-01-19 01:29:17', '2024-01-19 01:29:17'),
(66, 49, 67, 7, '2024-01-19 01:29:17', '2024-01-19 01:29:17'),
(67, 3, 101, 8, '2024-01-19 01:29:17', '2024-01-19 01:29:17'),
(68, 16, 41, 5, '2024-01-19 01:29:17', '2024-01-19 01:29:17'),
(69, 61, 119, 9, '2024-01-19 01:29:17', '2024-01-19 01:29:17'),
(70, 41, 29, 5, '2024-01-19 01:29:17', '2024-01-19 01:29:17'),
(71, 27, 109, 0, '2024-01-19 01:29:17', '2024-01-19 01:29:17'),
(72, 58, 62, 3, '2024-01-19 01:29:17', '2024-01-19 01:29:17'),
(73, 55, 108, 9, '2024-01-19 01:29:17', '2024-01-19 01:29:17'),
(74, 17, 36, 10, '2024-01-19 01:29:17', '2024-01-19 01:29:17'),
(75, 41, 1, 3, '2024-01-19 01:29:17', '2024-01-19 01:29:17'),
(76, 6, 116, 10, '2024-01-19 01:29:17', '2024-01-19 01:29:17'),
(77, 3, 52, 2, '2024-01-19 01:29:17', '2024-01-19 01:29:17'),
(78, 69, 59, 3, '2024-01-19 01:29:17', '2024-01-19 01:29:17'),
(79, 21, 5, 4, '2024-01-19 01:29:17', '2024-01-19 01:29:17'),
(80, 1, 11, 9, '2024-01-19 01:29:17', '2024-01-19 01:29:17'),
(81, 33, 45, 2, '2024-01-19 01:29:17', '2024-01-19 01:29:17'),
(82, 50, 66, 5, '2024-01-19 01:29:17', '2024-01-19 01:29:17'),
(83, 64, 92, 2, '2024-01-19 01:29:18', '2024-01-19 01:29:18'),
(84, 27, 99, 6, '2024-01-19 01:29:18', '2024-01-19 01:29:18'),
(85, 6, 35, 6, '2024-01-19 01:29:18', '2024-01-19 01:29:18'),
(86, 17, 87, 0, '2024-01-19 01:29:18', '2024-01-19 01:29:18'),
(87, 22, 82, 5, '2024-01-19 01:29:18', '2024-01-19 01:29:18'),
(88, 19, 91, 9, '2024-01-19 01:29:18', '2024-01-19 01:29:18'),
(89, 54, 94, 2, '2024-01-19 01:29:18', '2024-01-19 01:29:18'),
(90, 20, 21, 0, '2024-01-19 01:29:18', '2024-01-19 01:29:18'),
(91, 14, 96, 7, '2024-01-19 01:29:18', '2024-01-19 01:29:18'),
(92, 60, 14, 9, '2024-01-19 01:29:18', '2024-01-19 01:29:18'),
(93, 2, 60, 10, '2024-01-19 01:29:18', '2024-01-19 01:29:18'),
(94, 16, 89, 1, '2024-01-19 01:29:18', '2024-01-19 01:29:18'),
(95, 26, 38, 10, '2024-01-19 01:29:18', '2024-01-19 01:29:18'),
(96, 27, 68, 7, '2024-01-19 01:29:18', '2024-01-19 01:29:18'),
(97, 66, 2, 6, '2024-01-19 01:29:18', '2024-01-19 01:29:18'),
(98, 15, 72, 5, '2024-01-19 01:29:18', '2024-01-19 01:29:18'),
(99, 49, 55, 6, '2024-01-19 01:29:18', '2024-01-19 01:29:18'),
(100, 7, 93, 8, '2024-01-19 01:29:18', '2024-01-19 01:29:18'),
(101, 50, 46, 5, '2024-01-19 01:29:18', '2024-01-19 01:29:18'),
(102, 12, 18, 3, '2024-01-19 01:29:18', '2024-01-19 01:29:18'),
(103, 3, 88, 7, '2024-01-19 01:29:18', '2024-01-19 01:29:18'),
(104, 7, 113, 3, '2024-01-19 01:29:18', '2024-01-19 01:29:18'),
(105, 4, 23, 10, '2024-01-19 01:29:18', '2024-01-19 01:29:18'),
(106, 9, 39, 7, '2024-01-19 01:29:18', '2024-01-19 01:29:18'),
(107, 17, 30, 10, '2024-01-19 01:29:19', '2024-01-19 01:29:19'),
(108, 41, 69, 2, '2024-01-19 01:29:19', '2024-01-19 01:29:19'),
(109, 6, 31, 2, '2024-01-19 01:29:19', '2024-01-19 01:29:19'),
(110, 63, 77, 1, '2024-01-19 01:29:19', '2024-01-19 01:29:19'),
(111, 21, 79, 8, '2024-01-19 01:29:19', '2024-01-19 01:29:19'),
(112, 13, 12, 1, '2024-01-19 01:29:19', '2024-01-19 01:29:19'),
(113, 56, 114, 5, '2024-01-19 01:29:19', '2024-01-19 01:29:19'),
(114, 42, 32, 9, '2024-01-19 01:29:19', '2024-01-19 01:29:19'),
(115, 29, 57, 6, '2024-01-19 01:29:19', '2024-01-19 01:29:19'),
(116, 66, 112, 5, '2024-01-19 01:29:19', '2024-01-19 01:29:19'),
(117, 49, 78, 9, '2024-01-19 01:29:19', '2024-01-19 01:29:19'),
(118, 23, 4, 5, '2024-01-19 01:29:19', '2024-01-19 01:29:19'),
(119, 43, 48, 7, '2024-01-19 01:29:19', '2024-01-19 01:29:19'),
(120, 45, 28, 1, '2024-01-19 01:29:19', '2024-01-19 01:29:19');

-- --------------------------------------------------------

--
-- Estrutura da tabela `colaborador`
--

CREATE TABLE `colaborador` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `unidade_id` bigint(20) UNSIGNED NOT NULL,
  `nome` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cpf` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `colaboradores`
--

CREATE TABLE `colaboradores` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `unidade_id` bigint(20) UNSIGNED NOT NULL,
  `nome` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cpf` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `colaboradores`
--

INSERT INTO `colaboradores` (`id`, `unidade_id`, `nome`, `cpf`, `email`, `created_at`, `updated_at`) VALUES
(1, 80, 'Manuela Luiza Andreia Freitas', '29378246680', 'manuela-freitas86@belbrindes.com', NULL, '2024-01-18 23:43:56'),
(2, 127, 'Pietro Thales Duarte', '16319921552', 'pietro.thales.duarte@mectron.com.br', NULL, '2024-01-18 23:43:56'),
(3, 9, 'Enrico Antonio da Paz', '83700878923', 'enrico_antonio_dapaz@kaynak.com.br', NULL, '2024-01-18 23:43:54'),
(4, 43, 'Vicente Caio da Cunha', '95996338815', 'vicentecaiodacunha@omnibrasil.com.br', NULL, '2024-01-18 23:43:57'),
(5, 22, 'Martin André da Mata', '70297743376', 'martin_andre_damata@tadex.com.br', NULL, '2024-01-18 23:43:56'),
(6, 121, 'Lara Camila Assunção', '39527385229', 'lara_camila_assuncao@mrarquitetura.com.br', NULL, '2024-01-18 23:43:55'),
(7, 55, 'Allana Esther Liz Cardoso', '27279758134', 'allanaesthercardoso@gmx.net', NULL, '2024-01-18 23:43:53'),
(8, 76, 'Giovanni Carlos Paulo Dias', '65350854658', 'giovannicarlosdias@rodomen.com.br', NULL, '2024-01-18 23:43:54'),
(9, 35, 'Bernardo Severino Pires', '16358707981', 'bernardo_pires@yaooll.com', NULL, '2024-01-18 23:43:53'),
(10, 136, 'Eduarda Aurora Heloisa da Rosa', '04578527980', 'eduarda_aurora_darosa@cincoentretenimentos.com.br', NULL, '2024-01-18 23:43:54'),
(11, 56, 'Martin Gabriel Bryan Rodrigues', '91975493559', 'martingabrielrodrigues@amaralmonteiro.com.br', NULL, '2024-01-18 23:43:56'),
(12, 45, 'Sophia Fabiana Sophia Moraes', '76929510122', 'sophia_fabiana_moraes@valparaibaimoveis.com.br', NULL, '2024-01-18 23:43:57'),
(13, 40, 'Emilly Olivia Patrícia Campos', '40263893081', 'emilly.olivia.campos@construtoraplaneta.com.br', NULL, '2024-01-18 23:43:54'),
(14, 60, 'Oliver Roberto Barbosa', '15295007707', 'oliver-barbosa79@phocus.com.br', NULL, '2024-01-18 23:43:56'),
(15, 55, 'Fábio Mário Enzo Alves', '11380080606', 'fabio_alves@andressamelo.com.br', NULL, '2024-01-18 23:43:54'),
(16, 44, 'Diogo Tomás Cavalcanti', '75985339114', 'diogo.tomas.cavalcanti@wwlimpador.com.br', NULL, '2024-01-18 23:43:54'),
(17, 47, 'Jaqueline Letícia Gomes', '08347268312', 'jaquelineleticiagomes@cbsaperfeicoamento.com.br', NULL, '2024-01-18 23:43:55'),
(18, 91, 'Renata Rayssa Carvalho', '10758273452', 'renatarayssacarvalho@inepar.com.br', NULL, '2024-01-18 23:43:56'),
(19, 71, 'Elias Levi Santos', '56138293738', 'elias_santos@papayacomunicacao.com.br', NULL, '2024-01-18 23:43:54'),
(20, 78, 'Flávia Jéssica Corte Real', '22472673515', 'flavia_jessica_cortereal@lhp.com.br', NULL, '2024-01-18 23:43:54'),
(21, 61, 'Noah César Moura', '08687714220', 'noah_moura@hotmail.co.jp', NULL, '2024-01-18 23:43:56'),
(22, 96, 'Gabrielly Bruna Hadassa Porto', '52348709287', 'gabriellybrunaporto@agrosb.com.br', NULL, '2024-01-18 23:43:54'),
(23, 31, 'Roberto Victor Diogo Rocha', '83850835707', 'robertovictorrocha@temavonfeccaosjc.com.br', NULL, '2024-01-18 23:43:57'),
(24, 25, 'Ian Rodrigo da Conceição', '48466390707', 'ian_daconceicao@live.com.br', NULL, '2024-01-18 23:43:55'),
(25, 57, 'Helena Simone Raquel Oliveira', '44829868368', 'helena_simone_oliveira@publifix.com.br', NULL, '2024-01-18 23:43:54'),
(26, 102, 'Amanda Sophia Teixeira', '10892812699', 'amanda_teixeira@fk1.com.br', NULL, '2024-01-18 23:43:53'),
(27, 122, 'César Gael Roberto dos Santos', '73403572382', 'cesargaeldossantos@hotmail.com', NULL, '2024-01-18 23:43:54'),
(28, 3, 'Yago Julio Hugo Martins', '04479610391', 'yago_martins@foz.com.br', NULL, '2024-01-18 23:43:57'),
(29, 90, 'Lorena Gabrielly Brito', '69016973761', 'lorena_brito@right.com.br', NULL, '2024-01-18 23:43:55'),
(30, 87, 'Sarah Allana Ribeiro', '74563408034', 'sarah-ribeiro91@lifefp.com.br', NULL, '2024-01-18 23:43:57'),
(31, 30, 'Sarah Rebeca Nascimento', '73783919991', 'sarah_nascimento@rogerstenis.com.br', NULL, '2024-01-18 23:43:57'),
(32, 57, 'Sophie Aparecida Silva', '08823741840', 'sophie_silva@gruposeteestrelas.com.br', NULL, '2024-01-18 23:43:57'),
(33, 75, 'Felipe Bryan Thomas da Luz', '77364068716', 'felipe_bryan_daluz@salera.com.br', NULL, '2024-01-18 23:43:54'),
(34, 12, 'Flávia Priscila Moreira', '43531090062', 'flaviapriscilamoreira@spamgourmet.com', NULL, '2024-01-18 23:43:54'),
(35, 6, 'Nathan Giovanni Breno Souza', '43274353418', 'nathangiovannisouza@robertacorrea.com', NULL, '2024-01-18 23:43:56'),
(36, 35, 'Luís Sérgio Fogaça', '65364315967', 'luis_sergio_fogaca@ddfnet.com.br', NULL, '2024-01-18 23:43:55'),
(37, 92, 'César Miguel Novaes', '57191141573', 'cesar-novaes95@megasurgical.com.br', NULL, '2024-01-18 23:43:54'),
(38, 133, 'Pedro Henrique Gabriel Gael Dias', '44107037142', 'pedro.henrique.dias@ig.com', NULL, '2024-01-18 23:43:56'),
(39, 135, 'Samuel César Benício Drumond', '69706167897', 'samuel_drumond@live.com.br', NULL, '2024-01-18 23:43:57'),
(40, 135, 'Alice Aurora Moura', '311.430.168-15', 'alice.aurora.moura@albap.com.br', NULL, '2024-01-19 01:09:27'),
(41, 84, 'Liz Allana Benedita Caldeira', '02500797805', 'liz_allana_caldeira@rotadasbandeiras.com.br', NULL, '2024-01-18 23:43:55'),
(42, 86, 'Isabelle Rebeca Cláudia Carvalho', '63168256927', 'isabelle_carvalho@rafaelmarin.net', NULL, '2024-01-18 23:43:55'),
(43, 46, 'Bento Matheus Almada', '76224168431', 'bento_almada@moppe.com.br', NULL, '2024-01-18 23:43:53'),
(44, 101, 'Ian Pedro Henrique Manuel Duarte', '53630266274', 'ianpedroduarte@plastic.com.br', NULL, '2024-01-18 23:43:55'),
(45, 30, 'Mateus Benjamin Nogueira', '02044811987', 'mateus-nogueira95@debiasi.com.br', NULL, '2024-01-18 23:43:56'),
(46, 118, 'Raul Roberto Teixeira', '41338961810', 'raul_teixeira@pronta.com.br', NULL, '2024-01-18 23:43:56'),
(47, 102, 'Josefa Eduarda Fabiana Cardoso', '10841286167', 'josefa.eduarda.cardoso@outloock.com.br', NULL, '2024-01-18 23:43:55'),
(48, 42, 'Vitória Francisca da Mata', '95841878808', 'vitoria_francisca_damata@spires.com.br', NULL, '2024-01-18 23:43:57'),
(49, 17, 'Emily Yasmin Moraes', '99276157441', 'emily-moraes96@arcante.com.br', NULL, '2024-01-18 23:43:54'),
(50, 116, 'Ayla Liz Aparecida Silveira', '04941887905', 'ayla.liz.silveira@life.com', NULL, '2024-01-18 23:43:53'),
(51, 15, 'Bruna Lúcia Barros', '99393718296', 'bruna_barros@dlh.de', NULL, '2024-01-18 23:43:53'),
(52, 86, 'Marcos Manoel Martins', '63044651069', 'marcosmanoelmartins@eletroaquila.net', NULL, '2024-01-18 23:43:56'),
(53, 61, 'Fabiana Antonella Pereira', '87672725920', 'fabiana.antonella.pereira@santacasasjc.com.br', NULL, '2024-01-18 23:43:54'),
(54, 4, 'Laís Daniela Ribeiro', '76619230091', 'lais.daniela.ribeiro@vick1.com.br', NULL, '2024-01-18 23:43:55'),
(55, 61, 'Priscila Rosa Manuela Barbosa', '67223049065', 'priscila.rosa.barbosa@mrv.com.br', NULL, '2024-01-18 23:43:56'),
(56, 91, 'Kevin Juan Guilherme da Silva', '36400880500', 'kevin_juan_dasilva@geometrabte.com.br', NULL, '2024-01-18 23:43:55'),
(57, 117, 'Teresinha Adriana Lopes', '19495571383', 'teresinhaadrianalopes@procivil.com.br', NULL, '2024-01-18 23:43:57'),
(58, 107, 'Ayla Larissa Cristiane Lima', '60208756108', 'ayla_larissa_lima@landovale.com.br', NULL, '2024-01-18 23:43:53'),
(59, 99, 'Mariane Analu Alves', '64275868668', 'mariane.analu.alves@amure.com.br', NULL, '2024-01-18 23:43:56'),
(60, 23, 'Otávio Hugo Assunção', '67763158417', 'otavio_assuncao@i9tec.com.br', NULL, '2024-01-18 23:43:56'),
(61, 130, 'Gabrielly Lorena Bernardes', '44902764784', 'gabriellylorenabernardes@pibnet.com.br', NULL, '2024-01-18 23:43:54'),
(62, 125, 'Lucca Ricardo Diego da Costa', '53550001690', 'lucca_ricardo_dacosta@aircominternational.com', NULL, '2024-01-18 23:43:55'),
(63, 13, 'Ana Lúcia Márcia Pinto', '77103223360', 'ana-pinto72@predialnet.com.br', NULL, '2024-01-18 23:43:53'),
(64, 96, 'Clarice Clara Alessandra Farias', '30332940063', 'clarice-farias75@dprf.gov.br', NULL, '2024-01-18 23:43:53'),
(65, 119, 'Caio Calebe Cláudio Santos', '34336698210', 'caio_santos@danielsalla.com.br', NULL, '2024-01-18 23:43:53'),
(66, 6, 'Melissa Priscila Rosa Jesus', '78005182996', 'melissa.priscila.jesus@cancaonova.com', NULL, '2024-01-18 23:43:56'),
(67, 80, 'Laís Emily da Conceição', '13760401074', 'lais_daconceicao@maccropropaganda.com.br', NULL, '2024-01-18 23:43:55'),
(68, 106, 'Pietra Manuela Gomes', '82475554681', 'pietra-gomes74@profiledesign.com.br', NULL, '2024-01-18 23:43:56'),
(69, 18, 'Sarah Marlene Drumond', '37123986890', 'sarah-drumond87@pontofinalcafe.com.br', NULL, '2024-01-18 23:43:57'),
(70, 77, 'Hugo Cauã Edson da Paz', '94704667561', 'hugo_caua_dapaz@recatec.com.br', NULL, '2024-01-18 23:43:55'),
(71, 22, 'Bruno Enrico Cauê Rocha', '05597328050', 'brunoenricorocha@iaru.com', NULL, '2024-01-18 23:43:53'),
(72, 41, 'Priscila Jennifer Vera Nunes', '55744986340', 'priscila.jennifer.nunes@lphbrasil.com.br', NULL, '2024-01-18 23:43:56'),
(73, 87, 'Cláudio Pietro Baptista', '89617205548', 'claudio.pietro.baptista@lumavale.com.br', NULL, '2024-01-18 23:43:54'),
(74, 75, 'Antonella Maitê Dias', '30254048501', 'antonella-dias75@alvesbarcelos.com.br', NULL, '2024-01-18 23:43:53'),
(75, 2, 'Heloise Daiane Alice Ribeiro', '16059759408', 'heloise-ribeiro89@soulcomunicacao.com.br', NULL, '2024-01-18 23:43:55'),
(76, 92, 'Ayla Elisa Sophia Souza', '91410905942', 'aylaelisasouza@navescorat.com.br', NULL, '2024-01-18 23:43:53'),
(77, 58, 'Severino Heitor Iago Silva', '61601414650', 'severino.heitor.silva@camarasjc.sp.gov.br', NULL, '2024-01-18 23:43:57'),
(78, 87, 'Tiago Pedro Henrique Corte Real', '17906677714', 'tiagopedrocortereal@uninorte.com.br', NULL, '2024-01-18 23:43:57'),
(79, 84, 'Simone Sabrina Moreira', '14130722409', 'simone_sabrina_moreira@dgh.com.br', NULL, '2024-01-18 23:43:57'),
(80, 10, 'Isadora Clarice de Paula', '77314766509', 'isadora.clarice.depaula@victorseguros.com.br', NULL, '2024-01-18 23:43:55'),
(81, 4, 'Isabella Brenda Viana', '49619707435', 'isabellabrendaviana@solarisbrasil.com.br', NULL, '2024-01-18 23:43:55'),
(82, 64, 'Nathan Nelson Thomas Pires', '09567738696', 'nathannelsonpires@dizain.com.br', NULL, '2024-01-18 23:43:56'),
(83, 56, 'Eloá Isabelly Teresinha Ramos', '57739288411', 'eloa-ramos79@consultorialk.com.br', NULL, '2024-01-18 23:43:54'),
(84, 50, 'Heloisa Alessandra da Luz', '99450075212', 'heloisa_alessandra_daluz@abcautoservice.net', NULL, '2024-01-18 23:43:55'),
(85, 61, 'Eduarda Stella Isabelly Fogaça', '12376241774', 'eduarda_stella_fogaca@mpc.com.br', NULL, '2024-01-18 23:43:54'),
(86, 56, 'Calebe Vitor dos Santos', '13133807501', 'calebe-dossantos87@siexpress.com.br', NULL, '2024-01-18 23:43:53'),
(87, 115, 'Nathan Nelson Carvalho', '26100346958', 'nathannelsoncarvalho@ahlstrom.com', NULL, '2024-01-18 23:43:56'),
(88, 74, 'Roberto Ricardo Noah Cavalcanti', '45278236477', 'roberto_cavalcanti@maxilajes.com.br', NULL, '2024-01-18 23:43:56'),
(89, 101, 'Paulo Severino Manuel Mendes', '59133753270', 'paulo.severino.mendes@fortlar.com.br', NULL, '2024-01-18 23:43:56'),
(90, 30, 'Benedita Débora Pereira', '84609030870', 'beneditadeborapereira@hellokitty.com', NULL, '2024-01-18 23:43:53'),
(91, 95, 'Natália Sophia Assunção', '59750375653', 'natalia_sophia_assuncao@3dmaker.com.br', NULL, '2024-01-18 23:43:56'),
(92, 3, 'Márcia Andrea Campos', '01945016809', 'marcia_campos@tera.com.br', NULL, '2024-01-18 23:43:56'),
(93, 101, 'Raul Caleb Alexandre Aparício', '75585370880', 'raul_caleb_aparicio@octagonbrasil.com.br', NULL, '2024-01-18 23:43:56'),
(94, 79, 'Nelson Enzo Augusto Aragão', '32678726851', 'nelson_aragao@ornatopresentes.com.br', NULL, '2024-01-18 23:43:56'),
(95, 45, 'Eloá Raquel Souza', '67006351014', 'eloa-souza80@hotmail.fr', NULL, '2024-01-18 23:43:54'),
(96, 132, 'Noah Francisco Bruno Assis', '71996277340', 'noah.francisco.assis@ahlstrom.com', NULL, '2024-01-18 23:43:56'),
(97, 60, 'Alice Nina Juliana da Cunha', '26847227656', 'alice_nina_dacunha@hydropowermc.com.br', NULL, '2024-01-18 23:43:53'),
(98, 2, 'Aurora Lúcia Moraes', '31777702801', 'aurora_moraes@resource.com.br', NULL, '2024-01-18 23:43:53'),
(99, 7, 'Mário Rodrigo Bryan Nunes', '52166320341', 'mario_nunes@brunofaria.com', NULL, '2024-01-18 23:43:56'),
(100, 136, 'Enzo Victor da Costa', '89633535166', 'enzo_victor_dacosta@ipmmi.org.br', NULL, '2024-01-18 23:43:54'),
(101, 58, 'Leonardo Eduardo da Rocha', '67023979417', 'leonardo.eduardo.darocha@ddfnet.com.br', NULL, '2024-01-18 23:43:55'),
(102, 22, 'Francisca Ayla da Silva', '38549466352', 'franciscaayladasilva@salvagninigroup.com', NULL, '2024-01-18 23:43:54'),
(103, 61, 'Julio Erick Noah Fernandes', '02054560570', 'julio-fernandes88@lnaa.com.br', NULL, '2024-01-18 23:43:55'),
(104, 113, 'Kevin Isaac Nogueira', '33907406273', 'kevin.isaac.nogueira@rjnet.com.br', NULL, '2024-01-18 23:43:55'),
(105, 58, 'Caleb Raul Pinto', '94487507065', 'caleb_pinto@moncoes.com.br', NULL, '2024-01-18 23:43:53'),
(106, 94, 'Danilo Thiago Francisco Araújo', '25617108310', 'danilothiagoaraujo@dcabr.org.br', NULL, '2024-01-18 23:43:54'),
(107, 52, 'Juan Lucca Giovanni Peixoto', '07085309903', 'juanluccapeixoto@sinsesp.com.br', NULL, '2024-01-18 23:43:55'),
(108, 74, 'Luzia Tânia Gabrielly Vieira', '66934554175', 'luzia_tania_vieira@golinelli.eti.br', NULL, '2024-01-18 23:43:55'),
(109, 118, 'Lucca Murilo Jesus', '23747575609', 'lucca_murilo_jesus@gastrolight.com.br', NULL, '2024-01-18 23:43:55'),
(110, 92, 'Giovana Sebastiana Lima', '83149543061', 'giovana.sebastiana.lima@engemed.com', NULL, '2024-01-18 23:43:54'),
(111, 6, 'Gabrielly Márcia Regina Fogaça', '33702594604', 'gabriellymarciafogaca@infortec.com.br', NULL, '2024-01-18 23:43:54'),
(112, 102, 'Thales Kauê Carvalho', '11533995982', 'thales-carvalho97@pop.com.br', NULL, '2024-01-18 23:43:57'),
(113, 98, 'Roberto Theo Geraldo Lopes', '71296171361', 'robertotheolopes@runup.com.br', NULL, '2024-01-18 23:43:56'),
(114, 105, 'Sophia Milena Melissa Oliveira', '87701091416', 'sophia.milena.oliveira@dkcarmo.com', NULL, '2024-01-18 23:43:57'),
(115, 2, 'Ian Marcelo Otávio Castro', '09768184345', 'ianmarcelocastro@gmx.de', NULL, '2024-01-18 23:43:55'),
(116, 131, 'Marcela Tereza Clarice Galvão', '18957504664', 'marcelaterezagalvao@sistectecnologia.com.br', NULL, '2024-01-18 23:43:56'),
(117, 87, 'Allana Milena Amanda da Cruz', '96517370340', 'allana-dacruz75@oul.com.br', NULL, '2024-01-18 23:43:53'),
(118, 113, 'Isabela Alana Olivia Cardoso', '00458264555', 'isabelaalanacardoso@cebrace.com.br', NULL, '2024-01-18 23:43:55'),
(119, 49, 'Liz Tereza Brito', '62749672813', 'liz_tereza_brito@siexpress.com.br', NULL, '2024-01-18 23:43:55'),
(120, 90, 'Gabrielly Mariana da Luz', '94535594074', 'gabrielly-daluz74@mrv.com.br', NULL, '2024-01-18 23:43:54');

-- --------------------------------------------------------

--
-- Estrutura da tabela `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(15, '2024_01_16_185947_create_unidades_table', 1),
(16, '2024_01_16_190035_create_cargos_table', 1),
(21, '2014_10_12_000000_create_users_table', 2),
(28, '2019_08_19_000000_create_failed_jobs_table', 3),
(29, '2024_01_17_224223_create_cargos_table', 3),
(30, '2024_01_19_142513_create_unidades_table', 4),
(31, '2024_01_19_142856_create_colaborador_table', 4),
(32, '2024_01_19_143024_create_cargo_colaborador_table', 5);

-- --------------------------------------------------------

--
-- Estrutura da tabela `unidades`
--

CREATE TABLE `unidades` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nome_fantasia` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `razao_social` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cnpj` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `unidades`
--

INSERT INTO `unidades` (`id`, `nome_fantasia`, `razao_social`, `cnpj`, `created_at`, `updated_at`) VALUES
(2, 'ROBERT BOSCH LIMITADA', 'ROBERT BOSCH LIMITADA', '45990181000189', NULL, '2024-01-18 23:46:57'),
(3, 'PPG INDUSTRIAL DO BRASIL LTDA', 'PPG INDUSTRIAL DO BRASIL LTDA', '43996693000127', NULL, '2024-01-18 23:46:56'),
(4, 'CENTRO NACIONAL DE PEQUISA EM ENERGIA E MATERIAIS CNPEM', 'CENTRO NACIONAL DE PEQUISA EM ENERGIA E MATERIAIS CNPEM', '01156817000175', NULL, '2024-01-18 23:46:54'),
(5, 'EMPRESA BRASILEIRA DE PESQUISA AGROPECUÁRIA EMBRAPA', 'EMPRESA BRASILEIRA DE PESQUISA AGROPECUÁRIA EMBRAPA', '00348003011660', NULL, '2024-01-18 23:46:55'),
(6, 'CENTRO DE INTEGRAÇÃO EMPRESA - ESCOLA CIEE', 'CENTRO DE INTEGRAÇÃO EMPRESA - ESCOLA CIEE', '61600839000155', NULL, '2024-01-18 23:46:54'),
(7, 'EUROFINS DO BRASIL ANÁLISES DE ALIMENTOS LTDA', 'EUROFINS DO BRASIL ANÁLISES DE ALIMENTOS LTDA', '04329668000138', NULL, '2024-01-18 23:46:55'),
(8, 'I. SYSTEMS AUTOMAÇÃO INDUSTRIAL S.A.', 'I. SYSTEMS AUTOMAÇÃO INDUSTRIAL S.A.', '08998654000168', NULL, '2024-01-18 23:46:55'),
(9, 'CHOICE TECNOLOGIES S/A', 'CHOICE TECNOLOGIES S/A', '73845786000111', NULL, '2024-01-18 23:46:54'),
(10, 'FOR MEDICAL VENDAS E ASSISTÊNCIA TÉCNICA LTDA', 'FOR MEDICAL VENDAS E ASSISTÊNCIA TÉCNICA LTDA', '65591695000179', NULL, '2024-01-18 23:46:55'),
(11, 'GNTEC SERVIÇOS TECNOLÓGICOS E CONSULTORIA EMPRESARIAL S/S LTDA', 'GNTEC SERVIÇOS TECNOLÓGICOS E CONSULTORIA EMPRESARIAL S/S LTDA', '00088992000150', NULL, '2024-01-18 23:46:55'),
(12, 'LICEU CORAÇÃO DE JESUS', 'LICEU CORAÇÃO DE JESUS', '60463072000601', NULL, '2024-01-18 23:46:56'),
(13, 'MSXI RNS BRASIL TREINAMENTO E TERCEIRIZAÇÃO DE PROCESSOS LTDA', 'MSXI RNS BRASIL TREINAMENTO E TERCEIRIZAÇÃO DE PROCESSOS LTDA', '23167140000154', NULL, '2024-01-18 23:46:56'),
(14, 'ISM SANEAMENTO EIRELLI-ME', 'ISM SANEAMENTO EIRELLI-ME', '03905341000102', NULL, '2024-01-18 23:46:55'),
(15, 'EUCATEX INDUSTRIA E COMÉRCIO LTDA', 'EUCATEX INDUSTRIA E COMÉRCIO LTDA', '14675270000298', NULL, '2024-01-18 23:46:55'),
(16, 'PRISMA COMERCIAL EXPORTADORA DE OLEOQUÍMICOS LTDA', 'PRISMA COMERCIAL EXPORTADORA DE OLEOQUÍMICOS LTDA', '09267863000102', NULL, '2024-01-18 23:46:57'),
(17, 'ERYTHRO ASSESSORIA QUÍMICA S/C LIMITADA ME', 'ERYTHRO ASSESSORIA QUÍMICA S/C LIMITADA ME', '0277965700205', NULL, '2024-01-18 23:46:55'),
(18, 'LABORATÓRIO TAYUYNA LTDA', 'LABORATÓRIO TAYUYNA LTDA', '60879848000164', NULL, '2024-01-18 23:46:56'),
(19, 'INTEGRARTI CONSULTORIA E DESENVOLVIMENTO LTDA', 'INTEGRARTI CONSULTORIA E DESENVOLVIMENTO LTDA', '24579417000119', NULL, '2024-01-18 23:46:55'),
(20, 'BRAVO BR COMERCIO E ASSESSORIOS PARA MOTOS E SERVIÇOS', 'BRAVO BR COMERCIO E ASSESSORIOS PARA MOTOS E SERVIÇOS', '12549951000101', NULL, '2024-01-18 23:46:54'),
(21, 'ASSERTIVA TECNOLOGIA DA INFORMAÇÃO LTDA', 'ASSERTIVA TECNOLOGIA DA INFORMAÇÃO LTDA', '15724796000100', NULL, '2024-01-18 23:46:53'),
(22, 'GATWAY AUTOMAÇÃO COMERCIO LTDA ME', 'GATWAY AUTOMAÇÃO COMERCIO LTDA ME', '61701363000149', NULL, '2024-01-18 23:46:55'),
(23, 'CENTRO DE INVESTIGAÇÕES HEMATOLÓGICAS DR. DOMINGOS A. BOLDRINI', 'CENTRO DE INVESTIGAÇÕES HEMATOLÓGICAS DR. DOMINGOS A. BOLDRINI', '50046887000127', NULL, '2024-01-18 23:46:54'),
(24, 'BRASIF S/A', 'BRASIF S/A', '48539407002919', NULL, '2024-01-18 23:46:54'),
(25, 'MOB2CON SOLUÇÕES TECNOLÓGICAS LTDA', 'MOB2CON SOLUÇÕES TECNOLÓGICAS LTDA', '22311442000191', NULL, '2024-01-18 23:46:56'),
(26, 'LKV SISTEMAS LTDA', 'LKV SISTEMAS LTDA', '03376350000145', NULL, '2024-01-18 23:46:56'),
(27, 'UNIVERSIDADE ESTADUAL DE CAMPINAS UNICAMP', 'UNIVERSIDADE ESTADUAL DE CAMPINAS UNICAMP', '46068425000133', NULL, '2024-01-18 23:46:58'),
(28, 'PEPSICO DO BRASIL LTDA', 'PEPSICO DO BRASIL LTDA', '31565104002110', NULL, '2024-01-18 23:46:56'),
(29, 'MOVILE INTERNET MOVEL S/A', 'MOVILE INTERNET MOVEL S/A', '08654191000117', NULL, '2024-01-18 23:46:56'),
(30, 'R.FERARREZI ENGENHARIA E CONSULTORIA LTDA', 'R.FERARREZI ENGENHARIA E CONSULTORIA LTDA', '14466113000191', NULL, '2024-01-18 23:46:57'),
(31, 'AUTO AVALIAR TECN. E INTERM. DE NEG. E SERV. LTDA', 'AUTO AVALIAR TECN. E INTERM. DE NEG. E SERV. LTDA', '22279800000126', NULL, '2024-01-18 23:46:53'),
(32, 'QUIMI QUALI LABORATÓRIO, ENGENHARIA E SERVIÇOS AMBIENTAIS LTDA EPP', 'QUIMI QUALI LABORATÓRIO, ENGENHARIA E SERVIÇOS AMBIENTAIS LTDA EPP', '15401195000159', NULL, '2024-01-18 23:46:57'),
(33, 'S-SYS SISTEMAS E SOLUÇÕES TECNOLÓGICAS LTDA', 'S-SYS SISTEMAS E SOLUÇÕES TECNOLÓGICAS LTDA', '19574864000145', NULL, '2024-01-18 23:46:57'),
(34, 'VANIA PESQUISA E TREINAMENTO LTDA - ME', 'VANIA PESQUISA E TREINAMENTO LTDA - ME', '20500367000181', NULL, '2024-01-18 23:46:58'),
(35, 'EVOLUSERVICES MEIOS DE PAGAMENTO', 'EVOLUSERVICES MEIOS DE PAGAMENTO', '04556068000102', NULL, '2024-01-18 23:46:55'),
(36, 'AJVM Comércio e Serviços de Informática LTDA', 'AJVM Comércio e Serviços de Informática LTDA', '08.354.533/0001-83', NULL, '2024-01-19 18:03:40'),
(37, 'TI Nect Serviços de Informática', 'TI Nect Serviços de Informática', '21114494000105', NULL, '2024-01-18 23:46:57'),
(38, 'Tape Engenharia LTDA', 'Tape Engenharia LTDA', '00920868000100', NULL, '2024-01-18 23:46:58'),
(39, 'MBLABS Serviços de Tecnologia Ltda', 'MBLABS Serviços de Tecnologia Ltda', '18870181000172', NULL, '2024-01-18 23:46:56'),
(40, 'Gorilla Peças e serviços Ltda', 'Gorilla Peças e serviços Ltda', '15519426000123', NULL, '2024-01-18 23:46:55'),
(41, 'Os Geraldos Teatro Ltda-Me', 'Os Geraldos Teatro Ltda-Me', '22156953000186', NULL, '2024-01-18 23:46:56'),
(42, 'Imidia Multimeios Ltda', 'Imidia Multimeios Ltda', '05588988000175', NULL, '2024-01-18 23:46:55'),
(43, 'Instituto Integral', 'Instituto Integral', '19155177000195', NULL, '2024-01-18 23:46:55'),
(44, 'Campos Sales Comercio de Livros e Informática LTDA - ME', 'Campos Sales Comercio de Livros e Informática LTDA - ME', '09030444000144', NULL, '2024-01-18 23:46:54'),
(45, 'WPS Print Comércio de Informática Ltda', 'WPS Print Comércio de Informática Ltda', '09461391000116', NULL, '2024-01-18 23:46:58'),
(46, 'GRACOM- Comércio e Serviços de Escola de Informática e Treinamento LTDA-ME', 'GRACOM- Comércio e Serviços de Escola de Informática e Treinamento LTDA-ME', '11416883000212', NULL, '2024-01-18 23:46:55'),
(47, 'Allims Soluções em Software Ltda', 'Allims Soluções em Software Ltda', '18885636000123', NULL, '2024-01-18 23:46:54'),
(48, 'I/O Eletrônica Ltda', 'I/O Eletrônica Ltda', '57515872000155', NULL, '2024-01-18 23:46:55'),
(49, 'CPqD - Centro de Pesquisa e Desenvolvimento em telecomunicações', 'CPqD - Centro de Pesquisa e Desenvolvimento em telecomunicações', '02641663000110', NULL, '2024-01-18 23:46:54'),
(50, 'Unitá Educacional Ltda EPP', 'Unitá Educacional Ltda EPP', '09441008000168', NULL, '2024-01-18 23:46:58'),
(51, 'Evolve tecnologia e Informática Ltda-Me', 'Evolve tecnologia e Informática Ltda-Me', '21935053000174', NULL, '2024-01-18 23:46:55'),
(52, 'Ministerio da Ciencia e Tecnologia -MCT', 'Ministerio da Ciencia e Tecnologia -MCT', '03132745000100', NULL, '2024-01-18 23:46:56'),
(53, 'Centro Infantil de Investigações Hematológicas Dr. Domingos A. Boldrini', 'Centro Infantil de Investigações Hematológicas Dr. Domingos A. Boldrini', '50046887000127', NULL, '2024-01-18 23:46:54'),
(54, 'MBLABS Serviços de Tecnologia Ltda', 'MBLABS Serviços de Tecnologia Ltda', '18870181000172', NULL, '2024-01-18 23:46:56'),
(55, 'Prefeitura Municipal de Campinas', 'Prefeitura Municipal de Campinas', '51885242000140', NULL, '2024-01-18 23:46:57'),
(56, 'Softway Softwares para comércio para comercio exterior Ltda', 'Softway Softwares para comércio para comercio exterior Ltda', '01940175000141', NULL, '2024-01-18 23:46:57'),
(57, 'VENTURUS- Centro de Inovação tecnológica', 'VENTURUS- Centro de Inovação tecnológica', '96499728000189', NULL, '2024-01-18 23:46:58'),
(58, 'Saveway Comércio e representações de softawres LTDA -EPP', 'Saveway Comércio e representações de softawres LTDA -EPP', '03809579000126', NULL, '2024-01-18 23:46:57'),
(59, 'LVK Sistemas LTDA', 'LVK Sistemas LTDA', '03376350000145', NULL, '2024-01-18 23:46:56'),
(60, 'Aoki Sistemas Inteligentes Ltda', 'Aoki Sistemas Inteligentes Ltda', '29287343000160', NULL, '2024-01-18 23:46:54'),
(61, 'Pepsico do Brasil Ltda', 'Pepsico do Brasil Ltda', '31565104002110', NULL, '2024-01-18 23:46:57'),
(62, 'Proteja Security Solutions Ltda', 'Proteja Security Solutions Ltda', '05359927000136', NULL, '2024-01-18 23:46:57'),
(63, 'CIE- Centro Integração -Empresa escola', 'CIE- Centro Integração -Empresa escola', '00000000000000', NULL, '2024-01-18 23:46:54'),
(64, 'Editora e Distribuidora educacional S.A', 'Editora e Distribuidora educacional S.A', '38733648005290', NULL, '2024-01-18 23:46:55'),
(65, 'PRC Campinas Serviços Ltda me', 'PRC Campinas Serviços Ltda me', '20684206000195', NULL, '2024-01-18 23:46:56'),
(66, 'AKIVA Tecnologia Ltda -EPP', 'AKIVA Tecnologia Ltda -EPP', '09289704000109', NULL, '2024-01-18 23:46:53'),
(67, 'Solcera do Brasil Materiais Avançados Ltda', 'Solcera do Brasil Materiais Avançados Ltda', '12081776000162', NULL, '2024-01-18 23:46:57'),
(68, 'UPLEVEL Marketing Ltda', 'UPLEVEL Marketing Ltda', '30697589000190', NULL, '2024-01-18 23:46:58'),
(69, 'Stoller do Brasil Ltda', 'Stoller do Brasil Ltda', '54995261000118', NULL, '2024-01-18 23:46:57'),
(70, 'SiDi - Samsung Instituto de desenvolvimento para informática', 'SiDi - Samsung Instituto de desenvolvimento para informática', '06176586000126', NULL, '2024-01-18 23:46:57'),
(71, 'Insti Inovação em Soluções de Projetos em TI', 'Insti Inovação em Soluções de Projetos em TI', '1290033000167', NULL, '2024-01-18 23:46:55'),
(72, 'Akzo Nobel Pulp and Performance Química Ltda.', 'Akzo Nobel Pulp and Performance Química Ltda.', '43818418000970', NULL, '2024-01-18 23:46:53'),
(73, 'Dcide Ltda -NUBE', 'Dcide Ltda -NUBE', '13992585000115', NULL, '2024-01-18 23:46:54'),
(74, 'MC2CLOUD Tecnologia da Informação EIRELI-Real estágios e empregos Ltda', 'MC2CLOUD Tecnologia da Informação EIRELI-Real estágios e empregos Ltda', '33434958000140', NULL, '2024-01-18 23:46:56'),
(75, 'Confidence Corretora de Cambio S/A', 'Confidence Corretora de Cambio S/A', '04913129000141', NULL, '2024-01-18 23:46:54'),
(76, 'EMK Integrador Processamento de Dados Ltda', 'EMK Integrador Processamento de Dados Ltda', '18178719000182', NULL, '2024-01-18 23:46:54'),
(77, 'KOGNIT -M2D -Consultoria e Assessoria Eireli -Me', 'KOGNIT -M2D -Consultoria e Assessoria Eireli -Me', '22272481000127', NULL, '2024-01-18 23:46:55'),
(78, 'Kumulus Servições em Cloud Computing e Database Ltda', 'Kumulus Servições em Cloud Computing e Database Ltda', '12564086000164', NULL, '2024-01-18 23:46:56'),
(79, 'Companhia Paulista de Força e Luz', 'Companhia Paulista de Força e Luz', '33050196000188', NULL, '2024-01-18 23:46:54'),
(80, 'TORADEX BRASIL IMPORTAÇÃO E COMERCIO DE SISTEMAS ELETRONICOS EIRELI', 'TORADEX BRASIL IMPORTAÇÃO E COMERCIO DE SISTEMAS ELETRONICOS EIRELI', '20831215000161', NULL, '2024-01-18 23:46:57'),
(81, 'IT GLOBAL SERV CONSULT EM SISTEMAS DE INFORMATICA LTDA', 'IT GLOBAL SERV CONSULT EM SISTEMAS DE INFORMATICA LTDA', '08580849000193', NULL, '2024-01-18 23:46:55'),
(82, 'UCT BRASIL SERV INFORMATICA - CIEE', 'UCT BRASIL SERV INFORMATICA - CIEE', '15757979000114', NULL, '2024-01-18 23:46:58'),
(83, 'Mexichem Brasil Indústria de Transformação Plástica Ltda', 'Mexichem Brasil Indústria de Transformação Plástica Ltda', '58514928003351', NULL, '2024-01-18 23:46:56'),
(84, 'Pleno Telecomunicações Ltda - ME', 'Pleno Telecomunicações Ltda - ME', '07778411000151', NULL, '2024-01-18 23:46:57'),
(85, 'CSC Computer Sciences Brasil S.A', 'CSC Computer Sciences Brasil S.A', '57743296001120', NULL, '2024-01-18 23:46:54'),
(86, 'Lorac Informática', 'Lorac Informática', '05352572000153', NULL, '2024-01-18 23:46:56'),
(87, 'Gensa Serviços Digitais S/A', 'Gensa Serviços Digitais S/A', '29653439000103', NULL, '2024-01-18 23:46:55'),
(88, 'Getway Automação Comercial LTDA ME', 'Getway Automação Comercial LTDA ME', '61701363000149', NULL, '2024-01-18 23:46:55'),
(89, 'BASF S/A', 'BASF S/A', '48539407002919', NULL, '2024-01-18 23:46:54'),
(90, 'I Systems Automação Industrial S/A', 'I Systems Automação Industrial S/A', '08998654000168', NULL, '2024-01-18 23:46:55'),
(91, 'R. Ferarrezi Engenharia e Consultoria Ltda', 'R. Ferarrezi Engenharia e Consultoria Ltda', '14466113000191', NULL, '2024-01-18 23:46:57'),
(92, 'Interprise Instrumentos Analíticos Ltda', 'Interprise Instrumentos Analíticos Ltda', '72949449000101', NULL, '2024-01-18 23:46:55'),
(93, 'S-SYS Sistemas e Soluções Tecnológicas Ltda', 'S-SYS Sistemas e Soluções Tecnológicas Ltda', '19574864000145', NULL, '2024-01-18 23:46:57'),
(94, 'Vinia Pesquisa e Treinamentos Ltda - ME', 'Vinia Pesquisa e Treinamentos Ltda - ME', '20500367000181', NULL, '2024-01-18 23:46:58'),
(95, 'ATGB Inst. Mantu. em Sistemas de Segurança Ltda', 'ATGB Inst. Mantu. em Sistemas de Segurança Ltda', '12375875000157', NULL, '2024-01-18 23:46:53'),
(96, 'Sociedade de Instrução e Leitura', 'Sociedade de Instrução e Leitura', '46041265000139', NULL, '2024-01-18 23:46:57'),
(97, 'Coim Brasil Ltda', 'Coim Brasil Ltda', '65426538000108', NULL, '2024-01-18 23:46:54'),
(98, 'Biotechfish', 'Biotechfish', '33621286000181', NULL, '2024-01-18 23:46:54'),
(99, 'Kerry do Brasil Ltda', 'Kerry do Brasil Ltda', '02332686000143', NULL, '2024-01-18 23:46:56'),
(100, 'MAYOR ARQUITETURA E ENGENHARIA LTDA - ME', 'MAYOR ARQUITETURA E ENGENHARIA LTDA - ME', '20640786000119', NULL, '2024-01-18 23:46:56'),
(101, 'BRAINWEB SOLUÇÕES EM TECNOLOGIA DA INFORMAÇÃO LTDA', 'BRAINWEB SOLUÇÕES EM TECNOLOGIA DA INFORMAÇÃO LTDA', '02677328000172', NULL, '2024-01-18 23:46:54'),
(102, 'OPTARIUM COMÉRCIO DE ARTIGOS DE OPTICA EIRELI ME', 'OPTARIUM COMÉRCIO DE ARTIGOS DE OPTICA EIRELI ME', '18141646000154', NULL, '2024-01-18 23:46:56'),
(103, 'STOOM SOLUÇÕES EM COMERCIO ELETRONICO LTDA', 'STOOM SOLUÇÕES EM COMERCIO ELETRONICO LTDA', '21542601000104', NULL, '2024-01-18 23:46:57'),
(104, 'UPLEVEL MARKETING LTDA', 'UPLEVEL MARKETING LTDA', '30697589000190', NULL, '2024-01-18 23:46:58'),
(105, 'Rhodia Poliamida e Especialidades S.A.', 'Rhodia Poliamida e Especialidades S.A.', '15179682002596', NULL, '2024-01-18 23:46:57'),
(106, 'Packduque Indústria de Plásticos Ltda', 'Packduque Indústria de Plásticos Ltda', '04214651000305', NULL, '2024-01-18 23:46:57'),
(107, 'Mall Graphic Express Ltda.', 'Mall Graphic Express Ltda.', '09344974000167', NULL, '2024-01-18 23:46:56'),
(108, 'Gevisa S/A', 'Gevisa S/A', '68059674000103', NULL, '2024-01-18 23:46:55'),
(109, 'Viégas Informática Ltda', 'Viégas Informática Ltda', '62823257027643', NULL, '2024-01-18 23:46:58'),
(110, 'Prime Sistemas de Atendimento ao Consumidor Ltda', 'Prime Sistemas de Atendimento ao Consumidor Ltda', '23741593000304', NULL, '2024-01-18 23:46:57'),
(111, 'Caiena Desenvolvimento de Software Ltda', 'Caiena Desenvolvimento de Software Ltda', '07228258000199', NULL, '2024-01-18 23:46:54'),
(112, 'NVT Comércio e Serviço de Equipamentos de Comunicação Ltda', 'NVT Comércio e Serviço de Equipamentos de Comunicação Ltda', '14846023000126', NULL, '2024-01-18 23:46:56'),
(113, 'EiTV Comércio de Equipamentos de Informática e Telecomunicações Ltda', 'EiTV Comércio de Equipamentos de Informática e Telecomunicações Ltda', '10658076000162', NULL, '2024-01-18 23:46:55'),
(114, 'Elektro Redes S/A', 'Elektro Redes S/A', '02328280000197', NULL, '2024-01-18 23:46:55'),
(115, 'Hitachi - AB Sistemas de Freios Ltda', 'Hitachi - AB Sistemas de Freios Ltda', '13625300000108', NULL, '2024-01-18 23:46:55'),
(116, 'Caravana Representação Comercial Ltda', 'Caravana Representação Comercial Ltda', '17246242000162', NULL, '2024-01-18 23:46:54'),
(117, 'Smartbreeder SA', 'Smartbreeder SA', '10792020000104', NULL, '2024-01-18 23:46:57'),
(118, 'Daitan Labs Soluções em Tecnologia SA', 'Daitan Labs Soluções em Tecnologia SA', '06980081000110', NULL, '2024-01-18 23:46:54'),
(119, 'CEIMIC - NÚCLEO TÉCNICO OPERACIONAL DE SERVIÇOS ANALÍTICOS', 'CEIMIC - NÚCLEO TÉCNICO OPERACIONAL DE SERVIÇOS ANALÍTICOS', '67994897000197', NULL, '2024-01-18 23:46:54'),
(120, 'CBO ANÁLISES LABORATORIAIS LTDA', 'CBO ANÁLISES LABORATORIAIS LTDA', '04337111000149', NULL, '2024-01-18 23:46:54'),
(121, 'TMD Friction do Brasil S/A', 'TMD Friction do Brasil S/A', '33060716000214', NULL, '2024-01-18 23:46:57'),
(122, 'CAEP – Centro Avançado de Estudos e Pesquisas LTDA', 'CAEP – Centro Avançado de Estudos e Pesquisas LTDA', '07339867000115', NULL, '2024-01-18 23:46:54'),
(123, 'MARTINREA HONSEL BRASIL', 'MARTINREA HONSEL BRASIL', '56990526000110', NULL, '2024-01-18 23:46:56'),
(124, 'IKA BRASIL EQUIP. LAB. ANA. E PROC LTDA', 'IKA BRASIL EQUIP. LAB. ANA. E PROC LTDA', '04213425000130', NULL, '2024-01-18 23:46:55'),
(125, 'TROPICAL TRANSPORTES IPIRANGA LTDA', 'TROPICAL TRANSPORTES IPIRANGA LTDA', '42310177003907', NULL, '2024-01-18 23:46:57'),
(126, 'Ctrl+Kids Escola de Programação e Robótica Ltda', 'Ctrl+Kids Escola de Programação e Robótica Ltda', '23029210000108', NULL, '2024-01-18 23:46:54'),
(127, 'Integrance Contabilidade e Finanças Eireli', 'Integrance Contabilidade e Finanças Eireli', '20136940000110', NULL, '2024-01-18 23:46:55'),
(128, 'BUCKMAN LABORATÓRIOS LTDA', 'BUCKMAN LABORATÓRIOS LTDA', '44589885000181', NULL, '2024-01-18 23:46:54'),
(129, 'Ocna Brasil Acessórios do Vestuário Eireli', 'Ocna Brasil Acessórios do Vestuário Eireli', '32568059000177', NULL, '2024-01-18 23:46:56'),
(130, 'Suzano S/A', 'Suzano S/A', '16404287029641', NULL, '2024-01-18 23:46:57'),
(131, 'AMBEV S/A', 'AMBEV S/A', '07526557000452', NULL, '2024-01-18 23:46:53'),
(132, 'Unilever', 'Unilever', '61068276000104', NULL, '2024-01-18 23:46:58'),
(133, 'Vladimir José de Almeida Ltda', 'Vladimir José de Almeida Ltda', '35855687000121', NULL, '2024-01-18 23:46:58'),
(134, 'Canuto Consultoria Treinamento e Desenvolvimento de Softwares Ltda', 'Canuto Consultoria Treinamento e Desenvolvimento de Softwares Ltda', '19604617000144', NULL, '2024-01-18 23:46:54'),
(135, 'Tavares e Castro Comercio e Serviços em Informática Ltda', 'Tavares e Castro Comercio e Serviços em Informática Ltda', '03901413000135', NULL, '2024-01-18 23:46:58'),
(136, 'FRATELLI RICCI QUIMICA BRASIL LTDA', 'FRATELLI RICCI QUIMICA BRASIL LTDA', '07668523000150', NULL, '2024-01-18 23:46:55'),
(137, 'Eaton Ltda - Divisão de Veículos', 'Eaton Ltda - Divisão de Veículos', '54625819002893', NULL, '2024-01-18 23:46:55'),
(138, 'BUNTECH TECNOLOGIA EM INSUMOS LTDA', 'BUNTECH TECNOLOGIA EM INSUMOS LTDA', '56998438000670', NULL, '2024-01-18 23:46:54'),
(139, 'AUTONOMUS ROBOTICS - SERIÇOS DE DESENVOLVIMENTO E TECNOLOGIA DA INFORMAÇÃO LTDA', 'AUTONOMUS ROBOTICS - SERIÇOS DE DESENVOLVIMENTO E TECNOLOGIA DA INFORMAÇÃO LTDA', '40997367000146', NULL, '2024-01-18 23:46:53');

-- --------------------------------------------------------

--
-- Estrutura da tabela `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `cargos`
--
ALTER TABLE `cargos`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `cargo_colaborador`
--
ALTER TABLE `cargo_colaborador`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cargo_colaborador_cargo_id_foreign` (`cargo_id`),
  ADD KEY `cargo_colaborador_colaborador_id_foreign` (`colaborador_id`);

--
-- Índices para tabela `colaborador`
--
ALTER TABLE `colaborador`
  ADD PRIMARY KEY (`id`),
  ADD KEY `colaborador_unidade_id_foreign` (`unidade_id`);

--
-- Índices para tabela `colaboradores`
--
ALTER TABLE `colaboradores`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `unidades`
--
ALTER TABLE `unidades`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `cargos`
--
ALTER TABLE `cargos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT de tabela `cargo_colaborador`
--
ALTER TABLE `cargo_colaborador`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;

--
-- AUTO_INCREMENT de tabela `colaborador`
--
ALTER TABLE `colaborador`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `colaboradores`
--
ALTER TABLE `colaboradores`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;

--
-- AUTO_INCREMENT de tabela `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT de tabela `unidades`
--
ALTER TABLE `unidades`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=141;

--
-- AUTO_INCREMENT de tabela `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `cargo_colaborador`
--
ALTER TABLE `cargo_colaborador`
  ADD CONSTRAINT `cargo_colaborador_cargo_id_foreign` FOREIGN KEY (`cargo_id`) REFERENCES `cargos` (`id`),
  ADD CONSTRAINT `cargo_colaborador_colaborador_id_foreign` FOREIGN KEY (`colaborador_id`) REFERENCES `colaboradores` (`id`);

--
-- Limitadores para a tabela `colaborador`
--
ALTER TABLE `colaborador`
  ADD CONSTRAINT `colaborador_unidade_id_foreign` FOREIGN KEY (`unidade_id`) REFERENCES `unidades` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
