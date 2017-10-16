DROP DATABASE IF EXISTS TEST;
CREATE DATABASE TEST;
USE TEST;
DROP TABLE IF EXISTS `test`.`books`;

CREATE TABLE `books`(
  `id` INT(9) NOT NULL AUTO_INCREMENT,
  `title` VARCHAR(100) NOT NULL DEFAULT '0',
`description` VARCHAR(255) NOT NULL DEFAULT '0',
`author` VARCHAR(100) NOT NULL DEFAULT '0',
`isbn` VARCHAR(20) NOT NULL DEFAULT '0',
  `printYear` INT(4) NOT NULL DEFAULT '0',
  `readAlready` BIT NOT NULL,
  `createdDate` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO test.books (TITLE, DESCRIPTION, AUTHOR,ISBN, PRINTYEAR, READALREADY)
VALUES
  ('Lesson 1 Javarush','String and int types.' , 'Risha', '0101', '1900' , b'0'),
  ('Lesson 2 Javarush','Variables, methods,classes.' , ' Captain ', '0102', '1901' , b'0'),
  ('Lesson 3 Javarush','Working in IDE' , 'Billabao. ', '0103', '1902' , b'0'),
  ('Lesson 4 Javarush ','for' , ' Elly. ', '0104', '1903' , b'0'),
  ('Lesson 5 Javarush','Constructors.' , ' Kim ', '0105', '1904' , b'0'),
  ('Lesson 6 Javarush','Static variables.' , ' Professor. ', '0106', '1905' , b'0'),
('Lesson 7 Javarush','Array, ArrayList.' , ' Diego ', '0107', '1906' , b'0'),
('Lesson 8 Javarush','List, Map, Date.' , ' Amigo ', '0108', '1907' , b'0'),
('Lesson 9 Javarush','try,catch' , ' Hulio ', '0109', '1908' , b'0'),
('Lesson 10 Javarush','types' , ' Risha ', '0110', '1909' , b'0'),
('Lesson 11 Javarush','Implementation, incapsulation.' , ' Billabao ', '0201', '1910' , b'0'),
('Lesson 12 Javarush','Interfaces.' , ' Elly ', '0202', '1911' , b'0'),
('Lesson 13 Javarush','More interfaces.' , ' Diego ', '0203', '1912' , b'0'),
('Lesson 14 Javarush','Instanceof.' , ' Captain ', '0204', '1913' , b'0'),
('Lesson 15 Javarush','More constructors.' , ' Kim ', '0205', '1914' , b'0'),
('Lesson 16 Javarush','Threads.' , ' Risha ', '0206', '1915' , b'0'),
('Lesson 17 Javarush','Synchronization.' , ' Amigo ', '0207', '1916' , b'0'),
('Lesson 18 Javarush','Streams.' , ' Amigo ', '0208', '1917' , b'0'),
('Lesson 19 Javarush','Readers and writers.' , ' Amigo ', '0209', '1918' , b'0'),
('Lesson 20 Javarush','Serialization.' , ' Diego ', '0210', '1919' , b'0'),
('Lesson 21 Javarush','Equals and hashcode.' , ' Diego ', '0301', '1920' , b'0'),
('Lesson 22 Javarush','More Sring.' , ' Elly ', '0302', '1921' , b'0'),
('Lesson 23 Javarush','Map.Entry.' , ' Elly ', '0303', '1922' , b'0'),
('Lesson 24 Javarush','Inner classes.' , ' Elly ', '0304', '1923' , b'0'),
('Lesson 25 Javarush','Start, interrupt, sleap, yield.' , ' Billabao ', '0305', '1924' , b'0'),
('Lesson 26 Javarush','Synchronized, volatile.' , ' Hulio ', '0306', '1925' , b'0'),
('Lesson 27 Javarush',' DeadLock.' , ' Hulio ', '0307', '1926' , b'0'),
('Lesson 28 Javarush','ThreadGroup.' , ' Hulio ', '0308', '1927' , b'0'),
('Lesson 29 Javarush','Autoboxing.' , ' Kim ', '0309', '1928' , b'0'),
('Lesson 30 Javarush','Swing.' , ' Kim ', '0310', '1929' , b'0'),
('Lesson 31 Javarush','Files and archives.' , ' Kim ', '0401', '1930' , b'0'),
('Lesson 32 Javarush','RMI.' , ' Risha ', '0402', '1931' , b'0'),
('Lesson 33 Javarush','JSON' , ' Risha ', '0403', '1932' , b'0'),
('Lesson 34 Javarush','Recursion.' , ' Risha ', '0404', '1933' , b'0'),
('Lesson 35 Javarush','Git, SVN.' , ' Risha ', '0405', '1934' , b'0'),
('Lesson 36 Javarush','More collections.' , ' Diego ', '0406', '1935' , b'0'),
('Lesson 37 Javarush','Patterns.' , ' Diego ', '0407', '1936' , b'0'),
('Lesson 38 Javarush','Annotations.' , ' Diego ', '0408', '1937' , b'0'),
('Lesson 39 Javarush','Tomcat.' , ' Amigo ', '0409', '1938' , b'0'),
('Lesson 40 Javarush','URI, URL.' , ' Amigo ', '0410', '1939' , b'0')

