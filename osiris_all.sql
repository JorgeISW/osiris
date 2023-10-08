-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 08-10-2023 a las 21:33:34
-- Versión del servidor: 10.4.27-MariaDB
-- Versión de PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `osiris`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `infotravel`
--

CREATE TABLE `infotravel` (
  `ID` int(11) NOT NULL,
  `Nombre` varchar(255) DEFAULT NULL,
  `Distancia_desde_la_Tierra` varchar(255) DEFAULT NULL,
  `Tiempos_de_llegada` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `infotravel`
--

INSERT INTO `infotravel` (`ID`, `Nombre`, `Distancia_desde_la_Tierra`, `Tiempos_de_llegada`) VALUES
(1, 'Mercurio', '77.3 millones de km', '2.627 meses'),
(2, 'Venus', '261 millones de km', '8.871 meses'),
(3, 'Marte', '225 millones de km', '7.648 meses'),
(4, 'Júpiter', '628.7 millones de km', '21.37 meses'),
(5, 'Saturno', '1.27 mil millones de km', '3.597 años'),
(6, 'Urano', '2.72 mil millones de km', '7.704 años'),
(7, 'Neptuno', '4.32 mil millones de km', '12.23 años'),
(8, 'Pluto', '6 mil millones de km', '16.99 años'),
(9, 'Eris', '14.316 mil millones de km', '40.55 años'),
(10, 'Ceres', '413.5 millones de km', '14.05 meses'),
(11, 'Makemake', '5.61 mil millones de km', '15.89 años'),
(12, 'Haumea', '6.44 mil millones de km', '18.24 años'),
(13, 'Luna', '384,400 km', '9.5384 horas'),
(14, 'Phobos', '77.79 millones de km', '2.644 meses'),
(15, 'Deimos', '77.79 millones de km', '2.644 meses');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `matches`
--

CREATE TABLE `matches` (
  `organismo` int(11) NOT NULL,
  `planeta` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `matches`
--

INSERT INTO `matches` (`organismo`, `planeta`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 6),
(1, 9),
(1, 10),
(1, 13),
(1, 14),
(1, 15),
(2, 1),
(2, 2),
(2, 3),
(2, 4),
(2, 5),
(2, 6),
(2, 7),
(2, 8),
(2, 9),
(2, 10),
(2, 11),
(2, 12),
(2, 13),
(2, 14),
(2, 15),
(3, 2),
(3, 8),
(3, 10),
(3, 11),
(3, 12),
(4, 1),
(4, 2),
(4, 3),
(4, 6),
(4, 9),
(4, 10),
(4, 13),
(4, 14),
(4, 15),
(5, 2),
(5, 6),
(5, 9),
(5, 10),
(5, 13);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `organism`
--

CREATE TABLE `organism` (
  `ID` int(11) NOT NULL,
  `Organism` varchar(255) DEFAULT NULL,
  `Scientific_Name` varchar(255) DEFAULT NULL,
  `Average_Weight` varchar(255) DEFAULT NULL,
  `Liquid_Percentage` varchar(255) DEFAULT NULL,
  `Temperature` varchar(255) DEFAULT NULL,
  `Pressure` varchar(255) DEFAULT NULL,
  `Habitat_Type` varchar(255) DEFAULT NULL,
  `Respiration_Type` varchar(255) DEFAULT NULL,
  `Description` varchar(255) DEFAULT NULL,
  `img_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `organism`
--

INSERT INTO `organism` (`ID`, `Organism`, `Scientific_Name`, `Average_Weight`, `Liquid_Percentage`, `Temperature`, `Pressure`, `Habitat_Type`, `Respiration_Type`, `Description`, `img_name`) VALUES
(1, 'Human', 'Homo sapiens', '50 to 100 kilograms', '60% to 65%', '22°C to 37°C', '1 atm', 'Terrestrial', 'Aerobic', 'The human being, Homo sapiens, is a fascinating species that inhabits almost every corner of the Earth. With an average weight ranging from 50 to 100 kilograms, humans are terrestrial creatures that have learned to adapt to a wide range of conditions. Con', 'human.jpg'),
(2, 'Water Bear', 'Tardigrada', 'Undefined', 'Undefined', '-273°C to 150°C', 'Up to 6000 atm', 'Terrestrial and Aquatic', 'Aerobic and Anaerobic', 'Tardigrades, known as water bears, are extremely resilient microscopic creatures. Although their specific weight is not defined, these tiny beings are known to survive in extreme conditions, from temperatures near absolute zero to over 150°C. Water bears ', 'WaterBear.jpg'),
(3, 'Starfish', 'Asteroidea', '100 grams to 1 kilogram', '80% to 90%', '2°C to 28°C', '1 to 750 atm', 'Aquatic', 'Aerobic', 'Starfish, belonging to the class Asteroidea, are inhabitants of the aquatic environment. With an average weight of 100 grams to 1 kilogram, these marine creatures are mostly composed of water, with an impressive 80% to 90%. They prefer temperatures rangin', 'starfish.jpg'),
(4, 'Fruit Fly', 'Drosophila melanogaster', '1 milligram', '60%', '18°C to 25°C', '1 atm', 'Terrestrial', 'Aerobic', 'The fruit fly, Drosophila melanogaster, is a small but influential insect. With an average weight of just 1 milligram, these terrestrial creatures constitute approximately 60% water. They prefer temperatures between 18°C and 25°C and can survive at the st', 'fruit_fly.jpg'),
(5, 'Arabidopsis', 'Arabidopsis thaliana', 'Undefined', 'Undefined', '18°C to 22°C', '1 atm', 'Terrestrial', 'Aerobic', 'Arabidopsis thaliana, also known as Arabidopsis, is a small terrestrial plant. Its specific weight is not defined, but it grows comfortably at temperatures between 18°C and 22°C and lives at standard atmospheric pressure. It is an aerobic plant that carri', 'Arabidopsis.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `planetaryinfo`
--

CREATE TABLE `planetaryinfo` (
  `ID` int(11) NOT NULL,
  `Planet` varchar(255) DEFAULT NULL,
  `Pressure` varchar(255) DEFAULT NULL,
  `Gravity_Force` varchar(255) DEFAULT NULL,
  `Environment` varchar(255) DEFAULT NULL,
  `Distance` varchar(255) DEFAULT NULL,
  `Temperature` varchar(255) DEFAULT NULL,
  `Celestial_Body_Type` varchar(255) DEFAULT NULL,
  `Description` varchar(255) DEFAULT NULL,
  `img_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `planetaryinfo`
--

INSERT INTO `planetaryinfo` (`ID`, `Planet`, `Pressure`, `Gravity_Force`, `Environment`, `Distance`, `Temperature`, `Celestial_Body_Type`, `Description`, `img_name`) VALUES
(1, 'Mercury', 'Very low', '3.7 m/s²', 'Rock and dust', '57.9 million km', 'Extremely variable', 'Planet', 'Mercury, the closest planet to the Sun, is a desolate and extreme place in our solar system. With a very low atmospheric pressure, its thin atmosphere has little substance. Gravity on Mercury is so light that you would feel almost three times lighter than', 'mercury.png'),
(2, 'Venus', 'Very high', '8.87 m/s²', 'Rocky surface', '108.2 million km', 'Extremely hot', 'Planet', 'Venus, Earth\'s infernal twin, has suffocating atmospheric pressure that is 92 times greater than Earth\'s. Gravity on Venus is similar to Earth\'s, making you feel relatively heavy there. Its environment is suffocating, with a scorching surface and an atmos', 'venus.png'),
(3, 'Earth', '101.3 kPa', '9.81 m/s²', 'Mainly land', '149.6 million km', 'Variable', 'Planet', 'Earth is our home, a diverse and unique planet in the solar system. With an atmospheric pressure of 101.3 kPa at sea level, gravity on Earth is 9.81 m/s². Our environment is varied and welcoming, with liquid water oceans, an atmosphere rich in oxygen and ', 'tierra.png'),
(4, 'Mars', 'Low', '3.71 m/s²', 'Rock and dust', '227.9 million km', 'Cold', 'Planet', 'Mars, the red planet, has low atmospheric pressure, about 1% of Earth\'s. Gravity on Mars is weaker, about one-third of Earth\'s. Its environment is rocky and dusty, with a thin atmosphere mainly composed of carbon dioxide. Mars is approximately 227.9 milli', 'mars.png'),
(5, 'Jupiter', 'Extremely high', '24.79 m/s²', 'Mostly gaseous', '778.3 million km', 'Extremely cold in the upper atmosphere and very warm in the interior', 'Giant gaseous planet', 'Jupiter, the giant gaseous planet, has extremely high pressure due to its immense hydrogen and helium atmosphere. Gravity on Jupiter is about 2.5 times that of Earth. This world has no solid surface and is mainly composed of gases. Jupiter is located abou', 'jupiter.png'),
(6, 'Saturn', 'Extremely high', '10.44 m/s²', 'Mostly gaseous', '1.42 billion km', 'Cold in the upper atmosphere and warm in the interior', 'Giant gaseous planet', 'Saturn, another giant gaseous planet, also has extremely high pressure in its upper atmosphere. Its gravity is almost equal to that of Earth. Like Jupiter, Saturn lacks a solid surface and is composed of gases. Saturn is about 1.42 billion kilometers from', 'saturno.png'),
(7, 'Uranus', 'High', '8.69 m/s²', 'Mostly gaseous', '2.87 billion km', 'Very cold', 'Giant gaseous planet', 'Uranus, the icy giant, has high pressure in its upper atmosphere. Its gravity is similar to Earth\'s. This planet is mostly composed of hydrogen and helium in its atmosphere. Uranus is about 2.87 billion kilometers from the Sun. Temperatures on Uranus are ', 'urano.png'),
(8, 'Neptune', 'Extremely high', '11.15 m/s²', 'Mostly gaseous', '4.5 billion km', 'Very cold', 'Giant gaseous planet', 'Neptune, another giant gaseous planet, has extremely high pressure in its upper atmosphere. Its gravity is similar to Earth\'s. Like Jupiter and Saturn, it has no solid surface and is primarily composed of gases. Neptune is about 4.5 billion kilometers fro', 'neptuno.png'),
(9, 'Pluto', 'Very low', '0.62 m/s²', 'Mainly rocky and icy', 'Variable', 'Extremely cold', 'Dwarf planet', 'Pluto, once considered the ninth planet, is now a dwarf planet at the edge of the solar system. With very low pressure and extremely weak gravity of 0.62 m/s², Pluto is a rocky and icy world. Its variable distance from the Sun, ranging around 5.91 billion', 'pluton.png'),
(10, 'Eris', 'Unknown', '0.82 m/s²', 'Mainly rocky and icy', 'Variable', 'Very cold', 'Dwarf planet', 'Eris is another distant dwarf planet in the Kuiper Belt. Very little is known about its atmosphere and pressure, but it is believed to be extremely low. With an extremely weak gravity of approximately 0.82 m/s², Eris is a rocky and icy world. It is locate', 'eris.png'),
(11, 'Ceres', 'Very low', '0.27 m/s²', 'Mainly rocky', '414 million km', 'Variable', 'Dwarf planet', 'Ceres, the largest dwarf planet in the asteroid belt, has very low pressure and weak gravity of 0.27 m/s². It is mainly rocky and icy, with a surface covered in craters and traces of a thin atmosphere. Ceres orbits at a distance of approximately 414 milli', 'Ceres.png'),
(12, 'Makemake', 'Unknown', '0.05 m/s²', 'Mainly rocky and icy', 'Variable', 'Very cold', 'Dwarf planet', 'Makemake is another distant dwarf planet in the Kuiper Belt. Very little is known about its atmosphere and pressure, but they are believed to be very low. With an extremely weak gravity of approximately 0.05 m/s², Makemake is a rocky and icy world. Its di', 'Makemake.png'),
(13, 'Haumea', 'Unknown', '0.44 m/s²', 'Mainly rocky', 'Variable', 'Very cold', 'Dwarf planet', 'Haumea, a dwarf planet with a peculiar orbit, also has a little-known atmosphere, but it is believed to be very tenuous. With a gravity of approximately 0.44 m/s², Haumea is mainly rocky and has a peculiar shape due to its rapid rotation. It is located at', 'haumea.png'),
(14, 'Moon', 'Undefined', '1.62 m/s²', 'Undefined', '384,400 km from Earth', 'Undefined', 'Satellite', 'Our Moon, Earth\'s closest companion, has an extremely tenuous, almost non-existent atmosphere, resulting in very low pressure. Gravity on the Moon is much weaker than on Earth, approximately 1/6 of Earth\'s gravity. The Moon is a rocky and dusty world, wit', 'moon.png'),
(15, 'Phobos', 'Undefined', '0.0057 m/s²', 'Undefined', '9,378 km from Mars', 'Undefined', 'Satellite', 'Phobos, one of Mars\' moons, has virtually non-existent surface pressure and extremely weak gravity, making you feel almost weightless on its surface. It is a rocky world without a significant atmosphere. Phobos orbits Mars at a very close distance, just a', 'phobos.png'),
(16, 'Deimos', 'Undefined', '0.003 m/s²', 'Undefined', '23,460 km from Mars', 'Undefined', 'Satellite', 'Deimos, another of Mars\' moons, also has virtually non-existent surface pressure and extremely weak gravity. It is a rocky world without a significant atmosphere. Deimos orbits Mars at a farther distance than Phobos, at about 77.79 million kilometers from', 'dimos.png');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `infotravel`
--
ALTER TABLE `infotravel`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `organism`
--
ALTER TABLE `organism`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `planetaryinfo`
--
ALTER TABLE `planetaryinfo`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `infotravel`
--
ALTER TABLE `infotravel`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `organism`
--
ALTER TABLE `organism`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `planetaryinfo`
--
ALTER TABLE `planetaryinfo`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
