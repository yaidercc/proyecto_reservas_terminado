-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 27-01-2021 a las 02:01:42
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.2.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `reservas_staff`
--

DELIMITER $$
--
-- Procedimientos
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `actualizar_usuario` (IN `documento` INT, IN `nombre` VARCHAR(20), IN `apellido` VARCHAR(50), IN `cargos` INT, IN `codigo` INT)  BEGIN
    		UPDATE `empleados` SET `cedula`=documento,`Nombres`=nombre,`Apellidos`=apellido,`id_cargo_fk`=cargos WHERE 				`id`=codigo;
    	
    END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `agregar_usuario` (IN `documento` INT, IN `nombres` VARCHAR(20), IN `apellidos` VARCHAR(50), IN `cargo` INT)  BEGIN
    	
	INSERT INTO `empleados`(`cedula`, `Nombres`, `Apellidos`, `cod_tipo_fk`,`id_cargo_fk`) VALUES      (documento,nombres,apellidos,2,cargo);
    END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `eliminar_usuario` (IN `codigo` INT)  BEGIN
    	DELETE FROM empleados WHERE `id`=codigo;
    END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cargos`
--

CREATE TABLE `cargos` (
  `ID` tinyint(4) NOT NULL,
  `NOMBRE_CARGO` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `cargos`
--

INSERT INTO `cargos` (`ID`, `NOMBRE_CARGO`) VALUES
(1, 'DIRECTOR DE MANTENIMIENTO'),
(2, 'INGENIERO PIDA Y MANTENIMIENTO'),
(3, 'DIRECTOR DE PLANEACIÓN DE OPERACIONES'),
(4, 'DIRECTOR DE OPERACIONES'),
(5, 'COMUNICADOR SOCIAL'),
(6, 'COORD. DEL PROGRAMA GESTIÓN DE RIESGO'),
(7, 'ASISTENTE TALENTO HUMANO'),
(8, 'ANALISTAS CONTABLE'),
(9, 'GESTOR DEL SISTEMA DE CONTROL INTERNO'),
(10, 'COORDINADORA AMBIENTAL'),
(11, 'DIRECTORA  FINANCIERA'),
(12, 'GERENTE GENERAL'),
(13, 'COORDINADOR TALENTO HUMANO'),
(14, 'ANALISTA COMERCIAL'),
(15, 'DIRECTORA JURIDICA'),
(16, 'GESTOR DE NEGOCIOS'),
(17, 'AUXILIAR DE INGENIERIA'),
(18, 'CONTADOR LIDER'),
(19, 'DIRECTOR COMERCIAL'),
(20, 'COORDINADORA GESTION DOCUMENTAL'),
(21, 'ANALISTA DE SELECCION DE PERSONAL'),
(22, 'COORDINADOR DE COMPRAS'),
(23, 'ABOGADO(A)'),
(24, 'ANALISTA DE INFORMACION Y TECNOLOGIA'),
(25, 'COORD. SISTEMA DE GESTION INFORMACION Y TECNOLOGIA'),
(26, 'ANALISTA DE MANTENIMIENTO'),
(27, 'DIRECTOR P.I.D.A'),
(28, 'AUXILIAR DE TESORERIA'),
(29, 'APRENDIZ EN SISTEMAS'),
(30, 'APRENDIZ CARTERA'),
(31, 'AUXILIAR DE GESTION DOCUMENTAL'),
(32, 'APRENDIZ DE MANTENIMIENTO'),
(33, 'COMPRADOR'),
(34, 'ANALISTA DE PRODUCTIVIDAD'),
(35, 'GERENTE DE SEGURIDAD OPERACIONAL'),
(36, 'TECNOLOGO EN SEGURIDAD Y SALUD EN EL TRABAJO'),
(37, 'TECNICO DE INFORMACION Y MANTENIMIENTO'),
(38, 'APRENDIZ GESTION TALENTO HUMANO'),
(39, 'COORDINADOR DE ALMACEN'),
(40, 'COMUNICADORA SOCIAL CM'),
(41, 'AUDITOR CONTROL INTERNO'),
(42, 'SECRETARIA RECEPCIONISTA'),
(43, 'TESORERA'),
(44, 'ALMACENISTA'),
(45, 'ANALISTA DE COMPRAS'),
(46, 'AUXILIAR CONTABLE'),
(47, 'AUXILIAR DE PELIGRO AVIARIO'),
(48, 'APRENDIZ INGENIERIA MECATRONICA'),
(49, 'GESTOR COMERCIAL'),
(50, 'COORDINADORA DE SEGURIDAD Y SALUD EN EL TRABAJO'),
(51, 'CONTADOR'),
(52, 'ANALISTA DE GESTIÓN DOCUMENTAL'),
(53, 'ANALISTA DE SEGURIDAD OPERACIONAL'),
(54, 'ARQUITECTO'),
(55, 'APRENDIZ EN INGENIERIA AERONAUTICA');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleados`
--

