-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2021-09-19 20:06:35.613

-- tables
-- Table: activity
CREATE TABLE activity (
    activity_id int NOT NULL AUTO_INCREMENT,
    activity varchar(200) NULL,
    status int NULL,
    tx_id int NULL,
    tx_date timestamp NULL,
    tx_host varchar(100) NULL,
    tx_update date NULL,
    CONSTRAINT activity_pk PRIMARY KEY (activity_id)
);

-- Table: activity_schedule
CREATE TABLE activity_schedule (
    activity_schedule_id int NOT NULL AUTO_INCREMENT,
    activity_id int NOT NULL,
    schedule_id int NOT NULL,
    gym_instructor varchar(100) NULL,
    status int NULL,
    tx_id int NULL,
    tx_date timestamp NULL,
    tx_host varchar(100) NULL,
    tx_update date NULL,
    CONSTRAINT activity_schedule_pk PRIMARY KEY (activity_schedule_id)
);

-- Table: plan
CREATE TABLE plan (
    plan_id int NOT NULL AUTO_INCREMENT,
    plan varchar(100) NULL,
    price numeric(10,2) NULL,
    status int NULL,
    tx_id int NULL,
    tx_date timestamp NULL,
    tx_host varchar(100) NULL,
    tx_update date NULL,
    CONSTRAINT plan_pk PRIMARY KEY (plan_id)
);

-- Table: plan_activity
CREATE TABLE plan_activity (
    plan_activity_id int NOT NULL AUTO_INCREMENT,
    plan_id int NOT NULL,
    activity_id int NOT NULL,
    status int NULL,
    tx_id int NULL,
    tx_date timestamp NULL,
    tx_host varchar(100) NULL,
    tx_update timestamp NULL,
    CONSTRAINT plan_activity_pk PRIMARY KEY (plan_activity_id)
);

-- Table: schedule
CREATE TABLE schedule (
    schedule_id int NOT NULL AUTO_INCREMENT,
    day varchar(30) NULL,
    hour time NULL,
    status int NULL,
    tx_id int NULL,
    tx_date timestamp NULL,
    tx_host varchar(100) NULL,
    tx_update date NULL,
    CONSTRAINT schedule_pk PRIMARY KEY (schedule_id)
);

-- Table: transaction
CREATE TABLE transaction (
    tx_id int NOT NULL AUTO_INCREMENT,
    tx_date timestamp NULL,
    tx_host varchar(100) NULL,
    tx_update date NULL,
    CONSTRAINT transaction_pk PRIMARY KEY (tx_id)
);

-- Table: user
CREATE TABLE user (
    user_id int NOT NULL AUTO_INCREMENT,
    name varchar(200) NULL,
    last_name varchar(200) NULL,
    email varchar(200) NULL,
    password varchar(200) NULL,
    registrant_id int NULL,
    user_type_id int NOT NULL,
    status int NULL,
    tx_id int NULL,
    tx_date timestamp NULL,
    tx_host varchar(100) NULL,
    tx_update date NULL,
    plan_id int NOT NULL,
    CONSTRAINT user_pk PRIMARY KEY (user_id)
);

-- Table: user_activity_schedule
CREATE TABLE user_activity_schedule (
    user_activity_schedule_id int NOT NULL AUTO_INCREMENT,
    user_id int NOT NULL,
    activity_schedule_id int NOT NULL,
    tx_id int NOT NULL,
    tx_date timestamp NOT NULL,
    tx_host varchar(100) NOT NULL,
    tx_update date NOT NULL,
    CONSTRAINT user_activity_schedule_pk PRIMARY KEY (user_activity_schedule_id)
);

-- Table: user_type
CREATE TABLE user_type (
    user_type_id int NOT NULL AUTO_INCREMENT,
    type varchar(100) NULL,
    status int NULL,
    tx_id int NULL,
    tx_date timestamp NULL,
    tx_host varchar(100) NULL,
    tx_update date NULL,
    CONSTRAINT user_type_pk PRIMARY KEY (user_type_id)
) COMMENT 'e.g. send after payment, charge after delivery, ...';

-- foreign keys
-- Reference: Table_21_activity (table: plan_activity)
ALTER TABLE plan_activity ADD CONSTRAINT Table_21_activity FOREIGN KEY Table_21_activity (activity_id)
    REFERENCES activity (activity_id);

-- Reference: Table_21_plan (table: plan_activity)
ALTER TABLE plan_activity ADD CONSTRAINT Table_21_plan FOREIGN KEY Table_21_plan (plan_id)
    REFERENCES plan (plan_id);

-- Reference: Table_23_activity (table: activity_schedule)
ALTER TABLE activity_schedule ADD CONSTRAINT Table_23_activity FOREIGN KEY Table_23_activity (activity_id)
    REFERENCES activity (activity_id);

-- Reference: Table_23_schedule (table: activity_schedule)
ALTER TABLE activity_schedule ADD CONSTRAINT Table_23_schedule FOREIGN KEY Table_23_schedule (schedule_id)
    REFERENCES schedule (schedule_id);

-- Reference: user_activity_schedule_activity_schedule (table: user_activity_schedule)
ALTER TABLE user_activity_schedule ADD CONSTRAINT user_activity_schedule_activity_schedule FOREIGN KEY user_activity_schedule_activity_schedule (activity_schedule_id)
    REFERENCES activity_schedule (activity_schedule_id);

-- Reference: user_activity_schedule_user (table: user_activity_schedule)
ALTER TABLE user_activity_schedule ADD CONSTRAINT user_activity_schedule_user FOREIGN KEY user_activity_schedule_user (user_id)
    REFERENCES user (user_id);

-- Reference: user_plan (table: user)
ALTER TABLE user ADD CONSTRAINT user_plan FOREIGN KEY user_plan (plan_id)
    REFERENCES plan (plan_id);

-- Reference: user_user_type (table: user)
ALTER TABLE user ADD CONSTRAINT user_user_type FOREIGN KEY user_user_type (user_type_id)
    REFERENCES user_type (user_type_id);

-- End of file.

