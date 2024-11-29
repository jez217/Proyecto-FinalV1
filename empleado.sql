-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 29-11-2024 a las 16:19:26
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `empleado`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `department_list`
--

CREATE TABLE `department_list` (
  `id` int(30) NOT NULL,
  `department` varchar(200) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `department_list`
--

INSERT INTO `department_list` (`id`, `department`, `description`) VALUES
(1, 'Tecnologías de la Información', 'Garantiza la seguridad y el correcto funcionamiento de todos los elementos informáticos'),
(4, 'HelpDesk', ' equipo centralizado dentro de una empresa que atiende a empleados o clientes en masa, utilizando un producto de software para organizar las conversaciones.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `designation_list`
--

CREATE TABLE `designation_list` (
  `id` int(30) NOT NULL,
  `designation` varchar(200) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `designation_list`
--

INSERT INTO `designation_list` (`id`, `designation`, `description`) VALUES
(1, 'Sr. Programmer', 'Senior Programmer'),
(2, 'Programador Junior', 'Deben capacitarse y apoyar al desarrollo de bases de datos y sistemas de procesamiento de información en según sea requerido.'),
(3, 'Gerente de Proyectos', 'Es quien tiene la responsabilidad total del planeamiento y la ejecución acertada de cualquier proyecto de los asignados.'),
(4, 'QA/QC Analyst', 'Quality Assurance and Quality Control Analyst');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `employee_list`
--

CREATE TABLE `employee_list` (
  `id` int(30) NOT NULL,
  `employee_id` varchar(50) NOT NULL,
  `firstname` varchar(200) NOT NULL,
  `middlename` varchar(200) NOT NULL,
  `lastname` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` text NOT NULL,
  `department_id` int(30) NOT NULL,
  `designation_id` int(30) NOT NULL,
  `evaluator_id` int(30) NOT NULL,
  `avatar` text DEFAULT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `employee_list`
--

INSERT INTO `employee_list` (`id`, `employee_id`, `firstname`, `middlename`, `lastname`, `email`, `password`, `department_id`, `designation_id`, `evaluator_id`, `avatar`, `date_created`) VALUES
(4, '', 'EDGARDO', 'Jezreel', 'MORENO', 'emoreno@proyect.com', 'e10adc3949ba59abbe56e057f20f883e', 1, 1, 0, '1732889160_Edgardo.png', '2024-11-29 09:06:05'),
(5, '', 'Luis', '', 'Ramos', 'rluis@proyect.com', 'e10adc3949ba59abbe56e057f20f883e', 1, 2, 0, '1732889280_user.png', '2024-11-29 09:08:40'),
(6, '', 'Daniel', '', 'Valdés', 'vdaniel@proyect.com', 'e10adc3949ba59abbe56e057f20f883e', 1, 4, 0, '1732889400_user.png', '2024-11-29 09:10:18'),
(7, '', 'Nibar', '', 'Crespo', 'cnibar@proyect.com', 'e10adc3949ba59abbe56e057f20f883e', 1, 3, 0, '1732889460_user.png', '2024-11-29 09:11:27'),
(8, '', 'Alexander', '', 'Vega', 'valexander@proyect.com', 'e10adc3949ba59abbe56e057f20f883e', 1, 2, 0, '1732889520_user.png', '2024-11-29 09:12:23'),
(9, '', 'Miguel', '', 'Veces', 'vmiguel@proyect.com', 'e10adc3949ba59abbe56e057f20f883e', 1, 4, 0, '1732889580_user.png', '2024-11-29 09:13:37');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `evaluator_list`
--

CREATE TABLE `evaluator_list` (
  `id` int(30) NOT NULL,
  `employee_id` varchar(50) NOT NULL,
  `firstname` varchar(200) NOT NULL,
  `middlename` varchar(200) NOT NULL,
  `lastname` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` text NOT NULL,
  `avatar` text DEFAULT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `evaluator_list`
--

INSERT INTO `evaluator_list` (`id`, `employee_id`, `firstname`, `middlename`, `lastname`, `email`, `password`, `avatar`, `date_created`) VALUES
(4, '', 'EDGARDO', '', 'MORENO', 'emoreno@proyect.com', 'e10adc3949ba59abbe56e057f20f883e', '1732889640_Edgardo.png', '2024-11-29 09:14:14'),
(5, '', 'Miguel', '', 'Veces', 'vmiguel@proyect.com', 'e10adc3949ba59abbe56e057f20f883e', '1732889700_466478210_1075307503860173_3540851744434378387_n.jpg', '2024-11-29 09:15:25');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ratings`
--

CREATE TABLE `ratings` (
  `id` int(30) NOT NULL,
  `employee_id` int(30) NOT NULL,
  `task_id` int(30) NOT NULL,
  `evaluator_id` int(30) NOT NULL,
  `efficiency` int(11) NOT NULL,
  `timeliness` int(11) NOT NULL,
  `quality` int(11) NOT NULL,
  `accuracy` int(11) NOT NULL,
  `remarks` text NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `ratings`
--

INSERT INTO `ratings` (`id`, `employee_id`, `task_id`, `evaluator_id`, `efficiency`, `timeliness`, `quality`, `accuracy`, `remarks`, `date_created`) VALUES
(3, 3, 3, 2, 5, 4, 4, 5, 'Me fue actualizando todo el tiempo del estatus de su tarea y lo realizó en muy poco tiempo.', '2021-03-08 16:24:58');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `system_settings`
--

CREATE TABLE `system_settings` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(200) NOT NULL,
  `contact` varchar(20) NOT NULL,
  `address` text NOT NULL,
  `cover_img` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `system_settings`
--

INSERT INTO `system_settings` (`id`, `name`, `email`, `contact`, `address`, `cover_img`) VALUES
(1, 'Sistema de Gestor de Tareas', 'msevillab@gmail.com', '+57 316 243 00 81', 'Cali Colombia', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `task_list`
--

CREATE TABLE `task_list` (
  `id` int(30) NOT NULL,
  `task` varchar(200) NOT NULL,
  `description` text NOT NULL,
  `employee_id` int(30) NOT NULL,
  `due_date` date NOT NULL,
  `completed` date NOT NULL,
  `status` int(1) NOT NULL COMMENT '0=pending, 1=on-progress,3=Completed',
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `task_list`
--

INSERT INTO `task_list` (`id`, `task`, `description`, `employee_id`, `due_date`, `completed`, `status`, `date_created`) VALUES
(3, 'Aprovisionar Dispositivos Android', 'Es necesario aprovisionar 20 dispositivos android, incluir la actualizaci&oacute;n del sistema operativo y la instalaci&oacute;n de todas las aplicaciones necesarias para el funcionamiento de la operaci&oacute;n Banco Delivery', 3, '2021-03-08', '0000-00-00', 2, '2021-03-08 15:22:21'),
(4, 'Licenciar Office 365 en Ordenador Oficina Principal', '&lt;p&gt;Se requiere licenciar Office 365 en Ordenador de Oficina Principal ya que en el &uacute;ltimo escaneo del nuevo antivirus se volaron las licencias.&lt;/p&gt;&lt;p&gt;Favor realizar el requerimiento con la mayor celeridad posible.&lt;/p&gt;', 3, '2021-03-10', '0000-00-00', 1, '2021-03-09 14:20:55'),
(5, 'Proyecto Gestor de Tareas', 'Se encarga del Fronted. Hacer el Login.', 8, '2024-12-05', '0000-00-00', 2, '2024-11-29 09:18:45');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `task_progress`
--

CREATE TABLE `task_progress` (
  `id` int(11) NOT NULL,
  `task_id` int(30) NOT NULL,
  `progress` text NOT NULL,
  `is_complete` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0=no,1=Yes',
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `task_progress`
--

INSERT INTO `task_progress` (`id`, `task_id`, `progress`, `is_complete`, `date_created`) VALUES
(1, 1, '&lt;p&gt;Sample Progress&lt;/p&gt;', 0, '2020-12-05 11:29:48'),
(2, 1, '&lt;p&gt;Sample Progress&lt;/p&gt;', 0, '2020-12-05 11:32:15'),
(3, 1, '&lt;p&gt;Sample 2&lt;/p&gt;', 0, '2020-12-05 11:34:18'),
(4, 1, 'asdasd', 0, '2020-12-05 11:34:31'),
(5, 1, '&lt;p&gt;complete&lt;/p&gt;', 1, '2020-12-05 11:54:13'),
(6, 3, '&lt;p&gt;Acabo de terminar 10 dispoitivos estoy pendiente de la entrega de 10 m&aacute;s&lt;/p&gt;', 0, '2021-03-08 15:23:43'),
(7, 3, '&lt;p&gt;Acaban de llegar los diez dispositivos faltantes, voy a realizar el proceso inmediatamente.&lt;/p&gt;', 0, '2021-03-08 16:16:07'),
(8, 3, '&lt;p&gt;Acabo de terminar el proceso efectivamente !!&lt;/p&gt;', 1, '2021-03-08 16:23:20'),
(9, 4, '&lt;p&gt;Se realiz&oacute; la validaci&oacute;n del ordenador, el dispositivo no ten&iacute;a el sistema operativo licenciado tampoco.&lt;/p&gt;&lt;p&gt;Sin embargo no tengo la licencia de Windows 10, a continuaci&oacute;n realizo el proceso, notificar&eacute; en cuanto est&eacute; resuelto.&lt;br&gt;&lt;/p&gt;', 0, '2021-03-09 16:58:18'),
(10, 5, '&lt;p&gt;Terminando con exito el apartado de Login y su dise&ntilde;o.&lt;/p&gt;', 1, '2024-11-29 09:21:12');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(30) NOT NULL,
  `firstname` varchar(200) NOT NULL,
  `lastname` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` text NOT NULL,
  `avatar` text DEFAULT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password`, `avatar`, `date_created`) VALUES
(1, 'Edgardo', 'Moreno', 'emoreno@proyect.com', 'e10adc3949ba59abbe56e057f20f883e', '1732889760_Edgardo.png', '2020-11-26 10:57:04');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `department_list`
--
ALTER TABLE `department_list`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `designation_list`
--
ALTER TABLE `designation_list`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `employee_list`
--
ALTER TABLE `employee_list`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `evaluator_list`
--
ALTER TABLE `evaluator_list`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `system_settings`
--
ALTER TABLE `system_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `task_list`
--
ALTER TABLE `task_list`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `task_progress`
--
ALTER TABLE `task_progress`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `department_list`
--
ALTER TABLE `department_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `designation_list`
--
ALTER TABLE `designation_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `employee_list`
--
ALTER TABLE `employee_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `evaluator_list`
--
ALTER TABLE `evaluator_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `ratings`
--
ALTER TABLE `ratings`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `system_settings`
--
ALTER TABLE `system_settings`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `task_list`
--
ALTER TABLE `task_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `task_progress`
--
ALTER TABLE `task_progress`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
