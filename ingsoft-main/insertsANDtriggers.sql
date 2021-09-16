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

CREATE TRIGGER insertTransactionMessages AFTER INSERT ON messages
    FOR EACH ROW BEGIN
    INSERT INTO transaction(tx_user, tx_host, tx_date, tx_update) values (NEW.tx_user, NEW.tx_host, NEW.tx_date, NEW.tx_update);
END
|

DELIMITER ;
DELIMITER |

CREATE TRIGGER insertTransactionPhotos AFTER INSERT ON photos
    FOR EACH ROW BEGIN
    INSERT INTO transaction(tx_user, tx_host, tx_date, tx_update) values (NEW.tx_user, NEW.tx_host, NEW.tx_date, NEW.tx_update);
END
|

DELIMITER ;
DELIMITER |

CREATE TRIGGER insertTransactionProfile AFTER INSERT ON `profile`
    FOR EACH ROW BEGIN
    INSERT INTO transaction(tx_user, tx_host, tx_date, tx_update) values (NEW.tx_user, NEW.tx_host, NEW.tx_date, NEW.tx_update);
END
|

DELIMITER ;
DELIMITER |

CREATE TRIGGER insertTransactionProfileSubcategory AFTER INSERT ON profile_subcategory
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

CREATE TRIGGER insertTransactionUserType AFTER INSERT ON user_type
    FOR EACH ROW BEGIN
    INSERT INTO transaction(tx_user, tx_host, tx_date, tx_update) values (NEW.tx_user, NEW.tx_host, NEW.tx_date, NEW.tx_update);
END
|

DELIMITER ;
-- INSERTS

INSERT INTO account_type (account_type_id, type, price, status, tx_id, tx_host, tx_user, tx_date, tx_update) VALUES
(1, '1', '0.00', 1, 1, '192.168.1.68', 12, '2020-10-30 02:09:03', '2020-10-29'),
(2, '2', '5.00', 1, 1, '192.168.1.68', 12, '2020-10-30 02:09:03', '2020-10-29');

INSERT INTO `category` (`category_id`, `name`, `status`, `tx_id`, `tx_host`, `tx_user`, `tx_date`, `tx_update`) VALUES
(1, 'Peliculas', 1, 1, '192.168.15.25', 11, '2020-10-30 02:09:59', '2020-10-29'),
(2, 'Series', 1, 1, '192.168.15.25', 11, '2020-10-30 02:09:59', '2020-10-29'),
(3, 'Deportes', 0, 1, '192.168.15.25', 11, '2020-10-30 02:09:59', '2020-10-29'),
(4, 'Musica', 1, 1, '192.168.15.25', 11, '2020-10-30 02:09:59', '2020-10-29'),
(5, 'Deportes Extremos', 0, 1, '192.168.15.25', 11, '2020-10-30 02:09:59', '2020-10-29'),
(6, 'Gastronomia', 1, 1, '192.168.15.25', 11, '2020-10-30 02:09:59', '2020-10-29'),
(7, 'Filosofia', 1, 1, '192.168.15.25', 11, '2020-10-30 02:09:59', '2020-10-29');

-- --------------------------------------------------------

INSERT INTO `user_type` (`user_type_id`, `type`, `status`, `tx_id`, `tx_host`, `tx_user`, `tx_date`, `tx_update`) VALUES
(1, '1', 1, 1, '192.168.1.65', 11, '2020-10-30 02:09:02', '2020-10-29'),
(2, '2', 1, 1, '192.168.1.65', 11, '2020-10-30 02:09:02', '2020-10-29');

-- --------------------------------------------------------

