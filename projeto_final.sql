-- --------------------------------------------------------
-- Servidor:                     127.0.0.1
-- Versão do servidor:           8.4.3 - MySQL Community Server - GPL
-- OS do Servidor:               Win64
-- HeidiSQL Versão:              12.8.0.6908
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Copiando estrutura do banco de dados para producao
CREATE DATABASE IF NOT EXISTS `producao` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `producao`;

-- Copiando estrutura para tabela producao.clientes
CREATE TABLE IF NOT EXISTS `clientes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `cpf_cnpj` varchar(18) NOT NULL,
  `rua` varchar(255) DEFAULT NULL,
  `telefone` varchar(100) NOT NULL,
  `numero` varchar(50) DEFAULT NULL,
  `bairro` varchar(100) DEFAULT NULL,
  `cep` varchar(10) DEFAULT NULL,
  `referencia` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Copiando dados para a tabela producao.clientes: ~100 rows (aproximadamente)
INSERT INTO `clientes` (`id`, `nome`, `cpf_cnpj`, `rua`, `telefone`, `numero`, `bairro`, `cep`, `referencia`) VALUES
	(1, 'Ana Souza', '123.456.789-01', 'Rua das Flores', '(48) 99911-2233', '120', 'Centro', '88010-100', 'Próximo à praça'),
	(2, 'Bruno Oliveira', '234.567.890-02', 'Rua Brasil', '(48) 99822-3344', '250', 'Trindade', '88036-200', 'Ao lado da escola'),
	(3, 'Carla Santos', '345.678.901-03', 'Rua das Palmeiras', '(48) 99733-4455', '85', 'Itacorubi', '88034-300', 'Em frente ao mercado'),
	(4, 'Daniel Pereira', '456.789.012-04', 'Rua do Comércio', '(48) 99644-5566', '410', 'Estreito', '88075-400', 'Próximo à farmácia'),
	(5, 'Eduarda Lima', '567.890.123-05', 'Rua Central', '(48) 99555-6677', '32', 'Coqueiros', '88080-500', 'Casa azul'),
	(6, 'Felipe Martins', '678.901.234-06', 'Rua das Acácias', '(48) 99466-7788', '175', 'Campeche', '88063-600', 'Próximo à praia'),
	(7, 'Gabriela Costa', '789.012.345-07', 'Rua dos Ipês', '(48) 99377-8899', '90', 'Lagoa', '88062-700', 'Perto do posto'),
	(8, 'Henrique Alves', '890.123.456-08', 'Rua São João', '(48) 99288-9900', '215', 'Saco dos Limões', '88045-800', 'Próximo à igreja'),
	(9, 'Isabela Costa', '901.234.567-09', 'Rua das Acácias', '(48) 99655-1100', '145', 'Centro', '88010-110', 'Próximo ao banco'),
	(10, 'João Pereira', '012.345.678-10', 'Rua do Sol', '(48) 99544-2211', '320', 'Estreito', '88075-410', 'Perto da escola'),
	(11, 'Larissa Martins', '123.456.789-11', 'Rua das Orquídeas', '(48) 99433-3322', '78', 'Coqueiros', '88080-510', 'Ao lado da farmácia'),
	(12, 'Marcos Silva', '234.567.890-12', 'Rua Florianópolis', '(48) 99322-4433', '215', 'Capoeiras', '88070-520', 'Próximo ao mercado'),
	(13, 'Juliana Alves', '345.678.901-13', 'Rua São Pedro', '(48) 99211-5544', '430', 'Campinas', '88101-530', 'Em frente à praça'),
	(14, 'Pedro Henrique', '456.789.012-14', 'Rua da Paz', '(48) 99100-6655', '56', 'Barreiros', '88110-540', 'Perto da igreja'),
	(15, 'Mariana Rocha', '567.890.123-15', 'Rua João Paulo', '(48) 99099-7766', '190', 'Itaguaçu', '88085-550', 'Próximo ao parque'),
	(16, 'Lucas Ferreira', '678.901.234-16', 'Rua das Palmeiras', '(48) 98988-8877', '275', 'Abraão', '88085-560', 'Ao lado do mercado'),
	(17, 'Beatriz Gomes', '789.012.345-17', 'Rua Central', '(48) 98877-9988', '102', 'Agronômica', '88025-570', 'Próximo ao colégio'),
	(18, 'Rafael Mendes', '890.123.456-18', 'Rua das Flores', '(48) 98766-1099', '360', 'Saco dos Limões', '88045-580', 'Perto do posto'),
	(19, 'Camila Rodrigues', '901.234.567-19', 'Rua Santa Catarina', '(48) 98655-2100', '88', 'Córrego Grande', '88037-590', 'Em frente à praça'),
	(20, 'Gabriel Lima', '012.345.678-20', 'Rua do Comércio', '(48) 98544-3211', '415', 'Trindade', '88040-600', 'Próximo à universidade'),
	(21, 'Amanda Souza', '123.456.789-21', 'Rua das Palmeiras', '(48) 98433-4322', '225', 'Itacorubi', '88034-610', 'Ao lado da padaria'),
	(22, 'Thiago Oliveira', '234.567.890-22', 'Rua São José', '(48) 98322-5433', '67', 'Pantanal', '88040-620', 'Perto da escola'),
	(23, 'Fernanda Santos', '345.678.901-23', 'Rua do Bosque', '(48) 98211-6544', '178', 'Carvoeira', '88040-630', 'Próximo ao parque'),
	(24, 'Gustavo Almeida', '456.789.012-24', 'Rua das Hortênsias', '(48) 98100-7655', '290', 'Lagoa', '88062-640', 'Em frente ao mercado'),
	(25, 'Letícia Barbosa', '567.890.123-25', 'Rua das Gaivotas', '(48) 98099-8766', '145', 'Ingleses', '88058-650', 'Próximo à praia'),
	(26, 'Diego Carvalho', '678.901.234-26', 'Rua do Mar', '(48) 97988-9877', '510', 'Canasvieiras', '88054-660', 'Ao lado do hotel'),
	(27, 'Patrícia Ribeiro', '789.012.345-27', 'Rua das Conchas', '(48) 97877-0988', '75', 'Jurerê', '88053-670', 'Perto da praia'),
	(28, 'Eduardo Martins', '890.123.456-28', 'Rua dos Pinheiros', '(48) 97766-1099', '330', 'Rio Tavares', '88048-680', 'Próximo ao supermercado'),
	(29, 'Bianca Castro', '901.234.567-29', 'Rua das Palmeiras', '(48) 97655-2100', '112', 'Campeche', '88063-690', 'Perto do posto'),
	(30, 'André Costa', '012.345.678-30', 'Rua do Lago', '(48) 97544-3211', '245', 'Lagoa da Conceição', '88062-700', 'Próximo à praça'),
	(31, 'Carolina Freitas', '123.456.789-31', 'Rua das Rosas', '(48) 97433-4322', '98', 'Cacupé', '88050-710', 'Ao lado da igreja'),
	(32, 'Matheus Nunes', '234.567.890-32', 'Rua do Norte', '(48) 97322-5433', '420', 'Santo Antônio', '88050-720', 'Perto da escola'),
	(33, 'Sabrina Lopes', '345.678.901-33', 'Rua da Praia', '(48) 97211-6544', '160', 'Daniela', '88053-730', 'Em frente ao mar'),
	(34, 'Vinícius Ramos', '456.789.012-34', 'Rua dos Coqueiros', '(48) 97100-7655', '285', 'Jurerê', '88053-740', 'Próximo ao comércio'),
	(35, 'Nicole Martins', '567.890.123-35', 'Rua das Palmeiras', '(48) 97099-8766', '52', 'Canasvieiras', '88054-750', 'Ao lado da farmácia'),
	(36, 'Henrique Souza', '678.901.234-36', 'Rua do Sol', '(48) 96988-9877', '370', 'Ingleses', '88058-760', 'Perto do mercado'),
	(37, 'Luana Ferreira', '789.012.345-37', 'Rua das Acácias', '(48) 96877-0988', '119', 'Santinho', '88058-770', 'Próximo à praia'),
	(38, 'Felipe Rodrigues', '890.123.456-38', 'Rua do Farol', '(48) 96766-1099', '440', 'Barra da Lagoa', '88061-780', 'Perto do canal'),
	(39, 'Aline Mendes', '901.234.567-39', 'Rua das Dunas', '(48) 96655-2100', '205', 'Campeche', '88063-790', 'Próximo à praia'),
	(40, 'Bruno Carvalho', '012.345.678-40', 'Rua das Pedras', '(48) 96544-3211', '83', 'Armação', '88066-800', 'Ao lado da praça'),
	(41, 'Isadora Lima', '123.456.789-41', 'Rua do Ribeirão', '(48) 96433-4322', '315', 'Ribeirão da Ilha', '88064-810', 'Perto da igreja'),
	(42, 'Caio Almeida', '234.567.890-42', 'Rua das Palmeiras', '(48) 96322-5433', '140', 'Pântano do Sul', '88067-820', 'Próximo ao mercado'),
	(43, 'Manuela Costa', '345.678.901-43', 'Rua da Enseada', '(48) 96211-6544', '225', 'Cacupé', '88050-830', 'Em frente à praia'),
	(44, 'Leonardo Silva', '456.789.012-44', 'Rua do Comércio', '(48) 96100-7655', '390', 'Centro', '88010-840', 'Próximo à prefeitura'),
	(45, 'Vitória Gomes', '567.890.123-45', 'Rua Felipe Schmidt', '(48) 96099-8766', '72', 'Centro', '88010-850', 'Perto do shopping'),
	(46, 'Samuel Pereira', '678.901.234-46', 'Rua Bocaiúva', '(48) 95988-9877', '510', 'Centro', '88015-860', 'Ao lado da praça'),
	(47, 'Alice Martins', '789.012.345-47', 'Rua Almirante Lamego', '(48) 95877-0988', '188', 'Centro', '88015-870', 'Próximo ao hotel'),
	(48, 'Daniel Costa', '890.123.456-48', 'Rua Mauro Ramos', '(48) 95766-1099', '265', 'Centro', '88020-880', 'Perto do supermercado'),
	(49, 'Clara Oliveira', '901.234.567-49', 'Rua Vidal Ramos', '(48) 95655-2100', '105', 'Centro', '88020-890', 'Em frente à loja'),
	(50, 'Rodrigo Santos', '012.345.678-50', 'Rua Tenente Silveira', '(48) 95544-3211', '340', 'Centro', '88010-900', 'Próximo ao banco'),
	(51, 'Helena Ribeiro', '123.456.789-51', 'Rua dos Ilhéus', '(48) 95433-4322', '95', 'Centro', '88010-910', 'Perto da praça'),
	(52, 'Miguel Rocha', '234.567.890-52', 'Rua Antônio Luz', '(48) 95322-5433', '210', 'Centro', '88010-920', 'Ao lado da farmácia'),
	(53, 'Laura Fernandes', '345.678.901-53', 'Rua Osmar Cunha', '(48) 95211-6544', '430', 'Centro', '88015-930', 'Perto do comércio'),
	(54, 'Guilherme Alves', '456.789.012-54', 'Rua Esteves Júnior', '(48) 95100-7655', '155', 'Centro', '88015-940', 'Próximo à escola'),
	(55, 'Cecília Ramos', '567.890.123-55', 'Rua Almirante Barroso', '(48) 95099-8766', '275', 'Centro', '88015-950', 'Em frente ao mercado'),
	(56, 'Arthur Mendes', '678.901.234-56', 'Rua Anita Garibaldi', '(48) 94988-9877', '360', 'Centro', '88010-960', 'Próximo ao banco'),
	(57, 'Sophia Castro', '789.012.345-57', 'Rua Jerônimo Coelho', '(48) 94877-0988', '120', 'Centro', '88010-970', 'Perto da igreja'),
	(58, 'João Gabriel', '890.123.456-58', 'Rua Deodoro', '(48) 94766-1099', '205', 'Centro', '88010-980', 'Ao lado da praça'),
	(59, 'Maria Eduarda', '901.234.567-59', 'Rua Felipe Schmidt', '(48) 94655-2100', '480', 'Centro', '88010-990', 'Próximo ao shopping'),
	(60, 'Enzo Martins', '012.345.678-60', 'Rua Bocaiúva', '(48) 94544-3211', '315', 'Centro', '88015-100', 'Perto do restaurante'),
	(61, 'Valentina Souza', '123.456.789-61', 'Rua das Flores', '(48) 94433-4322', '65', 'Centro', '88010-120', 'Próximo à praça'),
	(62, 'Lucas Gabriel', '234.567.890-62', 'Rua Brasil', '(48) 94322-5433', '240', 'Trindade', '88036-130', 'Ao lado da escola'),
	(63, 'Ana Clara', '345.678.901-63', 'Rua das Palmeiras', '(48) 94211-6544', '175', 'Itacorubi', '88034-140', 'Perto do mercado'),
	(64, 'Pedro Lucas', '456.789.012-64', 'Rua do Comércio', '(48) 94100-7655', '305', 'Estreito', '88075-150', 'Próximo à farmácia'),
	(65, 'Lívia Santos', '567.890.123-65', 'Rua Central', '(48) 94099-8766', '90', 'Coqueiros', '88080-160', 'Em frente à praça'),
	(66, 'Davi Oliveira', '678.901.234-66', 'Rua das Acácias', '(48) 93988-9877', '410', 'Campinas', '88101-170', 'Perto da igreja'),
	(67, 'Yasmin Costa', '789.012.345-67', 'Rua São Pedro', '(48) 93877-0988', '135', 'Barreiros', '88110-180', 'Próximo ao posto'),
	(68, 'Gustavo Henrique', '890.123.456-68', 'Rua da Paz', '(48) 93766-1099', '260', 'Itaguaçu', '88085-190', 'Ao lado do parque'),
	(69, 'Melissa Ferreira', '901.234.567-69', 'Rua João Paulo', '(48) 93655-2100', '345', 'Abraão', '88085-200', 'Perto do mercado'),
	(70, 'Bernardo Silva', '012.345.678-70', 'Rua Central', '(48) 93544-3211', '115', 'Agronômica', '88025-210', 'Próximo ao colégio'),
	(71, 'Emanuelly Gomes', '123.456.789-71', 'Rua das Flores', '(48) 93433-4322', '280', 'Saco dos Limões', '88045-220', 'Perto do posto'),
	(72, 'Nicolas Ramos', '234.567.890-72', 'Rua Santa Catarina', '(48) 93322-5433', '55', 'Córrego Grande', '88037-230', 'Em frente à praça'),
	(73, 'Lorena Lopes', '345.678.901-73', 'Rua do Comércio', '(48) 93211-6544', '390', 'Trindade', '88040-240', 'Próximo à universidade'),
	(74, 'Anthony Ribeiro', '456.789.012-74', 'Rua das Palmeiras', '(48) 93100-7655', '170', 'Pantanal', '88040-250', 'Ao lado da padaria'),
	(75, 'Rebeca Martins', '567.890.123-75', 'Rua São José', '(48) 93099-8766', '225', 'Carvoeira', '88040-260', 'Perto da escola'),
	(76, 'Murilo Santos', '678.901.234-76', 'Rua do Bosque', '(48) 92988-9877', '80', 'Lagoa', '88062-270', 'Próximo ao parque'),
	(77, 'Esther Almeida', '789.012.345-77', 'Rua das Hortênsias', '(48) 92877-0988', '310', 'Ingleses', '88058-280', 'Em frente ao mercado'),
	(78, 'Vicente Carvalho', '890.123.456-78', 'Rua das Gaivotas', '(48) 92766-1099', '145', 'Canasvieiras', '88054-290', 'Próximo à praia'),
	(79, 'Isis Rodrigues', '901.234.567-79', 'Rua do Mar', '(48) 92655-2100', '250', 'Jurerê', '88053-300', 'Ao lado do hotel'),
	(80, 'Heitor Fernandes', '012.345.678-80', 'Rua das Conchas', '(48) 92544-3211', '95', 'Rio Tavares', '88048-310', 'Perto da praia'),
	(81, 'Maya Costa', '123.456.789-81', 'Rua dos Pinheiros', '(48) 92433-4322', '420', 'Campeche', '88063-320', 'Próximo ao supermercado'),
	(82, 'Joaquim Souza', '234.567.890-82', 'Rua das Pedras', '(48) 92322-5433', '165', 'Armação', '88066-330', 'Perto do posto'),
	(83, 'Elisa Oliveira', '345.678.901-83', 'Rua do Ribeirão', '(48) 92211-6544', '275', 'Ribeirão da Ilha', '88064-340', 'Próximo à igreja'),
	(84, 'Cauã Pereira', '456.789.012-84', 'Rua das Palmeiras', '(48) 92100-7655', '110', 'Pântano do Sul', '88067-350', 'Ao lado do mercado'),
	(85, 'Agatha Lima', '567.890.123-85', 'Rua da Enseada', '(48) 92099-8766', '335', 'Cacupé', '88050-360', 'Em frente à praia'),
	(86, 'Tomás Martins', '678.901.234-86', 'Rua do Comércio', '(48) 91988-9877', '190', 'Centro', '88010-370', 'Próximo à prefeitura'),
	(87, 'Alice Vitória', '789.012.345-87', 'Rua Felipe Schmidt', '(48) 91877-0988', '270', 'Centro', '88010-380', 'Perto do shopping'),
	(88, 'Ruan Gabriel', '890.123.456-88', 'Rua Bocaiúva', '(48) 91766-1099', '405', 'Centro', '88015-390', 'Ao lado da praça'),
	(89, 'Maria Vitória', '901.234.567-89', 'Rua Almirante Lamego', '(48) 91655-2100', '150', 'Centro', '88015-400', 'Próximo ao hotel'),
	(90, 'Nathan Silva', '012.345.678-90', 'Rua Mauro Ramos', '(48) 91544-3211', '325', 'Centro', '88020-410', 'Perto do supermercado'),
	(91, 'Sarah Mendes', '123.456.789-91', 'Rua Vidal Ramos', '(48) 91433-4322', '70', 'Centro', '88020-420', 'Em frente à loja'),
	(92, 'Yuri Castro', '234.567.890-92', 'Rua Tenente Silveira', '(48) 91322-5433', '245', 'Centro', '88010-430', 'Próximo ao banco'),
	(93, 'Ana Beatriz', '345.678.901-93', 'Rua dos Ilhéus', '(48) 91211-6544', '380', 'Centro', '88010-440', 'Perto da praça'),
	(94, 'Rafael Augusto', '456.789.012-94', 'Rua Antônio Luz', '(48) 91100-7655', '115', 'Centro', '88010-450', 'Ao lado da farmácia'),
	(95, 'Luiza Helena', '567.890.123-95', 'Rua Osmar Cunha', '(48) 91099-8766', '290', 'Centro', '88015-460', 'Perto do comércio'),
	(96, 'Matheus Gabriel', '678.901.234-96', 'Rua Esteves Júnior', '(48) 90988-9877', '430', 'Centro', '88015-470', 'Próximo à escola'),
	(97, 'Clara Sofia', '789.012.345-97', 'Rua Almirante Barroso', '(48) 90877-0988', '180', 'Centro', '88015-480', 'Em frente ao mercado'),
	(98, 'João Victor', '890.123.456-98', 'Rua Anita Garibaldi', '(48) 90766-1099', '350', 'Centro', '88010-490', 'Próximo ao banco'),
	(99, 'Marina Lopes', '901.234.567-99', 'Rua Jerônimo Coelho', '(48) 90655-2100', '125', 'Centro', '88010-500', 'Perto da igreja'),
	(100, 'Daniel Henrique', '012.345.678-00', 'Rua Deodoro', '(48) 90544-3211', '215', 'Centro', '88010-510', 'Ao lado da praça');

-- Copiando estrutura para tabela producao.compras
CREATE TABLE IF NOT EXISTS `compras` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_fornecedor` int NOT NULL,
  `id_produtos` int NOT NULL,
  `quantidade` int NOT NULL,
  `codigo` varchar(20) NOT NULL,
  `data_compra` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Copiando dados para a tabela producao.compras: ~100 rows (aproximadamente)
