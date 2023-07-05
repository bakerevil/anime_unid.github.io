-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 05-07-2023 a las 23:44:11
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `anime_rocket`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id` int(11) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `color` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `listas`
--

CREATE TABLE `listas` (
  `id` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `sipnosis` varchar(255) NOT NULL,
  `thumbnail` varchar(255) NOT NULL,
  `capitulos` varchar(255) NOT NULL,
  `fecha_insercion` date NOT NULL,
  `votos` float(1,1) NOT NULL,
  `anio` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `listas`
--

INSERT INTO `listas` (`id`, `nombre`, `sipnosis`, `thumbnail`, `capitulos`, `fecha_insercion`, `votos`, `anio`) VALUES
(1, 'Demons Slayer', 'niño que vende carbon con su hermana', 'https://picsum.photos/300/200', '1', '2023-02-02', 0.9, '2023-06-10 00:11:13'),
(2, 'spy x family', 'papa espia con hija que le la mente y una mama sicaria ', 'https://picsum.photos/300/200', '3', '2022-07-15', 0.9, '2022-05-31 23:05:43');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rel_roles`
--

CREATE TABLE `rel_roles` (
  `id` int(11) NOT NULL,
  `n_rol` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `rel_roles`
--

INSERT INTO `rel_roles` (`id`, `n_rol`) VALUES
(0, 'usuario'),
(1, 'admin');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rel_status`
--

CREATE TABLE `rel_status` (
  `id` int(11) NOT NULL,
  `nombre` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `rel_status`
--

INSERT INTO `rel_status` (`id`, `nombre`) VALUES
(0, 'inactivo'),
(1, 'activo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rel_video_categoria`
--

CREATE TABLE `rel_video_categoria` (
  `id` int(11) NOT NULL,
  `id_video` int(11) NOT NULL,
  `id_categoria` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rel_video_lista`
--

CREATE TABLE `rel_video_lista` (
  `id` int(11) NOT NULL,
  `id_video` int(11) NOT NULL,
  `id_lista` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `correo` varchar(255) NOT NULL,
  `pass` varchar(30) NOT NULL,
  `rol` int(1) NOT NULL,
  `statuss` int(1) NOT NULL,
  `usuario` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `correo`, `pass`, `rol`, `statuss`, `usuario`) VALUES
(1, 'hola@hola.com', 'hola1', 1, 1, 'admin'),
(12, 'leo', '123', 1, 1, 'leo@gmail.com'),
(14, 'leo@gmail.com', '123', 0, 0, 'edgar'),
(16, 'asd', 'qwe', 1, 1, 'oho'),
(17, 'gael', 'zxc', 0, 0, 'hola2@hola.com'),
(18, 'qwe', 'qwe', 1, 1, 'q@'),
(19, 'qweewq', 'qweq', 1, 1, 'dq@f'),
(20, 'ssss', 'aaaa', 0, 0, 'asd@asd.mx'),
(21, 'zxc', 'qwe', 1, 1, 'hola@hola.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `video`
--

CREATE TABLE `video` (
  `id` int(11) NOT NULL,
  `titulo` varchar(55) NOT NULL,
  `thumbnail` varchar(255) NOT NULL,
  `archivo` varchar(255) NOT NULL,
  `categoria` varchar(11) NOT NULL,
  `lista` int(4) NOT NULL,
  `fecha_insercion` date NOT NULL,
  `fecha_publicacion` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `orden` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `video`
--

INSERT INTO `video` (`id`, `titulo`, `thumbnail`, `archivo`, `categoria`, `lista`, `fecha_insercion`, `fecha_publicacion`, `orden`) VALUES
(1, 'one piece', 'https://picsum.photos/300/200', 'https://picsum.photos/300/200', '1', 1, '2023-05-10', '2023-06-09 15:00:44', 377),
(2, 'JOJOS', 'https://picsum.photos/300/200', 'https://picsum.photos/300/200', '2', 1, '2022-11-24', '2023-02-08 14:40:58', 24),
(3, 'kunosuba', 'https://picsum.photos/300/200', 'https://picsum.photos/300/200', '4', 1, '2023-04-13', '2023-06-09 14:50:18', 1),
(4, 'naruto', 'https://picsum.photos/300/200', 'https://picsum.photos/300/200', '2', 1, '2023-04-04', '2023-05-10 14:53:24', 3),
(5, 'hunter x hunter', 'https://picsum.photos/300/200', 'https://picsum.photos/300/200', '4', 1, '2023-06-01', '2023-06-09 15:00:07', 10),
(6, 'bersersk', 'https://picsum.photos/300/200', 'https://picsum.photos/300/200', '3', 1, '2023-05-23', '2023-05-16 14:56:00', 13),
(7, 'vagabond', 'https://picsum.photos/300/200', 'https://picsum.photos/300/200', '3', 1, '2023-01-24', '2023-01-20 14:57:27', 2),
(8, 'vinland saga', 'https://picsum.photos/300/200', 'https://picsum.photos/300/200', '3', 1, '2023-04-20', '2023-06-09 14:59:53', 7);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `listas`
--
ALTER TABLE `listas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `rel_roles`
--
ALTER TABLE `rel_roles`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `rel_status`
--
ALTER TABLE `rel_status`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `rel_video_categoria`
--
ALTER TABLE `rel_video_categoria`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `rel_video_lista`
--
ALTER TABLE `rel_video_lista`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `correo` (`correo`);

--
-- Indices de la tabla `video`
--
ALTER TABLE `video`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `listas`
--
ALTER TABLE `listas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `rel_roles`
--
ALTER TABLE `rel_roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `rel_status`
--
ALTER TABLE `rel_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `rel_video_categoria`
--
ALTER TABLE `rel_video_categoria`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `rel_video_lista`
--
ALTER TABLE `rel_video_lista`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT de la tabla `video`
--
ALTER TABLE `video`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