INSERT INTO `user` (`user_id`, `account_type_id`, `user_type_id`, `name`, `surname`, `birthdate`, `gender`, `email`, `password`, `user_photo`, `status`, `tx_id`, `tx_host`, `tx_user`, `tx_date`, `tx_update`) VALUES
(1, 1, 1, 'Jose', 'Chura', '1998-10-10', 'Masculino', 'jc@gmail.com', '12345', 'URL', 1, 1, '192.168.15.25', 13, '2020-10-30 02:09:03', '2020-10-29'),
(2, 2, 1, 'Andres', 'Roque', '1997-09-03', 'Masculino', 'ar@gmail.com', '48944', 'URL', 1, 1, '192.168.15.25', 13, '2020-10-30 02:09:03', '2020-10-29'),
(3, 1, 1, 'Manuel', 'Melez', '1996-08-04', 'Masculino', 'mmg@gmail.com', 'ewa456', 'URL', 1, 1, '192.168.15.25', 13, '2020-10-30 02:09:03', '2020-10-29'),
(4, 2, 1, 'Sophia', 'Rich', '1995-07-05', 'Femenino', 'sr@gmail.com', 'fas489', 'URL', 1, 1, '192.168.15.25', 13, '2020-10-30 02:09:03', '2020-10-29'),
(5, 1, 1, 'Rene', 'Menji', '1994-06-11', 'Masculino', 'rm@gmail.com', 'ee1264', 'URL', 1, 1, '192.168.15.25', 13, '2020-10-30 02:09:03', '2020-10-29'),
(6, 2, 1, 'Alejandra', 'Savedra', '2000-05-09', 'Femenino', 'as@gmail.com', 'das451', 'URL', 1, 1, '192.168.15.25', 13, '2020-10-30 02:09:03', '2020-10-29'),
(7, 1, 1, 'Maria', 'Avaroa', '2001-10-05', 'Femenino', 'ma@gmail.com', 'vcx56', 'URL', 1, 1, '192.168.15.25', 13, '2020-10-30 02:09:03', '2020-10-29'),
(8, 2, 1, 'Jhon', 'Perez', '1998-09-04', 'Masculino', 'jps@gmail.com', 'vdsvds44', 'URL', 1, 1, '192.168.15.25', 13, '2020-10-30 02:09:03', '2020-10-29'),
(9, 1, 1, 'Ibonne', 'Chon', '1998-11-03', 'Femenino', 'df@gmail.com', 'bea56', 'URL', 1, 1, '192.168.15.25', 13, '2020-10-30 02:09:03', '2020-10-29'),
(10, 2, 1, 'Tania', 'Dumphy', '1997-10-02', 'Femenino', 'jtdg@gmail.com', 'feacs55', 'URL', 1, 1, '192.168.15.25', 13, '2020-10-30 02:09:03', '2020-10-29'),
(11, 1, 2, 'Ignacio', 'Jaen', '1996-01-01', 'Masculino', 'ignajaen@gmail.com', 'sacvasv99', 'URL', 1, 1, '192.168.15.25', 13, '2020-10-30 02:09:03', '2020-10-29'),
(12, 1, 2, 'Marioly', 'Vargas', '1990-02-12', 'Femenino', 'mollyv@gmail.com', 'vasvas54', 'URL', 1, 1, '192.168.15.25', 13, '2020-10-30 02:09:03', '2020-10-29'),
(13, 1, 2, 'Rodrigo', 'Saravia', '1980-03-11', 'Masculino', 'rodriSa@gmail.com', '12sfs345', 'URL', 1, 1, '192.168.15.25', 13, '2020-10-30 02:09:03', '2020-10-29'),
(14, 1, 2, 'Ximena', 'Cruz', '1988-04-05', 'Femenino', 'ximenaC@gmail.com', 'mbrewq48', 'URL', 1, 1, '192.168.15.25', 13, '2020-10-30 02:09:03', '2020-10-29');

-- --------------------------------------------------------


