-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 24/09/2025 às 18:32
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
-- Banco de dados: `'departamento'`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `departamento`
--

CREATE TABLE `departamento` (
  `id_departamento` int(11) NOT NULL,
  `nome_departamento` varchar(100) DEFAULT NULL,
  `desricao` varchar(200) DEFAULT NULL,
  `localizacao` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `departamento`
--

INSERT INTO `departamento` (`id_departamento`, `nome_departamento`, `desricao`, `localizacao`) VALUES
(1, 'Techsolutions', 'Foco em tecnologia, IA, e suporte', 'SP'),
(2, 'Techsolutions', 'Foco em tecnologia, IA, e suporte', 'SP'),
(3, 'Techsolutions', 'Foco em tecnologia, IA, e suporte', 'SP'),
(4, 'Techsolutions', 'Foco em tecnologia, IA, e suporte', 'SP'),
(5, 'Techsolutions', 'Foco em tecnologia, IA, e suporte', 'SP');

-- --------------------------------------------------------

--
-- Estrutura para tabela `funcionario`
--

CREATE TABLE `funcionario` (
  `id_funcionario` int(11) NOT NULL,
  `id_treinamento` int(11) DEFAULT NULL,
  `id_departamento` int(11) DEFAULT NULL,
  `nome` varchar(100) DEFAULT NULL,
  `CPF` varchar(10) DEFAULT NULL,
  `data_admissao` date DEFAULT NULL,
  `cargo` varchar(100) DEFAULT NULL,
  `desricao` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `funcionario`
--

INSERT INTO `funcionario` (`id_funcionario`, `id_treinamento`, `id_departamento`, `nome`, `CPF`, `data_admissao`, `cargo`, `desricao`) VALUES
(1, NULL, NULL, 'ana', '832687423', '0000-00-00', 'Programador', 'ana pode participar do treinamento A para proramadores no Bloco A'),
(2, NULL, NULL, 'carlos', '724519829', '0000-00-00', 'Tecnica', 'carlos pode participar do treinamento B para tecnicos no Bloco B'),
(3, NULL, NULL, 'rita', '628472091', '2014-05-31', 'Vendedora', 'rita pode participar do treinamento C para vendedores no Bloco C'),
(4, NULL, NULL, 'jairo', '237193450', '0000-00-00', 'designer', 'jairo pode participar do treinamento B para designer no Bloco B'),
(5, NULL, NULL, 'jose', '921927636', '2018-03-31', 'empresaria', 'Jose pode participar do treinamento A para empresaria no Bloco A');

-- --------------------------------------------------------

--
-- Estrutura para tabela `treinamento`
--

CREATE TABLE `treinamento` (
  `id_treinamento` int(11) NOT NULL,
  `titulo` varchar(100) DEFAULT NULL,
  `data_treinamento` varchar(100) DEFAULT NULL,
  `carga_horaria` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `treinamento`
--

INSERT INTO `treinamento` (`id_treinamento`, `titulo`, `data_treinamento`, `carga_horaria`) VALUES
(1, 'A', '2014-04-31', '10h'),
(2, 'B', '2014-04-31', '11h'),
(3, 'C', '2014-05-31', '6h'),
(4, 'B', '2016-06-31', '5h'),
(5, 'A', '2018-03-31', '12h');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
