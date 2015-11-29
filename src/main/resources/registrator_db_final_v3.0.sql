--
-- ������ ������������ Devart dbForge Studio for MySQL, ������ 6.3.358.0
-- �������� �������� ��������: http://www.devart.com/ru/dbforge/mysql/studio
-- ���� �������: 27.11.2015 16:08:03
-- ������ �������: 5.5.41
-- ������ �������: 4.1
--


--
-- �������� ��� ���� ������ registrator_db
--
DROP DATABASE IF EXISTS registrator_db;
CREATE DATABASE registrator_db
CHARACTER SET latin1
COLLATE latin1_swedish_ci;

-- 
-- ��������� ���� ������ �� ���������
--
USE registrator_db;

--
-- �������� ��� ������� resource_types
--
CREATE TABLE resource_types (
  resource_type_id int(11) NOT NULL AUTO_INCREMENT,
  type_name varchar(255) NOT NULL,
  PRIMARY KEY (resource_type_id)
)
ENGINE = INNODB
AUTO_INCREMENT = 4
AVG_ROW_LENGTH = 16384
CHARACTER SET latin1
COLLATE latin1_swedish_ci;

--
-- �������� ��� ������� roles
--
CREATE TABLE roles (
  role_id int(11) NOT NULL AUTO_INCREMENT,
  description varchar(255) NOT NULL,
  name enum ('USER', 'REGISTRATOR', 'ADMIN') NOT NULL,
  PRIMARY KEY (role_id)
)
ENGINE = INNODB
AUTO_INCREMENT = 1
CHARACTER SET latin1
COLLATE latin1_swedish_ci;

--
-- �������� ��� ������� discrete_values
--
CREATE TABLE discrete_values (
  discrete_values_id int(11) NOT NULL AUTO_INCREMENT,
  description varchar(255) NOT NULL,
  resource_type_id int(11) NOT NULL,
  unit_name varchar(255) NOT NULL,
  PRIMARY KEY (discrete_values_id),
  CONSTRAINT FK_l6o6xiui7mpn52s6laoacahjc FOREIGN KEY (resource_type_id)
  REFERENCES resource_types (resource_type_id) ON DELETE RESTRICT ON UPDATE RESTRICT
)
ENGINE = INNODB
AUTO_INCREMENT = 1
CHARACTER SET latin1
COLLATE latin1_swedish_ci;

--
-- �������� ��� ������� lines_size
--
CREATE TABLE lines_size (
  lines_size_id int(11) NOT NULL AUTO_INCREMENT,
  description varchar(255) NOT NULL,
  resource_type_id int(11) NOT NULL,
  unit_name varchar(255) NOT NULL,
  PRIMARY KEY (lines_size_id),
  CONSTRAINT FK_jtxprxsxb34pr1ucids6gl9rs FOREIGN KEY (resource_type_id)
  REFERENCES resource_types (resource_type_id) ON DELETE RESTRICT ON UPDATE RESTRICT
)
ENGINE = INNODB
AUTO_INCREMENT = 1
CHARACTER SET latin1
COLLATE latin1_swedish_ci;

--
-- �������� ��� ������� users
--
CREATE TABLE users (
  user_id int(11) NOT NULL AUTO_INCREMENT,
  email varchar(255) NOT NULL,
  first_name varchar(255) NOT NULL,
  last_name varchar(255) NOT NULL,
  login varchar(255) NOT NULL,
  middle_name varchar(255) NOT NULL,
  password varchar(255) NOT NULL,
  status enum ('BLOCK', 'UNBLOCK', 'INACTIVE') NOT NULL,
  role_id int(11) NOT NULL,
  PRIMARY KEY (user_id),
  UNIQUE INDEX UK_6dotkott2kjsp8vw4d0m25fb7 (email),
  UNIQUE INDEX UK_ow0gan20590jrb00upg3va2fn (login),
  CONSTRAINT FK_krvotbtiqhudlkamvlpaqus0t FOREIGN KEY (role_id)
  REFERENCES roles (role_id) ON DELETE RESTRICT ON UPDATE RESTRICT
)
ENGINE = INNODB
AUTO_INCREMENT = 1
CHARACTER SET latin1
COLLATE latin1_swedish_ci;

