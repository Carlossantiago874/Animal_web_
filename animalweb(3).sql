-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 19-03-2022 a las 06:05:54
-- Versión del servidor: 10.4.21-MariaDB
-- Versión de PHP: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `animalweb`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `adopcion`
--

CREATE TABLE `adopcion` (
  `id` int(11) NOT NULL,
  `nombre` varchar(80) NOT NULL,
  `foto` varchar(100) NOT NULL,
  `descripcion` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id` int(10) NOT NULL,
  `nombre` varchar(50) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id`, `nombre`) VALUES
(3, 'Cachorro'),
(4, 'Adultos'),
(5, 'Razas pequeñas');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id` int(10) NOT NULL,
  `nombre` varchar(80) COLLATE utf8_spanish_ci NOT NULL,
  `apellidos` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `telefono` varchar(15) COLLATE utf8_spanish_ci NOT NULL,
  `comentario` varchar(300) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id`, `nombre`, `apellidos`, `email`, `telefono`, `comentario`) VALUES
(1, 'carlos', 'calle 73c sur # 77 l09', 'carssantiago@hotmail.es', '3118812790', 'casa roja'),
(2, 'carlos', 'calle 73c sur # 77 l09', 'carssantiago@hotmail.es', '3118812790', ''),
(3, 'juan carlos', 'calle213', 'coronadoc744@gmail.com', '123', '123'),
(4, 'claudia', 'clajjññad', 'jddfklf@gmail.com', '5465465', 'nkdnckd'),
(5, 'carlos santiago', 'calle', 'carssantiago@hotmail.es', '3118812790', '123'),
(6, 'carlos santiago', 'calle 73c sur # 77 l09', 'carssantiago@hotmail.es', '1231', 'adsdas');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_pedidos`
--

CREATE TABLE `detalle_pedidos` (
  `id` int(11) NOT NULL,
  `pedido_id` int(11) NOT NULL,
  `productos_id` int(11) NOT NULL,
  `precio` decimal(10,2) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `estado` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `detalle_pedidos`
--

INSERT INTO `detalle_pedidos` (`id`, `pedido_id`, `productos_id`, `precio`, `cantidad`, `estado`) VALUES
(1, 1, 1, '23900.00', 5, 1),
(2, 2, 1, '23900.00', 2, 1),
(3, 3, 2, '1000.00', 2, 1),
(4, 3, 1, '23900.00', 3, 1),
(5, 4, 2, '1000.00', 1, 1),
(6, 5, 73, '20.00', 20, 1),
(7, 6, 72, '5.00', 10, 1),
(8, 6, 69, '14.00', 89, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `enviar`
--

CREATE TABLE `enviar` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellidos` varchar(50) NOT NULL,
  `telefono` varchar(100) NOT NULL,
  `email` varchar(200) NOT NULL,
  `id_animal` int(11) NOT NULL,
  `peticion` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `enviar`
--

