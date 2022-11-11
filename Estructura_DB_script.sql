
CREATE DATABASE funcionarios_iudigital;


-- Table structure for table `funcionarios`

CREATE TABLE `funcionarios` (
  `id_funcionarios` int NOT NULL AUTO_INCREMENT,
  `tipo_id` varchar(45) NOT NULL,
  `numero_id` varchar(45) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `apellido` varchar(45) NOT NULL,
  `estado_civil` varchar(45) NOT NULL,
  `telefono` varchar(45) NOT NULL,
  `fecha_nacimineto` date NOT NULL,
  `dirreccion` varchar(45) NOT NULL,
  `funcionarioscol` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `sexo` varchar(45) NOT NULL,
  PRIMARY KEY (`id_funcionarios`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- Table structure for table `estudios`

CREATE TABLE `estudios` (
  `id_estudio` int NOT NULL,
  `intitucion` varchar(45) DEFAULT NULL,
  `nivel` varchar(45) DEFAULT NULL,
  `titulo` varchar(45) DEFAULT NULL,
  `fecha_graducacion` date DEFAULT NULL,
  `id_funcionario` int DEFAULT NULL,
  PRIMARY KEY (`id_estudio`),
  KEY `FK_estudio_funcionario_idx` (`id_funcionario`),
  CONSTRAINT `FK_estudio_funcionario` FOREIGN KEY (`id_funcionario`) REFERENCES `funcionarios` (`id_funcionarios`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- Table structure for table `familiares`

CREATE TABLE `familiares` (
  `id_familiares` int NOT NULL AUTO_INCREMENT,
  `tipo_id` varchar(45) NOT NULL,
  `numero_id` varchar(45) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `apellido` varchar(45) NOT NULL,
  `fecha_nacimiento` varchar(45) NOT NULL,
  `sexo` varchar(45) NOT NULL,
  PRIMARY KEY (`id_familiares`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- Table structure for table `func_fami_relacion`

CREATE TABLE `func_fami_relacion` (
  `id_fun_fami` int NOT NULL,
  `id_funcionario` int DEFAULT NULL,
  `id_familiar` int DEFAULT NULL,
  `realcion` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_fun_fami`),
  KEY `FK_func_fami_fun_idx` (`id_funcionario`),
  KEY `FK_func_fami_fami_idx` (`id_familiar`),
  CONSTRAINT `FK_func_fami_fami` FOREIGN KEY (`id_familiar`) REFERENCES `familiares` (`id_familiares`),
  CONSTRAINT `FK_func_fami_fun` FOREIGN KEY (`id_funcionario`) REFERENCES `funcionarios` (`id_funcionarios`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;