--
-- �������� ��� ������� address
--
CREATE TABLE address (
  address_id int(11) NOT NULL AUTO_INCREMENT,
  building varchar(255) NOT NULL,
  city varchar(255) NOT NULL,
  district varchar(255) DEFAULT NULL,
  flat varchar(255) DEFAULT NULL,
  postcode varchar(255) NOT NULL,
  region varchar(255) NOT NULL,
  street varchar(255) NOT NULL,
  user_id int(11) NOT NULL,
  PRIMARY KEY (address_id),
  CONSTRAINT FK_7rod8a71yep5vxasb0ms3osbg FOREIGN KEY (user_id)
  REFERENCES users (user_id) ON DELETE RESTRICT ON UPDATE RESTRICT
)
ENGINE = INNODB
AUTO_INCREMENT = 1
CHARACTER SET latin1
COLLATE latin1_swedish_ci;

--
-- �������� ��� ������� passport_data
--
CREATE TABLE passport_data (
  passport_data_id int(11) NOT NULL AUTO_INCREMENT,
  number int(11) NOT NULL,
  published_by_data varchar(255) NOT NULL,
  seria varchar(255) NOT NULL,
  user_id int(11) NOT NULL,
  PRIMARY KEY (passport_data_id),
  CONSTRAINT FK_b3ufslic16u2m3j35ksfp0ivb FOREIGN KEY (user_id)
  REFERENCES users (user_id) ON DELETE RESTRICT ON UPDATE RESTRICT
)
ENGINE = INNODB
AUTO_INCREMENT = 1
CHARACTER SET latin1
COLLATE latin1_swedish_ci;

--
-- �������� ��� ������� resource_parameters
--
CREATE TABLE resource_parameters (
  resource_parameters_id int(11) NOT NULL AUTO_INCREMENT,
  parameter_id int(11) NOT NULL,
  resource_type_id int(11) NOT NULL,
  PRIMARY KEY (resource_parameters_id),
  CONSTRAINT FK_1unvdmfastc818i00xvmglchl FOREIGN KEY (resource_type_id)
  REFERENCES resource_types (resource_type_id) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT FK_resource_parameters_discrete_values_discrete_values_id FOREIGN KEY (parameter_id)
  REFERENCES discrete_values (discrete_values_id) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT FK_tc2co2gdknt0kyt43e0wwejh9 FOREIGN KEY (parameter_id)
  REFERENCES lines_size (lines_size_id) ON DELETE RESTRICT ON UPDATE RESTRICT
)
ENGINE = INNODB
AUTO_INCREMENT = 1
CHARACTER SET latin1
COLLATE latin1_swedish_ci;

--
-- �������� ��� ������� tomes
--
CREATE TABLE tomes (
  tome_id int(11) NOT NULL AUTO_INCREMENT,
  identifier varchar(255) NOT NULL,
  name varchar(255) NOT NULL,
  registrator_id int(11) NOT NULL,
  PRIMARY KEY (tome_id),
  CONSTRAINT FK_pnsd367apavsotihxdt51mo7v FOREIGN KEY (registrator_id)
  REFERENCES users (user_id) ON DELETE RESTRICT ON UPDATE RESTRICT
)
ENGINE = INNODB
AUTO_INCREMENT = 1
CHARACTER SET latin1
COLLATE latin1_swedish_ci;

--
-- �������� ��� ������� list_of_resouces
--
CREATE TABLE list_of_resouces (
  resources_id int(11) NOT NULL AUTO_INCREMENT,
  date datetime NOT NULL,
  identifier varchar(255) NOT NULL,
  reason_inclusion varchar(255) NOT NULL,
  status enum ('ACTIVE', 'UNCHECKED', 'DENIDED', 'OBSOLETE') NOT NULL,
  tome_id int(11) NOT NULL,
  resource_type_id int(11) NOT NULL,
  registrator_id int(11) NOT NULL,
  PRIMARY KEY (resources_id),
  CONSTRAINT FK_2bflnodo3qtvgos2ou0s9sp9 FOREIGN KEY (registrator_id)
  REFERENCES users (user_id) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT FK_3dk2u1o6r3f41knbp4bw0u4e2 FOREIGN KEY (tome_id)
  REFERENCES tomes (tome_id) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT FK_764t63m3e5fl8seck12tyr8j FOREIGN KEY (resource_type_id)
  REFERENCES resource_types (resource_type_id) ON DELETE RESTRICT ON UPDATE RESTRICT
)
ENGINE = INNODB
AUTO_INCREMENT = 1
CHARACTER SET latin1
COLLATE latin1_swedish_ci;