INSERT INTO `enviar` (`id`, `nombre`, `apellidos`, `telefono`, `email`, `id_animal`, `peticion`) VALUES
(33, 'carlos', 'santiago', '3118812790', 'carssantiago@hotmail.es', 1, 'aja'),
(34, 'carlos', 'santiago', '3118812790', 'carssantiago@hotmail.es', 1, 'aja'),
(35, 'carlos', 'santiago', '3118812790', 'carssantiago@hotmail.es', 1, 'aja'),
(36, 'carlos', 'santiago', '3118812790', 'carssantiago@hotmail.es', 1, 'aja'),
(37, 'carlos', 'santiago', '3118812790', 'carssantiago@hotmail.es', 1, 'aja'),
(38, 'carlos', 'santiago', '3118812790', 'carssantiago@hotmail.es', 1, 'aja'),
(39, 'carlos', 'santiago', '3118812790', 'carssantiago@hotmail.es', 1, 'aja'),
(40, 'carlos', 'santiago', '3118812790', 'carssantiago@hotmail.es', 1, 'aja'),
(41, 'carlos', 'santiago', '3118812790', 'carssantiago@hotmail.es', 1, 'aja'),
(42, 'carlos', 'santiago', '3118812790', 'carssantiago@hotmail.es', 1, 'aja'),
(43, 'carlos', 'santiago', '3118812790', 'carssantiago@hotmail.es', 1, 'aja'),
(44, 'carlos', 'santiago', '3118812790', 'carssantiago@hotmail.es', 1, 'aja'),
(45, 'carlos', 'santiago', '3118812790', 'carssantiago@hotmail.es', 1, 'aja'),
(46, 'carlos', 'santiago', '3118812790', 'carssantiago@hotmail.es', 1, 'aja'),
(47, 'carlos', 'santiago', '3118812790', 'carssantiago@hotmail.es', 1, 'aja'),
(48, 'carlos', 'santiago', '3118812790', 'carssantiago@hotmail.es', 1, 'aja'),
(49, 'carlos', 'santiago', '3118812790', 'carssantiago@hotmail.es', 1, 'aja');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedidos`
--

CREATE TABLE `pedidos` (
  `id` int(10) NOT NULL,
  `cliente_id` int(11) NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `fecha` date NOT NULL,
  `estado` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `pedidos`
--

INSERT INTO `pedidos` (`id`, `cliente_id`, `total`, `fecha`, `estado`) VALUES
(1, 1, '119500.00', '2022-01-26', 1),
(2, 2, '47800.00', '2022-01-27', 1),
(3, 3, '73700.00', '2022-01-27', 1),
(4, 4, '1000.00', '2022-03-05', 1),
(5, 5, '400.00', '2022-03-12', 1),
(6, 6, '1296.00', '2022-03-18', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `titulo` varchar(80) NOT NULL,
  `descripcion` varchar(300) NOT NULL,
  `foto` varchar(100) NOT NULL,
  `precio` decimal(10,2) NOT NULL,
  `categoria_id` int(10) NOT NULL,
  `fecha` date NOT NULL,
  `estado` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `titulo`, `descripcion`, `foto`, `precio`, `categoria_id`, `fecha`, `estado`) VALUES
(1, 'Dog Chow adultos razas pequeños x 2 kilos $23.900und', 'Dog Chow ahora vienen con EXTRALIFE una mezcla especial con antioxidantes, vitaminas y minerales para maximimar su calidad de vida. Alimento completo para perros adultos de razaspequeñas de actividad normal de 1 a 7 años de edad.\nBeneficios\n\n*Equilibra la flora intestinal.\n\n*Ayuda a mantener su', 'dog show razas pequeñas.jpg', '23900.00', 5, '2022-01-26', 1),
(5, 'Mixtura Para Canarios  y Pericos ', 'comida para aves ', 'Paquete-Alimento-Para-Aves-5933_a.jpg', '10.00', 4, '2022-03-05', 1),
(6, 'Dispensadores De Comidas Para Aves ', 'Producto para aves ', 'dispensadores-de-comida-para-aves.jpg', '5.00', 4, '2022-03-05', 1),
(7, 'Alpiste Para Canarios ', 'comida para aves ', 'ps-alpiste-puro-el-canario-400g.gif', '12.00', 3, '2022-03-05', 1),
(8, 'Piopa Comida Para conejos', 'comida para conejos ', '125156-8422250050109_1_g.jpeg', '12.00', 3, '2022-03-05', 1),
(9, 'Menu comida para conejos ', 'comida para conejos ', '13871-mta566-alimento-conejos-enanos-vitakraft-menu-vital_1_g.jpg', '12.00', 3, '2022-03-05', 1),
(10, 'Peine Para Mascotas ', 'Peine para perros y gatos ', '71bhmWjDPmL._SY355_.jpg', '10.00', 4, '2022-03-05', 1),
(11, 'Casa Para Perros ', 'casa para perros ', 'casa-para-perros-68-x-61-x-58-cm.jpg', '90.00', 4, '2022-03-05', 1),
(12, 'Alimento Húmedo Para Gatos ', 'comida para gato ', '52742462806-1.jpg', '20.00', 4, '2022-03-05', 1),
(13, 'Br For Cat Adulto Castrados', 'comida para gatos ', 'a463e32d2a02e226d4d3f52d129363f1.jfif', '20.00', 3, '2022-03-05', 1),
(14, 'Cozy Puff PUFF', 'producto para perro ', 'CozyPuff1.jpg', '40.00', 4, '2022-03-05', 1),
(15, 'Cozy Coils', 'producto para perros ', 'CozyCoils1.jpg', '249.00', 3, '2022-03-05', 1),
(16, 'Frontline Pipetas Spot On Raza Pequeña 2-10 Kg', 'Producto para perros pulgas ', '88055-noshdw-logo-bi-frontline-spoton-03-es16p3401_1_g.png', '19.00', 3, '2022-03-05', 1),
(17, 'Hills Canine Treats Chicken', 'Hills Canine Treats Chicken', '10ea470d75cbb51a8bb86b925b53d885.jpg', '19.60', 5, '2022-03-05', 1),
(18, 'jabon para perro  grisi ', 'jabon para perro ', 'imgp40 (1).jpg', '6.00', 4, '2022-03-10', 1),
(19, 'jabon para perro asuntol ', 'jabon para perro ', 'imgp39.jpg', '7000.00', 4, '2022-03-10', 1),
(20, 'jabon de perro cant amor ', 'jabon de perro', 'imgp38.jpg', '7.00', 3, '2022-03-10', 1),
(21, 'jabon para perro  cant amor ', 'insecticidad jabon ', 'imgp37.jpg', '10.00', 3, '2022-03-10', 1),
(22, 'ropa de perro navideña ', 'ropa perro', 'imgp36.jpg', '50.00', 5, '2022-03-10', 1),
(23, 'saco para perro ', 'saco perro', 'imgp34.jpg', '80.00', 5, '2022-03-10', 1),
(24, 'camisa para perro', 'camisa perro ', 'imgp35.jpg', '40.00', 5, '2022-03-10', 1),
(25, 'vestido para perrita ', 'vestido para perrita ', 'imgp32.jpg', '80.00', 5, '2022-03-10', 1),
(26, 'jabon para perro  azun tol', 'jabon para perro garra pasta pios y pulgas ', 'imgp33.jpg', '8.00', 5, '2022-03-10', 1),
(27, 'saco para perro ', 'saco perro ', 'imgp31.jpg', '70.00', 5, '2022-03-10', 1),
(28, 'perchero para perro ', 'perchero para perro ', 'imgp29.jpg', '30.00', 5, '2022-03-10', 1),
(29, 'perchero para perro ', 'perchero para perro pequeño', 'imgp30.jpg', '35.00', 5, '2022-03-10', 1),
(30, 'perchero para perra', 'perchero para perra raza grande adulto ', 'imgp28.jpg', '25.00', 4, '2022-03-10', 1),
(31, 'pelota para perros', 'pelota para perros', 'imgp26.jpg', '10.00', 4, '2022-03-10', 1),
(32, 'perchero para perro', 'perchero para perro', 'imgp27.jpg', '30.00', 3, '2022-03-10', 1),
(33, 'pelotas para perro ', 'pelotas para perro ', 'imgp25.jpg', '8.00', 3, '2022-03-10', 1),
(34, 'cama para perro ', 'cama para perro ', 'imgp24.jpg', '80.00', 3, '2022-03-10', 1),
(35, 'cama para perro ', 'cama para perro ', 'imgp23.jpg', '90.00', 5, '2022-03-10', 1),
(36, 'comida para perro marca chunky', 'comida para perro', 'imgp21.jpg', '15.00', 4, '2022-03-10', 1),
(37, 'cama para perra', 'cama para perra', 'imgp22.jpg', '120.00', 3, '2022-03-10', 1),
(38, 'comida para cachorro marca ringo ', 'comida para cachorro', 'imgp20.jpg', '16.00', 3, '2022-03-10', 1),
(39, 'pelota para perro ', 'pelota para perro ', 'imgp19.jpg', '5.00', 3, '2022-03-10', 1),
(40, 'collar led  para perro', 'collar led  para perro', 'imgp18.jpg', '15.00', 3, '2022-03-10', 1),
(41, 'cama para perra', 'cama para perra adulto', 'imgp14.jpg', '130.00', 5, '2022-03-10', 1),
(42, 'hueso para perros', 'hueso para perros', 'imgp15.jpg', '3.00', 4, '2022-03-10', 1),
(43, 'cuerda con pelota para perro ', 'cuerda con pelota para perro ', 'imgp16.jpg', '15.00', 4, '2022-03-10', 1),
(44, 'comida para perro  monello para adulto ', 'comida para perro  ', 'imgp13.jpg', '14.00', 4, '2022-03-10', 1),
(45, 'hueso para perro adulto ', 'hueso para perro ', 'imgp12.jpg', '10.00', 4, '2022-03-10', 1),
(46, 'cama para perros raza pequeña ', 'cama para perros raza', 'imgp11.jpeg', '90.00', 5, '2022-03-10', 1),
(48, 'perchero perro raza pequeña ', 'perchero perro raza pequeña ', 'imgp9.jpg', '20.00', 5, '2022-03-10', 1),
(49, 'juguete para cachorros ', 'juguete para cachorros ', 'imgp8.jpg', '20.00', 3, '2022-03-10', 1),
(50, 'cama para perro ', 'cama para perro ', 'imgp7.jpg', '160.00', 4, '2022-03-10', 1),
(51, 'purina para perro  adultos dog chow', 'purina para perro  adultos', 'imgp6.jpg', '12.00', 4, '2022-03-10', 1),
(52, 'hueso para perros', 'hueso para perros', 'imgp3.jpg', '4.00', 4, '2022-03-10', 1),
(53, 'cama para perra raza grande ', 'cama para perra ', 'imgp2.jpg', '200.00', 4, '2022-03-10', 1),
(54, 'collar para perros ', 'collar para perros ', 'imgp4.jpg', '13.00', 4, '2022-03-10', 1),
(55, 'pelotas para perros y perras ', 'pelotas para perros y perras ', 'img17.jpeg', '8.00', 4, '2022-03-10', 1),
(56, 'GYM gatos ', 'GYM gatos ', 'imgc18.jpg', '110.00', 4, '2022-03-10', 1),
(57, 'juguete raton para gatos ', 'juguete raton para gatos ', 'imgc20.jpg', '4.00', 4, '2022-03-10', 1),
(58, 'juguete para gatos ', 'juguete para gatos ', 'imgc19.jpg', '40.00', 4, '2022-03-10', 1),
(59, 'comida para gatos marca dali', 'comida para gatos', 'imgc16.jpg', '20.00', 4, '2022-03-10', 1),
(60, 'juguete para gatos ', 'juguete para gatos ', 'imgc13.jpg', '8.00', 5, '2022-03-10', 1),
(61, 'GYM gatos ', 'GYM gatos ', 'imgc17.jpg', '80.00', 4, '2022-03-10', 1),
(62, 'comida para gatos marca miringo', 'comida para gatos', 'imgc15.jpg', '25.00', 4, '2022-03-10', 1),
(63, 'collar para gatos ', 'collar para gatos ', 'imgc12.jpg', '10.00', 3, '2022-03-10', 1),
(64, 'collar para gatos y gatas', 'collar para gatos y gatas', 'imgc11.jpg', '12.00', 4, '2022-03-10', 1),
(65, 'Gym para gatos', 'Gym para gatos', 'imgc10.jpg', '140.00', 4, '2022-03-10', 1),
(66, 'comida para gatos marca equilibrio adultos', 'comida para gatos marca equilibrio ', 'imgc8.jpg', '30.00', 4, '2022-03-10', 1),
(67, 'GYM gatos ', 'GYM gatos ', 'imgc9.jpg', '120.00', 5, '2022-03-10', 1),
(68, 'juguete para gatos pequeñitos ', 'juguete para gatos pequeñitos ', 'imgc6.jpg', '20.00', 5, '2022-03-10', 1),
(69, 'shampoo para gatos ', 'shampoo para gatos ', 'imgc5.jpg', '14.00', 4, '2022-03-10', 1),
(70, 'shampoo para gatos marca  cal amor', 'shampoo para gatos marca  cal amor', 'imgc2.jpg', '30.00', 5, '2022-03-10', 1),
(71, 'shampoo para gatos marca  beaphar', 'shampoo para gatos', 'imgc4.jpg', '15.00', 4, '2022-03-10', 1),
(72, 'jabon', 'jabon para gatos ', 'imgc3.jpg', '5.00', 3, '2022-03-12', 1),
(74, 'dsadas', 'sadasd', 'índice.jpg', '99999999.99', 3, '2022-03-18', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registro`
--

