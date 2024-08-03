-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 03-08-2024 a las 04:15:23
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `jho`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `compañia`
--

CREATE TABLE `compañia` (
  `id_comp` int(5) NOT NULL,
  `actividad_principal_comp` varchar(10) DEFAULT NULL,
  `actividad_secundaria_comp` varchar(10) DEFAULT NULL,
  `id_comp1` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cuartel`
--

CREATE TABLE `cuartel` (
  `Id_cuar` int(5) NOT NULL,
  `Nombre_cuar` varchar(10) DEFAULT NULL,
  `Ubicacion_cuar` varchar(10) DEFAULT NULL,
  `Ubicacion` varchar(25) DEFAULT NULL,
  `id_cuar1` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cuartel_compañia`
--

CREATE TABLE `cuartel_compañia` (
  `id_cuarcomp` int(5) NOT NULL,
  `id_cuartel1` int(10) DEFAULT NULL,
  `id_soldado1` int(10) DEFAULT NULL,
  `id_cuarcomp1` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cuerpo`
--

CREATE TABLE `cuerpo` (
  `Id_cuer` int(5) NOT NULL,
  `cuerpo_cuer` varchar(10) DEFAULT NULL,
  `denominacion_cuer` varchar(10) DEFAULT NULL,
  `unidades_cuer` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `servicios`
--

CREATE TABLE `servicios` (
  `id_ser` int(5) NOT NULL,
  `actividad_principal_ser` varchar(10) DEFAULT NULL,
  `actividad_secundaria_ser` varchar(10) DEFAULT NULL,
  `id_serv2` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `servicio_soldado`
--

CREATE TABLE `servicio_soldado` (
  `id_sersol` int(5) NOT NULL,
  `id_servicio1` int(10) DEFAULT NULL,
  `id_soldado1` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `soldado`
--

CREATE TABLE `soldado` (
  `Id_soldado` int(5) NOT NULL,
  `primer_nombre_sol` varchar(10) DEFAULT NULL,
  `segundo_nombre_sol` varchar(10) DEFAULT NULL,
  `Grado` varchar(10) DEFAULT NULL,
  `Edad` bigint(3) DEFAULT NULL,
  `id_cuar1` int(10) DEFAULT NULL,
  `id_cuer1` int(10) DEFAULT NULL,
  `id_serv1` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ubicacion`
--

CREATE TABLE `ubicacion` (
  `id_ubi` int(5) NOT NULL,
  `Pais_ubi` varchar(10) DEFAULT NULL,
  `Departamento_ubi` varchar(10) DEFAULT NULL,
  `Ciudad_ubi` varchar(10) DEFAULT NULL,
  `Barrio_ubi` varchar(10) DEFAULT NULL,
  `calle_ubi` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `compañia`
--
ALTER TABLE `compañia`
  ADD PRIMARY KEY (`id_comp`),
  ADD KEY `fk_idcomp` (`id_comp1`);

--
-- Indices de la tabla `cuartel`
--
ALTER TABLE `cuartel`
  ADD PRIMARY KEY (`Id_cuar`),
  ADD KEY `fk_idcuar` (`id_cuar1`);

--
-- Indices de la tabla `cuartel_compañia`
--
ALTER TABLE `cuartel_compañia`
  ADD PRIMARY KEY (`id_cuarcomp`),
  ADD KEY `fk_idcin` (`id_cuarcomp1`);

--
-- Indices de la tabla `cuerpo`
--
ALTER TABLE `cuerpo`
  ADD PRIMARY KEY (`Id_cuer`);

--
-- Indices de la tabla `servicios`
--
ALTER TABLE `servicios`
  ADD PRIMARY KEY (`id_ser`),
  ADD KEY `fk_idcua` (`id_serv2`);

--
-- Indices de la tabla `servicio_soldado`
--
ALTER TABLE `servicio_soldado`
  ADD PRIMARY KEY (`id_sersol`);

--
-- Indices de la tabla `soldado`
--
ALTER TABLE `soldado`
  ADD PRIMARY KEY (`Id_soldado`),
  ADD KEY `fk_iduno` (`id_cuar1`),
  ADD KEY `fk_iddos` (`id_cuer1`),
  ADD KEY `fk_idtres` (`id_serv1`);

--
-- Indices de la tabla `ubicacion`
--
ALTER TABLE `ubicacion`
  ADD PRIMARY KEY (`id_ubi`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `compañia`
--
ALTER TABLE `compañia`
  MODIFY `id_comp` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `cuartel`
--
ALTER TABLE `cuartel`
  MODIFY `Id_cuar` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `cuartel_compañia`
--
ALTER TABLE `cuartel_compañia`
  MODIFY `id_cuarcomp` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `cuerpo`
--
ALTER TABLE `cuerpo`
  MODIFY `Id_cuer` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `servicios`
--
ALTER TABLE `servicios`
  MODIFY `id_ser` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `servicio_soldado`
--
ALTER TABLE `servicio_soldado`
  MODIFY `id_sersol` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `soldado`
--
ALTER TABLE `soldado`
  MODIFY `Id_soldado` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `ubicacion`
--
ALTER TABLE `ubicacion`
  MODIFY `id_ubi` int(5) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `compañia`
--
ALTER TABLE `compañia`
  ADD CONSTRAINT `fk_idcomp` FOREIGN KEY (`id_comp1`) REFERENCES `cuartel_compañia` (`id_cuarcomp`);

--
-- Filtros para la tabla `cuartel`
--
ALTER TABLE `cuartel`
  ADD CONSTRAINT `fk_idcuar` FOREIGN KEY (`id_cuar1`) REFERENCES `cuartel_compañia` (`id_cuarcomp`);

--
-- Filtros para la tabla `cuartel_compañia`
--
ALTER TABLE `cuartel_compañia`
  ADD CONSTRAINT `fk_idcin` FOREIGN KEY (`id_cuarcomp1`) REFERENCES `ubicacion` (`id_ubi`);

--
-- Filtros para la tabla `servicios`
--
ALTER TABLE `servicios`
  ADD CONSTRAINT `fk_idcua` FOREIGN KEY (`id_serv2`) REFERENCES `servicio_soldado` (`id_sersol`);

--
-- Filtros para la tabla `soldado`
--
ALTER TABLE `soldado`
  ADD CONSTRAINT `fk_iddos` FOREIGN KEY (`id_cuer1`) REFERENCES `cuerpo` (`Id_cuer`),
  ADD CONSTRAINT `fk_idtres` FOREIGN KEY (`id_serv1`) REFERENCES `servicio_soldado` (`id_sersol`),
  ADD CONSTRAINT `fk_iduno` FOREIGN KEY (`id_cuar1`) REFERENCES `cuartel` (`Id_cuar`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