INSERT INTO `profile` (`profile_id`, `user_id`, `status`, `tx_id`, `tx_host`, `tx_user`, `tx_date`, `tx_update`) VALUES
(1, 1, 1, 1, '192.168.15.25', 11, '2020-10-30 02:09:59', '2020-10-29'),
(2, 2, 1, 1, '192.168.15.25', 11, '2020-10-30 02:09:59', '2020-10-29'),
(3, 3, 1, 1, '192.168.15.25', 11, '2020-10-30 02:09:59', '2020-10-29'),
(4, 4, 1, 1, '192.168.15.25', 11, '2020-10-30 02:09:59', '2020-10-29'),
(5, 5, 1, 1, '192.168.15.25', 11, '2020-10-30 02:10:00', '2020-10-29'),
(6, 6, 1, 1, '192.168.15.25', 11, '2020-10-30 02:10:00', '2020-10-29'),
(7, 7, 1, 1, '192.168.15.25', 11, '2020-10-30 02:10:00', '2020-10-29'),
(8, 8, 1, 1, '192.168.15.25', 11, '2020-10-30 02:10:00', '2020-10-29'),
(9, 9, 1, 1, '192.168.15.25', 11, '2020-10-30 02:10:00', '2020-10-29'),
(10, 10, 1, 1, '192.168.15.25', 11, '2020-10-30 02:10:00', '2020-10-29');

-- --------------------------------------------------------


INSERT INTO `chat` (`chat_id`, `profile1_id`, `profile2_id`, `status`, `tx_id`, `tx_host`, `tx_user`, `tx_date`, `tx_update`) VALUES
(1, 1, 2, 1, 1, '192.168.31.148', 12, '2020-10-30 02:12:49', '2020-10-29'),
(2, 3, 2, 1, 1, '192.168.31.148', 12, '2020-10-30 02:12:49', '2020-10-29'),
(3, 2, 5, 1, 1, '192.168.31.148', 12, '2020-10-30 02:12:49', '2020-10-29'),
(4, 3, 10, 1, 1, '192.168.31.148', 12, '2020-10-30 02:12:49', '2020-10-29'),
(5, 8, 9, 1, 1, '192.168.31.148', 12, '2020-10-30 02:12:49', '2020-10-29'),
(6, 8, 5, 1, 1, '192.168.31.148', 12, '2020-10-30 02:12:49', '2020-10-29'),
(7, 7, 2, 1, 1, '192.168.31.148', 12, '2020-10-30 02:12:49', '2020-10-29'),
(8, 8, 7, 1, 1, '192.168.31.148', 12, '2020-10-30 02:12:49', '2020-10-29'),
(9, 1, 6, 1, 1, '192.168.31.148', 12, '2020-10-30 02:12:49', '2020-10-29'),
(10, 4, 3, 1, 1, '192.168.31.148', 12, '2020-10-30 02:12:49', '2020-10-29');

-- --------------------------------------------------------

-- --------------------------------------------------------

INSERT INTO `match` (`match_id`, `profile1_id`, `profile2_id`, `date`, `status`, `tx_id`, `tx_host`, `tx_user`, `tx_date`, `tx_update`) VALUES
(11, 1, 10, '2020-10-29', 1, 2, '192.168.31.148', 12, '2020-10-30 02:10:19', '2020-10-29'),
(12, 2, 9, '2020-10-29', 1, 2, '192.168.31.148', 12, '2020-10-30 02:10:19', '2020-10-29'),
(13, 3, 8, '2020-10-29', 0, 2, '192.168.31.148', 12, '2020-10-30 02:10:19', '2020-10-29'),
(14, 4, 7, '2020-10-29', 1, 2, '192.168.31.148', 12, '2020-10-30 02:10:19', '2020-10-29'),
(15, 5, 6, '2020-10-29', 1, 2, '192.168.31.148', 12, '2020-10-30 02:10:19', '2020-10-29'),
(16, 6, 5, '2020-10-29', 0, 2, '192.168.31.148', 12, '2020-10-30 02:10:19', '2020-10-29'),
(17, 7, 4, '2020-10-29', 1, 2, '192.168.31.148', 12, '2020-10-30 02:10:19', '2020-10-29'),
(18, 8, 3, '2020-10-29', 0, 2, '192.168.31.148', 12, '2020-10-30 02:10:19', '2020-10-29'),
(19, 9, 2, '2020-10-29', 0, 2, '192.168.31.148', 12, '2020-10-30 02:10:19', '2020-10-29'),
(20, 10, 1, '2020-10-29', 1, 2, '192.168.31.148', 12, '2020-10-30 02:10:19', '2020-10-29');

