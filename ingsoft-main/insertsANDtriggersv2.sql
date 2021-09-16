-- TRIGGERS

DELIMITER |

CREATE TRIGGER insertTransaction AFTER INSERT ON category
    FOR EACH ROW BEGIN
    INSERT INTO transaction(tx_user, tx_host, tx_date, tx_update) values (NEW.tx_user, NEW.tx_host, NEW.tx_date, NEW.tx_update);
END
|

DELIMITER ;

DELIMITER |

CREATE TRIGGER insertTransactionAccountType AFTER INSERT ON account_type
    FOR EACH ROW BEGIN
    INSERT INTO transaction(tx_id, tx_user, tx_host, tx_date, tx_update) values (null, NEW.tx_user, NEW.tx_host, NEW.tx_date, NEW.tx_update);
END
|

DELIMITER ;


DELIMITER |

CREATE TRIGGER insertTransactionChat AFTER INSERT ON chat
    FOR EACH ROW BEGIN
    INSERT INTO transaction(tx_user, tx_host, tx_date, tx_update) values (NEW.tx_user, NEW.tx_host, NEW.tx_date, NEW.tx_update);
END
|

DELIMITER ;
DELIMITER |

CREATE TRIGGER insertTransactionMatch AFTER INSERT ON `match`
    FOR EACH ROW BEGIN
    INSERT INTO transaction(tx_user, tx_host, tx_date, tx_update) values (NEW.tx_user, NEW.tx_host, NEW.tx_date, NEW.tx_update);
END
|

DELIMITER ;
DELIMITER |

CREATE TRIGGER insertTransactionMessage AFTER INSERT ON message
    FOR EACH ROW BEGIN
    INSERT INTO transaction(tx_user, tx_host, tx_date, tx_update) values (NEW.tx_user, NEW.tx_host, NEW.tx_date, NEW.tx_update);
END
|

DELIMITER ;
DELIMITER |

CREATE TRIGGER insertTransactionPhoto AFTER INSERT ON photo
    FOR EACH ROW BEGIN
    INSERT INTO transaction(tx_user, tx_host, tx_date, tx_update) values (NEW.tx_user, NEW.tx_host, NEW.tx_date, NEW.tx_update);
END
|

DELIMITER ;



DELIMITER |

CREATE TRIGGER insertTransactionUserSubcategory AFTER INSERT ON user_subcategory
    FOR EACH ROW BEGIN
    INSERT INTO transaction(tx_user, tx_host, tx_date, tx_update) values (NEW.tx_user, NEW.tx_host, NEW.tx_date, NEW.tx_update);
END
|

DELIMITER ;
DELIMITER |

CREATE TRIGGER insertTransactionReport AFTER INSERT ON report
    FOR EACH ROW BEGIN
    INSERT INTO transaction(tx_user, tx_host, tx_date, tx_update) values (NEW.tx_user, NEW.tx_host, NEW.tx_date, NEW.tx_update);
END
|

DELIMITER ;
DELIMITER |

CREATE TRIGGER insertTransactionReportOptions AFTER INSERT ON report_options
    FOR EACH ROW BEGIN
    INSERT INTO transaction(tx_user, tx_host, tx_date, tx_update) values (NEW.tx_user, NEW.tx_host, NEW.tx_date, NEW.tx_update);
END
|

DELIMITER ;
DELIMITER |

CREATE TRIGGER insertTransactionSubcategory AFTER INSERT ON subcategory
    FOR EACH ROW BEGIN
    INSERT INTO transaction(tx_user, tx_host, tx_date, tx_update) values (NEW.tx_user, NEW.tx_host, NEW.tx_date, NEW.tx_update);
END
|

DELIMITER ;
DELIMITER |

CREATE TRIGGER insertTransactionUser AFTER INSERT ON `user`
    FOR EACH ROW BEGIN
    INSERT INTO transaction(tx_user, tx_host, tx_date, tx_update) values (NEW.tx_user, NEW.tx_host, NEW.tx_date, NEW.tx_update);
END
|

DELIMITER ;


DELIMITER |

CREATE TRIGGER insertUserIntoHUser AFTER INSERT ON `user`
    FOR EACH ROW BEGIN
    INSERT INTO h_user(user_type, account_type_id,  name, surname, birthdate, gender, email, password, user_photo, status, tx_id, tx_host, tx_user, tx_date, tx_update) values (NEW.user_type, NEW.account_type_id,  NEW.name, NEW.surname, NEW.birthdate, NEW.gender, NEW.email, NEW.password, NEW.user_photo, NEW.status, NEW.tx_id, NEW.tx_host, NEW.tx_user, NEW.tx_date, NEW.tx_update);