CREATE TABLE `registro` (
  `id_usuario` int(11) NOT NULL,
  `usuario` varchar(70) COLLATE utf8_spanish2_ci NOT NULL,
  `apellidos` varchar(70) COLLATE utf8_spanish2_ci NOT NULL,
  `telefono` varchar(14) COLLATE utf8_spanish2_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `password` text COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `registro`
--

INSERT INTO `registro` (`id_usuario`, `usuario`, `apellidos`, `telefono`, `email`, `password`) VALUES
(24, 'carlos santiago', 'coronado rubio', '3118812790', 'coronadoc744@gmail.com', '123'),
(25, 'isaura', 'novoa', '123', 'ca@asds.com', '123');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre_usuario` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `clave` varchar(150) COLLATE utf8_spanish_ci NOT NULL,
  `estado` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre_usuario`, `clave`, `estado`) VALUES
(1, 'animalweb', 'animalweb123', 1),
(2, 'carlos1234', '1234', 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `adopcion`
--
ALTER TABLE `adopcion`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `detalle_pedidos`
--
ALTER TABLE `detalle_pedidos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `enviar`
--
ALTER TABLE `enviar`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pedidos`
--
ALTER TABLE `pedidos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `registro`
--
ALTER TABLE `registro`
  ADD PRIMARY KEY (`id_usuario`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `adopcion`
--
ALTER TABLE `adopcion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `detalle_pedidos`
--
ALTER TABLE `detalle_pedidos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `enviar`
--
ALTER TABLE `enviar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT de la tabla `pedidos`
--
ALTER TABLE `pedidos`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT de la tabla `registro`
--
ALTER TABLE `registro`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
