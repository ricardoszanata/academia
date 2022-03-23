-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 16-Mar-2022 às 23:10
-- Versão do servidor: 10.4.21-MariaDB
-- versão do PHP: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `academia`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `dadospessoa`
--

CREATE TABLE `dadospessoa` (
  `dadcod` int(11) NOT NULL,
  `dadendereco` varchar(100) DEFAULT NULL,
  `dadnumero` int(11) DEFAULT NULL,
  `dadcomplemento` varchar(50) DEFAULT NULL,
  `dadcep` varchar(15) DEFAULT NULL,
  `dadcidade` varchar(100) DEFAULT NULL,
  `daduf` varchar(2) DEFAULT NULL,
  `dadcelular` varchar(15) DEFAULT NULL,
  `dadpescod` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `pessoas`
--

CREATE TABLE `pessoas` (
  `pescod` int(11) NOT NULL,
  `pesnome` varchar(100) DEFAULT NULL,
  `pesemail` varchar(100) DEFAULT NULL,
  `pespass` varchar(50) DEFAULT NULL,
  `peschave` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `pessoas`
--

INSERT INTO `pessoas` (`pescod`, `pesnome`, `pesemail`, `pespass`, `peschave`) VALUES
(1, 'RICARDO DA SILVA ZANATA', 'ricardoszanata@gmail.com', '19517e6a43e3c76ced8e3c9ec6447b4f', NULL),
(2, 'FABIANE VIEIRA MARTINS ZANATA', 'fabianevmartins@gmail.com', '6c1cae8d3d715d2e1759d64b2e91fe83', NULL),
(3, 'ANA JÚLIA MARTINS ZANATA', 'anjuzanata@gamil.com', '828c88f34ecb4c1ca8d89e018c6fad1a', NULL);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `dadospessoa`
--
ALTER TABLE `dadospessoa`
  ADD PRIMARY KEY (`dadcod`),
  ADD KEY `fkdadpescod` (`dadpescod`);

--
-- Índices para tabela `pessoas`
--
ALTER TABLE `pessoas`
  ADD PRIMARY KEY (`pescod`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `dadospessoa`
--
ALTER TABLE `dadospessoa`
  MODIFY `dadcod` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `pessoas`
--
ALTER TABLE `pessoas`
  MODIFY `pescod` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `dadospessoa`
--
ALTER TABLE `dadospessoa`
  ADD CONSTRAINT `fkdadpescod` FOREIGN KEY (`dadpescod`) REFERENCES `pessoas` (`pescod`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