INSERT INTO `compras` (`id`, `id_fornecedor`, `id_produtos`, `quantidade`, `codigo`, `data_compra`) VALUES
	(1, 1, 1, 30, 'NF001', '2026-08-01 09:00:00'),
	(2, 2, 2, 50, 'NF002', '2026-08-03 10:30:00'),
	(3, 3, 3, 40, 'NF003', '2026-08-05 08:45:00'),
	(4, 1, 4, 25, 'NF004', '2026-08-07 14:00:00'),
	(5, 4, 5, 80, 'NF005', '2026-08-10 09:15:00'),
	(6, 5, 6, 35, 'NF006', '2026-08-12 11:00:00'),
	(7, 2, 7, 45, 'NF007', '2026-08-15 13:30:00'),
	(8, 3, 8, 20, 'NF008', '2026-08-18 10:00:00'),
	(9, 4, 9, 30, 'NF009', '2026-08-20 15:00:00'),
	(10, 5, 10, 60, 'NF010', '2026-08-22 09:30:00'),
	(11, 1, 2, 40, 'NF011', '2026-08-25 10:00:00'),
	(12, 2, 4, 25, 'NF012', '2026-08-26 14:30:00'),
	(13, 3, 6, 70, 'NF013', '2026-08-27 09:15:00'),
	(14, 4, 8, 35, 'NF014', '2026-08-28 16:00:00'),
	(15, 5, 10, 55, 'NF015', '2026-08-29 11:20:00'),
	(16, 1, 3, 80, 'NF016', '2026-08-30 08:45:00'),
	(17, 2, 5, 45, 'NF017', '2026-09-01 13:10:00'),
	(18, 3, 7, 30, 'NF018', '2026-09-02 10:40:00'),
	(19, 4, 9, 65, 'NF019', '2026-09-03 15:25:00'),
	(20, 5, 1, 20, 'NF020', '2026-09-04 09:50:00'),
	(21, 1, 4, 50, 'NF021', '2026-09-05 14:15:00'),
	(22, 2, 6, 35, 'NF022', '2026-09-06 11:30:00'),
	(23, 3, 8, 90, 'NF023', '2026-09-07 08:20:00'),
	(24, 4, 10, 45, 'NF024', '2026-09-08 16:45:00'),
	(25, 5, 2, 60, 'NF025', '2026-09-09 10:10:00'),
	(26, 1, 5, 25, 'NF026', '2026-09-10 13:35:00'),
	(27, 2, 7, 75, 'NF027', '2026-09-11 09:05:00'),
	(28, 3, 9, 40, 'NF028', '2026-09-12 15:50:00'),
	(29, 4, 1, 55, 'NF029', '2026-09-13 11:15:00'),
	(30, 5, 3, 30, 'NF030', '2026-09-14 08:30:00'),
	(31, 1, 6, 85, 'NF031', '2026-09-15 14:00:00'),
	(32, 2, 8, 50, 'NF032', '2026-09-16 10:25:00'),
	(33, 3, 10, 35, 'NF033', '2026-09-17 16:20:00'),
	(34, 4, 2, 70, 'NF034', '2026-09-18 09:45:00'),
	(35, 5, 4, 45, 'NF035', '2026-09-19 13:00:00'),
	(36, 1, 7, 60, 'NF036', '2026-09-20 11:40:00'),
	(37, 2, 9, 30, 'NF037', '2026-09-21 08:55:00'),
	(38, 3, 1, 95, 'NF038', '2026-09-22 15:10:00'),
	(39, 4, 3, 40, 'NF039', '2026-09-23 10:35:00'),
	(40, 5, 5, 55, 'NF040', '2026-09-24 14:50:00'),
	(41, 1, 8, 65, 'NF041', '2026-09-25 09:20:00'),
	(42, 2, 10, 25, 'NF042', '2026-09-26 16:05:00'),
	(43, 3, 2, 80, 'NF043', '2026-09-27 11:55:00'),
	(44, 4, 4, 35, 'NF044', '2026-09-28 13:25:00'),
	(45, 5, 6, 50, 'NF045', '2026-09-29 08:40:00'),
	(46, 1, 9, 75, 'NF046', '2026-09-30 15:30:00'),
	(47, 2, 1, 40, 'NF047', '2026-10-01 10:15:00'),
	(48, 3, 3, 60, 'NF048', '2026-10-02 14:40:00'),
	(49, 4, 5, 30, 'NF049', '2026-10-03 09:35:00'),
	(50, 5, 7, 85, 'NF050', '2026-10-04 16:10:00'),
	(51, 1, 10, 45, 'NF051', '2026-10-05 11:05:00'),
	(52, 2, 2, 55, 'NF052', '2026-10-06 13:45:00'),
	(53, 3, 4, 70, 'NF053', '2026-10-07 08:25:00'),
	(54, 4, 6, 35, 'NF054', '2026-10-08 15:55:00'),
	(55, 5, 8, 90, 'NF055', '2026-10-09 10:50:00'),
	(56, 1, 1, 25, 'NF056', '2026-10-10 14:20:00'),
	(57, 2, 3, 50, 'NF057', '2026-10-11 09:10:00'),
	(58, 3, 5, 65, 'NF058', '2026-10-12 16:30:00'),
	(59, 4, 7, 40, 'NF059', '2026-10-13 11:35:00'),
	(60, 5, 9, 75, 'NF060', '2026-10-14 08:50:00'),
	(61, 1, 2, 30, 'NF061', '2026-10-15 13:15:00'),
	(62, 2, 4, 55, 'NF062', '2026-10-15 15:05:00'),
	(63, 3, 6, 80, 'NF063', '2026-10-15 16:00:00'),
	(64, 4, 8, 45, 'NF064', '2026-10-15 16:20:00'),
	(65, 5, 10, 60, 'NF065', '2026-10-15 16:40:00'),
	(66, 1, 3, 35, 'NF066', '2026-10-15 17:00:00'),
	(67, 2, 5, 70, 'NF067', '2026-10-15 17:20:00'),
	(68, 3, 7, 50, 'NF068', '2026-10-15 17:40:00'),
	(69, 4, 9, 25, 'NF069', '2026-10-15 18:00:00'),
	(70, 5, 1, 85, 'NF070', '2026-10-15 18:20:00'),
	(71, 1, 4, 40, 'NF071', '2026-10-16 09:30:00'),
	(72, 2, 6, 65, 'NF072', '2026-10-16 10:15:00'),
	(73, 3, 8, 30, 'NF073', '2026-10-16 11:10:00'),
	(74, 4, 10, 75, 'NF074', '2026-10-16 12:45:00'),
	(75, 5, 2, 45, 'NF075', '2026-10-16 13:35:00'),
	(76, 1, 5, 55, 'NF076', '2026-10-16 14:15:00'),
	(77, 2, 7, 90, 'NF077', '2026-10-16 15:20:00'),
	(78, 3, 9, 35, 'NF078', '2026-10-16 16:00:00'),
	(79, 4, 1, 60, 'NF079', '2026-10-17 09:55:00'),
	(80, 5, 3, 50, 'NF080', '2026-10-17 10:30:00'),
	(81, 1, 6, 75, 'NF081', '2026-10-17 11:25:00'),
	(82, 2, 8, 40, 'NF082', '2026-10-17 12:10:00'),
	(83, 3, 10, 65, 'NF083', '2026-10-17 13:45:00'),
	(84, 4, 2, 30, 'NF084', '2026-10-17 14:35:00'),
	(85, 5, 4, 85, 'NF085', '2026-10-17 15:20:00'),
	(86, 1, 7, 45, 'NF086', '2026-10-18 09:40:00'),
	(87, 2, 9, 70, 'NF087', '2026-10-18 10:25:00'),
	(88, 3, 1, 55, 'NF088', '2026-10-18 11:15:00'),
	(89, 4, 3, 35, 'NF089', '2026-10-18 13:30:00'),
	(90, 5, 5, 90, 'NF090', '2026-10-18 14:20:00'),
	(91, 1, 8, 50, 'NF091', '2026-10-19 09:25:00'),
	(92, 2, 10, 25, 'NF092', '2026-10-19 10:40:00'),
	(93, 3, 2, 80, 'NF093', '2026-10-19 11:50:00'),
	(94, 4, 4, 40, 'NF094', '2026-10-19 13:15:00'),
	(95, 5, 6, 65, 'NF095', '2026-10-19 14:30:00'),
	(96, 1, 9, 30, 'NF096', '2026-10-20 09:10:00'),
	(97, 2, 1, 75, 'NF097', '2026-10-20 10:35:00'),
	(98, 3, 3, 45, 'NF098', '2026-10-20 13:05:00'),
	(99, 4, 5, 60, 'NF099', '2026-10-20 14:15:00'),
	(100, 5, 7, 85, 'NF100', '2026-10-20 15:30:00');