CREATE TABLE `empleados` (
  `Id` int(5) NOT NULL,
  `cedula` int(15) NOT NULL,
  `Nombres` varchar(20) DEFAULT NULL,
  `Apellidos` varchar(50) DEFAULT NULL,
  `cod_tipo_fk` int(11) NOT NULL,
  `id_cargo_fk` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `empleados`
--

INSERT INTO `empleados` (`Id`, `cedula`, `Nombres`, `Apellidos`, `cod_tipo_fk`, `id_cargo_fk`) VALUES
(1, 8028865, 'DANIEL', 'GOMEZ VELASQUEZ', 2, 1),
(2, 8305975, 'MANUEL ', 'TORRES MALDONADO', 2, 2),
(3, 9774509, 'CARLOS ANDRES', 'PACHON PEREZ', 2, 3),
(4, 16287493, 'JAVIER ANDRES', 'BENITEZ RIOS', 2, 4),
(5, 21448771, 'ANA LUCIA', 'PEREZ MESA', 2, 5),
(6, 28538263, 'VIVIAN TATIANA', 'FLOREZ DELGADO', 2, 6),
(7, 32323131, 'ADRIANA', 'PAREJA LOPEZ', 2, 7),
(8, 39191789, 'MARIA YOLIMA', 'ARANGO GIRALDO', 2, 8),
(9, 39443756, 'GLADYS CECILIA', 'CARDONA MACIA', 2, 9),
(10, 39449162, 'LINA MARIA', 'GONZALEZ MEJIA', 2, 10),
(11, 42789955, 'ANA LUCIA', 'ESPINOSA PALACIOS', 2, 11),
(12, 42876450, 'SARA INES', 'RAMIREZ RESTREPO', 2, 12),
(13, 43162033, 'ELIZABETH MILENA', 'MONTOYA BEDOYA', 2, 13),
(14, 43181251, 'INYIRA MARIA', 'LONDONO DUQUE', 2, 14),
(15, 43220581, 'EMILIANA ', 'VILLA MEJIA', 2, 15),
(16, 43255725, 'MONICA ANDREA', 'MONTOYA CASTAÑO', 2, 16),
(17, 43500913, 'CLAUDIA ELENA', 'SEPULVEDA ROLDAN', 2, 17),
(18, 43539475, 'MARGARITA MARIA', 'NUÑEZ MUÑOZ', 2, 18),
(19, 43626179, 'MARIA CATALINA', 'RENDON GUTIERREZ', 2, 19),
(20, 43743660, 'BLANCA ESTELLA', 'JIMENEZ ACEVEDO', 2, 20),
(21, 43743772, 'LUZ MERY', 'LOPEZ BETANCUR', 2, 7),
(22, 43876477, 'SANDRA MILENA', 'AGUDELO ESCOBAR', 2, 21),
(23, 43907666, 'NELFI JASMIN', 'MURILLO VALENCIA', 2, 22),
(24, 52814514, 'JIMENA DEL PILAR', 'CERMEÑO CRISTANCHO', 2, 23),
(25, 70909332, 'EDWIN ARLEY', 'URIBE PULGARIN', 2, 24),
(26, 71276469, 'JHON JAIRO', 'ORTIZ VILLAFANE', 2, 2),
(27, 71724091, 'ALEXANDER ', 'ALVAREZ ARISTIZABAL', 2, 2),
(28, 71759651, 'JUAN DAVID', 'JARAMILLO RESTREPO', 2, 25),
(29, 71794204, 'EDGAR EDUARDO', 'DIAZ ROJAS', 2, 26),
(30, 75080899, 'DAVID ALONSO', 'QUINTERO HENAO', 2, 2),
(31, 80881338, 'ELKIN ', 'LEON BARBOSA', 2, 6),
(32, 98557749, 'JUAN GONZALO', 'DIAZ RODRIGUEZ', 2, 27),
(33, 1000438382, 'YESICA DAHIANA', 'PINEDA LONDONO', 2, 28),
(34, 1000538319, 'YAIDER', 'CORDOBA CORDOBA', 1, 29),
(35, 1001651664, 'ALEJANDRA ', 'ARBOLEDA BUITRAGO', 2, 30),
(36, 1001762660, 'CAMILA ', 'VARGAS SERNA', 2, 31),
(37, 1007291989, 'DILAURA ', 'RIOS RIOS', 2, 30),
(38, 1007760118, 'JHOVANNI ', 'GEREDA LAGUADO', 2, 32),
(40, 1017215828, 'DANIEL FELIPE', 'CRUZ IBARRA', 2, 34),
(41, 1017220875, 'DANIEL ENRIQUE', 'LOPEZ OCAMPO', 2, 35),
(42, 1017244468, 'KAROLAINE ', 'CALDERON JIMENEZ', 2, 36),
(43, 1020482705, 'SALOME ', 'RUIZ GALLEGO', 2, 37),
(44, 1022124383, 'JAIR ANDRES', 'CASTAÑEDA DIAZ', 2, 30),
(45, 1035856089, 'ASTRID YOHANA', 'AGUDELO GAÑAN', 2, 38),
(46, 1036392447, 'JOSE DANIEL', 'ALVAREZ RESTREPO', 2, 39),
(47, 1036394775, 'CAROLINA ', 'GIRALDO VALENCIA', 2, 40),
(48, 1036395467, 'YENNY PAOLA', 'GARCIA GARCIA', 2, 28),
(49, 1036651709, 'DAVID ', 'ORTIZ SERNA', 2, 24),
(50, 1036666542, 'ESTEBAN ', 'PULGARIN BEDOYA', 2, 37),
(51, 1036927180, 'VERONICA MARCELA', 'ZAPATA FLOREZ', 2, 41),
(52, 1036929424, 'LINA MARCELA', 'BRICENO ECHEVERRI', 2, 28),
(53, 1036935983, 'ANDREA ', 'MONTOYA GONZALEZ', 2, 42),
(54, 1036940894, 'PAULA YURANY', 'MEJIA SERNA', 2, 43),
(55, 1036947373, 'NATALIA ', 'ECHEVERRI PEREZ', 2, 8),
(56, 1036949682, 'SANDRA PATRICIA', 'ZAPATA  ORTIZ', 2, 44),
(57, 1036960574, 'SUSANA ', 'CORREA COVELLI', 2, 45),
(58, 1037571116, 'JORGE LUIS', 'LOPEZ DELGADO', 2, 16),
(59, 1038408983, 'YENNY ASTRID', 'ALVAREZ CARDONA', 2, 46),
(60, 1038409103, 'NURY NATALY', 'LÓPEZ MARIN', 2, 46),
(61, 1039685575, 'DERLY NURBHEY', 'ANDRADE CHACON', 2, 47),
(62, 1040041246, 'VIVIANA MARIA', 'CASTAÑO MUÑOZ', 2, 8),
(63, 1040045657, 'JUAN  CAMILO', 'LOPEZ LOPEZ', 2, 33),
(64, 1040049227, 'EMANUEL ', 'OROZCO MARTINEZ', 2, 48),
(65, 1040050583, 'LIZETH ', 'FLOREZ PATIÑO', 2, 28),
(66, 1040181046, 'ANA MARIA', 'RIOS AGUILAR', 2, 23),
(67, 1040731518, 'LUISA FERNANDA', 'MURIEL MARULANDA', 2, 16),
(68, 1040732868, 'MARIA ALEJANDRA', 'VELEZ PARRA', 2, 49),
(69, 1112624205, 'CRISTIAN CAMILO', 'MONTOYA SANCHEZ', 2, 24),
(70, 1128264832, 'MARIA ALEJANDRA', 'URIBE GARCIA', 2, 23),
(71, 1128266857, 'JUAN SANTIAGO', 'BAEZ MORALES', 2, 2),
(72, 1128268781, 'JULIANA ', 'VELEZ CHAVARRIAGA', 2, 23),
(73, 1128272383, 'MARIA TERESA', 'CARDENAS TRIANA', 1, 50),
(74, 1128276544, 'JOHANA ', 'RAMIREZ BERRIO', 2, 51),
(75, 1128453800, 'YAZMIN YOHANA', 'ACEVEDO ROJAS', 2, 52),
(76, 1143342975, 'MARIA JOSE', 'MERCADO DIAZ', 2, 2),
(77, 1152198268, 'SARA LUCIA', 'BEDOYA LONDOÑO', 2, 53),
(78, 1152684103, 'GEOVANNY ', 'DIAZ RAMIREZ', 2, 54),
(79, 1216726795, 'ALEJANDRA ', 'ACOSTA CANO', 2, 55);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modulos`
--

CREATE TABLE `modulos` (
  `cod_modulo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `modulos`
--

INSERT INTO `modulos` (`cod_modulo`) VALUES
(1),
(2),
(3),
(4),
(5),
(6),
(7),
(8),
(9),
(10),
(11),
(12),
(13),
(14),
(15),
(16),
(17),
(18),
(19),
(20),
(21),
(22),
(23),
(24),
(25),
(26),
(27),
(28),
(29),
(30),
(31),
(32),
(33),
(34),
(35),
(36),
(37),
(38),
(39),
(40),
(41),
(42),
(43),
(44),
(45),
(46),
(47),
(48),
(49),
(50);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reservas`
--

CREATE TABLE `reservas` (
  `cod_reserva` int(11) NOT NULL,
  `id_fk` tinyint(4) NOT NULL,
  `fecha_reserva` date DEFAULT NULL,
  `hora_inicio` time DEFAULT NULL,
  `hora_final` time DEFAULT NULL,
  `cod_modulo_fk` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_usuarios`
--

CREATE TABLE `tipo_usuarios` (
  `cod_tipo` int(11) NOT NULL,
  `nombre` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tipo_usuarios`
--

INSERT INTO `tipo_usuarios` (`cod_tipo`, `nombre`) VALUES
(1, 'administra'),
(2, 'usuario');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cargos`
--
ALTER TABLE `cargos`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `empleados`
--
ALTER TABLE `empleados`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `unico` (`cedula`),
  ADD KEY `fk_tipo` (`cod_tipo_fk`),
  ADD KEY `fk_cargo_empleado` (`id_cargo_fk`);

--
-- Indices de la tabla `modulos`
--
ALTER TABLE `modulos`
  ADD PRIMARY KEY (`cod_modulo`);

--
-- Indices de la tabla `reservas`
--
ALTER TABLE `reservas`
  ADD PRIMARY KEY (`cod_reserva`),
  ADD KEY `id_fk` (`id_fk`),
  ADD KEY `cod_modulo_fk` (`cod_modulo_fk`);

--
-- Indices de la tabla `tipo_usuarios`
--
ALTER TABLE `tipo_usuarios`
  ADD PRIMARY KEY (`cod_tipo`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cargos`
--
ALTER TABLE `cargos`
  MODIFY `ID` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT de la tabla `empleados`
--
ALTER TABLE `empleados`
  MODIFY `Id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=178;

--
-- AUTO_INCREMENT de la tabla `modulos`
--
ALTER TABLE `modulos`
  MODIFY `cod_modulo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT de la tabla `reservas`
--
ALTER TABLE `reservas`
  MODIFY `cod_reserva` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `empleados`
--
ALTER TABLE `empleados`
  ADD CONSTRAINT `empleados_ibfk_1` FOREIGN KEY (`cod_tipo_fk`) REFERENCES `tipo_usuarios` (`cod_tipo`),
  ADD CONSTRAINT `fk_cargo_empleado` FOREIGN KEY (`id_cargo_fk`) REFERENCES `cargos` (`ID`),
  ADD CONSTRAINT `fk_tipo` FOREIGN KEY (`cod_tipo_fk`) REFERENCES `tipo_usuarios` (`cod_tipo`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `reservas`
--
ALTER TABLE `reservas`
  ADD CONSTRAINT `reservas_ibfk_2` FOREIGN KEY (`cod_modulo_fk`) REFERENCES `modulos` (`cod_modulo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
