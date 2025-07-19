-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3310
-- Tiempo de generación: 03-07-2025 a las 18:34:28
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `ecommerce`
--
CREATE DATABASE IF NOT EXISTS `paurob860_ecommerce` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `paurob860_ecommerce`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admins`
--

CREATE TABLE `admins` (
  `id_admin` int(11) NOT NULL,
  `rol_admin` text DEFAULT NULL,
  `name_admin` text DEFAULT NULL,
  `email_admin` text DEFAULT NULL,
  `password_admin` text DEFAULT NULL,
  `token_admin` text DEFAULT NULL,
  `token_exp_admin` text DEFAULT NULL,
  `date_created_admin` date DEFAULT NULL,
  `date_update_admin` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `admins`
--

INSERT INTO `admins` (`id_admin`, `rol_admin`, `name_admin`, `email_admin`, `password_admin`, `token_admin`, `token_exp_admin`, `date_created_admin`, `date_update_admin`) VALUES
(1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-02-07 16:19:14'),
(2, 'admin', 'santiago rodriguez', 'admin@ecommerce.com', '$2a$07$azybxcags23425sdg23sdeanQZqjaf6Birm2NvcYTNtJw24CsO5uq', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpYXQiOjE3NDgyNzA5MTcsImV4cCI6MTc0ODM1NzMxNywiZGF0YSI6eyJpZCI6IjIiLCJlbWFpbCI6ImFkbWluQGVjb21tZXJjZS5jb20ifX0.OyhRDqAKlWb4sVq7KuAOZfYzOjJ8u0KTk53Th2eXZfM', '1748357317', '2025-02-07', '2025-05-26 14:48:37'),
(7, 'editor', 'Juanin', 'juanitoeditor@ecommerce.com', '$2a$07$azybxcags23425sdg23sdeanQZqjaf6Birm2NvcYTNtJw24CsO5uq', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpYXQiOjE3NDE2MzQ4MjcsImV4cCI6MTc0MTcyMTIyNywiZGF0YSI6eyJpZCI6IjciLCJlbWFpbCI6Imp1YW5pdG9lZGl0b3JAZWNvbW1lcmNlLmNvbSJ9fQ.g8Jk9Oa2HBrrTH4ofvh0kXrnGD8iMmO0y33K_MOPAVg', '1741721227', '2025-03-07', '2025-03-10 19:27:07'),
(8, 'admin', 'Camilos', 'admin2@gmail.com', '$2a$07$azybxcags23425sdg23sdeHVSCxOLFniotLjKCcyXT0XzPcSRMWUC', NULL, NULL, '2025-03-10', '2025-03-10 19:28:18');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carts`
--

