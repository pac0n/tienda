-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 15-11-2017 a las 21:07:54
-- Versión del servidor: 5.7.14
-- Versión de PHP: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `store`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `administrador`
--

CREATE TABLE `administrador` (
  `Nombre` varchar(30) NOT NULL,
  `Clave` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `administrador`
--

INSERT INTO `administrador` (`Nombre`, `Clave`) VALUES
('admin', '21232f297a57a5a743894a0e4a801fc3');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE `categoria` (
  `CodigoCat` varchar(30) NOT NULL,
  `Nombre` varchar(30) NOT NULL,
  `Descripcion` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`CodigoCat`, `Nombre`, `Descripcion`) VALUES
('111', 'Bebidas', 'Liquidos'),
('987979', 'Higiene', 'Higiene personal'),
('C1', 'Electrodomésticos', 'Articulos de primera necesidad para el hogar'),
('C2', 'Multimedia', 'Articulos de entretenimiento y diversión'),
('C3', 'Móbiles', 'Teléfonos celulares smartphones');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `NIT` varchar(30) NOT NULL,
  `Nombre` varchar(30) NOT NULL,
  `NombreCompleto` varchar(70) NOT NULL,
  `Apellido` varchar(70) NOT NULL,
  `Clave` text NOT NULL,
  `Direccion` varchar(200) NOT NULL,
  `Telefono` int(20) NOT NULL,
  `Email` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`NIT`, `Nombre`, `NombreCompleto`, `Apellido`, `Clave`, `Direccion`, `Telefono`, `Email`) VALUES