END
|

DELIMITER ;

-- INSERTS

INSERT INTO account_type (account_type_id, type, price, status, tx_id, tx_host, tx_user, tx_date, tx_update) VALUES
(1, 'Basico', '0.00', 1, 1, '192.168.1.68', 12, '2020-10-30 02:09:03', '2020-10-29'),
(2, 'Premium', '5.00', 1, 1, '192.168.1.68', 12, '2020-10-30 02:09:03', '2020-10-29');

-- --------------------------------------------------------

INSERT INTO `photo` (`photo_id`, `photo_path`, `status`, `tx_id`, `tx_host`, `tx_user`, `tx_date`, `tx_update`) VALUES
(1, 'https://concepto.de/wp-content/uploads/2018/10/URL1-e1538664726127.jpg', 1, 192168, '192.168.31.148', 1, '2020-11-07 16:32:05', '2020-10-29'),
(2, 'https://concepto.de/wp-content/uploads/2018/10/URL1-e1538664726127.jpg', 0, 192168, '192.168.31.148', 1, '2020-11-07 16:33:59', '2020-10-29'),
(3, 'https://concepto.de/wp-content/uploads/2018/10/URL1-e1538664726127.jpg', 1, 192168, '192.168.31.148', 1, '2020-11-07 16:33:59', '2020-10-29'),
(4, 'https://concepto.de/wp-content/uploads/2018/10/URL1-e1538664726127.jpg', 0, 192168, '192.168.31.148', 1, '2020-11-07 16:33:59', '2020-10-29'),
(5, 'https://concepto.de/wp-content/uploads/2018/10/URL1-e1538664726127.jpg', 1, 192168, '192.168.31.148', 1, '2020-11-07 16:33:59', '2020-10-29'),
(6, 'https://concepto.de/wp-content/uploads/2018/10/URL1-e1538664726127.jpg', 0, 192168, '192.168.31.148', 1, '2020-11-07 16:33:59', '2020-10-29'),
(7, 'https://concepto.de/wp-content/uploads/2018/10/URL1-e1538664726127.jpg', 1, 192168, '192.168.31.148', 1, '2020-11-07 16:33:59', '2020-10-29'),
(8, 'https://concepto.de/wp-content/uploads/2018/10/URL1-e1538664726127.jpg', 0, 192168, '192.168.31.148', 1, '2020-11-07 16:33:59', '2020-10-29'),
(9, 'https://concepto.de/wp-content/uploads/2018/10/URL1-e1538664726127.jpg', 1, 192168, '192.168.31.148', 1, '2020-11-07 16:33:59', '2020-10-29'),
(10, 'https://concepto.de/wp-content/uploads/2018/10/URL1-e1538664726127.jpg', 0, 192168, '192.168.31.148', 1, '2020-11-07 16:33:59', '2020-10-29');



INSERT INTO `category` (`category_id`, `name`, `status`, `tx_id`, `tx_host`, `tx_user`, `tx_date`, `tx_update`, `photo_id`) VALUES
(1, 'Peliculas', 1, 1, '192.168.15.25', 11, '2020-10-30 02:09:59', '2020-10-29',1),
(2, 'Series', 1, 1, '192.168.15.25', 11, '2020-10-30 02:09:59', '2020-10-29',2),
(3, 'Deportes', 0, 1, '192.168.15.25', 11, '2020-10-30 02:09:59', '2020-10-29',1),
(4, 'Musica', 1, 1, '192.168.15.25', 11, '2020-10-30 02:09:59', '2020-10-29',2),
(5, 'Deportes Extremos', 0, 1, '192.168.15.25', 11, '2020-10-30 02:09:59', '2020-10-29',1),
(6, 'Gastronomia', 1, 1, '192.168.15.25', 11, '2020-10-30 02:09:59', '2020-10-29',2),
(7, 'Filosofia', 1, 1, '192.168.15.25', 11, '2020-10-30 02:09:59', '2020-10-29',1);
-- --------------------------------------------------------

