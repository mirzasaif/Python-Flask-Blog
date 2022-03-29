-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3307
-- Generation Time: Mar 29, 2022 at 08:14 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `saif`
--

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `sno` int(50) NOT NULL,
  `name` text NOT NULL,
  `phone_num` varchar(50) NOT NULL,
  `msg` text NOT NULL,
  `date` datetime DEFAULT current_timestamp(),
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`sno`, `name`, `phone_num`, `msg`, `date`, `email`) VALUES
(1, 'First Post', '123456789', 'First Post', '2022-03-26 22:41:52', 'firstpost@gmail.com'),
(2, 'Mirza Baig', '03223116054', 'asdfasdsadsa', NULL, 'mirzasaif20@gmail.com'),
(3, 'Saif Baig', '03223116054', 'Hello my Friend!', NULL, 'mirzasaif20@gmail.com'),
(4, 'Saif Baig', '03223116054', 'Hello my Friend!', '2022-03-26 23:08:09', 'mirzasaif20@gmail.com'),
(5, 'Malaika', '090078601', 'Bhai Hello!', '2022-03-26 23:08:56', 'abc@xyz.com'),
(6, 'Mirza Baig', '03223116054', 'qwerty', '2022-03-26 23:11:41', 'mirzasaif20@gmail.com'),
(7, 'Mirza Baig', '03223116054', 'qwweert', '2022-03-27 22:50:30', 'mirzasaif20@gmail.com'),
(8, 'Mirza Baig', '03223116054', 'qweqwwaerfasfs', '2022-03-27 22:54:24', 'mirzasaif20@gmail.com'),
(9, 'Malaika', '090078601', 'Hello Bhai kia krrahe ho?', '2022-03-27 23:00:08', 'malaika@abc.com'),
(10, 'Saif Baig', '03223116054', 'Yo yo ', '2022-03-27 23:02:01', 'mirzasaif20@gmail.com'),
(11, 'Saif Baig', '03223116054', 'Yo yo ', '2022-03-27 23:03:02', 'mirzasaif20@gmail.com'),
(12, 'Saif Baig', '03223116054', 'poirwedskjfbksdjfkjsadbdsa', '2022-03-27 23:03:19', 'mirzasaif20@gmail.com'),
(13, 'Saif', '03223116054', 'many thanks to you', '2022-03-28 17:11:42', 'mirzasaif20@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `sno` int(11) NOT NULL,
  `title` text NOT NULL,
  `tagline` text NOT NULL,
  `slug` varchar(50) NOT NULL,
  `content` text NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp(),
  `img_file` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`sno`, `title`, `tagline`, `slug`, `content`, `date`, `img_file`) VALUES