CREATE TABLE `carts` (
  `id_cart` int(11) NOT NULL,
  `id_user_cart` int(11) NOT NULL DEFAULT 0,
  `id_product_cart` int(11) NOT NULL DEFAULT 0,
  `id_variant_cart` int(11) NOT NULL DEFAULT 0,
  `quantity_cart` int(11) NOT NULL DEFAULT 0,
  `ref_cart` text DEFAULT NULL,
  `order_cart` text DEFAULT NULL,
  `method_cart` text DEFAULT NULL,
  `date_created_cart` date DEFAULT NULL,
  `date_updated_cart` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `carts`
--

INSERT INTO `carts` (`id_cart`, `id_user_cart`, `id_product_cart`, `id_variant_cart`, `quantity_cart`, `ref_cart`, `order_cart`, `method_cart`, `date_created_cart`, `date_updated_cart`) VALUES
(10, 5, 10, 13, 1, NULL, NULL, NULL, '2025-07-03', '2025-07-02 22:41:17');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categories`
--

CREATE TABLE `categories` (
  `id_category` int(11) NOT NULL,
  `name_category` text DEFAULT NULL,
  `url_category` text DEFAULT NULL,
  `icon_category` text DEFAULT NULL,
  `description_category` text DEFAULT NULL,
  `keywords_category` text DEFAULT NULL,
  `image_category` text DEFAULT NULL,
  `subcategories_category` int(11) DEFAULT 0,
  `products_category` int(11) DEFAULT 0,
  `views_category` int(11) DEFAULT 0,
  `status_category` int(11) DEFAULT 1,
  `date_created_category` date DEFAULT NULL,
  `date_update_category` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `categories`
--

INSERT INTO `categories` (`id_category`, `name_category`, `url_category`, `icon_category`, `description_category`, `keywords_category`, `image_category`, `subcategories_category`, `products_category`, `views_category`, `status_category`, `date_created_category`, `date_update_category`) VALUES
(1, 'Ropa', 'ropa', 'fas fa-tshirt', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras blandit felis sollicitudin auctor pellentesque. Phasellus eros dolor, congue in erat at, congue gravida ligula. Mauris eleifend massa ac gravida tempor. Duis velit purus, ultricies in nulla ut, imperdiet condimentum nisl. Fusce finibus eros et mattis rutrum. Duis eget odio sit amet nibh tristique commodo sit amet eget mi. Fusce tempor accumsan sapien, at pulvinar turpis malesuada ut. Fusce condimentum, felis nec iaculis molestie, libero justo faucibus nibh, a vulputate dui nisi a nisi. Quisque eget mi lobortis enim volutpat tristique sed in risus. Maecenas nunc nisl, mattis ut diam vitae, varius accumsan nibh. Nulla dapibus aliquet nisi, ut viverra enim. Vestibulum ultricies ornare est, et hendrerit sapien lacinia a.', 'ropa ,camisas,pantalones,faldas', 'ropa.jpg', 3, 0, 0, 1, '2025-03-13', '2025-04-21 16:18:03'),
(2, 'Calzado', 'calzado', 'fas fa-shoe-prints', 'Fusce augue libero, cursus nec augue quis, placerat volutpat ipsum. Fusce tempus mollis ante. Etiam justo elit, egestas id ullamcorper in, dignissim non magna. Nullam vel pretium lectus. Cras quis purus et quam semper condimentum id ut erat. Phasellus fringilla fermentum ipsum nec vulputate.', 'zapatos,calzado,sandalias', 'calzado.jpg', 2, 3, 0, 1, '2025-03-13', '2025-05-07 16:54:23'),
(4, 'Cursos', 'cursos', 'fas fa-graduation-cap', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur vestibulum a lacus vitae molestie. Duis cursus orci leo, nec vulputate libero tempus lobortis. Donec auctor mi at tellus elementum pharetra. Etiam vitae sem sagittis lorem mattis euismod. Donec pretium ipsum sit amet tellus consectetur lobortis. Aliquam erat volutpat. Vestibulum aliquam vulputate consectetur.', 'cursos,javascript,mysql,angular', 'cursos.jpg', 2, 1, 0, 1, '2025-03-13', '2025-04-25 21:48:44'),
(5, 'Productos Desechables', 'productos-desechables', 'fas fa-coffee', 'Nuestros productos desechables están diseñados para ofrecer practicidad, higiene y eficiencia en todo tipo de eventos o entornos profesionales. Fabricados con materiales resistentes y de alta calidad, son ideales para un solo uso, facilitando la limpieza y ahorrando tiempo. Disponibles en diferentes presentaciones y tamaños, son perfectos para restaurantes, fiestas, servicios de catering, hospitales, oficinas y más. Una opción segura, funcional y económica para el día a día.', 'tenedores,platos ,vasos', 'productos-desechables.jpg', 1, 2, 0, 1, '2025-05-10', '2025-05-10 15:46:37'),
(6, 'Productos Básicos', 'productos-basicos-de-consumo-diario', 'fas fa-shopping-basket', 'En nuestra tienda de abarrotes encontrarás una amplia variedad de productos esenciales para el hogar, cuidadosamente seleccionados para satisfacer tus necesidades diarias. Ofrecemos desde alimentos no perecederos como arroz, frijoles, pastas y conservas, hasta artículos de uso cotidiano como aceites, azúcar, sal, café, galletas y productos de limpieza. Nos enfocamos en brindar calidad, buen precio y atención cercana para que siempre encuentres lo que necesitas, cuando lo necesitas.', 'abarrotes, productos,consumo', 'productos-basicos-de-consumo-diario.png', 2, 12, 0, 1, '2025-05-23', '2025-05-26 17:27:31');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `favorites`
--

CREATE TABLE `favorites` (
  `id_favorite` int(11) NOT NULL,
  `id_user_favorite` int(11) NOT NULL DEFAULT 0,
  `id_product_favorite` int(11) NOT NULL DEFAULT 0,
  `date_created_favorite` date DEFAULT NULL,
  `date_updated_favorite` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `favorites`
--

INSERT INTO `favorites` (`id_favorite`, `id_user_favorite`, `id_product_favorite`, `date_created_favorite`, `date_updated_favorite`) VALUES
(2, 3, 21, '2025-05-28', '2025-05-27 22:20:29'),
(3, 3, 20, '2025-05-28', '2025-05-27 22:20:30'),
(11, 4, 18, '2025-05-28', '2025-05-28 16:54:13'),
(12, 4, 8, '2025-05-28', '2025-05-28 16:54:13'),
(13, 4, 10, '2025-05-28', '2025-05-28 16:54:15'),
(15, 5, 8, '2025-05-29', '2025-05-29 21:47:50'),
(16, 5, 18, '2025-05-29', '2025-05-29 21:47:51'),
(17, 5, 24, '2025-05-30', '2025-05-29 22:17:29'),
(18, 5, 10, '2025-07-03', '2025-07-02 22:41:11');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products`
--

CREATE TABLE `products` (
  `id_product` int(11) NOT NULL,
  `id_category_product` int(11) NOT NULL DEFAULT 0,
  `id_subcategory_product` int(11) NOT NULL DEFAULT 0,
  `name_product` text DEFAULT NULL,
  `url_product` text DEFAULT NULL,
  `image_product` text DEFAULT NULL,
  `description_product` text DEFAULT NULL,
  `keywords_product` text DEFAULT NULL,
  `info_product` longtext DEFAULT NULL,
  `views_product` int(11) NOT NULL DEFAULT 0,
  `sales_product` int(11) NOT NULL DEFAULT 0,
  `status_product` int(11) NOT NULL DEFAULT 1,
  `date_created_product` date DEFAULT NULL,
  `date_update_product` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `products`
--

INSERT INTO `products` (`id_product`, `id_category_product`, `id_subcategory_product`, `name_product`, `url_product`, `image_product`, `description_product`, `keywords_product`, `info_product`, `views_product`, `sales_product`, `status_product`, `date_created_product`, `date_update_product`) VALUES
(8, 2, 5, 'Cazado Prueba', 'cazado-prueba', 'cazado-prueba.jpg', 'lorem', 'zapatos', '<p>lorem</p><p><br></p><p><img style=\"width: 100%;\" src=\"/views/assets/img/products/cazado-prueba/483376345.jpg\" class=\"img-fluid\"><br></p>', 0, 0, 1, '2025-04-08', '2025-05-05 20:18:15'),
(10, 4, 3, 'Curso De Desarrollo Web', 'curso-de-desarrollo-web', 'curso-de-desarrollo-web.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur a aliquam massa. Phasellus vitae nisl ut elit bibendum ornare. Donec id elit accumsan, efficitur justo venenatis, feugiat libero. Etiam hendrerit ex et ipsum porta scelerisque. Vivamus consequat dolor nunc, vitae semper est tristique rhoncus.', 'curso,desarrollo,web,js', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur a aliquam massa. Phasellus vitae nisl ut elit bibendum ornare. Donec id elit accumsan, efficitur justo venenatis, feugiat libero. Etiam hendrerit ex et ipsum porta scelerisque. Vivamus consequat dolor nunc, vitae semper est tristique rhoncus.</p><p><br></p><p><img src=\"/views/assets/img/products/curso-de-desarrollo-web/2128018811.jpg\" style=\"width: 100%;\" class=\"img-fluid\">							            				\r\n							            </p>', 0, 55, 1, '2025-04-23', '2025-04-23 16:15:59'),
(11, 2, 5, 'Producto Calzado 2', 'producto-calzado-2', 'producto-calzado-2.jpg', 'lorem', 'deporte,snikkers', '<p><img src=\"/views/assets/img/products/producto-calzado-2/6657597140.jpg\" style=\"width: 100%;\" class=\"img-fluid\">							            				\r\n							            </p>', 0, 0, 1, '2025-04-26', '2025-04-26 15:05:52'),
(12, 5, 7, 'Tenedores Desechables', 'tenedores-desechables', 'tenedores-desechables.jpg', 'tenedores de plástico desechables para todo tipo de ocasión.', 'plastico,tenedores,desechable', 'Nuestros tenedores de plástico desechables combinan practicidad y resistencia, siendo la solución ideal para eventos, comidas para llevar, catering, oficinas o uso diario. Fabricados con materiales ligeros pero duraderos, ofrecen una experiencia cómoda y segura al comer. Su diseño ergonómico facilita su uso con distintos tipos de alimentos, y al ser desechables, garantizan una higiene óptima y evitan la necesidad de lavar utensilios. Disponibles en presentaciones individuales o por paquetes, son perfectos para todo tipo de ocasión.', 0, 0, 1, '2025-05-10', '2025-05-09 22:29:05'),
(13, 5, 7, 'Kit De Productos Desechables', 'kit-de-productos-desechables', 'kit-de-productos-desechables.jpg', 'kit de cubiertos desechable con plato, vaso, tenedor, cuchara y cuchillo', 'desechable,cubiertos,vaso,plato,tenedor', '<p data-start=\"147\" data-end=\"712\">kit desechable incluye todo lo necesario para una comida completa: plato, vaso, tenedor, cuchara y cuchillo, todo fabricado con materiales resistentes y de alta calidad. Ideal para eventos, comidas al aire libre, celebraciones, servicios de catering o uso institucional. Cada elemento está diseñado para brindar comodidad, higiene y funcionalidad, facilitando la organización y reduciendo el tiempo de limpieza. Una solución conveniente, económica y lista para usar en cualquier ocasión.</p>', 0, 0, 1, '2025-05-10', '2025-05-09 23:01:46'),
(14, 6, 8, 'Café Aguila Roja', 'cafe-aguila-roja', 'cafe-aguila-roja.png', 'Café águila roja', 'cafe', 'Café águila roja', 0, 0, 1, '2025-05-24', '2025-05-24 01:46:41'),
(15, 6, 8, 'Avena De La Abuela', 'avena-de-la-abuela', 'avena-de-la-abuela.png', 'Avena de la abuela', 'comestibles,avena', 'Avena de la abuela', 0, 0, 1, '2025-05-24', '2025-05-24 17:06:07'),
(16, 6, 8, 'Harina De Trigo', 'harina-de-trigo', 'harina-de-trigo.png', 'Harina de trigo La nieve', 'harina,trigo', 'Harina de trigo La nieve', 0, 0, 1, '2025-05-24', '2025-05-24 17:10:10'),
(17, 6, 8, 'Harina De Maiz', 'harina-de-maiz', 'harina-de-maiz.png', 'Harina de Maiz Bellini para Arepas', 'harina,maíz', 'Harina de Maíz para arepas', 0, 0, 1, '2025-05-24', '2025-05-24 17:12:42'),
(18, 6, 8, 'Té Hindu', 'te-hindu', 'te-hindu.png', 'Té Hindu - Black tea', 'té,tea,bebidas', 'Té Hindu - Black tea | 25 Bolsitas', 0, 0, 1, '2025-05-24', '2025-05-24 17:28:06'),
(19, 6, 8, 'Salchichas Enlatadas', 'salchichas-enlatadas', 'salchichas-enlatadas.png', 'Salchichas enlatadas Ronda', 'sachichas,comestibles', 'Salchichas Viena Especial', 0, 0, 1, '2025-05-24', '2025-05-24 18:02:41'),
(20, 6, 8, 'Maízena', 'maizena', 'maizena.png', 'Maízena, Fecula de Maíz', 'maíz ,comestibles', 'Maízena, Fecula de Maíz', 0, 0, 1, '2025-05-24', '2025-05-24 18:30:26'),
(21, 6, 8, 'Azucar Blanca Manuelita', 'azucar-blanca-manuelita', 'azucar-blanca-manuelita.png', 'Azucar Manuelita', 'azucar,comestibles', 'Azucar Manuelita Blanca/Morena', 0, 0, 1, '2025-05-24', '2025-05-24 18:37:39'),
(22, 6, 8, 'Cebada Perlada', 'cebada-perlada', 'cebada-perlada.png', 'Cebada Perlada', 'cebada,comestibles', 'Cebada Perlada', 0, 0, 1, '2025-05-25', '2025-05-25 01:43:03'),
(23, 6, 9, 'Gomitas Trululu', 'gomitas-trululu', 'gomitas-trululu.jpg', 'Gomitas Trululu | Aros', 'dulces,confiteria', 'Gomitas Trululu | Aros', 0, 0, 1, '2025-05-26', '2025-05-26 16:48:17'),
(24, 6, 9, 'Caja De Gomitas', 'caja-de-gomitas', 'caja-de-gomitas.png', 'Caja de Gomitas Trululu Splash', 'dulces,confiteria,gomitas', 'Caja de Gomitas Trululu Splash', 0, 0, 1, '2025-05-26', '2025-05-26 17:01:17'),
(25, 6, 9, 'Gomitas Trululu  Sabores', 'gomitas-trululu--sabores', 'gomitas-trululu--sabores.png', 'Gomitas Trululu  Sabores', 'dulces,confiteria', 'Gomitas Trululu&nbsp; Sabores', 0, 0, 1, '2025-05-26', '2025-05-26 17:27:31');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `socials`
--

CREATE TABLE `socials` (
  `id_social` int(11) NOT NULL,
  `name_social` text DEFAULT NULL,
  `url_social` text DEFAULT NULL,
  `icon_social` text DEFAULT NULL,
  `color_social` text DEFAULT NULL,
  `date_created_social` date DEFAULT NULL,
  `date_updated_social` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `socials`
--

INSERT INTO `socials` (`id_social`, `name_social`, `url_social`, `icon_social`, `color_social`, `date_created_social`, `date_updated_social`) VALUES
(1, 'facebook', 'https://facebook.com', 'fab fa-facebook-f', 'text-white', '2025-02-12', '2025-02-13 00:20:38'),
(2, 'youtube', 'https://www.youtube.com', 'fab fa-youtube', 'text-white', '2025-02-12', '2025-02-13 00:20:43');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `subcategories`
--

CREATE TABLE `subcategories` (
  `id_subcategory` int(11) NOT NULL,
  `id_category_subcategory` int(11) NOT NULL DEFAULT 0,
  `name_subcategory` text DEFAULT NULL,
  `url_subcategory` text DEFAULT NULL,
  `image_subcategory` text DEFAULT NULL,
  `description_subcategory` text DEFAULT NULL,
  `keywords_subcategory` text DEFAULT NULL,
  `products_subcategory` int(11) NOT NULL DEFAULT 0,
  `views_subcategory` int(11) NOT NULL DEFAULT 0,
  `status_subcategory` int(11) NOT NULL DEFAULT 1,
  `date_created_subcategory` date DEFAULT NULL,
  `date_update_subcategory` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `subcategories`
--

INSERT INTO `subcategories` (`id_subcategory`, `id_category_subcategory`, `name_subcategory`, `url_subcategory`, `image_subcategory`, `description_subcategory`, `keywords_subcategory`, `products_subcategory`, `views_subcategory`, `status_subcategory`, `date_created_subcategory`, `date_update_subcategory`) VALUES
(2, 2, 'Calzado Para Niños', 'calzado-para-ninos', 'calzado-para-ninos.jpg', 'lorem ipsum', 'add', 1, 0, 1, '2025-03-19', '2025-05-05 20:18:15'),
(3, 4, 'Cursos De Desarrollo', 'cursos-de-desarrollo', 'cursos-de-desarrollo.png', 'lorem ipsum', 'cursos,desarrollo,web', 1, 0, 1, '2025-04-03', '2025-04-23 16:15:38'),
(4, 1, 'Ropa Para Hombre', 'ropa-para-hombre', 'ropa-para-hombre.jpg', 'Loremp ipsum', 'ropa ,hombre', 0, 0, 1, '2025-04-21', '2025-04-21 16:18:03'),
(5, 2, 'Calzado Deportivo', '', '.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque posuere vehicula pretium. Fusce vitae augue in diam rutrum ultrices. Morbi consectetur pharetra ligula ultrices porttitor. Duis efficitur metus nec maximus ullamcorper. efficitur sed tincidunt vel, scelerisque nec dolor.', 'zapatos,deporte,moda', 2, 0, 1, '2025-04-23', '2025-05-07 16:54:24'),
(6, 4, 'Curso De Ingles', 'curso-de-ingles', 'curso-de-ingles.png', 'lorem', 'ingles,english', 0, 0, 1, '2025-04-25', '2025-04-25 21:48:44'),
(7, 5, 'Cubiertos Desechables', 'cubiertos-desechables', 'cubiertos-desechables.jpg', 'Cubiertos desechables como tenedores, cuchillos o cucharas para usar y tirar', 'cuchillos,tenedores,cucharas', 2, 0, 1, '2025-05-10', '2025-05-09 23:01:47'),
(8, 6, 'Consumo', 'consumo', 'consumo.jpg', 'La subcategoría de consumo incluye todos aquellos productos destinados al uso o desgaste frecuente en la vida diaria. Aquí encontrarás artículos de alta rotación como alimentos, bebidas, productos de aseo personal, limpieza del hogar y otros insumos esenciales. Son productos diseñados para satisfacer necesidades inmediatas y que requieren reposición constante, ideales tanto para el consumidor final como para la reposición en puntos de venta.', 'consumo,alimentos', 9, 0, 1, '2025-05-23', '2025-05-25 01:43:03'),
(9, 6, 'Confiteria', 'confiteria', 'confiteria.png', 'La confitería reúne una deliciosa variedad de productos dulces pensados para satisfacer los antojos y endulzar cualquier momento. Aquí encontrarás caramelos, chocolates, chicles, gomitas, bombones, barras dulces y otros snacks azucarados. Ideales para compartir, regalar o disfrutar en cualquier ocasión, estos productos combinan sabor, presentación atractiva y alta rotación, lo que los convierte en una opción imprescindible en cualquier punto de venta.', 'dulces,confiteria', 3, 0, 1, '2025-05-26', '2025-05-26 17:27:31');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `templates`
--

CREATE TABLE `templates` (
  `id_template` int(11) NOT NULL,
  `logo_template` text DEFAULT NULL,
  `icon_template` text DEFAULT NULL,
  `cover_template` text DEFAULT NULL,
  `title_template` text DEFAULT NULL,
  `description_template` text DEFAULT NULL,
  `keywords_template` text DEFAULT NULL,
  `fonts_template` text DEFAULT NULL,
  `colors_template` text DEFAULT NULL,
  `active_template` text DEFAULT NULL,
  `date_created_template` date DEFAULT NULL,
  `date_update_template` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `templates`
--

INSERT INTO `templates` (`id_template`, `logo_template`, `icon_template`, `cover_template`, `title_template`, `description_template`, `keywords_template`, `fonts_template`, `colors_template`, `active_template`, `date_created_template`, `date_update_template`) VALUES
(1, 'logo.png', 'icono.png', 'cover.jpg', 'Sistema ecommerce	', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce nec urna porta, porttitor elit ut, sollicitudin felis. Vestibulum orci nulla, porta sit amet purus a, scelerisque malesuada nulla. Curabitur varius dapibus egestas. Curabitur in rutrum orci, et volutpat velit. Nulla fermentum id ligula vel accumsan. Mauris a dignissim ex, vitae dignissim purus. Duis risus massa, accumsan ut ante nec, bibendum consequat purus. ', '[\"ecommerce\", \"comercio electronico\", \"moda\", \"sistemas\"]\r\n', '{\"fontFamily\":\"%3Clink%20rel%3D%22preconnect%22%20href%3D%22https%3A%2F%2Ffonts.googleapis.com%22%3E%0A%20%20%3Clink%20rel%3D%22preconnect%22%20href%3D%22https%3A%2F%2Ffonts.gstatic.com%22%20crossorigin%3E%0A%20%20%3Clink%20href%3D%22https%3A%2F%2Ffonts.googleapis.com%2Fcss2%3Ffamily%3DUbuntu%2BCondensed%26family%3DUbuntu%3Aital%2Cwght%400%2C300%3B0%2C400%3B0%2C500%3B0%2C700%3B1%2C300%3B1%2C400%3B1%2C500%3B1%2C700%26display%3Dswap%22%20rel%3D%22stylesheet%22%3E\", \"fontBody\":\"Ubuntu\", \"fontSlide\":\"system-ui, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Oxygen, Ubuntu, Cantarell, \'Open Sans\', \'Helvetica Neue\', sans-serif;\"}', '[{\"top\":{\"background\":\"black\",\"color\":\"black\"}}, {\"template\":{\"background\":\"#289bcd\",\"color\":\"white\"}}]', 'Null', '2025-02-07', '2025-05-23 00:15:11'),
(2, 'logo.png', 'icono.png', 'cover.jpg', 'Sistema Ecommerce', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce nec urna porta, porttitor elit ut, sollicitudin felis. Vestibulum orci nulla, porta sit amet purus a, scelerisque malesuada nulla. Curabitur varius dapibus egestas. Curabitur in rutrum orci, et volutpat velit. Nulla fermentum id ligula vel accumsan. Mauris a dignissim ex, vitae dignissim purus. Duis risus massa, accumsan ut ante nec, bibendum consequat purus.', '[', '{\"fontFamily\":\"%3Clink%20rel%3D%22preconnect%22%20href%3D%22https%3A%2F%2Ffonts.googleapis.com%22%3E%0A%3Clink%20rel%3D%22preconnect%22%20href%3D%22https%3A%2F%2Ffonts.gstatic.com%22%20crossorigin%3E%0A%3Clink%20href%3D%22https%3A%2F%2Ffonts.googleapis.com%2Fcss2%3Ffamily%3DMontserrat%3Aital%2Cwght%400%2C100..900%3B1%2C100..900%26display%3Dswap%22%20rel%3D%22stylesheet%22%3E\",\"fontBody\":\"Montserrat\",\"fontSlide\":\"Montserrat\"}', '[{\"top\":{\"background\":\"#e1d500\",\"color\":\"#000000\"}},{\"template\":{\"background\":\"#e1d500\",\"color\":\"#000000\"}}]', 'Null', '2025-02-07', '2025-05-23 00:13:44'),
(6, 'logo.png', 'icono.png', 'cover.jpg', 'Sistema ecommerce	', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce nec urna porta, porttitor elit ut, sollicitudin felis. Vestibulum orci nulla, porta sit amet purus a, scelerisque malesuada nulla. Curabitur varius dapibus egestas. Curabitur in rutrum orci, et volutpat velit. Nulla fermentum id ligula vel accumsan. Mauris a dignissim ex, vitae dignissim purus. Duis risus massa, accumsan ut ante nec, bibendum consequat purus. ', '[\"ecommerce\", \"comercio electronico\", \"moda\", \"sistemas\"]\r\n', '{\"fontFamily\":\"%3Clink%20rel%3D%22preconnect%22%20href%3D%22https%3A%2F%2Ffonts.googleapis.com%22%3E%0A%20%20%3Clink%20rel%3D%22preconnect%22%20href%3D%22https%3A%2F%2Ffonts.gstatic.com%22%20crossorigin%3E%0A%20%20%3Clink%20href%3D%22https%3A%2F%2Ffonts.googleapis.com%2Fcss2%3Ffamily%3DUbuntu%2BCondensed%26family%3DUbuntu%3Aital%2Cwght%400%2C300%3B0%2C400%3B0%2C500%3B0%2C700%3B1%2C300%3B1%2C400%3B1%2C500%3B1%2C700%26display%3Dswap%22%20rel%3D%22stylesheet%22%3E\", \"fontBody\":\"Ubuntu\", \"fontSlide\":\"system-ui, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Oxygen, Ubuntu, Cantarell, \'Open Sans\', \'Helvetica Neue\', sans-serif;\"}', '[{\"top\":{\"background\":\"#ffd500\",\"color\":\"#080707\"}},{\"template\":{\"background\":\"#ffd500\",\"color\":\"#080707\"}}]', 'ok', '2025-02-07', '2025-05-23 00:19:40');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id_user` int(11) NOT NULL,
  `name_user` text DEFAULT NULL,
  `email_user` text DEFAULT NULL,
  `password_user` text DEFAULT NULL,
  `token_user` text DEFAULT NULL,
  `token_exp_user` text DEFAULT NULL,
  `method_user` text DEFAULT NULL,
  `verification_user` int(11) NOT NULL DEFAULT 0,
  `confirm_user` text DEFAULT NULL,
  `country_user` text DEFAULT NULL,
  `department_user` text DEFAULT NULL,
  `city_user` text DEFAULT NULL,
  `address_user` text DEFAULT NULL,
  `phone_user` text DEFAULT NULL,
  `date_created_user` date DEFAULT NULL,
  `date_updated_user` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id_user`, `name_user`, `email_user`, `password_user`, `token_user`, `token_exp_user`, `method_user`, `verification_user`, `confirm_user`, `country_user`, `department_user`, `city_user`, `address_user`, `phone_user`, `date_created_user`, `date_updated_user`) VALUES
(2, 'Fundación DANNY', 'fundaciondanny@gmail.com', NULL, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpYXQiOjE3NDgwMTczNTYsImV4cCI6MTc0ODEwMzc1NiwiZGF0YSI6eyJpZCI6IjIiLCJlbWFpbCI6ImZ1bmRhY2lvbmRhbm55QGdtYWlsLmNvbSJ9fQ.k4872EdPIYTa5CFtP6DXMySFeOk0BI0EZ7dWK_PV114', '1748103756', 'google', 1, NULL, NULL, NULL, NULL, NULL, NULL, '2025-05-23', '2025-05-23 16:22:36'),
(4, 'Santiago Andrés ', 'sandresrodriguezmo@gmail.com', NULL, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpYXQiOjE3NDg0NTEyMTMsImV4cCI6MTc0ODUzNzYxMywiZGF0YSI6eyJpZCI6IjQiLCJlbWFpbCI6InNhbmRyZXNyb2RyaWd1ZXptb0BnbWFpbC5jb20ifX0.n-7u00E7KCIekXgWz8Ys7c37kViq0hl9CJRK81X3pZc', '1748537613', 'google', 1, NULL, NULL, NULL, NULL, NULL, NULL, '2025-05-28', '2025-05-29 00:23:26'),
(5, 'Santiago', 'prueba@gmail.com', '$2a$07$azybxcags23425sdg23sde0y.SmidIpyazsKYTKJ1H5Xi9e/F.uCa', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpYXQiOjE3NTE0OTM0NTYsImV4cCI6MTc1MTU3OTg1NiwiZGF0YSI6eyJpZCI6IjUiLCJlbWFpbCI6InBydWViYUBnbWFpbC5jb20ifX0.-C-5DpD8D_R_epdTP-0Cd3-CUhzLS8emj1ubp1j1u-M', '1751579856', 'directo', 1, '4zw81stjcy7ibkh62xe9', 'Colombia', 'Cundinamarca', 'Bogota D.c', 'fdgdfgdfg', '57_3228854312', '2025-05-29', '2025-07-02 23:56:50');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `variants`
--

CREATE TABLE `variants` (
  `id_variant` int(11) NOT NULL,
  `id_product_variant` int(11) DEFAULT 0,
  `type_variant` text DEFAULT NULL,
  `media_variant` text DEFAULT NULL,
  `description_variant` text DEFAULT NULL,
  `cost_variant` double NOT NULL DEFAULT 0,
  `price_variant` double NOT NULL DEFAULT 0,
  `offer_variant` text DEFAULT NULL,
  `end_offer_variant` date DEFAULT NULL,
  `stock_variant` int(11) NOT NULL DEFAULT 0,
  `date_created_variant` date DEFAULT NULL,
  `date_updated_variant` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `variants`
--

INSERT INTO `variants` (`id_variant`, `id_product_variant`, `type_variant`, `media_variant`, `description_variant`, `cost_variant`, `price_variant`, `offer_variant`, `end_offer_variant`, `stock_variant`, `date_created_variant`, `date_updated_variant`) VALUES
(2, 2, 'video', 'https://www.youtube.com/watch?v=yVFEq64FXz0', 'Curso de javaScript', 120, 20, '10', '0000-00-00', 0, '2025-04-03', '2025-04-03 20:12:49'),
(8, 3, 'video', 'https://youtu.be/U3B0lVg00dg?si=wXuA8nf89nQWfxgS', '', 120, 10, '', '0000-00-00', 0, '2025-04-08', '2025-04-22 18:06:24'),
(9, 8, 'gallery', '[\"60739.jpg\",\"91637.jpg\",\"67500.jpg\"]', 'zapatos blancos', 0, 0, '1000', '2025-04-07', 34, '2025-04-08', '2025-04-22 18:56:18'),
(12, 9, 'gallery', '[\"20061.jpg\",\"29529.jpg\",\"43485.jpg\",\"51696.jpg\"]', 'Tenis verde', 10000, 10000, '2000', '2025-04-30', 16, '2025-04-23', '2025-04-26 15:02:59'),
(13, 10, 'gallery', '[\"76425.jpg\"]', 'Curso de javaScript', 30000, 30000, '2000', '0000-00-00', 1, '2025-04-23', '2025-04-23 16:15:38'),
(14, 11, 'gallery', '[\"93247.jpg\",\"12920.jpg\",\"37153.jpg\"]', 'zapatos azules', 10000, 23000, '', '0000-00-00', 12, '2025-04-26', '2025-04-26 15:05:52'),
(15, 8, 'gallery', '[\"98034.jpg\",\"63064.jpg\",\"37700.jpg\"]', 'zapatos negros', 0, 4000, '2000', '2025-05-21', 34, '2025-05-05', '2025-05-07 16:54:24'),
(16, 12, 'gallery', '[\"67055.jpg\"]', 'Tenedores desechables', 0, 10000, '', '0000-00-00', 100, '2025-05-10', '2025-05-09 22:29:57'),
(17, 13, 'gallery', '[\"34014.jpg\"]', ' kit de cubiertos desechables', 0, 40000, '', '0000-00-00', 200, '2025-05-10', '2025-05-09 23:01:47'),
(18, 14, 'gallery', '[\"68144.png\"]', 'Sobre águila roja 1000 gramos', 0, 50000, '', '0000-00-00', 200, '2025-05-24', '2025-05-24 01:46:41'),
(19, 14, 'gallery', '[\"85596.png\"]', 'Sobre águila roja 500 gramos', 0, 30000, '', '0000-00-00', 200, '2025-05-24', '2025-05-24 01:46:41'),
(20, 14, 'gallery', '[\"51886.png\"]', 'Sobre águila roja 250 gramos', 0, 20000, '', '0000-00-00', 200, '2025-05-24', '2025-05-24 01:46:41'),
(21, 14, 'gallery', '[\"58084.png\"]', 'Sobre águila roja 145 gramos', 0, 10000, '', '0000-00-00', 200, '2025-05-24', '2025-05-24 01:46:41'),
(22, 15, 'gallery', '[\"75198.png\"]', 'Hojuelas', 0, 25000, '', '0000-00-00', 100, '2025-05-24', '2025-05-24 17:06:08'),
(23, 15, 'gallery', '[\"58139.png\"]', 'Molida', 0, 25000, '', '0000-00-00', 100, '2025-05-24', '2025-05-24 17:06:08'),
(24, 16, 'gallery', '[\"56836.png\"]', 'Harina de trigo La nieve', 0, 50000, '', '0000-00-00', 500, '2025-05-24', '2025-05-24 17:10:10'),
(25, 17, 'gallery', '[\"28076.png\"]', 'Harina de Maíz Bellini', 0, 20000, '', '0000-00-00', 100, '2025-05-24', '2025-05-24 18:31:17'),
(26, 18, 'gallery', '[\"42651.png\"]', 'Té Hindu ', 0, 0, '', '0000-00-00', 200, '2025-05-24', '2025-05-24 17:28:07'),
(27, 19, 'gallery', '[\"45300.png\"]', 'Salchichas enlatadas Ronda', 0, 20000, '', '0000-00-00', 100, '2025-05-24', '2025-05-24 18:02:42'),
(28, 20, 'gallery', '[\"66245.png\"]', 'Maizena', 0, 25000, '', '0000-00-00', 100, '2025-05-24', '2025-05-24 18:30:27'),
(29, 21, 'gallery', '[\"64504.png\"]', 'Azucar Blanca Manuelita', 0, 25000, '', '0000-00-00', 100, '2025-05-24', '2025-05-24 18:38:33'),
(30, 21, 'gallery', '[\"94279.png\"]', 'Azucar Morena Manuelita', 0, 30000, '', '0000-00-00', 100, '2025-05-24', '2025-05-24 18:37:40'),
(31, 21, 'gallery', '[\"47182.png\"]', 'Azucar Blanca en Tubitos Manuelita', 0, 25000, '', '0000-00-00', 100, '2025-05-24', '2025-05-24 18:45:20'),
(32, 22, 'gallery', '[\"12497.png\"]', 'Cebada Perlada', 0, 20000, '', '0000-00-00', 100, '2025-05-25', '2025-05-25 01:43:04'),
(33, 23, 'gallery', '[\"98502.png\"]', 'Gomitas Trululu ', 0, 10000, '', '0000-00-00', 100, '2025-05-26', '2025-05-26 16:48:17'),
(34, 24, 'gallery', '[\"69607.png\"]', 'Caja de Gomitas Trululu', 0, 25000, '', '0000-00-00', 100, '2025-05-26', '2025-05-26 17:01:17'),
(35, 25, 'gallery', '[\"67903.png\"]', 'Gomitas Trululu  Sabores', 0, 10000, '', '0000-00-00', 100, '2025-05-26', '2025-05-26 17:27:31');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indices de la tabla `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id_cart`);

--
-- Indices de la tabla `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id_category`);

--
-- Indices de la tabla `favorites`
--
ALTER TABLE `favorites`
  ADD PRIMARY KEY (`id_favorite`);

--
-- Indices de la tabla `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id_product`),
  ADD KEY `id_category_product` (`id_category_product`),
  ADD KEY `id_subcategory_product` (`id_subcategory_product`);

--
-- Indices de la tabla `socials`
--
ALTER TABLE `socials`
  ADD PRIMARY KEY (`id_social`);

--
-- Indices de la tabla `subcategories`
--
ALTER TABLE `subcategories`
  ADD PRIMARY KEY (`id_subcategory`),
  ADD KEY `id_category_subcategory` (`id_category_subcategory`);

--
-- Indices de la tabla `templates`
--
ALTER TABLE `templates`
  ADD PRIMARY KEY (`id_template`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`);

--
-- Indices de la tabla `variants`
--
ALTER TABLE `variants`
  ADD PRIMARY KEY (`id_variant`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `admins`
--
ALTER TABLE `admins`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `carts`
--
ALTER TABLE `carts`
  MODIFY `id_cart` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `categories`
--
ALTER TABLE `categories`
  MODIFY `id_category` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `favorites`
--
ALTER TABLE `favorites`
  MODIFY `id_favorite` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `products`
--
ALTER TABLE `products`
  MODIFY `id_product` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `socials`
--
ALTER TABLE `socials`
  MODIFY `id_social` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `subcategories`
--
ALTER TABLE `subcategories`
  MODIFY `id_subcategory` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `templates`
--
ALTER TABLE `templates`
  MODIFY `id_template` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `variants`
--
ALTER TABLE `variants`
  MODIFY `id_variant` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`id_category_product`) REFERENCES `categories` (`id_category`),
  ADD CONSTRAINT `products_ibfk_2` FOREIGN KEY (`id_subcategory_product`) REFERENCES `subcategories` (`id_subcategory`);

--
-- Filtros para la tabla `subcategories`
--
ALTER TABLE `subcategories`
  ADD CONSTRAINT `subcategories_ibfk_1` FOREIGN KEY (`id_category_subcategory`) REFERENCES `categories` (`id_category`);
--
-- Base de datos: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) NOT NULL DEFAULT '',
  `user` varchar(255) NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `query` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) NOT NULL,
  `col_name` varchar(64) NOT NULL,
  `col_type` varchar(64) NOT NULL,
  `col_length` text DEFAULT NULL,
  `col_collation` varchar(64) NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) DEFAULT '',
  `col_default` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `column_name` varchar(64) NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `transformation` varchar(255) NOT NULL DEFAULT '',
  `transformation_options` varchar(255) NOT NULL DEFAULT '',
  `input_transformation` varchar(255) NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) NOT NULL,
  `settings_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL,
  `export_type` varchar(10) NOT NULL,
  `template_name` varchar(64) NOT NULL,
  `template_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db` varchar(64) NOT NULL DEFAULT '',
  `table` varchar(64) NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) NOT NULL,
  `item_name` varchar(64) NOT NULL,
  `item_type` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Volcado de datos para la tabla `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"ecommerce\",\"table\":\"variants\"},{\"db\":\"ecommerce\",\"table\":\"products\"},{\"db\":\"ecommerce\",\"table\":\"users\"}]');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) NOT NULL DEFAULT '',
  `master_table` varchar(64) NOT NULL DEFAULT '',
  `master_field` varchar(64) NOT NULL DEFAULT '',
  `foreign_db` varchar(64) NOT NULL DEFAULT '',
  `foreign_table` varchar(64) NOT NULL DEFAULT '',
  `foreign_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `search_name` varchar(64) NOT NULL DEFAULT '',
  `search_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `display_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `prefs` text NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text NOT NULL,
  `schema_sql` text DEFAULT NULL,
  `data_sql` longtext DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Volcado de datos para la tabla `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2025-07-03 16:27:17', '{\"Console\\/Mode\":\"show\",\"lang\":\"es\",\"Console\\/Height\":243.99}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) NOT NULL,
  `tab` varchar(64) NOT NULL,
  `allowed` enum('Y','N') NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) NOT NULL,
  `usergroup` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indices de la tabla `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indices de la tabla `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indices de la tabla `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indices de la tabla `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indices de la tabla `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indices de la tabla `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indices de la tabla `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indices de la tabla `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indices de la tabla `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indices de la tabla `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indices de la tabla `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indices de la tabla `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indices de la tabla `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indices de la tabla `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indices de la tabla `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indices de la tabla `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indices de la tabla `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Base de datos: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