-- Copiando estrutura para tabela producao.fornecedores
CREATE TABLE IF NOT EXISTS `fornecedores` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) NOT NULL,
  `cpf_cnpj` varchar(18) NOT NULL,
  `rua` varchar(255) DEFAULT NULL,
  `numero` varchar(50) DEFAULT NULL,
  `bairro` varchar(100) DEFAULT NULL,
  `cep` varchar(10) DEFAULT NULL,
  `telefone` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Copiando dados para a tabela producao.fornecedores: ~100 rows (aproximadamente)
INSERT INTO `fornecedores` (`id`, `nome`, `cpf_cnpj`, `rua`, `numero`, `bairro`, `cep`, `telefone`) VALUES
	(1, 'Distribuidora Brasil Ltda', '12.345.678/0001-01', 'Rua Industrial', '100', 'Centro', '88010-010', '(48) 3333-1111'),
	(2, 'Alimentos Sul Ltda', '23.456.789/0001-02', 'Rua das Indústrias', '250', 'Estreito', '88075-020', '(48) 3333-2222'),
	(3, 'Mercantil Catarinense', '34.567.890/0001-03', 'Rua Comercial', '450', 'Itacorubi', '88034-030', '(48) 3333-3333'),
	(4, 'Atacadão dos Alimentos', '45.678.901/0001-04', 'Avenida Brasil', '700', 'Trindade', '88036-040', '(48) 3333-4444'),
	(5, 'Sul Distribuidora', '56.789.012/0001-05', 'Rua Central', '85', 'Coqueiros', '88080-050', '(48) 3333-5555'),
	(6, 'Norte Distribuidora Ltda', '67.890.123/0001-06', 'Rua das Flores', '120', 'Centro', '88010-060', '(48) 3333-6666'),
	(7, 'Comercial Sul Ltda', '78.901.234/0001-07', 'Rua Brasil', '310', 'Trindade', '88036-070', '(48) 3333-7777'),
	(8, 'Distribuidora Central', '89.012.345/0001-08', 'Rua das Palmeiras', '225', 'Itacorubi', '88034-080', '(48) 3333-8888'),
	(9, 'Mercado do Vale Ltda', '90.123.456/0001-09', 'Rua São José', '415', 'Estreito', '88075-090', '(48) 3333-9999'),
	(10, 'Atacado Popular Ltda', '01.234.567/0001-10', 'Rua Central', '95', 'Coqueiros', '88080-100', '(48) 3344-1010'),
	(11, 'Comercial Primavera', '12.345.678/0001-11', 'Rua das Acácias', '180', 'Campinas', '88101-110', '(48) 3344-1111'),
	(12, 'Distribuidora Oeste', '23.456.789/0001-12', 'Rua da Paz', '260', 'Barreiros', '88110-120', '(48) 3344-1212'),
	(13, 'Alimentos Boa Mesa', '34.567.890/0001-13', 'Rua João Paulo', '350', 'Itaguaçu', '88085-130', '(48) 3344-1313'),
	(14, 'Comercial São Pedro', '45.678.901/0001-14', 'Rua Central', '145', 'Agronômica', '88025-140', '(48) 3344-1414'),
	(15, 'Sul Alimentos Ltda', '56.789.012/0001-15', 'Rua das Flores', '290', 'Saco dos Limões', '88045-150', '(48) 3344-1515'),
	(16, 'Distribuidora Catarinense', '67.890.123/0001-16', 'Rua Santa Catarina', '105', 'Córrego Grande', '88037-160', '(48) 3344-1616'),
	(17, 'Mercantil Floripa Ltda', '78.901.234/0001-17', 'Rua do Comércio', '430', 'Trindade', '88040-170', '(48) 3344-1717'),
	(18, 'Atacadão do Sul', '89.012.345/0001-18', 'Rua das Palmeiras', '210', 'Pantanal', '88040-180', '(48) 3344-1818'),
	(19, 'Comercial Santa Luzia', '90.123.456/0001-19', 'Rua São João', '75', 'Carvoeira', '88040-190', '(48) 3344-1919'),
	(20, 'Distribuidora Campeche', '01.234.567/0001-20', 'Rua das Dunas', '315', 'Campeche', '88063-200', '(48) 3344-2020'),
	(21, 'Mercado Ilha Ltda', '12.345.678/0001-21', 'Rua do Mar', '160', 'Canasvieiras', '88054-210', '(48) 3344-2121'),
	(22, 'Atacado Jurerê', '23.456.789/0001-22', 'Rua das Conchas', '280', 'Jurerê', '88053-220', '(48) 3344-2222'),
	(23, 'Comercial Lagoa', '34.567.890/0001-23', 'Rua do Lago', '95', 'Lagoa', '88062-230', '(48) 3344-2323'),
	(24, 'Distribuidora Norte Sul', '45.678.901/0001-24', 'Rua dos Coqueiros', '370', 'Ingleses', '88058-240', '(48) 3344-2424'),
	(25, 'Alimentos Estrela', '56.789.012/0001-25', 'Rua das Gaivotas', '125', 'Ingleses', '88058-250', '(48) 3344-2525'),
	(26, 'Comercial Primavera Ltda', '67.890.123/0001-26', 'Rua das Rosas', '240', 'Centro', '88010-260', '(48) 3344-2626'),
	(27, 'Distribuidora Boa Compra', '78.901.234/0001-27', 'Rua do Sol', '180', 'Centro', '88010-270', '(48) 3344-2727'),
	(28, 'Atacado Brasil', '89.012.345/0001-28', 'Rua Brasil', '320', 'Trindade', '88036-280', '(48) 3344-2828'),
	(29, 'Mercantil Costa Azul', '90.123.456/0001-29', 'Rua da Praia', '450', 'Barra da Lagoa', '88061-290', '(48) 3344-2929'),
	(30, 'Distribuidora Imperial', '01.234.567/0001-30', 'Rua do Comércio', '210', 'Estreito', '88075-300', '(48) 3344-3030'),
	(31, 'Comercial Horizonte', '12.345.678/0001-31', 'Rua Central', '88', 'Coqueiros', '88080-310', '(48) 3344-3131'),
	(32, 'Alimentos Sabor Sul', '23.456.789/0001-32', 'Rua das Hortênsias', '275', 'Lagoa', '88062-320', '(48) 3344-3232'),
	(33, 'Distribuidora Real', '34.567.890/0001-33', 'Rua das Acácias', '390', 'Agronômica', '88025-330', '(48) 3344-3333'),
	(34, 'Atacado Econômico', '45.678.901/0001-34', 'Rua da Paz', '140', 'Abraão', '88085-340', '(48) 3344-3434'),
	(35, 'Mercado União Ltda', '56.789.012/0001-35', 'Rua São Pedro', '225', 'Barreiros', '88110-350', '(48) 3344-3535'),
	(36, 'Distribuidora Vale Verde', '67.890.123/0001-36', 'Rua do Bosque', '310', 'Carvoeira', '88040-360', '(48) 3344-3636'),
	(37, 'Comercial Bom Preço', '78.901.234/0001-37', 'Rua das Palmeiras', '175', 'Itacorubi', '88034-370', '(48) 3344-3737'),
	(38, 'Atacado Santa Catarina', '89.012.345/0001-38', 'Rua São José', '410', 'Estreito', '88075-380', '(48) 3344-3838'),
	(39, 'Distribuidora Popular', '90.123.456/0001-39', 'Rua Central', '105', 'Centro', '88010-390', '(48) 3344-3939'),
	(40, 'Alimentos Tropical', '01.234.567/0001-40', 'Rua das Flores', '285', 'Centro', '88010-400', '(48) 3344-4040'),
	(41, 'Comercial São Lucas', '12.345.678/0001-41', 'Rua dos Pinheiros', '360', 'Campeche', '88063-410', '(48) 3344-4141'),
	(42, 'Distribuidora Atlântica', '23.456.789/0001-42', 'Rua do Mar', '150', 'Jurerê', '88053-420', '(48) 3344-4242'),
	(43, 'Mercantil Continental', '34.567.890/0001-43', 'Rua das Conchas', '275', 'Canasvieiras', '88054-430', '(48) 3344-4343'),
	(44, 'Atacado Fortaleza', '45.678.901/0001-44', 'Rua das Dunas', '190', 'Campeche', '88063-440', '(48) 3344-4444'),
	(45, 'Comercial Bela Vista', '56.789.012/0001-45', 'Rua da Enseada', '420', 'Cacupé', '88050-450', '(48) 3344-4545'),
	(46, 'Distribuidora São Jorge', '67.890.123/0001-46', 'Rua das Gaivotas', '115', 'Ingleses', '88058-460', '(48) 3344-4646'),
	(47, 'Mercado Central Ltda', '78.901.234/0001-47', 'Rua Felipe Schmidt', '330', 'Centro', '88010-470', '(48) 3344-4747'),
	(48, 'Atacadão Econômico', '89.012.345/0001-48', 'Rua Bocaiúva', '215', 'Centro', '88015-480', '(48) 3344-4848'),
	(49, 'Comercial Nacional', '90.123.456/0001-49', 'Rua Mauro Ramos', '390', 'Centro', '88020-490', '(48) 3344-4949'),
	(50, 'Distribuidora Brasil Sul', '01.234.567/0001-50', 'Rua Vidal Ramos', '145', 'Centro', '88020-500', '(48) 3344-5050'),
	(51, 'Alimentos Família', '12.345.678/0001-51', 'Rua Tenente Silveira', '275', 'Centro', '88010-510', '(48) 3344-5151'),
	(52, 'Comercial Boa Esperança', '23.456.789/0001-52', 'Rua dos Ilhéus', '180', 'Centro', '88010-520', '(48) 3344-5252'),
	(53, 'Distribuidora Imperial Sul', '34.567.890/0001-53', 'Rua Antônio Luz', '305', 'Centro', '88010-530', '(48) 3344-5353'),
	(54, 'Mercantil Boa Compra', '45.678.901/0001-54', 'Rua Osmar Cunha', '95', 'Centro', '88015-540', '(48) 3344-5454'),
	(55, 'Atacado Real Ltda', '56.789.012/0001-55', 'Rua Esteves Júnior', '440', 'Centro', '88015-550', '(48) 3344-5555'),
	(56, 'Distribuidora Nova Era', '67.890.123/0001-56', 'Rua Anita Garibaldi', '220', 'Centro', '88010-560', '(48) 3344-5656'),
	(57, 'Comercial Vitória', '78.901.234/0001-57', 'Rua Jerônimo Coelho', '135', 'Centro', '88010-570', '(48) 3344-5757'),
	(58, 'Alimentos Bom Gosto', '89.012.345/0001-58', 'Rua Deodoro', '360', 'Centro', '88010-580', '(48) 3344-5858'),
	(59, 'Distribuidora Estrela Sul', '90.123.456/0001-59', 'Rua das Flores', '205', 'Centro', '88010-590', '(48) 3344-5959'),
	(60, 'Mercantil São José', '01.234.567/0001-60', 'Rua Brasil', '280', 'Trindade', '88036-600', '(48) 3344-6060'),
	(61, 'Atacado Florianópolis', '12.345.678/0001-61', 'Rua das Palmeiras', '410', 'Itacorubi', '88034-610', '(48) 3344-6161'),
	(62, 'Comercial Ilha Bela', '23.456.789/0001-62', 'Rua São João', '160', 'Estreito', '88075-620', '(48) 3344-6262'),
	(63, 'Distribuidora Mar Azul', '34.567.890/0001-63', 'Rua do Mar', '245', 'Canasvieiras', '88054-630', '(48) 3344-6363'),
	(64, 'Alimentos Costa Sul', '45.678.901/0001-64', 'Rua das Conchas', '315', 'Jurerê', '88053-640', '(48) 3344-6464'),
	(65, 'Comercial Lago Azul', '56.789.012/0001-65', 'Rua do Lago', '125', 'Lagoa', '88062-650', '(48) 3344-6565'),
	(66, 'Distribuidora Campeche Sul', '67.890.123/0001-66', 'Rua das Dunas', '380', 'Campeche', '88063-660', '(48) 3344-6666'),
	(67, 'Atacado Praia Norte', '78.901.234/0001-67', 'Rua das Gaivotas', '95', 'Ingleses', '88058-670', '(48) 3344-6767'),
	(68, 'Mercantil do Norte', '89.012.345/0001-68', 'Rua dos Pinheiros', '230', 'Rio Tavares', '88048-680', '(48) 3344-6868'),
	(69, 'Comercial Ribeirão', '90.123.456/0001-69', 'Rua do Ribeirão', '175', 'Ribeirão da Ilha', '88064-690', '(48) 3344-6969'),
	(70, 'Distribuidora Sul Brasil', '01.234.567/0001-70', 'Rua da Enseada', '420', 'Cacupé', '88050-700', '(48) 3344-7070'),
	(71, 'Alimentos Bom Sabor', '12.345.678/0001-71', 'Rua das Rosas', '110', 'Centro', '88010-710', '(48) 3344-7171'),
	(72, 'Comercial Horizonte Sul', '23.456.789/0001-72', 'Rua do Sol', '250', 'Centro', '88010-720', '(48) 3344-7272'),
	(73, 'Atacadista União', '34.567.890/0001-73', 'Rua da Paz', '315', 'Barreiros', '88110-730', '(48) 3344-7373'),
	(74, 'Distribuidora Esperança', '45.678.901/0001-74', 'Rua Central', '185', 'Coqueiros', '88080-740', '(48) 3344-7474'),
	(75, 'Mercado Bom Preço', '56.789.012/0001-75', 'Rua São Pedro', '275', 'Campinas', '88101-750', '(48) 3344-7575'),
	(76, 'Comercial Vale Sul', '67.890.123/0001-76', 'Rua das Acácias', '390', 'Agronômica', '88025-760', '(48) 3344-7676'),
	(77, 'Distribuidora Nova Vida', '78.901.234/0001-77', 'Rua João Paulo', '145', 'Itaguaçu', '88085-770', '(48) 3344-7777'),
	(78, 'Atacado Santa Rosa', '89.012.345/0001-78', 'Rua das Flores', '320', 'Centro', '88010-780', '(48) 3344-7878'),
	(79, 'Alimentos Nova Geração', '90.123.456/0001-79', 'Rua do Comércio', '210', 'Estreito', '88075-790', '(48) 3344-7979'),
	(80, 'Mercantil Santa Catarina', '01.234.567/0001-80', 'Rua Brasil', '105', 'Trindade', '88036-800', '(48) 3344-8080'),
	(81, 'Comercial Estrela', '12.345.678/0001-81', 'Rua das Palmeiras', '285', 'Itacorubi', '88034-810', '(48) 3344-8181'),
	(82, 'Distribuidora Boa Vista', '23.456.789/0001-82', 'Rua Central', '430', 'Coqueiros', '88080-820', '(48) 3344-8282'),
	(83, 'Atacado Popular Sul', '34.567.890/0001-83', 'Rua São José', '160', 'Estreito', '88075-830', '(48) 3344-8383'),
	(84, 'Mercado Tropical Ltda', '45.678.901/0001-84', 'Rua das Flores', '245', 'Centro', '88010-840', '(48) 3344-8484'),
	(85, 'Distribuidora Bom Futuro', '56.789.012/0001-85', 'Rua do Bosque', '350', 'Carvoeira', '88040-850', '(48) 3344-8585'),
	(86, 'Comercial São Paulo', '67.890.123/0001-86', 'Rua Santa Catarina', '115', 'Córrego Grande', '88037-860', '(48) 3344-8686'),
	(87, 'Alimentos Brasil Norte', '78.901.234/0001-87', 'Rua das Hortênsias', '270', 'Lagoa', '88062-870', '(48) 3344-8787'),
	(88, 'Atacadão da Ilha', '89.012.345/0001-88', 'Rua das Gaivotas', '390', 'Ingleses', '88058-880', '(48) 3344-8888'),
	(89, 'Distribuidora Costa Verde', '90.123.456/0001-89', 'Rua das Conchas', '180', 'Jurerê', '88053-890', '(48) 3344-8989'),
	(90, 'Mercantil São Lucas', '01.234.567/0001-90', 'Rua do Mar', '225', 'Canasvieiras', '88054-900', '(48) 3344-9090'),
	(91, 'Comercial Boa Terra', '12.345.678/0001-91', 'Rua das Dunas', '310', 'Campeche', '88063-910', '(48) 3344-9191'),
	(92, 'Distribuidora União Sul', '23.456.789/0001-92', 'Rua dos Coqueiros', '145', 'Ingleses', '88058-920', '(48) 3344-9292'),
	(93, 'Atacado Imperial', '34.567.890/0001-93', 'Rua Felipe Schmidt', '275', 'Centro', '88010-930', '(48) 3344-9393'),
	(94, 'Mercado Central Sul', '45.678.901/0001-94', 'Rua Bocaiúva', '360', 'Centro', '88015-940', '(48) 3344-9494'),
	(95, 'Comercial Nacional Sul', '56.789.012/0001-95', 'Rua Mauro Ramos', '190', 'Centro', '88020-950', '(48) 3344-9595'),
	(96, 'Distribuidora Vitória', '67.890.123/0001-96', 'Rua Vidal Ramos', '250', 'Centro', '88020-960', '(48) 3344-9696'),
	(97, 'Alimentos Família Sul', '78.901.234/0001-97', 'Rua dos Ilhéus', '105', 'Centro', '88010-970', '(48) 3344-9797'),
	(98, 'Atacado Boa Compra', '89.012.345/0001-98', 'Rua Antônio Luz', '315', 'Centro', '88010-980', '(48) 3344-9898'),
	(99, 'Mercantil Nova Era', '90.123.456/0001-99', 'Rua Anita Garibaldi', '220', 'Centro', '88010-990', '(48) 3344-9999'),
	(100, 'Distribuidora Brasil', '01.234.567/0001-00', 'Rua Deodoro', '405', 'Centro', '88010-100', '(48) 3355-0000');