('0101-010101-101-1', 'pacon', 'Francisco', 'Gonzalez', '81dc9bdb52d04dc20036dbd8313ed055', 'Av siempre viva #742', 22222222, 'paco@mail.com'),
('2221202122', 'Pepe', 'Jose', 'Perez', '81dc9bdb52d04dc20036dbd8313ed055', 'Av. de Pepe #1000', 2343536, 'pepe@mail.com'),
('2221333435', 'usuario', 'Usuario', 'Apellido de Ususario', '81dc9bdb52d04dc20036dbd8313ed055', 'Av. del usuario3 numero 3', 2222222, 'usuario3@mail.com'),
('3232121314', 'pepej', 'Pepe Jose', 'Garcia', '81dc9bdb52d04dc20036dbd8313ed055', 'Av siempre viva #741', 2909192, 'pepej@mail.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comentarios`
--

CREATE TABLE `comentarios` (
  `id` int(30) NOT NULL,
  `autor` varchar(100) NOT NULL,
  `comentario` varchar(250) NOT NULL,
  `fecha` varchar(20) NOT NULL,
  `CodigoProd` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `comentarios`
--

INSERT INTO `comentarios` (`id`, `autor`, `comentario`, `fecha`, `CodigoProd`) VALUES
(23, 'admin', 'Hay descuento?', '2017-11-05 21:35:45', '007'),
(24, 'admin', 'Tienes venta por mayoreo?', '2017-11-05 21:36:28', '56709'),
(25, 'pepej', 'Con cuantas unidades cuenta?', '2017-11-07 09:29:53', '56709'),
(26, 'pepej', 'ugkhjhgjh', '2017-11-07 09:40:12', '123123213'),
(28, 'pacon', 'Aun tienen?', '2017-11-07 09:58:21', '007'),
(30, 'usuario', 'Son nuevos?', '2017-11-07 10:04:12', '65464564');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle`
--

CREATE TABLE `detalle` (
  `NumPedido` int(20) NOT NULL,
  `CodigoProd` varchar(30) NOT NULL,
  `CantidadProductos` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `detalle`
--

INSERT INTO `detalle` (`NumPedido`, `CodigoProd`, `CantidadProductos`) VALUES
(1, '123123213', 1),
(2, '123123213', 1),
(2, '1212', 1),
(2, '1212', 1),
(2, '1212', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `CodigoProd` varchar(30) NOT NULL,
  `NombreProd` varchar(30) NOT NULL,
  `CodigoCat` varchar(30) NOT NULL,
  `Precio` decimal(30,2) NOT NULL,
  `Modelo` varchar(30) NOT NULL,
  `Marca` varchar(30) NOT NULL,
  `Stock` int(20) NOT NULL,
  `NITProveedor` varchar(30) NOT NULL,
  `Imagen` varchar(150) NOT NULL,
  `Nombre` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`CodigoProd`, `NombreProd`, `CodigoCat`, `Precio`, `Modelo`, `Marca`, `Stock`, `NITProveedor`, `Imagen`, `Nombre`) VALUES
('006', 'Tele LED', 'C1', '9000.00', 'vtx', 'Vizio ', 10, '67', 'tele.jpg', 'pacon'),
('007', 'Xperia XA ultra', 'C3', '6000.00', 'XA ultra', 'Sony', 90, '0001781', 'SONY_Xperia_XA_Ultra_L_1.jpg', 'admin'),
('1212', 'Vorago Bocinas ', 'C1', '1300.00', '500 Bluet', 'Vorago', 67, '12', 'bocinas.png', 'usuario'),
('123123213', 'Moto G4 plus', 'C3', '2500.00', 'G4 plus', 'Motorola', 13, '0001785', '20-Motorola-Moto-G4-Plus-64-GB.jpg', 'admin'),
('56709', 'Coca-cola 600 mls', '111', '8.00', '600 mls', 'cocacola', 99, '12', 'coca.jpg', 'usuario'),
('65464564', 'Kleenex', '987979', '1000.00', '1', 'Kleenex', 9, '12', 'papel.png', 'admin');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedor`
--

CREATE TABLE `proveedor` (
  `NITProveedor` varchar(30) NOT NULL,
  `NombreProveedor` varchar(30) NOT NULL,
  `Direccion` varchar(200) NOT NULL,
  `Telefono` int(20) NOT NULL,
  `PaginaWeb` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `proveedor`
--

INSERT INTO `proveedor` (`NITProveedor`, `NombreProveedor`, `Direccion`, `Telefono`, `PaginaWeb`) VALUES
('0001781', 'Sony', 'Minato, Tokio, Japón', 22596485, 'www.sony.com'),
('0001782', 'HTC', 'Taoyuan, Taiwán, (República de China)', 25987456, 'www.htc.com'),
('0001783', 'TCL', 'Huizhou, Guangdong, China', 25698745, 'tcl.com.ar'),
('0001785', 'Samsung', 'Samsung Town, Seúl, Corea del Sur', 22504787, 'www.samsung.com'),
('0001787', 'LG', 'Seúl,Corea del Sur', 26589874, 'www.lg.com'),
('0001788', 'Compaq', 'Houston, Texas, EE.UU', 24569875, 'www.compaq.com'),
('12', 'Un provedor', 'Direccion del provedor 12 numero 12', 8909090, 'www.provedor12.com'),
('67', 'Otro proveedor', 'Av. del otro proveedor numero 67', 2454647, 'www.elotroproveedor.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `venta`
--

CREATE TABLE `venta` (
  `NumPedido` int(20) NOT NULL,
  `Fecha` varchar(150) NOT NULL,
  `NIT` varchar(30) NOT NULL,
  `Descuento` int(20) NOT NULL,
  `TotalPagar` decimal(30,2) NOT NULL,
  `Estado` varchar(150) NOT NULL,
  `Vendedor` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `venta`
--

INSERT INTO `venta` (`NumPedido`, `Fecha`, `NIT`, `Descuento`, `TotalPagar`, `Estado`, `Vendedor`) VALUES
(1, '30-10-2017', '0101-010101-101-1', 0, '2500.00', 'Pendiente', 'admin'),
(2, '30-10-2017', '0101-010101-101-1', 0, '2500.00', 'Pendiente', 'admin'),
(3, '05-11-2017', '2221202122', 0, '9900.00', 'Pendiente', 'pacon');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `administrador`
--
ALTER TABLE `administrador`
  ADD PRIMARY KEY (`Nombre`);

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`CodigoCat`);

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`NIT`);

--
-- Indices de la tabla `comentarios`
--
ALTER TABLE `comentarios`
  ADD PRIMARY KEY (`id`),
  ADD KEY `CodigoProd` (`CodigoProd`);

--
-- Indices de la tabla `detalle`
--
ALTER TABLE `detalle`
  ADD KEY `NumPedido` (`NumPedido`),
  ADD KEY `CodigoProd` (`CodigoProd`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`CodigoProd`),
  ADD KEY `CodigoCat` (`CodigoCat`),
  ADD KEY `NITProveedor` (`NITProveedor`),
  ADD KEY `Agregado` (`Nombre`);

--
-- Indices de la tabla `proveedor`
--
ALTER TABLE `proveedor`
  ADD PRIMARY KEY (`NITProveedor`);

--
-- Indices de la tabla `venta`
--
ALTER TABLE `venta`
  ADD PRIMARY KEY (`NumPedido`),
  ADD KEY `NIT` (`NIT`),
  ADD KEY `NIT_2` (`NIT`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `comentarios`
--
ALTER TABLE `comentarios`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT de la tabla `venta`
--
ALTER TABLE `venta`
  MODIFY `NumPedido` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `comentarios`
--
ALTER TABLE `comentarios`
  ADD CONSTRAINT `comentarios_ibfk_1` FOREIGN KEY (`CodigoProd`) REFERENCES `producto` (`CodigoProd`) ON DELETE CASCADE;

--
-- Filtros para la tabla `detalle`
--
ALTER TABLE `detalle`
  ADD CONSTRAINT `detalle_ibfk_8` FOREIGN KEY (`CodigoProd`) REFERENCES `producto` (`CodigoProd`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `detalle_ibfk_9` FOREIGN KEY (`NumPedido`) REFERENCES `venta` (`NumPedido`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `producto`
--
ALTER TABLE `producto`
  ADD CONSTRAINT `producto_ibfk_7` FOREIGN KEY (`CodigoCat`) REFERENCES `categoria` (`CodigoCat`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `producto_ibfk_8` FOREIGN KEY (`NITProveedor`) REFERENCES `proveedor` (`NITProveedor`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `venta`
--
ALTER TABLE `venta`
  ADD CONSTRAINT `venta_ibfk_1` FOREIGN KEY (`NIT`) REFERENCES `cliente` (`NIT`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
