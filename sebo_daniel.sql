-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 15/05/2025 às 03:19
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `sebo_daniel`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `cds`
--

CREATE TABLE `cds` (
  `codigo` int(3) NOT NULL,
  `Nome_cd` varchar(50) DEFAULT NULL,
  `DataCompra` date DEFAULT NULL,
  `ValorPago` double DEFAULT NULL,
  `LocalCompra` varchar(50) DEFAULT NULL,
  `Album` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `cds`
--

INSERT INTO `cds` (`codigo`, `Nome_cd`, `DataCompra`, `ValorPago`, `LocalCompra`, `Album`) VALUES
(1, 'Thriller', '2023-02-15', 45.9, 'Loja Física - Shopping X', 1),
(2, 'Back in Black', '2022-11-10', 39.5, 'Loja Online - MusicStore', 1),
(3, 'Greatest Hits', '2024-01-22', 30, 'Loja Física - Rua Y', 0),
(4, 'The Dark Side of the Moon', '2023-08-05', 50, 'Loja Online - CD Shop', 1),
(5, 'Random Access Memories', '2022-12-01', 60, 'Loja Física - Centro Z', 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `musicas`
--

CREATE TABLE `musicas` (
  `CodigoCD` int(3) DEFAULT NULL,
  `Numero_musica` int(3) DEFAULT NULL,
  `Nome_musica` varchar(50) DEFAULT NULL,
  `Artista` varchar(50) DEFAULT NULL,
  `Tempo` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `musicas`
--

INSERT INTO `musicas` (`CodigoCD`, `Numero_musica`, `Nome_musica`, `Artista`, `Tempo`) VALUES
(1, 1, 'Wanna Be Startin’ Somethin’', 'Michael Jackson', '06:03:00'),
(1, 2, 'Baby Be Mine', 'Michael Jackson', '04:20:00'),
(1, 3, 'The Girl Is Mine', 'Michael Jackson & Paul McCartney', '03:42:00'),
(1, 4, 'Thriller', 'Michael Jackson', '05:57:00'),
(1, 5, 'Beat It', 'Michael Jackson', '04:18:00'),
(2, 1, 'Hells Bells', 'AC/DC', '05:12:00'),
(2, 2, 'Shoot to Thrill', 'AC/DC', '05:17:00'),
(2, 3, 'What Do You Do for Money Honey', 'AC/DC', '03:35:00'),
(2, 4, 'Given the Dog a Bone', 'AC/DC', '03:30:00'),
(2, 5, 'Let Me Put My Love into You', 'AC/DC', '04:14:00'),
(3, 1, 'Bohemian Rhapsody', 'Queen', '05:55:00'),
(3, 2, 'We Will Rock You', 'Queen', '02:02:00'),
(3, 3, 'We Are the Champions', 'Queen', '03:00:00'),
(3, 4, 'Radio Ga Ga', 'Queen', '05:47:00'),
(3, 5, 'Somebody to Love', 'Queen', '04:56:00');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `cds`
--
ALTER TABLE `cds`
  ADD PRIMARY KEY (`codigo`);

--
-- Índices de tabela `musicas`
--
ALTER TABLE `musicas`
  ADD KEY `CodigoCD` (`CodigoCD`);

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `musicas`
--
ALTER TABLE `musicas`
  ADD CONSTRAINT `musicas_ibfk_1` FOREIGN KEY (`CodigoCD`) REFERENCES `cds` (`codigo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
