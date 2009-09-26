-- phpMyAdmin SQL Dump
-- version 3.2.0.1deb1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 05-08-2009 a las 18:39:00
-- Versión del servidor: 5.0.77
-- Versión de PHP: 5.2.10-2

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

--
-- Base de datos: `quillahue_development`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cabanas`
--

CREATE TABLE IF NOT EXISTS `cabanas` (
  `id` int(11) NOT NULL auto_increment,
  `nombre` varchar(255) default NULL,
  `servicio_id` int(11) default NULL,
  `descripcion` text,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Volcar la base de datos para la tabla `cabanas`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE IF NOT EXISTS `clientes` (
  `id` int(11) NOT NULL auto_increment,
  `nombre` varchar(255) default NULL,
  `apellido` varchar(255) default NULL,
  `direccion` varchar(255) default NULL,
  `ciudad` varchar(255) default NULL,
  `pais` varchar(255) default NULL,
  `telefono` varchar(255) default NULL,
  `email` varchar(255) default NULL,
  `precio_total` float default NULL,
  `precio_unit` float default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Volcar la base de datos para la tabla `clientes`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `complejos`
--

CREATE TABLE IF NOT EXISTS `complejos` (
  `id` int(11) NOT NULL auto_increment,
  `nombre` varchar(255) default NULL,
  `pais` varchar(255) default NULL,
  `provincia` varchar(255) default NULL,
  `ciudad` varchar(255) default NULL,
  `direccion` varchar(255) default NULL,
  `telefono` varchar(255) default NULL,
  `email` varchar(255) default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Volcar la base de datos para la tabla `complejos`
--

INSERT INTO `complejos` (`id`, `nombre`, `pais`, `provincia`, `ciudad`, `direccion`, `telefono`, `email`, `created_at`, `updated_at`) VALUES
(1, 'Cabaña Quillahue', 'Argentina', 'Rio Negro', 'San Carlos de Bariloche', 'Tronador 1411', '', 'quillahue@gmail.com', '2009-07-27 01:09:01', '2009-07-27 01:09:01');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contactos`
--

CREATE TABLE IF NOT EXISTS `contactos` (
  `id` int(11) NOT NULL auto_increment,
  `apellido` varchar(255) default NULL,
  `nombre` varchar(255) default NULL,
  `procedencia` varchar(255) default NULL,
  `telefono` varchar(255) default NULL,
  `email` varchar(255) default NULL,
  `fecha_llegada` datetime default NULL,
  `fecha_partida` datetime default NULL,
  `personas` int(11) default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Volcar la base de datos para la tabla `contactos`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `schema_migrations`
--

CREATE TABLE IF NOT EXISTS `schema_migrations` (
  `version` varchar(255) NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcar la base de datos para la tabla `schema_migrations`
--

INSERT INTO `schema_migrations` (`version`) VALUES
('20090726223819'),
('20090726225909'),
('20090726230057'),
('20090726231447'),
('20090726232711'),
('20090726233955');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `servicios`
--

CREATE TABLE IF NOT EXISTS `servicios` (
  `id` int(11) NOT NULL auto_increment,
  `nombre` varchar(255) default NULL,
  `cabana_id` int(11) default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Volcar la base de datos para la tabla `servicios`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tarifas`
--

CREATE TABLE IF NOT EXISTS `tarifas` (
  `id` int(11) NOT NULL auto_increment,
  `precio_per_base` float default NULL,
  `precio_cab_base` float default NULL,
  `precio_p_dia` float default NULL,
  `precio_p_semana` float default NULL,
  `precio_p_fdslargo` float default NULL,
  `cabana_id` int(11) default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Volcar la base de datos para la tabla `tarifas`
--