-- --------------------------------------------------------

INSERT INTO `messages` (`message_id`, `chat_id`, `date`, `content`, `status`, `tx_id`, `tx_host`, `tx_user`, `tx_date`, `tx_update`) VALUES
(1, 1, '2020-10-30 02:12:49', 'Hello, how are you?', 1, 1, '192.168.31.148', 12, '2020-10-30 02:12:49', '2020-10-29'),
(2, 2, '2020-10-30 02:12:49', 'Hi!', 1, 1, '192.168.31.148', 12, '2020-10-30 02:12:49', '2020-10-29'),
(3, 10, '2020-10-30 02:12:49', 'What about you?', 1, 1, '192.168.31.148', 12, '2020-10-30 02:12:49', '2020-10-29'),
(4, 8, '2020-10-30 02:12:49', 'Maybe', 1, 1, '192.168.31.148', 12, '2020-10-30 02:12:49', '2020-10-29'),
(5, 9, '2020-10-30 02:12:49', 'See you then', 1, 1, '192.168.31.148', 12, '2020-10-30 02:12:49', '2020-10-29'),
(6, 2, '2020-10-30 02:12:49', 'What are you doing?', 1, 1, '192.168.31.148', 12, '2020-10-30 02:12:49', '2020-10-29'),
(7, 3, '2020-10-30 02:12:49', 'Tomorrow', 1, 1, '192.168.31.148', 12, '2020-10-30 02:12:49', '2020-10-29'),
(8, 1, '2020-10-30 02:12:49', 'I am fine, thanks', 1, 1, '192.168.31.148', 12, '2020-10-30 02:12:49', '2020-10-29'),
(9, 7, '2020-10-30 02:12:49', 'No, sorry', 1, 1, '192.168.31.148', 12, '2020-10-30 02:12:49', '2020-10-29'),
(10, 6, '2020-10-30 02:12:49', 'At 7 pm', 1, 1, '192.168.31.148', 12, '2020-10-30 02:12:49', '2020-10-29');

-- --------------------------------------------------------

INSERT INTO `photos` (`photos_id`, `category_id`, `photo_path`, `status`, `tx_id`, `tx_host`, `tx_user`, `tx_date`, `tx_update`) VALUES
(1, 1, 'https://concepto.de/wp-content/uploads/2018/10/URL1-e1538664726127.jpg', 1, 192168, '192.168.31.148', 1, '2020-11-07 16:32:05', '2020-10-29'),
(2, 5, 'https://concepto.de/wp-content/uploads/2018/10/URL1-e1538664726127.jpg', 0, 192168, '192.168.31.148', 1, '2020-11-07 16:33:59', '2020-10-29'),
(3, 6, 'https://concepto.de/wp-content/uploads/2018/10/URL1-e1538664726127.jpg', 1, 192168, '192.168.31.148', 1, '2020-11-07 16:33:59', '2020-10-29'),
(4, 7, 'https://concepto.de/wp-content/uploads/2018/10/URL1-e1538664726127.jpg', 0, 192168, '192.168.31.148', 1, '2020-11-07 16:33:59', '2020-10-29'),
(5, 4, 'https://concepto.de/wp-content/uploads/2018/10/URL1-e1538664726127.jpg', 1, 192168, '192.168.31.148', 1, '2020-11-07 16:33:59', '2020-10-29'),
(6, 5, 'https://concepto.de/wp-content/uploads/2018/10/URL1-e1538664726127.jpg', 0, 192168, '192.168.31.148', 1, '2020-11-07 16:33:59', '2020-10-29'),
(7, 1, 'https://concepto.de/wp-content/uploads/2018/10/URL1-e1538664726127.jpg', 1, 192168, '192.168.31.148', 1, '2020-11-07 16:33:59', '2020-10-29'),
(8, 3, 'https://concepto.de/wp-content/uploads/2018/10/URL1-e1538664726127.jpg', 0, 192168, '192.168.31.148', 1, '2020-11-07 16:33:59', '2020-10-29'),
(9, 2, 'https://concepto.de/wp-content/uploads/2018/10/URL1-e1538664726127.jpg', 1, 192168, '192.168.31.148', 1, '2020-11-07 16:33:59', '2020-10-29'),
(10, 4, 'https://concepto.de/wp-content/uploads/2018/10/URL1-e1538664726127.jpg', 0, 192168, '192.168.31.148', 1, '2020-11-07 16:33:59', '2020-10-29');


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


