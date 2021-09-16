-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2020-11-22 23:32:29.871

-- tables
-- Table: Account_type
CREATE TABLE Account_type (
    account_type_id int NOT NULL AUTO_INCREMENT COMMENT 'Primary key de la tabla account_type_id
PK of this table',
    type varchar(100) NOT NULL COMMENT 'Cadena de texto que indica el typo de cuenta el tipo de plan, como ser "Premium" 
String that show user''''s accoun type like "Premium"',
    price numeric(10,2) NOT NULL COMMENT 'Indica el precio de ese tipo de usuario',
    status int NOT NULL,
    tx_id int NOT NULL,
    tx_host varchar(100) NOT NULL,
    tx_user int NOT NULL,
    tx_date timestamp NOT NULL,
    tx_update date NOT NULL,
    CONSTRAINT user_type_id PRIMARY KEY (account_type_id)
);

-- Table: Category
CREATE TABLE Category (
    category_id int NOT NULL AUTO_INCREMENT,
    name varchar(100) NOT NULL COMMENT 'Nombre General de la categoria como ser PELICULAS',
    status int NOT NULL,
    tx_id int NOT NULL,
    tx_host varchar(100) NOT NULL,
    tx_user int NOT NULL,
    tx_date timestamp NOT NULL,
    tx_update date NOT NULL,
    photo_id int NOT NULL,
    CONSTRAINT cathegory_id PRIMARY KEY (category_id)
);

-- Table: Chat
CREATE TABLE Chat (
    chat_id int NOT NULL AUTO_INCREMENT,
    status int NOT NULL,
    tx_id int NOT NULL,
    tx_host varchar(100) NOT NULL,
    tx_user int NOT NULL,
    tx_date timestamp NOT NULL,
    tx_update date NOT NULL,
    user1_id int NOT NULL,
    user2_id int NOT NULL,
    CONSTRAINT chat_id PRIMARY KEY (chat_id)
);

-- Table: Match
CREATE TABLE `Match` (
    match_id int NOT NULL AUTO_INCREMENT,
    accepted bool NOT NULL,
    status int NOT NULL,
    tx_id int NOT NULL,
    tx_host varchar(100) NOT NULL,
    tx_user int NOT NULL,
    tx_date timestamp NOT NULL,
    tx_update date NOT NULL,
    user1_id int NOT NULL,
    user2_id int NOT NULL,
    CONSTRAINT Match_pk PRIMARY KEY (match_id)
);

-- Table: Message
CREATE TABLE Message (
    message_id int NOT NULL AUTO_INCREMENT,
    chat_id int NOT NULL COMMENT 'Llave foranea del chat al que pertenece
Chat Foreign Key ',
    date timestamp NOT NULL COMMENT 'Fecha y hora actual del mensaje
Message current date and time',
    content varchar(5000) NOT NULL COMMENT 'Cadena con el contenido del mensaje con capacidad de 5000 letras 
Message content, capacity 5000',
    status int NOT NULL,
    tx_id int NOT NULL,
    tx_host varchar(100) NOT NULL,
    tx_user int NOT NULL,
    tx_date timestamp NOT NULL,
    tx_update date NOT NULL,
    receiver_user_id int NOT NULL,
    transmitter_user_id int NOT NULL,
    CONSTRAINT chat_id PRIMARY KEY (message_id)
);

-- Table: Photo
CREATE TABLE Photo (
    photo_id int NOT NULL AUTO_INCREMENT,
    photo_path varchar(255) NULL COMMENT 'Path de la ubicacion de la foto para la categoria',
    status int NOT NULL,
    tx_id int NOT NULL,
    tx_host varchar(100) NOT NULL,
    tx_user int NOT NULL,
    tx_date timestamp NOT NULL,
    tx_update date NOT NULL,
    CONSTRAINT Photo_pk PRIMARY KEY (photo_id)
);

-- Table: Report
CREATE TABLE Report (
    report_id int NOT NULL AUTO_INCREMENT,
    report_op_id int NOT NULL COMMENT 'Llave Foranea del report options es decir el motivo de reporte',
    chat_id int NOT NULL COMMENT 'Llave Foranea del chat reportado que incluye a los 2 perfiles que involucran el chat',
    date timestamp NOT NULL,
    reported_user_id int NOT NULL,
    user_id int NOT NULL,
    status int NOT NULL,
    tx_id int NOT NULL,
    tx_host varchar(100) NOT NULL,
    tx_user int NOT NULL,
    tx_date timestamp NOT NULL,
    tx_update date NOT NULL,
    CONSTRAINT user_id PRIMARY KEY (report_id)
) COMMENT 'Registered users in the app';

-- Table: Report_options
CREATE TABLE Report_options (
    report_op_id int NOT NULL AUTO_INCREMENT COMMENT 'Primary Key de la tabla de report options',
    description varchar(150) NOT NULL COMMENT 'Cadena de texto que describe el motivo del reporte como ser "Acoso"',
    status int NOT NULL,
    tx_id int NOT NULL,
    tx_host varchar(100) NOT NULL,
    tx_user int NOT NULL,
    tx_date timestamp NOT NULL,
    tx_update date NOT NULL,
    CONSTRAINT report_id PRIMARY KEY (report_op_id)
);

-- Table: Subcategory
CREATE TABLE Subcategory (
    subcategory_id int NOT NULL AUTO_INCREMENT,
    category_id int NOT NULL COMMENT 'Llave Foranea de la categoria a la que pertenece la categoria',
    name varchar(100) NOT NULL COMMENT 'Nombre de la sub categoria, o sub elemento de categoria, por ejemplo "Harry Potter" Que pertenece a la categoria "Peliculas"',
    status int NOT NULL,
    tx_id int NOT NULL,
    tx_host varchar(100) NOT NULL,
    tx_user int NOT NULL,
    tx_date timestamp NOT NULL,
    tx_update date NOT NULL,
    CONSTRAINT cathegory_id PRIMARY KEY (subcategory_id)
);

-- Table: User
CREATE TABLE User (
    user_id int NOT NULL AUTO_INCREMENT,
    user_type varchar(100) NOT NULL,
    account_type_id int NOT NULL,
    name varchar(100) NOT NULL COMMENT 'Nombres del usuario',
    surname varchar(100) NOT NULL COMMENT 'Apellidos del usuario',
    birthdate date NOT NULL COMMENT 'Fecha de nacimiento del usuario ',
    gender varchar(100) NOT NULL COMMENT 'Cadena de texto que indica el sexo o genero del usuario Ej. Masculino femenino',
    email varchar(100) NOT NULL COMMENT 'Correo electronico del usuario',
    password varchar(100) NOT NULL COMMENT 'contraseña del usuario',
    user_photo varchar(255) NOT NULL COMMENT 'Cadena de texto que almacena un URL para la imagen de verificacion del usuario',
    status int NOT NULL,
    tx_id int NOT NULL,
    tx_host varchar(100) NOT NULL,
    tx_user int NOT NULL,
    tx_date timestamp NOT NULL,
    tx_update date NOT NULL,
    CONSTRAINT user_id PRIMARY KEY (user_id)
) COMMENT 'Registered users in the app';

-- Table: User_Subcategory
CREATE TABLE User_Subcategory (
    user_sub_id int NOT NULL AUTO_INCREMENT,
    subcategory_id int NOT NULL COMMENT 'Llave Foranea de la sub categoria seleccionado por el usuario',
    user_id int NOT NULL,
    status int NOT NULL,
    tx_id int NOT NULL,
    tx_host varchar(100) NOT NULL,
    tx_user int NOT NULL,
    tx_date timestamp NOT NULL,
    tx_update date NOT NULL,
    CONSTRAINT User_Subcategory_pk PRIMARY KEY (user_sub_id)
);

-- Table: h_user
CREATE TABLE h_user (
    h_user_id int NOT NULL AUTO_INCREMENT,
    user_type varchar(100) NOT NULL,
    account_type_id int NOT NULL COMMENT 'Tipo de cuenta del usuario como ser "PREMIUM"',
    name varchar(100) NOT NULL COMMENT 'Nombre del usuario',
    surname varchar(100) NOT NULL COMMENT 'Apellido del usuario',
    birthdate date NOT NULL COMMENT 'Fecha de nacimiento del usuario',
    gender varchar(100) NOT NULL COMMENT 'Genero del Usuario ',
    email varchar(100) NOT NULL COMMENT 'Correo electronico del usuario',
    password varchar(100) NOT NULL COMMENT 'Contraseña del usuario',
    user_photo varchar(255) NOT NULL COMMENT 'Direccion o URL de la ubicacion de la foto del usuario',
    status int NOT NULL,
    tx_id int NOT NULL,
    tx_host varchar(100) NOT NULL,
    tx_user int NOT NULL,
    tx_date timestamp NOT NULL,
    tx_update date NOT NULL,
    CONSTRAINT user_id PRIMARY KEY (h_user_id)
) COMMENT 'Registered users in the app';


-- Table: transaction
CREATE TABLE transaction (
    tx_id int NOT NULL AUTO_INCREMENT,
    tx_host varchar(100) NOT NULL COMMENT 'direccion IP de la maquina como ser "192.168.1.2"',
    tx_user int NOT NULL COMMENT 'Id del usuario que hizo dicha transccion',
    tx_date timestamp NOT NULL COMMENT 'Fecha de la creacion de la transaccion ',
    tx_update date NOT NULL COMMENT 'Fecha del update ',
    CONSTRAINT transaction_pk PRIMARY KEY (tx_id)
);

-- foreign keys
-- Reference: Category_photos (table: Category)
ALTER TABLE Category ADD CONSTRAINT Category_photos FOREIGN KEY Category_photos (photo_id)
    REFERENCES Photo (photo_id);

-- Reference: Chat_User1 (table: Chat)
ALTER TABLE Chat ADD CONSTRAINT Chat_User1 FOREIGN KEY Chat_User1 (user1_id)
    REFERENCES User (user_id);

-- Reference: Chat_User2 (table: Chat)
ALTER TABLE Chat ADD CONSTRAINT Chat_User2 FOREIGN KEY Chat_User2 (user2_id)
    REFERENCES User (user_id);

-- Reference: Copy_of_Match_User (table: Match)
ALTER TABLE `Match` ADD CONSTRAINT Copy_of_Match_User FOREIGN KEY Copy_of_Match_User (user2_id)
    REFERENCES User (user_id);

-- Reference: Match_User (table: Match)
ALTER TABLE `Match` ADD CONSTRAINT Match_User FOREIGN KEY Match_User (user1_id)
    REFERENCES User (user_id);

-- Reference: Message_User (table: Message)
ALTER TABLE Message ADD CONSTRAINT Message_User FOREIGN KEY Message_User (transmitter_user_id)
    REFERENCES User (user_id);

-- Reference: Message_User_Receiver (table: Message)
ALTER TABLE Message ADD CONSTRAINT Message_User_Receiver FOREIGN KEY Message_User_Receiver (receiver_user_id)
    REFERENCES User (user_id);

-- Reference: Messages_Chat (table: Message)
ALTER TABLE Message ADD CONSTRAINT Messages_Chat FOREIGN KEY Messages_Chat (chat_id)
    REFERENCES Chat (chat_id);

-- Reference: Profile_Subcategory_Subcategory (table: User_Subcategory)
ALTER TABLE User_Subcategory ADD CONSTRAINT Profile_Subcategory_Subcategory FOREIGN KEY Profile_Subcategory_Subcategory (subcategory_id)
    REFERENCES Subcategory (subcategory_id);

-- Reference: Report_Chat (table: Report)
ALTER TABLE Report ADD CONSTRAINT Report_Chat FOREIGN KEY Report_Chat (chat_id)
    REFERENCES Chat (chat_id);

-- Reference: Report_Report_options (table: Report)
ALTER TABLE Report ADD CONSTRAINT Report_Report_options FOREIGN KEY Report_Report_options (report_op_id)
    REFERENCES Report_options (report_op_id);

-- Reference: Report_User (table: Report)
ALTER TABLE Report ADD CONSTRAINT Report_User FOREIGN KEY Report_User (user_id)
    REFERENCES User (user_id);

-- Reference: Reported_User (table: Report)
ALTER TABLE Report ADD CONSTRAINT Reported_User FOREIGN KEY Reported_User (reported_user_id)
    REFERENCES User (user_id);

-- Reference: Subcategory_Category (table: Subcategory)
ALTER TABLE Subcategory ADD CONSTRAINT Subcategory_Category FOREIGN KEY Subcategory_Category (category_id)
    REFERENCES Category (category_id);

-- Reference: User_Account_type (table: User)
ALTER TABLE User ADD CONSTRAINT User_Account_type FOREIGN KEY User_Account_type (account_type_id)
    REFERENCES Account_type (account_type_id);

-- Reference: User_Subcategory (table: User_Subcategory)
ALTER TABLE User_Subcategory ADD CONSTRAINT User_Subcategory FOREIGN KEY User_Subcategory (user_id)
    REFERENCES User (user_id);

-- End of file.