-- Copiando estrutura para tabela producao.pedidos
CREATE TABLE IF NOT EXISTS `pedidos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_clientes` int NOT NULL,
  `id_produto` int NOT NULL,
  `num_ped` varchar(20) NOT NULL,
  `quantidade` int NOT NULL,
  `data_ped` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Copiando dados para a tabela producao.pedidos: ~100 rows (aproximadamente)
INSERT INTO `pedidos` (`id`, `id_clientes`, `id_produto`, `num_ped`, `quantidade`, `data_ped`) VALUES
	(1, 1, 1, 'PED001', 2, '2026-08-10 10:00:00'),
	(2, 2, 2, 'PED002', 3, '2026-08-11 11:30:00'),
	(3, 3, 4, 'PED003', 2, '2026-08-12 14:20:00'),
	(4, 4, 5, 'PED004', 5, '2026-08-13 09:15:00'),
	(5, 5, 8, 'PED005', 1, '2026-08-14 16:00:00'),
	(6, 6, 3, 'PED006', 4, '2026-08-15 10:45:00'),
	(7, 7, 7, 'PED007', 6, '2026-08-16 13:00:00'),
	(8, 8, 9, 'PED008', 2, '2026-08-17 15:30:00'),
	(9, 1, 10, 'PED009', 5, '2026-08-18 11:00:00'),
	(10, 2, 1, 'PED010', 1, '2026-08-20 09:30:00'),
	(11, 3, 2, 'PED011', 8, '2026-08-21 14:00:00'),
	(12, 4, 5, 'PED012', 4, '2026-08-22 16:15:00'),
	(13, 5, 6, 'PED013', 3, '2026-08-23 10:30:00'),
	(14, 6, 8, 'PED014', 2, '2026-08-24 12:00:00'),
	(15, 7, 4, 'PED015', 1, '2026-08-25 15:45:00'),
	(16, 8, 2, 'PED016', 3, '2026-08-26 09:30:00'),
	(17, 9, 4, 'PED017', 5, '2026-08-27 11:15:00'),
	(18, 10, 6, 'PED018', 2, '2026-08-28 14:20:00'),
	(19, 11, 7, 'PED019', 4, '2026-08-29 10:45:00'),
	(20, 12, 9, 'PED020', 1, '2026-08-30 16:00:00'),
	(21, 13, 3, 'PED021', 6, '2026-08-31 08:50:00'),
	(22, 14, 5, 'PED022', 2, '2026-09-01 13:30:00'),
	(23, 15, 8, 'PED023', 4, '2026-09-02 15:10:00'),
	(24, 16, 10, 'PED024', 3, '2026-09-03 09:40:00'),
	(25, 17, 1, 'PED025', 5, '2026-09-04 12:25:00'),
	(26, 18, 2, 'PED026', 2, '2026-09-05 10:10:00'),
	(27, 19, 4, 'PED027', 7, '2026-09-06 14:45:00'),
	(28, 20, 6, 'PED028', 3, '2026-09-07 09:20:00'),
	(29, 21, 9, 'PED029', 1, '2026-09-08 16:30:00'),
	(30, 22, 3, 'PED030', 4, '2026-09-09 11:05:00'),
	(31, 23, 5, 'PED031', 2, '2026-09-10 13:15:00'),
	(32, 24, 7, 'PED032', 5, '2026-09-11 08:35:00'),
	(33, 25, 8, 'PED033', 3, '2026-09-12 15:40:00'),
	(34, 26, 10, 'PED034', 6, '2026-09-13 10:25:00'),
	(35, 27, 1, 'PED035', 2, '2026-09-14 14:10:00'),
	(36, 28, 4, 'PED036', 4, '2026-09-15 09:55:00'),
	(37, 29, 6, 'PED037', 1, '2026-09-16 12:40:00'),
	(38, 30, 9, 'PED038', 5, '2026-09-17 16:15:00'),
	(39, 31, 2, 'PED039', 3, '2026-09-18 11:30:00'),
	(40, 32, 5, 'PED040', 7, '2026-09-19 08:45:00'),
	(41, 33, 7, 'PED041', 2, '2026-09-20 13:20:00'),
	(42, 34, 8, 'PED042', 4, '2026-09-21 10:05:00'),
	(43, 35, 10, 'PED043', 3, '2026-09-22 15:25:00'),
	(44, 36, 1, 'PED044', 5, '2026-09-23 09:15:00'),
	(45, 37, 3, 'PED045', 2, '2026-09-24 14:35:00'),
	(46, 38, 4, 'PED046', 6, '2026-09-25 11:50:00'),
	(47, 39, 6, 'PED047', 3, '2026-09-26 08:30:00'),
	(48, 40, 9, 'PED048', 1, '2026-09-27 16:05:00'),
	(49, 41, 2, 'PED049', 4, '2026-09-28 10:40:00'),
	(50, 42, 5, 'PED050', 5, '2026-09-29 13:55:00'),
	(51, 43, 7, 'PED051', 2, '2026-09-30 09:25:00'),
	(52, 44, 8, 'PED052', 3, '2026-10-01 12:15:00'),
	(53, 45, 10, 'PED053', 6, '2026-10-02 14:50:00'),
	(54, 46, 1, 'PED054', 2, '2026-10-03 10:30:00'),
	(55, 47, 3, 'PED055', 4, '2026-10-04 15:20:00'),
	(56, 48, 5, 'PED056', 7, '2026-10-05 08:55:00'),
	(57, 49, 7, 'PED057', 3, '2026-10-06 11:45:00'),
	(58, 50, 9, 'PED058', 5, '2026-10-07 13:35:00'),
	(59, 51, 2, 'PED059', 1, '2026-10-08 16:10:00'),
	(60, 52, 4, 'PED060', 4, '2026-10-09 09:05:00'),
	(61, 53, 6, 'PED061', 2, '2026-10-10 14:25:00'),
	(62, 54, 8, 'PED062', 5, '2026-10-11 10:15:00'),
	(63, 55, 10, 'PED063', 3, '2026-10-12 12:50:00'),
	(64, 56, 1, 'PED064', 6, '2026-10-13 08:40:00'),
	(65, 57, 3, 'PED065', 2, '2026-10-14 15:05:00'),
	(66, 58, 5, 'PED066', 4, '2026-10-15 09:20:00'),
	(67, 59, 7, 'PED067', 3, '2026-10-15 10:45:00'),
	(68, 60, 9, 'PED068', 5, '2026-10-15 11:30:00'),
	(69, 61, 2, 'PED069', 1, '2026-10-15 13:15:00'),
	(70, 62, 4, 'PED070', 6, '2026-10-15 14:40:00'),
	(71, 63, 6, 'PED071', 2, '2026-10-15 15:20:00'),
	(72, 64, 8, 'PED072', 4, '2026-10-15 16:05:00'),
	(73, 65, 10, 'PED073', 3, '2026-10-16 09:10:00'),
	(74, 66, 1, 'PED074', 5, '2026-10-16 10:30:00'),
	(75, 67, 3, 'PED075', 2, '2026-10-16 11:45:00'),
	(76, 68, 5, 'PED076', 7, '2026-10-16 13:20:00'),
	(77, 69, 7, 'PED077', 3, '2026-10-16 14:15:00'),
	(78, 70, 9, 'PED078', 4, '2026-10-16 15:30:00'),
	(79, 71, 2, 'PED079', 1, '2026-10-17 09:25:00'),
	(80, 72, 4, 'PED080', 5, '2026-10-17 10:40:00'),
	(81, 73, 6, 'PED081', 2, '2026-10-17 12:05:00'),
	(82, 74, 8, 'PED082', 6, '2026-10-17 13:35:00'),
	(83, 75, 10, 'PED083', 3, '2026-10-17 14:50:00'),
	(84, 76, 1, 'PED084', 4, '2026-10-17 16:10:00'),
	(85, 77, 3, 'PED085', 2, '2026-10-18 09:15:00'),
	(86, 78, 5, 'PED086', 5, '2026-10-18 10:30:00'),
	(87, 79, 7, 'PED087', 3, '2026-10-18 11:50:00'),
	(88, 80, 9, 'PED088', 6, '2026-10-18 13:05:00'),
	(89, 81, 2, 'PED089', 2, '2026-10-18 14:25:00'),
	(90, 82, 4, 'PED090', 4, '2026-10-18 15:40:00'),
	(91, 83, 6, 'PED091', 7, '2026-10-19 09:35:00'),
	(92, 84, 8, 'PED092', 3, '2026-10-19 10:50:00'),
	(93, 85, 10, 'PED093', 5, '2026-10-19 12:15:00'),
	(94, 86, 1, 'PED094', 2, '2026-10-19 13:40:00'),
	(95, 87, 3, 'PED095', 4, '2026-10-19 15:05:00'),
	(96, 88, 5, 'PED096', 3, '2026-10-20 09:20:00'),
	(97, 89, 7, 'PED097', 6, '2026-10-20 10:45:00'),
	(98, 90, 9, 'PED098', 2, '2026-10-20 13:10:00'),
	(99, 91, 2, 'PED099', 5, '2026-10-20 14:30:00'),
	(100, 92, 4, 'PED100', 3, '2026-10-20 15:45:00');

