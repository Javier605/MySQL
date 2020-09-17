-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 16-09-2020 a las 19:39:40
-- Versión del servidor: 10.4.13-MariaDB
-- Versión de PHP: 7.2.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `proyectoconfe`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admins`
--

CREATE TABLE `admins` (
  `id_admin` int(11) NOT NULL,
  `usuario` varchar(50) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `password` varchar(60) NOT NULL,
  `editado` datetime DEFAULT NULL,
  `nivel` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `admins`
--

INSERT INTO `admins` (`id_admin`, `usuario`, `nombre`, `password`, `editado`, `nivel`) VALUES
(1, 'admin', 'hola', '$2y$12$d1rEAZv5Jd2TX/aHRMhPjOTYvXbt0H9GjJYp4katePHvIdiq59mlO', NULL, 1),
(71, 'admin2', 'jose', '$2y$12$okx8EtPEIUJTVsJyFcULw.fBAYZo7A9sFISrU/zMxno172bgFk0eS', NULL, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria_evento`
--

CREATE TABLE `categoria_evento` (
  `id_categria` tinyint(10) NOT NULL,
  `cat_evento` varchar(50) NOT NULL,
  `icono` varchar(15) NOT NULL,
  `editado` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `categoria_evento`
--

INSERT INTO `categoria_evento` (`id_categria`, `cat_evento`, `icono`, `editado`) VALUES
(1, 'Seminarios', 'fa-university', NULL),
(2, 'Conferencias', 'fa-comment', NULL),
(3, 'Talleres', 'fa-code', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `eventos`
--

CREATE TABLE `eventos` (
  `evento_id` int(10) NOT NULL,
  `nombre_evento` varchar(60) NOT NULL,
  `fecha_evento` date NOT NULL,
  `hora_evento` time NOT NULL,
  `id_cat_evento` tinyint(10) NOT NULL,
  `id_inv` tinyint(4) NOT NULL,
  `clave` varchar(10) DEFAULT NULL,
  `editado` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `eventos`
--

INSERT INTO `eventos` (`evento_id`, `nombre_evento`, `fecha_evento`, `hora_evento`, `id_cat_evento`, `id_inv`, `clave`, `editado`) VALUES
(92, 'Metodos de trabajo', '2020-12-11', '10:00:00', 3, 1, NULL, NULL),
(93, 'Errores del pequeño emprendedor', '2020-12-11', '12:00:00', 3, 2, NULL, NULL),
(95, 'Modelamiento de pequeños proyectos', '2020-12-11', '17:00:00', 3, 4, NULL, NULL),
(96, 'Formulacion de proyectos', '2020-12-11', '19:00:00', 3, 5, NULL, NULL),
(97, '¿Como debo empezar?', '2020-12-11', '10:00:00', 2, 6, NULL, NULL),
(98, 'Las edades del emprendedor', '2020-12-11', '17:00:00', 2, 1, NULL, NULL),
(99, 'Motivación. Gestión del fracaso', '2020-12-11', '19:00:00', 2, 2, NULL, NULL),
(100, 'Proyectos de pequeñas y medianas empresas', '2020-12-11', '10:00:00', 1, 6, NULL, NULL),
(101, 'Análisis de la organizaciónnnnAA', '2020-12-12', '10:00:00', 3, 1, NULL, '2020-07-29 20:02:30'),
(102, 'Diseño de la organización', '2020-12-12', '12:00:00', 3, 2, NULL, NULL),
(103, 'Medición del trabajo', '2020-12-12', '14:00:00', 3, 3, NULL, NULL),
(104, 'Gestión de calidad', '2020-12-12', '17:00:00', 3, 4, NULL, NULL),
(105, 'Dirección de proyectos', '2020-12-12', '19:00:00', 3, 5, NULL, NULL),
(106, 'Control de proyectos', '2020-12-12', '21:00:00', 3, 6, NULL, NULL),
(107, 'Ingenieria de metodos', '2020-12-12', '10:00:00', 2, 6, NULL, NULL),
(108, 'Mercado de productos', '2020-12-12', '17:00:00', 2, 1, NULL, NULL),
(109, 'Pasos para crear un negocio rentable', '2020-12-12', '19:00:00', 2, 2, NULL, NULL),
(110, 'Como elegir socios que agreguen valor', '2020-12-12', '10:00:00', 1, 3, NULL, NULL),
(111, 'Empresas familiares: exito transgeneracional', '2020-12-12', '17:00:00', 1, 5, NULL, NULL),
(112, 'Herramientas de control gerencial para Pymes', '2020-12-13', '10:00:00', 3, 1, NULL, NULL),
(113, 'Contar costos', '2020-12-13', '12:00:00', 3, 2, NULL, NULL),
(114, 'Manejo de conflictos', '2020-12-13', '14:00:00', 3, 3, NULL, NULL),
(115, 'Seleccion de herramientas y equipo', '2020-12-13', '17:00:00', 3, 4, NULL, NULL),
(116, 'liderazgo transformacional', '2020-12-13', '19:00:00', 3, 5, NULL, NULL),
(118, 'Presupuestos', '2020-12-13', '17:00:00', 2, 2, NULL, NULL),
(119, 'Planes', '2020-12-13', '19:00:00', 2, 3, NULL, NULL),
(120, 'La clave del éxito en los negocios: elementos que hacen la d', '2020-12-13', '10:00:00', 1, 4, NULL, NULL),
(121, 'Como describir un plan de negocio', '2020-12-13', '17:00:00', 1, 1, NULL, NULL),
(133, 'AAA', '2020-08-07', '22:30:00', 1, 5, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `invitados`
--

CREATE TABLE `invitados` (
  `invitado_id` tinyint(4) NOT NULL,
  `nombre_invitado` varchar(30) NOT NULL,
  `apellido_invitado` varchar(30) NOT NULL,
  `descripcion` text NOT NULL,
  `url_imagen` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `invitados`
--

INSERT INTO `invitados` (`invitado_id`, `nombre_invitado`, `apellido_invitado`, `descripcion`, `url_imagen`) VALUES
(1, 'Rafael', 'Bautista', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'invitado1.jpg'),
(2, 'Shari', 'Herrera', 'Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.', 'invitado2.jpg'),
(3, 'Gregorio', 'Sanchez', 'At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque', 'invitado3.jpg'),
(4, 'Susana', 'Rivera', 'Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque.', 'invitado4.jpg'),
(5, 'Harold', 'Garcia', 'Quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam.', 'invitado5.jpg'),
(6, 'Susan', 'Sanchez', 'Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime.', 'invitado6.jpg'),
(21, 'ss', 'ss', 'ss', 'Anotación 2020-07-19 023426.png');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `regalos`
--

CREATE TABLE `regalos` (
  `ID_regalo` int(11) NOT NULL,
  `nombre_regalo` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `regalos`
--

INSERT INTO `regalos` (`ID_regalo`, `nombre_regalo`) VALUES
(1, 'Pulsera'),
(2, 'Etiquetas'),
(3, 'Plumas');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registrados`
--

CREATE TABLE `registrados` (
  `ID_Registrado` bigint(20) UNSIGNED NOT NULL,
  `nombre_registrado` varchar(50) NOT NULL,
  `apellido_registrado` varchar(50) NOT NULL,
  `email_registrado` varchar(100) NOT NULL,
  `fecha_registro` datetime NOT NULL,
  `pases_articulos` longtext NOT NULL,
  `talleres_registrados` longtext NOT NULL,
  `regalo` int(11) NOT NULL,
  `total_pagado` varchar(50) NOT NULL,
  `pagado` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `registrados`
--

INSERT INTO `registrados` (`ID_Registrado`, `nombre_registrado`, `apellido_registrado`, `email_registrado`, `fecha_registro`, `pases_articulos`, `talleres_registrados`, `regalo`, `total_pagado`, `pagado`) VALUES
(179, 'Javier', 'Toloza', 'a@gmai.com', '2020-07-27 03:24:27', '{\"pase_completo\":1,\"pase_2dias\":2,\"camisas\":\"6\",\"etiquetas\":\"9\"}', '{\"eventos\":[\"97\",\"98\",\"99\",\"92\",\"107\"]}', 2, '213.8', 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id_admin`),
  ADD UNIQUE KEY `usuario` (`usuario`);

--
-- Indices de la tabla `categoria_evento`
--
ALTER TABLE `categoria_evento`
  ADD PRIMARY KEY (`id_categria`);

--
-- Indices de la tabla `eventos`
--
ALTER TABLE `eventos`
  ADD PRIMARY KEY (`evento_id`),
  ADD KEY `id_cat_evento` (`id_cat_evento`),
  ADD KEY `id_inv` (`id_inv`);

--
-- Indices de la tabla `invitados`
--
ALTER TABLE `invitados`
  ADD PRIMARY KEY (`invitado_id`);

--
-- Indices de la tabla `regalos`
--
ALTER TABLE `regalos`
  ADD PRIMARY KEY (`ID_regalo`);

--
-- Indices de la tabla `registrados`
--
ALTER TABLE `registrados`
  ADD PRIMARY KEY (`ID_Registrado`),
  ADD KEY `regalo` (`regalo`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `admins`
--
ALTER TABLE `admins`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT de la tabla `categoria_evento`
--
ALTER TABLE `categoria_evento`
  MODIFY `id_categria` tinyint(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `eventos`
--
ALTER TABLE `eventos`
  MODIFY `evento_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=136;

--
-- AUTO_INCREMENT de la tabla `invitados`
--
ALTER TABLE `invitados`
  MODIFY `invitado_id` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT de la tabla `regalos`
--
ALTER TABLE `regalos`
  MODIFY `ID_regalo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `registrados`
--
ALTER TABLE `registrados`
  MODIFY `ID_Registrado` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=218;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `eventos`
--
ALTER TABLE `eventos`
  ADD CONSTRAINT `eventos_ibfk_1` FOREIGN KEY (`id_cat_evento`) REFERENCES `categoria_evento` (`id_categria`),
  ADD CONSTRAINT `eventos_ibfk_2` FOREIGN KEY (`id_inv`) REFERENCES `invitados` (`invitado_id`);

--
-- Filtros para la tabla `registrados`
--
ALTER TABLE `registrados`
  ADD CONSTRAINT `registrados_ibfk_1` FOREIGN KEY (`regalo`) REFERENCES `regalos` (`ID_regalo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
