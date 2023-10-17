-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 17-10-2023 a las 06:16:15
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
-- Base de datos: `dbpost`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `posteo`
--

CREATE TABLE `posteo` (
  `id` int(11) NOT NULL,
  `titulo` varchar(250) NOT NULL,
  `contenido` varchar(500) NOT NULL,
  `imagen` varchar(2000) NOT NULL,
  `fechacrea` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `posteo`
--

INSERT INTO `posteo` (`id`, `titulo`, `contenido`, `imagen`, `fechacrea`) VALUES
(1, 'los locos adam', 'fue una pelicula exitosa donde se lanzaron varias sagas a lo largo de los años', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTZ6_GLt3oyEeqvgJYl3dU7HeLuMtvYHFkKWOpFK6H8D6j8Vv6wuhN_Fo3GXJeQPZ3p5ng&usqp=CAU', '2023-10-17 00:47:06'),
(2, 'los nocheros', 'fue una banda popular con numerosos exitos', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTZ6_GLt3oyEeqvgJYl3dU7HeLuMtvYHFkKWOpFK6H8D6j8Vv6wuhN_Fo3GXJeQPZ3p5ng&usqp=CAU', '2023-10-17 00:47:06'),
(3, 'el pajaro canta hasta morir', 'fue una pelicula basada en un libro y es considerada la pelicula mas larga der la epoca.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTZ6_GLt3oyEeqvgJYl3dU7HeLuMtvYHFkKWOpFK6H8D6j8Vv6wuhN_Fo3GXJeQPZ3p5ng&usqp=CAU', '2023-10-17 00:47:06'),
(4, 'la flor margarita', 'es una de las flores mas hermosas del mundo', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTZ6_GLt3oyEeqvgJYl3dU7HeLuMtvYHFkKWOpFK6H8D6j8Vv6wuhN_Fo3GXJeQPZ3p5ng&usqp=CAU', '2023-10-17 00:47:06'),
(7, 'los locos adam 3', 'fue una mala pelicula :P', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTZ6_GLt3oyEeqvgJYl3dU7HeLuMtvYHFkKWOpFK6H8D6j8Vv6wuhN_Fo3GXJeQPZ3p5ng&usqp=CAU', '2023-10-17 03:49:13');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `posteo`
--
ALTER TABLE `posteo`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `posteo`
--
ALTER TABLE `posteo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