-- Copiando estrutura para tabela producao.produtos
CREATE TABLE IF NOT EXISTS `produtos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `cod_barras` varchar(100) DEFAULT NULL,
  `nome` varchar(255) NOT NULL,
  `descricao` longtext,
  `estoque` float NOT NULL,
  `valor` float NOT NULL,
  `data_fabricacao` datetime DEFAULT NULL,
  `data_validade` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Copiando dados para a tabela producao.produtos: ~100 rows (aproximadamente)
INSERT INTO `produtos` (`id`, `cod_barras`, `nome`, `descricao`, `estoque`, `valor`, `data_fabricacao`, `data_validade`) VALUES
	(1, '789100000001', 'Arroz 5kg', 'Arroz branco tipo 1', 50, 28.9, '2026-05-10 00:00:00', '2027-05-10 00:00:00'),
	(2, '789100000002', 'Feijão Preto 1kg', 'Feijão preto tipo 1', 80, 8.9, '2026-06-15 00:00:00', '2027-06-15 00:00:00'),
	(3, '789100000003', 'Açúcar 1kg', 'Açúcar cristal', 60, 4.99, '2026-06-20 00:00:00', '2027-06-20 00:00:00'),
	(4, '789100000004', 'Café 500g', 'Café torrado e moído', 45, 16.9, '2026-05-25 00:00:00', '2027-05-25 00:00:00'),
	(5, '789100000005', 'Leite 1L', 'Leite integral', 100, 5.49, '2026-08-01 00:00:00', '2026-09-01 00:00:00'),
	(6, '789100000006', 'Óleo de Soja 900ml', 'Óleo vegetal de soja', 70, 7.9, '2026-07-10 00:00:00', '2027-07-10 00:00:00'),
	(7, '789100000007', 'Macarrão 500g', 'Macarrão espaguete', 90, 4.5, '2026-07-05 00:00:00', '2027-07-05 00:00:00'),
	(8, '789100000008', 'Azeite Extra Virgem 500ml', 'Azeite de oliva extra virgem', 35, 29.9, '2026-04-15 00:00:00', '2028-04-15 00:00:00'),
	(9, '789100000009', 'Farinha de Trigo 1kg', 'Farinha de trigo especial', 55, 6.9, '2026-06-12 00:00:00', '2027-06-12 00:00:00'),
	(10, '789100000010', 'Biscoito Chocolate', 'Biscoito recheado sabor chocolate', 75, 3.99, '2026-07-20 00:00:00', '2027-01-20 00:00:00'),
	(11, '789100000011', 'Arroz Integral 1kg', 'Arroz integral tipo 1', 65, 7.9, '2026-06-10 00:00:00', '2027-06-10 00:00:00'),
	(12, '789100000012', 'Feijão Preto 1kg', 'Feijão preto tipo 1', 70, 8.5, '2026-06-12 00:00:00', '2027-06-12 00:00:00'),
	(13, '789100000013', 'Açúcar Refinado 1kg', 'Açúcar refinado', 85, 5.2, '2026-06-15 00:00:00', '2027-06-15 00:00:00'),
	(14, '789100000014', 'Café Tradicional 500g', 'Café torrado e moído', 55, 17.9, '2026-06-18 00:00:00', '2027-06-18 00:00:00'),
	(15, '789100000015', 'Leite Desnatado 1L', 'Leite desnatado', 90, 5.99, '2026-08-02 00:00:00', '2026-09-02 00:00:00'),
	(16, '789100000016', 'Óleo de Milho 900ml', 'Óleo vegetal de milho', 75, 8.49, '2026-07-12 00:00:00', '2027-07-12 00:00:00'),
	(17, '789100000017', 'Macarrão Espaguete 500g', 'Macarrão tipo espaguete', 80, 4.79, '2026-07-15 00:00:00', '2027-07-15 00:00:00'),
	(18, '789100000018', 'Azeite Português 500ml', 'Azeite de oliva', 40, 31.9, '2026-04-20 00:00:00', '2028-04-20 00:00:00'),
	(19, '789100000019', 'Farinha de Milho 1kg', 'Farinha de milho especial', 60, 6.49, '2026-06-22 00:00:00', '2027-06-22 00:00:00'),
	(20, '789100000020', 'Biscoito Cream Cracker', 'Biscoito salgado crocante', 95, 4.29, '2026-07-02 00:00:00', '2027-07-02 00:00:00'),
	(21, '789100000021', 'Molho de Tomate 340g', 'Molho de tomate tradicional', 70, 3.49, '2026-07-05 00:00:00', '2027-07-05 00:00:00'),
	(22, '789100000022', 'Maionese 500g', 'Maionese tradicional', 55, 7.99, '2026-07-08 00:00:00', '2027-07-08 00:00:00'),
	(23, '789100000023', 'Ketchup 400g', 'Ketchup tradicional', 60, 6.49, '2026-07-10 00:00:00', '2027-07-10 00:00:00'),
	(24, '789100000024', 'Mostarda 200g', 'Mostarda amarela', 45, 4.99, '2026-07-12 00:00:00', '2027-07-12 00:00:00'),
	(25, '789100000025', 'Sal Refinado 1kg', 'Sal refinado iodado', 100, 2.99, '2026-06-01 00:00:00', '2028-06-01 00:00:00'),
	(26, '789100000026', 'Farinha de Trigo 1kg', 'Farinha de trigo especial', 65, 5.79, '2026-06-20 00:00:00', '2027-06-20 00:00:00'),
	(27, '789100000027', 'Fermento em Pó 100g', 'Fermento químico', 50, 4.59, '2026-07-01 00:00:00', '2027-07-01 00:00:00'),
	(28, '789100000028', 'Achocolatado 400g', 'Achocolatado em pó', 80, 8.9, '2026-07-04 00:00:00', '2027-07-04 00:00:00'),
	(29, '789100000029', 'Leite em Pó 400g', 'Leite em pó integral', 45, 15.9, '2026-06-25 00:00:00', '2027-06-25 00:00:00'),
	(30, '789100000030', 'Cereal de Milho 200g', 'Cereal matinal de milho', 35, 9.99, '2026-07-06 00:00:00', '2027-07-06 00:00:00'),
	(31, '789100000031', 'Aveia em Flocos 200g', 'Aveia em flocos finos', 40, 6.9, '2026-06-15 00:00:00', '2027-06-15 00:00:00'),
	(32, '789100000032', 'Granola 250g', 'Granola tradicional', 55, 11.9, '2026-06-18 00:00:00', '2027-06-18 00:00:00'),
	(33, '789100000033', 'Biscoito Chocolate', 'Biscoito recheado de chocolate', 70, 4.99, '2026-07-08 00:00:00', '2027-07-08 00:00:00'),
	(34, '789100000034', 'Biscoito Morango', 'Biscoito recheado de morango', 65, 4.99, '2026-07-09 00:00:00', '2027-07-09 00:00:00'),
	(35, '789100000035', 'Bolacha Maisena', 'Bolacha doce tradicional', 75, 4.49, '2026-07-10 00:00:00', '2027-07-10 00:00:00'),
	(36, '789100000036', 'Pão de Forma 500g', 'Pão de forma tradicional', 30, 8.49, '2026-08-01 00:00:00', '2026-08-15 00:00:00'),
	(37, '789100000037', 'Pão Integral 500g', 'Pão de forma integral', 25, 9.99, '2026-08-01 00:00:00', '2026-08-15 00:00:00'),
	(38, '789100000038', 'Torrada 160g', 'Torradas tradicionais', 45, 5.49, '2026-07-20 00:00:00', '2027-01-20 00:00:00'),
	(39, '789100000039', 'Bisnaguinha 300g', 'Pão tipo bisnaguinha', 40, 7.49, '2026-08-02 00:00:00', '2026-08-16 00:00:00'),
	(40, '789100000040', 'Leite Condensado 395g', 'Leite condensado', 60, 6.99, '2026-07-12 00:00:00', '2027-07-12 00:00:00'),
	(41, '789100000041', 'Creme de Leite 200g', 'Creme de leite tradicional', 65, 3.99, '2026-07-15 00:00:00', '2027-07-15 00:00:00'),
	(42, '789100000042', 'Chocolate ao Leite 90g', 'Chocolate ao leite', 50, 6.49, '2026-07-18 00:00:00', '2027-07-18 00:00:00'),
	(43, '789100000043', 'Chocolate Branco 90g', 'Chocolate branco', 45, 6.49, '2026-07-18 00:00:00', '2027-07-18 00:00:00'),
	(44, '789100000044', 'Achocolatado 200g', 'Achocolatado em pó', 70, 5.49, '2026-07-20 00:00:00', '2027-07-20 00:00:00'),
	(45, '789100000045', 'Gelatina Morango', 'Gelatina sabor morango', 80, 2.49, '2026-07-22 00:00:00', '2027-07-22 00:00:00'),
	(46, '789100000046', 'Gelatina Uva', 'Gelatina sabor uva', 75, 2.49, '2026-07-22 00:00:00', '2027-07-22 00:00:00'),
	(47, '789100000047', 'Pudim Baunilha', 'Mistura para pudim', 55, 3.99, '2026-07-24 00:00:00', '2027-07-24 00:00:00'),
	(48, '789100000048', 'Pudim Chocolate', 'Mistura para pudim de chocolate', 60, 4.29, '2026-07-24 00:00:00', '2027-07-24 00:00:00'),
	(49, '789100000049', 'Milho Verde 170g', 'Milho verde em conserva', 70, 3.99, '2026-06-30 00:00:00', '2028-06-30 00:00:00'),
	(50, '789100000050', 'Ervilha 170g', 'Ervilha em conserva', 65, 3.79, '2026-06-30 00:00:00', '2028-06-30 00:00:00'),
	(51, '789100000051', 'Sardinha 125g', 'Sardinha em óleo', 50, 6.99, '2026-06-20 00:00:00', '2029-06-20 00:00:00'),
	(52, '789100000052', 'Atum 170g', 'Atum sólido em óleo', 45, 9.99, '2026-06-22 00:00:00', '2029-06-22 00:00:00'),
	(53, '789100000053', 'Seleta de Legumes', 'Legumes em conserva', 55, 5.49, '2026-06-25 00:00:00', '2028-06-25 00:00:00'),
	(54, '789100000054', 'Palmito 300g', 'Palmito em conserva', 35, 14.9, '2026-06-28 00:00:00', '2028-06-28 00:00:00'),
	(55, '789100000055', 'Azeitona Verde 200g', 'Azeitona verde em conserva', 50, 7.99, '2026-07-01 00:00:00', '2028-07-01 00:00:00'),
	(56, '789100000056', 'Erva-Mate 500g', 'Erva-mate para chimarrão', 80, 8.99, '2026-07-05 00:00:00', '2027-07-05 00:00:00'),
	(57, '789100000057', 'Chá de Camomila', 'Chá de camomila em sachês', 40, 6.49, '2026-07-08 00:00:00', '2028-07-08 00:00:00'),
	(58, '789100000058', 'Chá de Erva-Doce', 'Chá de erva-doce', 45, 5.99, '2026-07-08 00:00:00', '2028-07-08 00:00:00'),
	(59, '789100000059', 'Café Solúvel 100g', 'Café solúvel tradicional', 35, 10.9, '2026-07-10 00:00:00', '2028-07-10 00:00:00'),
	(60, '789100000060', 'Achocolatado Light', 'Achocolatado com menos açúcar', 50, 9.49, '2026-07-12 00:00:00', '2027-07-12 00:00:00'),
	(61, '789100000061', 'Água Mineral 500ml', 'Água mineral sem gás', 120, 2.49, '2026-08-01 00:00:00', '2027-08-01 00:00:00'),
	(62, '789100000062', 'Água Mineral 1,5L', 'Água mineral sem gás', 100, 3.99, '2026-08-01 00:00:00', '2027-08-01 00:00:00'),
	(63, '789100000063', 'Água com Gás 500ml', 'Água mineral com gás', 90, 2.99, '2026-08-01 00:00:00', '2027-08-01 00:00:00'),
	(64, '789100000064', 'Suco de Uva 1L', 'Suco de uva integral', 55, 12.9, '2026-07-15 00:00:00', '2027-07-15 00:00:00'),
	(65, '789100000065', 'Suco de Laranja 1L', 'Suco de laranja', 60, 8.99, '2026-07-15 00:00:00', '2027-07-15 00:00:00'),
	(66, '789100000066', 'Refrigerante Cola 2L', 'Refrigerante sabor cola', 80, 9.49, '2026-08-02 00:00:00', '2027-02-02 00:00:00'),
	(67, '789100000067', 'Refrigerante Laranja 2L', 'Refrigerante sabor laranja', 70, 8.99, '2026-08-02 00:00:00', '2027-02-02 00:00:00'),
	(68, '789100000068', 'Refrigerante Guaraná 2L', 'Refrigerante sabor guaraná', 75, 8.99, '2026-08-02 00:00:00', '2027-02-02 00:00:00'),
	(69, '789100000069', 'Água de Coco 1L', 'Bebida de água de coco', 45, 7.99, '2026-07-20 00:00:00', '2027-07-20 00:00:00'),
	(70, '789100000070', 'Néctar de Pêssego 1L', 'Bebida sabor pêssego', 50, 6.99, '2026-07-20 00:00:00', '2027-07-20 00:00:00'),
	(71, '789100000071', 'Detergente 500ml', 'Detergente líquido neutro', 90, 2.99, '2026-08-01 00:00:00', '2028-08-01 00:00:00'),
	(72, '789100000072', 'Sabão em Pó 1kg', 'Sabão em pó para roupas', 65, 9.99, '2026-07-15 00:00:00', '2028-07-15 00:00:00'),
	(73, '789100000073', 'Amaciante 2L', 'Amaciante de roupas', 55, 11.9, '2026-07-18 00:00:00', '2028-07-18 00:00:00'),
	(74, '789100000074', 'Desinfetante 2L', 'Desinfetante floral', 70, 7.49, '2026-07-20 00:00:00', '2028-07-20 00:00:00'),
	(75, '789100000075', 'Água Sanitária 1L', 'Água sanitária', 80, 4.49, '2026-07-22 00:00:00', '2028-07-22 00:00:00'),
	(76, '789100000076', 'Esponja Multiuso', 'Esponja para limpeza', 100, 2.49, '2026-08-01 00:00:00', '2029-08-01 00:00:00'),
	(77, '789100000077', 'Limpador Multiuso 500ml', 'Limpador de superfícies', 75, 5.99, '2026-07-25 00:00:00', '2028-07-25 00:00:00'),
	(78, '789100000078', 'Limpa Vidros 500ml', 'Limpador de vidros', 50, 6.49, '2026-07-25 00:00:00', '2028-07-25 00:00:00'),
	(79, '789100000079', 'Sabão em Barra', 'Sabão em barra neutro', 85, 6.99, '2026-07-28 00:00:00', '2028-07-28 00:00:00'),
	(80, '789100000080', 'Desengordurante 500ml', 'Limpador desengordurante', 60, 7.49, '2026-07-28 00:00:00', '2028-07-28 00:00:00'),
	(81, '789100000081', 'Papel Higiênico 4un', 'Papel higiênico folha dupla', 90, 7.99, '2026-08-01 00:00:00', '2030-08-01 00:00:00'),
	(82, '789100000082', 'Papel Toalha 2un', 'Papel toalha de cozinha', 70, 6.49, '2026-08-01 00:00:00', '2030-08-01 00:00:00'),
	(83, '789100000083', 'Guardanapo 50un', 'Guardanapos de papel', 85, 3.49, '2026-08-02 00:00:00', '2030-08-02 00:00:00'),
	(84, '789100000084', 'Saco para Lixo 30L', 'Sacos para lixo', 75, 8.49, '2026-08-02 00:00:00', '2030-08-02 00:00:00'),
	(85, '789100000085', 'Saco para Lixo 50L', 'Sacos para lixo reforçados', 65, 11.49, '2026-08-02 00:00:00', '2030-08-02 00:00:00'),
	(86, '789100000086', 'Palito de Dente', 'Palitos de madeira', 100, 2.49, '2026-08-03 00:00:00', '2030-08-03 00:00:00'),
	(87, '789100000087', 'Papel Alumínio', 'Rolo de papel alumínio', 45, 6.99, '2026-08-03 00:00:00', '2030-08-03 00:00:00'),
	(88, '789100000088', 'Filme PVC', 'Filme plástico para alimentos', 50, 5.99, '2026-08-03 00:00:00', '2030-08-03 00:00:00'),
	(89, '789100000089', 'Filtro de Café', 'Filtros de papel para café', 80, 4.99, '2026-08-04 00:00:00', '2030-08-04 00:00:00'),
	(90, '789100000090', 'Fósforo', 'Caixa de fósforos', 90, 2.49, '2026-08-04 00:00:00', '2030-08-04 00:00:00'),
	(91, '789100000091', 'Bala de Morango', 'Bala mastigável sabor morango', 100, 4.99, '2026-08-05 00:00:00', '2028-08-05 00:00:00'),
	(92, '789100000092', 'Bala de Hortelã', 'Bala sabor hortelã', 95, 4.99, '2026-08-05 00:00:00', '2028-08-05 00:00:00'),
	(93, '789100000093', 'Chiclete Menta', 'Chiclete sabor menta', 85, 3.99, '2026-08-05 00:00:00', '2028-08-05 00:00:00'),
	(94, '789100000094', 'Pirulito Sortido', 'Pirulitos sabores variados', 90, 5.49, '2026-08-06 00:00:00', '2028-08-06 00:00:00'),
	(95, '789100000095', 'Paçoca 350g', 'Paçoca de amendoim', 70, 8.99, '2026-08-06 00:00:00', '2027-08-06 00:00:00'),
	(96, '789100000096', 'Doce de Leite 400g', 'Doce de leite cremoso', 55, 9.99, '2026-08-07 00:00:00', '2027-08-07 00:00:00'),
	(97, '789100000097', 'Geleia de Morango 320g', 'Geleia de morango', 45, 10.9, '2026-08-07 00:00:00', '2027-08-07 00:00:00'),
	(98, '789100000098', 'Geleia de Uva 320g', 'Geleia de uva', 50, 9.9, '2026-08-07 00:00:00', '2027-08-07 00:00:00'),
	(99, '789100000099', 'Mel 250g', 'Mel natural', 40, 14.9, '2026-08-08 00:00:00', '2028-08-08 00:00:00'),
	(100, '789100000100', 'Coco Ralado 100g', 'Coco ralado desidratado', 60, 5.99, '2026-08-08 00:00:00', '2027-08-08 00:00:00');

-- Copiando estrutura para procedure producao.sp_atualizar_produto
DELIMITER //
CREATE PROCEDURE `sp_atualizar_produto`(
	IN `p_id` INT,
	IN `p_nome` VARCHAR(50),
	IN `p_valor` INT,
	IN `p_estoque` INT
)
BEGIN
    UPDATE produtos
    SET 
        nome = p_nome,
        valor = p_valor,
        estoque = p_estoque
    WHERE id = p_id;
END//
DELIMITER ;

-- Copiando estrutura para procedure producao.sp_compras_por_fornecedor
DELIMITER //
CREATE PROCEDURE `sp_compras_por_fornecedor`()
BEGIN
 INSERT INTO compras (id_fornecedor,
        id_produtos,
        quantidade,
        codigo,
        data_compra)
    VALUES (
        p_id_fornecedor,
        p_id_produtos,
        p_quantidade,
        p_codigo,
        NOW() 
    );
END//
DELIMITER ;

-- Copiando estrutura para procedure producao.sp_registrar_compra
DELIMITER //
CREATE PROCEDURE `sp_registrar_compra`()
BEGIN
  SELECT 
        c.codigo,
        p.nome AS produtos,
        c.quantidade,
        c.data_compra,
        f.nome AS fornecedor
    FROM compras c
    INNER JOIN fornecedores f ON f.id = c.id_fornecedor
    INNER JOIN produto p ON p.id = c.id_produtos
    WHERE c.id_fornecedor = p_id_fornecedor 
    AND c.data_compra BETWEEN p_data_inicio AND p_data_fim;
END//
DELIMITER ;

-- Copiando estrutura para tabela producao.tmp_clientes
CREATE TABLE IF NOT EXISTS `tmp_clientes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `cpf_cnpj` varchar(18) NOT NULL,
  `rua` varchar(255) DEFAULT NULL,
  `telefone` varchar(100) NOT NULL,
  `numero` varchar(50) DEFAULT NULL,
  `bairro` varchar(100) DEFAULT NULL,
  `cep` varchar(10) DEFAULT NULL,
  `referencia` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Copiando dados para a tabela producao.tmp_clientes: ~0 rows (aproximadamente)