INSERT INTO `user` (`user_id`, `user_type`, `account_type_id`,  `name`, `surname`, `birthdate`, `gender`, `email`, `password`, `user_photo`, `status`, `tx_id`, `tx_host`, `tx_user`, `tx_date`, `tx_update`) VALUES
(1, 'Client', 1, 'Jose', 'Chura', '1998-10-10', 'Masculino', 'jc@gmail.com', '12345', 'URL', 1, 1, '192.168.15.25', 13, '2020-10-30 02:09:03', '2020-10-29'),
(2, 'Client', 2, 'Andres', 'Roque', '1997-09-03', 'Masculino', 'ar@gmail.com', '48944', 'URL', 1, 1, '192.168.15.25', 13, '2020-10-30 02:09:03', '2020-10-29'),
(3, 'Client', 1, 'Manuel', 'Melez', '1996-08-04', 'Masculino', 'mmg@gmail.com', 'ewa456', 'URL', 1, 1, '192.168.15.25', 13, '2020-10-30 02:09:03', '2020-10-29'),
(4, 'Client', 2, 'Sophia', 'Rich', '1995-07-05', 'Femenino', 'sr@gmail.com', 'fas489', 'URL', 1, 1, '192.168.15.25', 13, '2020-10-30 02:09:03', '2020-10-29'),
(5, 'Client', 1, 'Rene', 'Menji', '1994-06-11', 'Masculino', 'rm@gmail.com', 'ee1264', 'URL', 1, 1, '192.168.15.25', 13, '2020-10-30 02:09:03', '2020-10-29'),
(6, 'Client', 2, 'Alejandra', 'Savedra', '2000-05-09', 'Femenino', 'as@gmail.com', 'das451', 'URL', 1, 1, '192.168.15.25', 13, '2020-10-30 02:09:03', '2020-10-29'),
(7, 'Client', 1, 'Maria', 'Avaroa', '2001-10-05', 'Femenino', 'ma@gmail.com', 'vcx56', 'URL', 1, 1, '192.168.15.25', 13, '2020-10-30 02:09:03', '2020-10-29'),
(8, 'Client', 2, 'Jhon', 'Perez', '1998-09-04', 'Masculino', 'jps@gmail.com', 'vdsvds44', 'URL', 1, 1, '192.168.15.25', 13, '2020-10-30 02:09:03', '2020-10-29'),
(9, 'Client', 1, 'Ibonne', 'Chon', '1998-11-03', 'Femenino', 'df@gmail.com', 'bea56', 'URL', 1, 1, '192.168.15.25', 13, '2020-10-30 02:09:03', '2020-10-29'),
(10, 'Client', 2, 'Tania', 'Dumphy', '1997-10-02', 'Femenino', 'jtdg@gmail.com', 'feacs55', 'URL', 1, 1, '192.168.15.25', 13, '2020-10-30 02:09:03', '2020-10-29'),
(11, 'Admi', 1, 'Ignacio', 'Jaen', '1996-01-01', 'Masculino', 'ignajaen@gmail.com', 'sacvasv99', 'URL', 1, 1, '192.168.15.25', 13, '2020-10-30 02:09:03', '2020-10-29'),
(12, 'Admi', 1, 'Marioly', 'Vargas', '1990-02-12', 'Femenino', 'mollyv@gmail.com', 'vasvas54', 'URL', 1, 1, '192.168.15.25', 13, '2020-10-30 02:09:03', '2020-10-29'),
(13, 'Admi', 1, 'Rodrigo', 'Saravia', '1980-03-11', 'Masculino', 'rodriSa@gmail.com', '12sfs345', 'URL', 1, 1, '192.168.15.25', 13, '2020-10-30 02:09:03', '2020-10-29'),
(14, 'Admi', 1, 'Ximena', 'Cruz', '1988-04-05', 'Femenino', 'ximenaC@gmail.com', 'mbrewq48', 'URL', 1, 1, '192.168.15.25', 13, '2020-10-30 02:09:03', '2020-10-29');

-- --------------------------------------------------------

INSERT INTO `chat` (`chat_id`, `status`, `tx_id`, `tx_host`, `tx_user`, `tx_date`, `tx_update`, `user1_id`, `user2_id`) VALUES
(1, 1, 1, '192.168.31.148', 12, '2020-10-30 02:12:49', '2020-10-29', 1, 2),
(2, 1, 1, '192.168.31.148', 12, '2020-10-30 02:12:49', '2020-10-29', 3, 2),
(3, 1, 1, '192.168.31.148', 12, '2020-10-30 02:12:49', '2020-10-29', 2, 5),
(4, 1, 1, '192.168.31.148', 12, '2020-10-30 02:12:49', '2020-10-29', 3, 10),
(5, 1, 1, '192.168.31.148', 12, '2020-10-30 02:12:49', '2020-10-29', 8, 9),
(6, 1, 1, '192.168.31.148', 12, '2020-10-30 02:12:49', '2020-10-29', 8, 5),
(7, 1, 1, '192.168.31.148', 12, '2020-10-30 02:12:49', '2020-10-29', 7, 2),
(8, 1, 1, '192.168.31.148', 12, '2020-10-30 02:12:49', '2020-10-29', 8, 7),
(9, 1, 1, '192.168.31.148', 12, '2020-10-30 02:12:49', '2020-10-29', 1, 6),
(10, 1, 1, '192.168.31.148', 12, '2020-10-30 02:12:49', '2020-10-29', 4, 3);