(1, 'Let\'s learn about stocks.', 'This is first post', 'first-post', 'In finance, stock (also capital stock or saif\'s stock) consists of all of the shares into which ownership of a corporation or company is divided. (Especially in American English, the word \"stocks\" is also used to refer to shares.) A single share of the stock means fractional ownership of the corporation in proportion to the total number of shares. This typically entitles the shareholder (stockholder) to that fraction of the company\'s earnings, proceeds from liquidation of assets (after discharge of all senior claims such as secured and unsecured debt), or voting power, often dividing these up in proportion to the amount of money each stockholder has invested. Not all stock is necessarily equal, as certain classes of stock may be issued for example without voting rights, with enhanced voting rights, or with a certain priority to receive profits or liquidation proceeds before or after other classes of shareholders.', '2022-03-29 17:12:58', 'post-bg.jpg'),
(2, 'This is Second Post.', 'Coolest post ever', 'second-post', 'Space is an almost perfect vacuum, nearly void of matter and with extremely low pressure. In space, sound doesn\'t carry because there aren\'t molecules close enough together to transmit sound between them.', '2022-03-28 17:16:54', 'about-bg.jpg'),
(3, 'Photon', 'Energy carriers.', 'third-post', 'Photons are often described as energy packets. This is a very fitting analogy, as a photon contains energy that cannot be divided. This energy is stored as an oscillating electric field. These fields may oscillate at almost any frequency. Although they have never been observed, the longest theoretical wavelength of light is the size of the universe, and some theories predict the shortest possible at the Planck length. These packets of energy can be transmitted over vast distances with no decay in energy or speed. Photons travel at the speed of light, 2.997x108 m/s in empty space. The speed of a photon through space can be directly derived from the speed of an electric field through free space. Maxwell unveiled this proof in 1864. Even though photons have no mass, they have an observable momentum which follows the de Broglie equation. The momentum of photons leads to interesting practical applications such as optical tweezers.\r\n\r\nGenerally speaking, photons have similar properties to electromagnetic waves. Each photon has a wavelength and a frequency. The wavelength is defined as the distance between two peaks of the electric field with the same vector. The frequency of a photon is defined as how many wavelengths a photon propagates each second.\r\n\r\nUnlike an electromagnetic wave, a photon cannot actually be of a color. Instead, a photon will correspond to light of a given color. As color is defined by the capabilities of the human eye, a single photon cannot have color because it cannot be detected by the human eye. In order for the retina to detect and register light of a given color, several photons must act on it. Only when many photons act in unison on the retina, as an electromagnetic wave, can color be perceived.', '2022-03-28 17:37:50', 'post-bg.jpg'),
(4, 'Energy', 'Force driving the universe further', 'fourth-post', 'energy, in physics, the capacity for doing work. It may exist in potential, kinetic, thermal, electrical, chemical, nuclear, or other various forms. There are, moreover, heat and work—i.e., energy in the process of transfer from one body to another. After it has been transferred, energy is always designated according to its nature. Hence, heat transferred may become thermal energy, while work done may manifest itself in the form of mechanical energy.\r\n\r\nAll forms of energy are associated with motion. For example, any given body has kinetic energy if it is in motion. A tensioned device such as a bow or spring, though at rest, has the potential for creating motion; it contains potential energy because of its configuration. Similarly, nuclear energy is potential energy because it results from the configuration of subatomic particles in the nucleus of an atom.', '2022-03-28 17:37:50', 'post-bg.jpg'),
(5, 'Gravity', 'Universal force of attraction acting between all matter', 'fifth-post', 'gravity, also called gravitation, in mechanics, the universal force of attraction acting between all matter. It is by far the weakest known force in nature and thus plays no role in determining the internal properties of everyday matter. On the other hand, through its long reach and universal action, it controls the trajectories of bodies in the solar system and elsewhere in the universe and the structures and evolution of stars, galaxies, and the whole cosmos. On Earth all bodies have a weight, or downward force of gravity, proportional to their mass, which Earth’s mass exerts on them. Gravity is measured by the acceleration that it gives to freely falling objects. At Earth’s surface the acceleration of gravity is about 9.8 metres (32 feet) per second per second. Thus, for every second an object is in free fall, its speed increases by about 9.8 metres per second. At the surface of the Moon the acceleration of a freely falling body is about 1.6 metres per second per second.', '2022-03-28 17:40:39', 'post-bg.jpg'),
(6, 'Water', 'The life force of all living things.', 'sixth-post', 'water, a substance composed of the chemical elements hydrogen and oxygen and existing in gaseous, liquid, and solid states. It is one of the most plentiful and essential of compounds. A tasteless and odourless liquid at room temperature, it has the important ability to dissolve many other substances. Indeed, the versatility of water as a solvent is essential to living organisms. Life is believed to have originated in the aqueous solutions of the world’s oceans, and living organisms depend on aqueous solutions, such as blood and digestive juices, for biological processes. Water also exists on other planets and moons both within and beyond the solar system. In small quantities water appears colourless, but water actually has an intrinsic blue colour caused by slight absorption of light at red wavelengths.', '2022-03-28 17:40:39', 'post-bg.jpg'),
(9, 'Cryptocurrency', 'What is cryptocurrency and how does it work?', 'crypto-post', 'Cryptocurrency, sometimes called crypto-currency or crypto, is any form of currency that exists digitally or virtually and uses cryptography to secure transactions. Cryptocurrencies don\'t have a central issuing or regulating authority, instead using a decentralized system to record transactions and issue new units.\r\n\r\nCryptocurrency is a digital payment system that doesn\'t rely on banks to verify transactions. It’s a peer-to-peer system that can enable anyone anywhere to send and receive payments. Instead of being physical money carried around and exchanged in the real world, cryptocurrency payments exist purely as digital entries to an online database describing specific transactions. When you transfer cryptocurrency funds, the transactions are recorded in a public ledger. Cryptocurrency is stored in digital wallets.\r\n\r\nCryptocurrency received its name because it uses encryption to verify transactions. This means advanced coding is involved in storing and transmitting cryptocurrency data between wallets and to public ledgers. The aim of encryption is to provide security and safety.\r\n\r\nThe first cryptocurrency was Bitcoin, which was founded in 2009 and remains the best known today. Much of the interest in cryptocurrencies is to trade for profit, with speculators at times driving prices skyward.\r\nCryptocurrencies run on a distributed public ledger called blockchain, a record of all transactions updated and held by currency holders.\r\n\r\nUnits of cryptocurrency are created through a process called mining, which involves using computer power to solve complicated mathematical problems that generate coins. Users can also buy the currencies from brokers, then store and spend them using cryptographic wallets.\r\n\r\nIf you own cryptocurrency, you don’t own anything tangible. What you own is a key that allows you to move a record or a unit of measure from one person to another without a trusted third party.\r\n\r\nAlthough Bitcoin has been around since 2009, cryptocurrencies and applications of blockchain technology are still emerging in financial terms, and more uses are expected in the future. Transactions including bonds, stocks, and other financial assets could eventually be traded using the technology.', '2022-03-29 18:23:25', 'post-bg.jpg'),
(10, 'Artificial Intelligence (AI)', 'Understanding Artificial Intelligence (AI)', 'AI', 'Artificial intelligence (AI) refers to the simulation of human intelligence in machines that are programmed to think like humans and mimic their actions. The term may also be applied to any machine that exhibits traits associated with a human mind such as learning and problem-solving.\r\n\r\nThe ideal characteristic of artificial intelligence is its ability to rationalize and take actions that have the best chance of achieving a specific goal. A subset of artificial intelligence is machine learning, which refers to the concept that computer programs can automatically learn from and adapt to new data without being assisted by humans. Deep learning techniques enable this automatic learning through the absorption of huge amounts of unstructured data such as text, images, or video.\r\nWhen most people hear the term artificial intelligence, the first thing they usually think of is robots. That\'s because big-budget films and novels weave stories about human-like machines that wreak havoc on Earth. But nothing could be further from the truth.\r\n\r\nArtificial intelligence is based on the principle that human intelligence can be defined in a way that a machine can easily mimic it and execute tasks, from the most simple to those that are even more complex. The goals of artificial intelligence include mimicking human cognitive activity. Researchers and developers in the field are making surprisingly rapid strides in mimicking activities such as learning, reasoning, and perception, to the extent that these can be concretely defined. Some believe that innovators may soon be able to develop systems that exceed the capacity of humans to learn or reason out any subject. But others remain skeptical because all cognitive activity is laced with value judgments that are subject to human experience.\r\n\r\nAs technology advances, previous benchmarks that defined artificial intelligence become outdated. For example, machines that calculate basic functions or recognize text through optical character recognition are no longer considered to embody artificial intelligence, since this function is now taken for granted as an inherent computer function.\r\n\r\nAI is continuously evolving to benefit many different industries. Machines are wired using a cross-disciplinary approach based on mathematics, computer science, linguistics, psychology, and more.\r\nThe applications for artificial intelligence are endless. The technology can be applied to many different sectors and industries. AI is being tested and used in the healthcare industry for dosing drugs and different treatment in patients, and for surgical procedures in the operating room.\r\n\r\nOther examples of machines with artificial intelligence include computers that play chess and self-driving cars. Each of these machines must weigh the consequences of any action they take, as each action will impact the end result. In chess, the end result is winning the game. For self-driving cars, the computer system must account for all external data and compute it to act in a way that prevents a collision.\r\n\r\nArtificial intelligence also has applications in the financial industry, where it is used to detect and flag activity in banking and finance such as unusual debit card usage and large account deposits—all of which help a bank\'s fraud department. Applications for AI are also being used to help streamline and make trading easier. This is done by making supply, demand, and pricing of securities easier to estimate.\r\nArtificial intelligence can be divided into two different categories: weak and strong. Weak artificial intelligence embodies a system designed to carry out one particular job. Weak AI systems include video games such as the chess example from above and personal assistants such as Amazon\'s Alexa and Apple\'s Siri. You ask the assistant a question, it answers it for you.\r\n\r\nStrong artificial intelligence systems are systems that carry on the tasks considered to be human-like. These tend to be more complex and complicated systems. They are programmed to handle situations in which they may be required to problem solve without having a person intervene. These kinds of systems can be found in applications like self-driving cars or in hospital operating rooms.\r\nSince its beginning, artificial intelligence has come under scrutiny from scientists and the public alike. One common theme is the idea that machines will become so highly developed that humans will not be able to keep up and they will take off on their own, redesigning themselves at an exponential rate.\r\n\r\nAnother is that machines can hack into people\'s privacy and even be weaponized. Other arguments debate the ethics of artificial intelligence and whether intelligent systems such as robots should be treated with the same rights as humans.\r\n\r\nSelf-driving cars have been fairly controversial as their machines tend to be designed for the lowest possible risk and the least casualties. If presented with a scenario of colliding with one person or another at the same time, these cars would calculate the option that would cause the least amount of damage.\r\n\r\nAnother contentious issue many people have with artificial intelligence is how it may affect human employment. With many industries looking to automate certain jobs through the use of intelligent machinery, there is a concern that people would be pushed out of the workforce. Self-driving cars may remove the need for taxis and car-share programs, while manufacturers may easily replace human labor with machines, making people\'s skills more obsolete.', '2022-03-29 22:31:26', 'post-bg.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`sno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `sno` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