-- Copiando estrutura para tabela producao.tmp_fornecedores
CREATE TABLE IF NOT EXISTS `tmp_fornecedores` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) NOT NULL,
  `cpf_cnpj` varchar(18) NOT NULL,
  `rua` varchar(255) DEFAULT NULL,
  `numero` varchar(50) DEFAULT NULL,
  `bairro` varchar(100) DEFAULT NULL,
  `cep` varchar(10) DEFAULT NULL,
  `telefone` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Copiando dados para a tabela producao.tmp_fornecedores: ~0 rows (aproximadamente)

-- Copiando estrutura para tabela producao.tmp_historico_fornecedores
CREATE TABLE IF NOT EXISTS `tmp_historico_fornecedores` (
  `id_historico` int NOT NULL AUTO_INCREMENT,
  `id_fornecedor` int DEFAULT NULL,
  `nome_antigo` varchar(100) DEFAULT NULL,
  `cpf_cnpj_antigo` varchar(20) DEFAULT NULL,
  `rua_antiga` varchar(100) DEFAULT NULL,
  `numero_antigo` varchar(20) DEFAULT NULL,
  `bairro_antigo` varchar(50) DEFAULT NULL,
  `cep_antigo` varchar(10) DEFAULT NULL,
  `telefone_antigo` varchar(20) DEFAULT NULL,
  `data_alteracao` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `usuario_alteracao` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_historico`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Copiando dados para a tabela producao.tmp_historico_fornecedores: ~0 rows (aproximadamente)

-- Copiando estrutura para tabela producao.tmp_historico_produto
CREATE TABLE IF NOT EXISTS `tmp_historico_produto` (
  `id_historico` int NOT NULL AUTO_INCREMENT,
  `produto_id` int DEFAULT '0',
  `nome_antigo` varchar(255) DEFAULT NULL,
  `preco_antigo` decimal(10,2) DEFAULT NULL,
  `estoque_antigo` float DEFAULT NULL,
  `data_auteracao` datetime DEFAULT (now()),
  `usuario_alteracao` varchar(100) DEFAULT NULL,
  KEY `Index 1` (`id_historico`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Copiando dados para a tabela producao.tmp_historico_produto: ~0 rows (aproximadamente)

-- Copiando estrutura para tabela producao.trg_historico_produtos
CREATE TABLE IF NOT EXISTS `trg_historico_produtos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_produto` int DEFAULT NULL,
  `cod_barra_antigo` varchar(255) DEFAULT NULL,
  `nome_antigo` varchar(255) DEFAULT NULL,
  `descrição_antiga` varchar(255) DEFAULT NULL,
  `estoque_antigo` float DEFAULT NULL,
  `valor_antigo` float DEFAULT NULL,
  `data_fabricacao_antiga` datetime DEFAULT NULL,
  `data_validade_antiga` datetime DEFAULT NULL,
  `data_alteracao` datetime DEFAULT CURRENT_TIMESTAMP,
  `usuario_alteracao` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Copiando dados para a tabela producao.trg_historico_produtos: ~0 rows (aproximadamente)

-- Copiando estrutura para view producao.view_clientes_com_mais_compras
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE `view_clientes_com_mais_compras` (
	`id` INT NOT NULL,
	`nome` VARCHAR(1) NOT NULL COLLATE 'utf8mb4_0900_ai_ci',
	`total_compras` BIGINT NOT NULL
) ENGINE=MyISAM;

-- Copiando estrutura para view producao.view_listar_os_pedidos_que_ultrapassam_determinado_valor
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE `view_listar_os_pedidos_que_ultrapassam_determinado_valor` (
	`num_ped` VARCHAR(1) NOT NULL COLLATE 'utf8mb4_0900_ai_ci',
	`valor_total` DOUBLE NOT NULL
) ENGINE=MyISAM;

-- Copiando estrutura para view producao.view_produtos_mais_vendidos_no_ultimo_mes
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE `view_produtos_mais_vendidos_no_ultimo_mes` (
	`produto` VARCHAR(1) NOT NULL COLLATE 'utf8mb4_0900_ai_ci',
	`total_vendas` BIGINT NOT NULL,
	`data_ped` VARCHAR(1) NULL COLLATE 'utf8mb4_general_ci'
) ENGINE=MyISAM;

-- Copiando estrutura para trigger producao.trg_produtos_atualizar
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `trg_produtos_atualizar` BEFORE UPDATE ON `produtos` FOR EACH ROW BEGIN
    INSERT INTO tmp_historico_produtos (
	                          produto_id,
									  nome_antigo, 
									  preco_antigo,
									  estoque_antigo ,
									  ususario_auteracao
									  ) VALUES (
									     OLD.id,
										  OLD.nome,
										  OLD.valor,
										  OLD.estoque,
										  USER()
										  ); 
									
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Copiando estrutura para trigger producao.tr_fornecedores_atualizados
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `tr_fornecedores_atualizados` BEFORE UPDATE ON `produtos` FOR EACH ROW BEGIN
  INSERT INTO tmp_historico_produtos(
        id_produto,
        nome_antigo,
        valor_antigo,
        estoque_antigo,
        usuario_alteracao
    ) VALUES (
        OLD.id,
        OLD.nome,
        OLD.valor,
        OLD.estoque,
        USER()
    );
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Copiando estrutura para trigger producao.tr_produtos_atualizados
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `tr_produtos_atualizados` BEFORE INSERT ON `pedidos` FOR EACH ROW BEGIN
  UPDATE produtos 
    SET estoque = estoque - NEW.quantidade
    WHERE id = NEW.id_produto;
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS `view_clientes_com_mais_compras`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `view_clientes_com_mais_compras` AS select `c`.`id` AS `id`,`c`.`nome` AS `nome`,count(`p`.`id`) AS `total_compras` from (`clientes` `c` join `pedidos` `p` on((`c`.`id` = `p`.`id_clientes`))) group by `c`.`id`,`c`.`nome` order by `total_compras` desc;

-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS `view_listar_os_pedidos_que_ultrapassam_determinado_valor`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `view_listar_os_pedidos_que_ultrapassam_determinado_valor` AS select `p`.`num_ped` AS `num_ped`,(`p`.`quantidade` * `pr`.`valor`) AS `valor_total` from (`pedidos` `p` join `produtos` `pr` on((`p`.`id_produto` = `pr`.`id`))) where ((`p`.`quantidade` * `pr`.`valor`) > (select avg((`p2`.`quantidade` * `pr2`.`valor`)) from (`pedidos` `p2` join `produtos` `pr2` on((`p2`.`id_produto` = `pr2`.`id`))))) order by (`p`.`quantidade` * `pr`.`valor`) desc;

-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS `view_produtos_mais_vendidos_no_ultimo_mes`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `view_produtos_mais_vendidos_no_ultimo_mes` AS select `pr`.`nome` AS `produto`,count(`p`.`id`) AS `total_vendas`,date_format(`p`.`data_ped`,'%m/%Y') AS `data_ped` from (`pedidos` `p` join `produtos` `pr` on((`p`.`id_produto` = `pr`.`id`))) where ((`p`.`data_ped` >= date_format((curdate() - interval 1 month),'%Y-%m-01')) and (`p`.`data_ped` < date_format(curdate(),'%Y-%m-01'))) group by `pr`.`id`,`pr`.`nome`,date_format(`p`.`data_ped`,'%m/%Y') order by `total_vendas` desc;

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