-- --------------------------------------------------------

-- --------------------------------------------------------

INSERT INTO `match` (`match_id`, `accepted`, `status`, `tx_id`, `tx_host`, `tx_user`, `tx_date`, `tx_update`, `user1_id`, `user2_id`) VALUES
(1, false, 1, 2, '192.168.31.148', 12, '2020-10-30 02:10:19', '2020-10-29', 1, 10),
(2, false, 1, 2, '192.168.31.148', 12, '2020-10-30 02:10:19', '2020-10-29', 2, 9),
(3, false, 0, 2, '192.168.31.148', 12, '2020-10-30 02:10:19', '2020-10-29', 3, 8),
(4, false, 1, 2, '192.168.31.148', 12, '2020-10-30 02:10:19', '2020-10-29', 4, 7),
(5, false, 1, 2, '192.168.31.148', 12, '2020-10-30 02:10:19', '2020-10-29', 5, 6),
(6, false, 0, 2, '192.168.31.148', 12, '2020-10-30 02:10:19', '2020-10-29', 6, 5),
(7, false, 1, 2, '192.168.31.148', 12, '2020-10-30 02:10:19', '2020-10-29', 7, 4),
(8, false, 0, 2, '192.168.31.148', 12, '2020-10-30 02:10:19', '2020-10-29', 8, 3),
(9, false, 0, 2, '192.168.31.148', 12, '2020-10-30 02:10:19', '2020-10-29', 9, 2),
(10, false, 1, 2, '192.168.31.148', 12, '2020-10-30 02:10:19', '2020-10-29', 10, 1);

-- --------------------------------------------------------

INSERT INTO `message` (`message_id`, `chat_id`, `date`, `content`, `status`, `tx_id`, `tx_host`, `tx_user`, `tx_date`, `tx_update`, `receiver_user_id`, `transmitter_user_id`) VALUES
(1, 1, '2020-10-30 02:12:49', 'Hello, how are you?', 1, 1, '192.168.31.148', 12, '2020-10-30 02:12:49', '2020-10-29', 1, 10),
(2, 2, '2020-10-30 02:12:49', 'Hi!', 1, 1, '192.168.31.148', 12, '2020-10-30 02:12:49', '2020-10-29', 1, 10),
(3, 10, '2020-10-30 02:12:49', 'What about you?', 1, 1, '192.168.31.148', 12, '2020-10-30 02:12:49', '2020-10-29', 2, 3),
(4, 8, '2020-10-30 02:12:49', 'Maybe', 1, 1, '192.168.31.148', 12, '2020-10-30 02:12:49', '2020-10-29', 3, 2),
(5, 9, '2020-10-30 02:12:49', 'See you then', 1, 1, '192.168.31.148', 12, '2020-10-30 02:12:49', '2020-10-29', 3, 5),
(6, 2, '2020-10-30 02:12:49', 'What are you doing?', 1, 1, '192.168.31.148', 12, '2020-10-30 02:12:49', '2020-10-29', 3, 8),
(7, 3, '2020-10-30 02:12:49', 'Tomorrow', 1, 1, '192.168.31.148', 12, '2020-10-30 02:12:49', '2020-10-29', 10, 1),
(8, 1, '2020-10-30 02:12:49', 'I am fine, thanks', 1, 1, '192.168.31.148', 12, '2020-10-30 02:12:49', '2020-10-29', 4, 6),
(9, 7, '2020-10-30 02:12:49', 'No, sorry', 1, 1, '192.168.31.148', 12, '2020-10-30 02:12:49', '2020-10-29', 9, 7),
(10, 6, '2020-10-30 02:12:49', 'At 7 pm', 1, 1, '192.168.31.148', 12, '2020-10-30 02:12:49', '2020-10-29', 2, 1);

-- --------------------------------------------------------

