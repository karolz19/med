-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 06 Kwi 2022, 11:15
-- Wersja serwera: 10.4.22-MariaDB
-- Wersja PHP: 8.0.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `med`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `appointment`
--

CREATE TABLE `appointment` (
  `id` int(11) NOT NULL,
  `staff_id` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `appointment`
--

INSERT INTO `appointment` (`id`, `staff_id`, `date`) VALUES
(1, 1, '2022-03-24 09:30:00'),
(2, 1, '2022-03-24 12:00:00'),
(3, 3, '2022-03-25 13:10:00'),
(103, 1, '2022-04-06 08:17:00'),
(104, 1, '2022-04-06 08:32:00'),
(105, 1, '2022-04-06 08:47:00'),
(106, 1, '2022-04-06 09:02:00'),
(107, 1, '2022-04-06 09:17:00'),
(108, 1, '2022-04-06 09:32:00'),
(109, 1, '2022-04-06 09:47:00'),
(110, 1, '2022-04-06 10:02:00'),
(111, 1, '2022-04-06 10:17:00'),
(112, 1, '2022-04-06 10:32:00'),
(113, 1, '2022-04-06 10:47:00'),
(114, 1, '2022-04-06 11:02:00'),
(115, 1, '2022-04-06 11:17:00'),
(116, 1, '2022-04-06 11:32:00'),
(117, 1, '2022-04-06 11:47:00'),
(118, 1, '2022-04-06 12:02:00'),
(119, 4, '2022-04-21 02:20:00'),
(120, 4, '2022-04-21 02:35:00'),
(121, 4, '2022-04-21 02:50:00'),
(122, 4, '2022-04-21 03:05:00'),
(123, 4, '2022-04-21 03:20:00'),
(124, 4, '2022-04-21 03:35:00'),
(125, 4, '2022-04-21 03:50:00'),
(126, 4, '2022-04-21 04:05:00');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `patient`
--

CREATE TABLE `patient` (
  `id` int(11) NOT NULL,
  `firstName` varchar(255) NOT NULL,
  `lastName` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `pesel` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `patient`
--

INSERT INTO `patient` (`id`, `firstName`, `lastName`, `phone`, `pesel`) VALUES
(1, 'Małgorzata', 'Chujniak', '696969696', '69042012345'),
(2, 'Wojciech', 'Śliskapipka', '213742069', '12345678912');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `patientappointment`
--

CREATE TABLE `patientappointment` (
  `id` int(11) NOT NULL,
  `patient_id` int(11) NOT NULL,
  `appointment_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `patientappointment`
--

INSERT INTO `patientappointment` (`id`, `patient_id`, `appointment_id`) VALUES
(1, 0, 1),
(2, 2, 3);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `staff`
--

CREATE TABLE `staff` (
  `id` int(11) NOT NULL,
  `firstName` varchar(255) NOT NULL,
  `lastName` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `staff`
--

INSERT INTO `staff` (`id`, `firstName`, `lastName`) VALUES
(1, 'Janusz', 'Kowalski'),
(2, 'Marian', 'Nowak'),
(3, 'Iwona', 'Nowak'),
(4, 'mariusz', 'wierciszpara');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `staff_id` (`staff_id`);

--
-- Indeksy dla tabeli `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `patientappointment`
--
ALTER TABLE `patientappointment`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `appointment`
--
ALTER TABLE `appointment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=127;

--
-- AUTO_INCREMENT dla tabeli `patient`
--
ALTER TABLE `patient`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT dla tabeli `patientappointment`
--
ALTER TABLE `patientappointment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT dla tabeli `staff`
--
ALTER TABLE `staff`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `appointment`
--
ALTER TABLE `appointment`
  ADD CONSTRAINT `appointment_ibfk_1` FOREIGN KEY (`staff_id`) REFERENCES `staff` (`id`);

--
-- Ograniczenia dla tabeli `patientappointment`
--
ALTER TABLE `patientappointment`
  ADD CONSTRAINT `patientappointment_ibfk_1` FOREIGN KEY (`id`) REFERENCES `patient` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