INSERT INTO `profile_subcategory` (`profile_sub_id`, `profile_id`, `subcategory_id`, `status`, `tx_id`, `tx_host`, `tx_user`, `tx_date`, `tx_update`) VALUES
(1, 1, 1, 1, 10, '192.168.15.25', 11, '2020-10-30 02:12:41', '2020-10-29'),
(2, 2, 2, 1, 9, '192.168.15.25', 11, '2020-10-30 02:12:41', '2020-10-29'),
(3, 3, 3, 1, 8, '192.168.15.25', 11, '2020-10-30 02:12:41', '2020-10-29'),
(4, 4, 4, 1, 7, '192.168.15.25', 11, '2020-10-30 02:12:41', '2020-10-29'),
(5, 5, 5, 1, 6, '192.168.15.25', 11, '2020-10-30 02:12:41', '2020-10-29'),
(6, 6, 6, 1, 5, '192.168.15.25', 11, '2020-10-30 02:12:41', '2020-10-29'),
(7, 7, 7, 1, 4, '192.168.15.25', 11, '2020-10-30 02:12:41', '2020-10-29'),
(8, 8, 8, 1, 3, '192.168.15.25', 11, '2020-10-30 02:12:41', '2020-10-29'),
(9, 9, 9, 1, 2, '192.168.15.25', 11, '2020-10-30 02:12:41', '2020-10-29'),
(10, 10, 10, 1, 1, '192.168.15.25', 11, '2020-10-30 02:12:41', '2020-10-29');





--


INSERT INTO `report_options` (`report_op_id`, `description`, `status`, `tx_id`, `tx_host`, `tx_user`, `tx_date`, `tx_update`) VALUES
(1, 'Mal vocabualario', 1, 13, '192.168.1.1', 1, '2020-11-07 16:37:37', '2020-10-29'),
(2, 'No busca una amistad', 0, 11, '192.168.1.1', 1, '2020-11-07 16:38:10', '2020-10-29'),
(3, 'Hostigador', 1, 14, '192.168.1.1', 1, '2020-11-07 16:38:26', '2020-10-29');

--

INSERT INTO `report` (`report_id`, `report_op_id`, `chat_id`, `status`, `tx_id`, `tx_host`, `tx_user`, `tx_date`, `tx_update`) VALUES
(1, 1, 1, 1, 13, '192.168.1.1', 1, '2020-11-07 16:36:27', '2020-10-29'),
(2, 2, 5, 0, 11, '192.168.1.1', 1, '2020-11-07 16:36:43', '2020-10-29'),
(3, 1, 4, 1, 14, '192.168.1.1', 1, '2020-11-07 16:36:43', '2020-10-29'),
(4, 3, 8, 0, 14, '192.168.1.1', 1, '2020-11-07 16:36:43', '2020-10-29'),
(5, 1, 9, 1, 11, '192.168.1.1', 1, '2020-11-07 16:36:43', '2020-10-29'),
(6, 1, 10, 0, 14, '192.168.1.1', 1, '2020-11-07 16:36:43', '2020-10-29'),
(7, 2, 1, 1, 12, '192.168.1.1', 1, '2020-11-07 16:36:43', '2020-10-29'),
(8, 2, 3, 0, 11, '192.168.1.1', 1, '2020-11-07 16:36:43', '2020-10-29'),
(9, 3, 2, 1, 12, '192.168.1.1', 1, '2020-11-07 16:36:43', '2020-10-29'),
(10, 1, 4, 0, 14, '192.168.1.1', 1, '2020-11-07 16:36:43', '2020-10-29');