INSERT INTO `subcategory` (`subcategory_id`, `category_id`, `name`, `status`, `tx_id`, `tx_host`, `tx_user`, `tx_date`, `tx_update`) VALUES
(1, 1, 'Terror', 1, 1, '192.168.15.25', 11, '2020-10-30 02:10:00', '2020-10-29'),
(2, 2, 'Familiares', 1, 1, '192.168.15.25', 11, '2020-10-30 02:10:00', '2020-10-29'),
(3, 3, 'Futbol', 1, 1, '192.168.15.25', 11, '2020-10-30 02:10:00', '2020-10-29'),
(4, 4, 'Rock', 1, 1, '192.168.15.25', 11, '2020-10-30 02:10:00', '2020-10-29'),
(5, 5, 'Parkour', 1, 1, '192.168.15.25', 11, '2020-10-30 02:10:00', '2020-10-29'),
(6, 6, 'Italiana', 1, 1, '192.168.15.25', 11, '2020-10-30 02:10:00', '2020-10-29'),
(7, 7, 'Dante', 1, 1, '192.168.15.25', 11, '2020-10-30 02:10:00', '2020-10-29'),
(8, 1, 'Comedia', 1, 1, '192.168.15.25', 11, '2020-10-30 02:10:00', '2020-10-29'),
(9, 2, 'Juveniles', 1, 1, '192.168.15.25', 11, '2020-10-30 02:10:00', '2020-10-29'),
(10, 3, 'Basquet', 1, 1, '192.168.15.25', 11, '2020-10-30 02:10:00', '2020-10-29');
-- --------------------------------------------------------


INSERT INTO `user_subcategory` (`user_sub_id`, `subcategory_id`, `user_id`,  `status`, `tx_id`, `tx_host`, `tx_user`, `tx_date`, `tx_update`) VALUES
(null, 1, 1, 1, 10, '192.168.15.25', 11, '2020-10-30 02:12:41', '2020-10-29'),
(null, 2, 2, 1, 9, '192.168.15.25', 11, '2020-10-30 02:12:41', '2020-10-29'),
(null, 3, 3, 1, 8, '192.168.15.25', 11, '2020-10-30 02:12:41', '2020-10-29'),
(null, 4, 4, 1, 7, '192.168.15.25', 11, '2020-10-30 02:12:41', '2020-10-29'),
(null, 5, 5, 1, 6, '192.168.15.25', 11, '2020-10-30 02:12:41', '2020-10-29'),
(null, 6, 6, 1, 5, '192.168.15.25', 11, '2020-10-30 02:12:41', '2020-10-29'),
(null, 7, 7, 1, 4, '192.168.15.25', 11, '2020-10-30 02:12:41', '2020-10-29'),
(null, 8, 8, 1, 3, '192.168.15.25', 11, '2020-10-30 02:12:41', '2020-10-29'),
(null, 9, 9, 1, 2, '192.168.15.25', 11, '2020-10-30 02:12:41', '2020-10-29'),
(null, 10, 10, 1, 1, '192.168.15.25', 11, '2020-10-30 02:12:41', '2020-10-29'),
(null, 1, 2, 1, 10, '192.168.15.25', 11, '2020-10-30 12:12:41', '2020-10-29');

-- --------------------------------------------------------


INSERT INTO `report_options` (`report_op_id`, `description`, `status`, `tx_id`, `tx_host`, `tx_user`, `tx_date`, `tx_update`) VALUES
(1, 'Mal vocabualario', 1, 13, '192.168.1.1', 1, '2020-11-07 16:37:37', '2020-10-29'),
(2, 'No busca una amistad', 0, 11, '192.168.1.1', 1, '2020-11-07 16:38:10', '2020-10-29'),
(3, 'Hostigador', 1, 14, '192.168.1.1', 1, '2020-11-07 16:38:26', '2020-10-29');

--

INSERT INTO `report` (`report_id`, `report_op_id`, `chat_id`, `date`, `reported_user_id`, `user_id`, `status`, `tx_id`, `tx_host`, `tx_user`, `tx_date`, `tx_update`) VALUES
(1, 1, 7, '2020-11-07 11:36:27', 7, 2, 1, 13, '192.168.1.1', 1, '2020-11-07 16:36:27', '2020-10-29'),
(2, 2, 3, '2020-11-08 1:36:27', 5, 2, 0, 11, '192.168.1.1', 1, '2020-11-07 16:36:43', '2020-10-29'),
(3, 1, 4, '2020-11-09 6:40:43', 3, 10, 1, 14, '192.168.1.1', 1, '2020-11-07 16:36:43', '2020-10-29'),
(4, 3, 2, '2020-11-10 5:50:20', 2, 3, 0, 14, '192.168.1.1', 1, '2020-11-07 16:36:43', '2020-10-29'),
(5, 1, 8, '2020-11-11 14:55:43', 8, 7, 1, 11, '192.168.1.1', 1, '2020-11-07 16:36:43', '2020-10-29');