--
-- �������� ��� ������� area
--
CREATE TABLE area (
  area_id int(11) NOT NULL AUTO_INCREMENT,
  latitude double NOT NULL,
  longitude double NOT NULL,
  number_of_point int(11) NOT NULL,
  resource_id int(11) NOT NULL,
  PRIMARY KEY (area_id),
  CONSTRAINT FK_j05enuc6gftyec9v9m07880bs FOREIGN KEY (resource_id)
  REFERENCES list_of_resouces (resources_id) ON DELETE RESTRICT ON UPDATE RESTRICT
)
ENGINE = INNODB
AUTO_INCREMENT = 1
CHARACTER SET latin1
COLLATE latin1_swedish_ci;

--
-- �������� ��� ������� inquiry_list
--
CREATE TABLE inquiry_list (
  inquiry_list_id int(11) NOT NULL AUTO_INCREMENT,
  date datetime NOT NULL,
  inquiry_type varchar(255) NOT NULL,
  to_user_id int(11) NOT NULL,
  resource_id int(11) NOT NULL,
  from_user_id int(11) NOT NULL,
  PRIMARY KEY (inquiry_list_id),
  CONSTRAINT FK_37qp17x0dnyms8oxyo33jigpb FOREIGN KEY (from_user_id)
  REFERENCES users (user_id) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT FK_cqtn406s2sbvribvsveeln8k1 FOREIGN KEY (to_user_id)
  REFERENCES users (user_id) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT FK_j8gyy6aabddkoxp4jivw8fini FOREIGN KEY (resource_id)
  REFERENCES list_of_resouces (resources_id) ON DELETE RESTRICT ON UPDATE RESTRICT
)
ENGINE = INNODB
AUTO_INCREMENT = 1
CHARACTER SET latin1
COLLATE latin1_swedish_ci;

--
-- �������� ��� ������� store_of_discrete_values
--
CREATE TABLE store_of_discrete_values (
  store_of_discrete_values_id int(11) NOT NULL AUTO_INCREMENT,
  value double NOT NULL,
  discrete_values_id int(11) NOT NULL,
  resource_id int(11) NOT NULL,
  PRIMARY KEY (store_of_discrete_values_id),
  CONSTRAINT FK_4meqlvq5cximihuaceblx2eat FOREIGN KEY (discrete_values_id)
  REFERENCES discrete_values (discrete_values_id) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT FK_nhytl29kvxo7ydlx22hb2cmkr FOREIGN KEY (resource_id)
  REFERENCES list_of_resouces (resources_id) ON DELETE RESTRICT ON UPDATE RESTRICT
)
ENGINE = INNODB
AUTO_INCREMENT = 1
CHARACTER SET latin1
COLLATE latin1_swedish_ci;

--
-- �������� ��� ������� store_of_line_sizes
--
CREATE TABLE store_of_line_sizes (
  store_of_line_sizes_id int(11) NOT NULL AUTO_INCREMENT,
  maximal_value double NOT NULL,
  minimal_value double NOT NULL,
  lines_size_id int(11) NOT NULL,
  resource_id int(11) NOT NULL,
  PRIMARY KEY (store_of_line_sizes_id),
  CONSTRAINT FK_3xyhv8kkfw07fteqogw9quiv5 FOREIGN KEY (lines_size_id)
  REFERENCES lines_size (lines_size_id) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT FK_b3slij1w8e86itel464agc7l2 FOREIGN KEY (resource_id)
  REFERENCES list_of_resouces (resources_id) ON DELETE RESTRICT ON UPDATE RESTRICT
)
ENGINE = INNODB
AUTO_INCREMENT = 1
CHARACTER SET latin1
COLLATE latin1_swedish_ci;