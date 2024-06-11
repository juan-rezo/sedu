/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 100432
 Source Host           : localhost:3306
 Source Schema         : tareas

 Target Server Type    : MySQL
 Target Server Version : 100432
 File Encoding         : 65001

 Date: 11/06/2024 15:33:51
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for delegacion
-- ----------------------------
DROP TABLE IF EXISTS `delegacion`;
CREATE TABLE `delegacion`  (
  `idDelegacion` int NOT NULL AUTO_INCREMENT,
  `delegacion` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`idDelegacion`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_spanish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of delegacion
-- ----------------------------
INSERT INTO `delegacion` VALUES (1, 'CUAUHTEMOC');
INSERT INTO `delegacion` VALUES (2, 'DELICIAS');
INSERT INTO `delegacion` VALUES (3, 'HIDALGO DEL PARRAL');
INSERT INTO `delegacion` VALUES (4, 'JUAREZ');

-- ----------------------------
-- Table structure for denuncias
-- ----------------------------
DROP TABLE IF EXISTS `denuncias`;
CREATE TABLE `denuncias`  (
  `iddenuncia` int NOT NULL AUTO_INCREMENT,
  `archvistica` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NULL DEFAULT NULL,
  `idempresa` int NULL DEFAULT NULL,
  PRIMARY KEY (`iddenuncia`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_spanish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of denuncias
-- ----------------------------

-- ----------------------------
-- Table structure for denuncias2
-- ----------------------------
DROP TABLE IF EXISTS `denuncias2`;
CREATE TABLE `denuncias2`  (
  `iddenuncia` int NOT NULL AUTO_INCREMENT,
  `archivistica` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NULL DEFAULT NULL,
  `empresa` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NULL DEFAULT NULL,
  `direccion` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NULL DEFAULT NULL,
  `latitud` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NULL DEFAULT NULL,
  `longitud` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NULL DEFAULT NULL,
  `delegacion` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NULL DEFAULT NULL,
  `municipio` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NULL DEFAULT NULL,
  `denuncia` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NULL DEFAULT NULL,
  `fechaorden` date NULL DEFAULT NULL,
  PRIMARY KEY (`iddenuncia`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_spanish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of denuncias2
-- ----------------------------
INSERT INTO `denuncias2` VALUES (1, '1234567890', 'gobierno del estado de chihuahua', 'escorza |', 'poniente', 'oriente', '3', '3', '2', '2022-03-29');
INSERT INTO `denuncias2` VALUES (2, 'abcdefghijk', 'oxxo', 'vallarta # 1', '45.2se', '9659.23NW', '3', '3', '2', '2020-05-05');
INSERT INTO `denuncias2` VALUES (3, '', '', '', '', '', 'Chihuahua', 'Batopilas de Manuel Gomez Morin', 'SELECCIONAR..', '0000-00-00');
INSERT INTO `denuncias2` VALUES (4, '123', '74185', '400', '544', '454', 'Chihuahua', 'Batopilas de Manuel Gomez Morin', '2', '2024-06-29');

-- ----------------------------
-- Table structure for empresas
-- ----------------------------
DROP TABLE IF EXISTS `empresas`;
CREATE TABLE `empresas`  (
  `idempresa` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NULL DEFAULT NULL,
  `direccion` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NULL DEFAULT NULL,
  `latitud` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NULL DEFAULT NULL,
  `longitud` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NULL DEFAULT NULL,
  `idmunicipio` int NULL DEFAULT NULL,
  PRIMARY KEY (`idempresa`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_spanish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of empresas
-- ----------------------------
INSERT INTO `empresas` VALUES (1, 'DURAPLAY DE PARRAL S.A.P.I. DE C.V. ', NULL, 'SANTA BARBARA, NUMER', NULL, NULL);
INSERT INTO `empresas` VALUES (2, NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for inspeccion_tipo
-- ----------------------------
DROP TABLE IF EXISTS `inspeccion_tipo`;
CREATE TABLE `inspeccion_tipo`  (
  `id_inspeccion_tipo` int NOT NULL,
  `idTipoInspeccion` int NULL DEFAULT NULL,
  `idInspeccion` int NULL DEFAULT NULL,
  PRIMARY KEY (`id_inspeccion_tipo`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_spanish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of inspeccion_tipo
-- ----------------------------

-- ----------------------------
-- Table structure for inspecciones_temp
-- ----------------------------
DROP TABLE IF EXISTS `inspecciones_temp`;
CREATE TABLE `inspecciones_temp`  (
  `idinspecciontemp` int NOT NULL AUTO_INCREMENT,
  `archivistica` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NULL DEFAULT NULL,
  `empresa` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NULL DEFAULT NULL,
  `direccion` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NULL DEFAULT NULL,
  `latitud` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NULL DEFAULT NULL,
  `longitud` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NULL DEFAULT NULL,
  `delegacion` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NULL DEFAULT NULL,
  `municipio` varbinary(50) NULL DEFAULT NULL,
  `denuncia` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NULL DEFAULT NULL,
  `fecha` date NULL DEFAULT NULL,
  PRIMARY KEY (`idinspecciontemp`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_spanish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of inspecciones_temp
-- ----------------------------
INSERT INTO `inspecciones_temp` VALUES (1, 'xyz123', 'la mia', 'calle 1 sur', '156.23n', '999.00s', 'delicias', 0x64656C6963696173, 'si', '2024-05-14');
INSERT INTO `inspecciones_temp` VALUES (2, '123xyz', 'la moderna', 'avenida 4 nte', '652.23', '789.45s', 'parral', 0x70617272616C, 'si', '2024-05-28');
INSERT INTO `inspecciones_temp` VALUES (3, '123456', 'el moño', 'boulevard gomz', '777.so', '985No', 'casas grandes', 0x6361736173206772616E646573, 'no', '2024-09-28');
INSERT INTO `inspecciones_temp` VALUES (4, NULL, 'los cuñaos', 'tecnologico', '7855 p', '8965 o', 'juarez', 0x6A7561657A, 'si', '2055-07-22');

-- ----------------------------
-- Table structure for inspectores
-- ----------------------------
DROP TABLE IF EXISTS `inspectores`;
CREATE TABLE `inspectores`  (
  `idInspectores` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NULL DEFAULT NULL,
  `apaterno` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NULL DEFAULT NULL,
  `amaterno` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NULL DEFAULT NULL,
  `alias` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NULL DEFAULT NULL,
  `activo` tinyint NULL DEFAULT NULL,
  PRIMARY KEY (`idInspectores`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_spanish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of inspectores
-- ----------------------------
INSERT INTO `inspectores` VALUES (1, 'ROSA EDITH', 'ORTEGA ', 'ORTEGA', 'REOO', 1);
INSERT INTO `inspectores` VALUES (2, 'LAURA ISABEL', 'ALVARADO', 'FERNÁNDEZ', 'LIAF', 1);
INSERT INTO `inspectores` VALUES (3, 'PABLO ALFREDO', 'PÉREZ', 'MENDOZA', 'PAPM', 1);
INSERT INTO `inspectores` VALUES (4, 'EDGAR ANTONIO', 'HERRERA', 'SEPÚLVEDA', 'EAHS', 1);
INSERT INTO `inspectores` VALUES (5, 'KARLA', 'XXXX', 'YYYYY', 'KXY', 0);

-- ----------------------------
-- Table structure for municipios
-- ----------------------------
DROP TABLE IF EXISTS `municipios`;
CREATE TABLE `municipios`  (
  `idmunicipio` int NOT NULL AUTO_INCREMENT,
  `municipio` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NULL DEFAULT NULL,
  `iddelegacion` int NULL DEFAULT NULL,
  PRIMARY KEY (`idmunicipio`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 54 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_spanish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of municipios
-- ----------------------------
INSERT INTO `municipios` VALUES (1, 'CUAUHTEMOC', 1);
INSERT INTO `municipios` VALUES (2, 'GUERRERO', 1);
INSERT INTO `municipios` VALUES (3, 'GÓMEZ FARÍAS', 1);
INSERT INTO `municipios` VALUES (4, 'MADERA', 1);
INSERT INTO `municipios` VALUES (5, 'CUSIHUIRIACHI', 1);
INSERT INTO `municipios` VALUES (6, 'CARICHÍ', 1);
INSERT INTO `municipios` VALUES (7, 'NAMIQUIPA', 1);
INSERT INTO `municipios` VALUES (8, 'RIVA PALACIO', 1);
INSERT INTO `municipios` VALUES (9, 'BACHÍNIVA', 1);
INSERT INTO `municipios` VALUES (10, 'BOCOYNA', 1);
INSERT INTO `municipios` VALUES (11, 'CHÍNIPAS', 1);
INSERT INTO `municipios` VALUES (12, 'GUAZAPARES', 1);
INSERT INTO `municipios` VALUES (13, 'MAGUARICHI', 1);
INSERT INTO `municipios` VALUES (14, 'MORIS', 1);
INSERT INTO `municipios` VALUES (15, 'OCAMPO', 1);
INSERT INTO `municipios` VALUES (16, 'URIQUE', 1);
INSERT INTO `municipios` VALUES (17, 'URIACHI', 1);
INSERT INTO `municipios` VALUES (18, 'MATACHÍ', 1);
INSERT INTO `municipios` VALUES (19, 'TEMÓSACHIC', 1);
INSERT INTO `municipios` VALUES (20, 'DELICIAS', 2);
INSERT INTO `municipios` VALUES (21, 'ROSALES', 2);
INSERT INTO `municipios` VALUES (22, 'MEOQUI', 2);
INSERT INTO `municipios` VALUES (23, 'SAUCILLO', 2);
INSERT INTO `municipios` VALUES (24, 'CAMARGO', 2);
INSERT INTO `municipios` VALUES (25, 'JULIMES', 2);
INSERT INTO `municipios` VALUES (26, 'SAN FRANCISCO DE CONCHOS', 2);
INSERT INTO `municipios` VALUES (27, 'LA CRUZ', 2);
INSERT INTO `municipios` VALUES (28, 'JIMÉNEZ', 2);
INSERT INTO `municipios` VALUES (29, 'LÓPEZ', 2);
INSERT INTO `municipios` VALUES (30, 'CORONADO', 2);
INSERT INTO `municipios` VALUES (31, 'ALLENDE', 3);
INSERT INTO `municipios` VALUES (32, 'BALLEZA', 3);
INSERT INTO `municipios` VALUES (33, 'EL TULE', 3);
INSERT INTO `municipios` VALUES (34, 'GUACHOCHI', 3);
INSERT INTO `municipios` VALUES (35, 'GUADALUPE Y CALVO', 3);
INSERT INTO `municipios` VALUES (36, 'HUEJOTITÁN', 3);
INSERT INTO `municipios` VALUES (37, 'MATAMOROS', 3);
INSERT INTO `municipios` VALUES (38, 'MORELOS', 3);
INSERT INTO `municipios` VALUES (39, 'PARRAL', 3);
INSERT INTO `municipios` VALUES (40, 'ROSARIO', 3);
INSERT INTO `municipios` VALUES (41, 'SAN FRANCISCO DEL ORO', 3);
INSERT INTO `municipios` VALUES (42, 'SANTA BÁRBARA', 3);
INSERT INTO `municipios` VALUES (43, 'VALLE DE ZARAGOZA', 3);
INSERT INTO `municipios` VALUES (44, 'JUÁREZ', 4);
INSERT INTO `municipios` VALUES (45, 'AHUMADA', 4);
INSERT INTO `municipios` VALUES (46, 'GUADALUPE', 4);
INSERT INTO `municipios` VALUES (47, 'BUENAVENTURA', 5);
INSERT INTO `municipios` VALUES (48, 'IGNACIO ZARAGOZA', 5);
INSERT INTO `municipios` VALUES (49, 'GALEANA', 5);
INSERT INTO `municipios` VALUES (50, 'NUEVO CASAS GRANDES', 5);
INSERT INTO `municipios` VALUES (51, 'JANOS', 5);
INSERT INTO `municipios` VALUES (52, 'ASCENSIÓN', 5);
INSERT INTO `municipios` VALUES (53, 'CASAS GRANDES', 5);

-- ----------------------------
-- Table structure for orden_inspeccion
-- ----------------------------
DROP TABLE IF EXISTS `orden_inspeccion`;
CREATE TABLE `orden_inspeccion`  (
  `idordeninspeccion` int NOT NULL AUTO_INCREMENT,
  `archivistica` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NULL DEFAULT NULL,
  `idempresa` int NULL DEFAULT NULL,
  `scian` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NULL DEFAULT NULL,
  `subscian` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NULL DEFAULT NULL,
  `denuncia` tinyint NULL DEFAULT NULL,
  `Fechaorden` date NULL DEFAULT NULL COMMENT 'fecha elaboracion orden',
  PRIMARY KEY (`idordeninspeccion`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_spanish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of orden_inspeccion
-- ----------------------------
INSERT INTO `orden_inspeccion` VALUES (1, 'xx001', 1, '200', '300', 1, '2024-03-03');

-- ----------------------------
-- Table structure for tareas
-- ----------------------------
DROP TABLE IF EXISTS `tareas`;
CREATE TABLE `tareas`  (
  `idtarea` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`idtarea`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_spanish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tareas
-- ----------------------------

-- ----------------------------
-- Table structure for tipoinspeccion
-- ----------------------------
DROP TABLE IF EXISTS `tipoinspeccion`;
CREATE TABLE `tipoinspeccion`  (
  `idTipoInspeccin` int NOT NULL,
  `tipo` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`idTipoInspeccin`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_spanish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tipoinspeccion
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
