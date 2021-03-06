-- phpMyAdmin SQL Dump
-- version 3.4.11.1deb2
-- http://www.phpmyadmin.net
--
-- Máquina: localhost
-- Data de Criação: 21-Out-2014 às 12:49
-- Versão do servidor: 5.5.37
-- versão do PHP: 5.4.4-14+deb7u14

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de Dados: `resume`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `employers`
--

CREATE TABLE IF NOT EXISTS `employers` (
  `id` int(11) NOT NULL,
  `slug` text,
  `name` text,
  `owner` text,
  `ownerTwitter` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `employers_ME_TMP`
--

CREATE TABLE IF NOT EXISTS `employers_ME_TMP` (
  `id` int(11) NOT NULL,
  `slug` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `options`
--

CREATE TABLE IF NOT EXISTS `options` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text,
  `tagline` text,
  `aboutme` text,
  `profileimg` text,
  `resume` text,
  `background` text,
  `theme` text,
  `headercolor` text,
  `fontcolor` text,
  `taglinecolor` text,
  `linkcolor` text,
  `linkhovercolor` text,
  `headlinefont` text,
  `bodyfont` text,
  `imgbordercolor` text,
  `contentbg` text,
  `footerbg` text,
  `bgcolor` text,
  `bgpattern` text,
  `contentbgvis` text,
  `facebook` text,
  `twitter` text,
  `google` text,
  `pinterest` text,
  `linkedin` text,
  `github` text,
  `employers` text,
  `employerMessage` text,
  `googleAnalyticsId` text,
  `phone` text,
  `email` text,
  `companyBg` text,
  `companyBorder` text,
  `companyFont` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Extraindo dados da tabela `options`
--

INSERT INTO `options` (`id`, `name`, `tagline`, `aboutme`, `profileimg`, `resume`, `background`, `theme`, `headercolor`, `fontcolor`, `taglinecolor`, `linkcolor`, `linkhovercolor`, `headlinefont`, `bodyfont`, `imgbordercolor`, `contentbg`, `footerbg`, `bgcolor`, `bgpattern`, `contentbgvis`, `facebook`, `twitter`, `google`, `pinterest`, `linkedin`, `github`, `employers`, `employerMessage`, `googleAnalyticsId`, `phone`, `email`, `companyBg`, `companyBorder`, `companyFont`) VALUES
(1, 'Admin', 'Comitted, Hard Worker, Talented', '<p><span>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.</span></p>\n<h3><span><strong>Products of expertise</strong></span></h3>\n<ul>\n<li><span>HP ArcSight ESM/Logger</span></li>\n<li><span>RSA Analytics</span></li>\n<li><span>IBM Proventia IPS/IDS and HIDS</span></li>\n<li><span>Juniper ISG/IDP</span></li>\n<li><span>Cisco IPS/IDS</span></li>\n<li><span>Mcafee Intrushield/FoundStone</span></li>\n<li><span>Sourcefire IPS</span></li>\n<li><span>Microsoft windows servers 2000/2003/2008</span></li>\n<li><span><span>Development skills in ( PHP,Javascript, Python, Java, Shell Script</span></span></li>\n</ul>', 'http://192.168.0.131/resume/images/uploads/Portrait-of-happy-smiling-businessman.jpg', '<p><strong>Microsoft&nbsp;</strong></p>\n<p>Senior Security Analyst &nbsp;- June 2013 &ndash; Present</p>\n<p><span>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur</span></p>', ' url(http://192.168.0.131/resume/images/patterns/carbon_fibre.png);', '', '#615656', '#948a8a', '#ada1a1', '#615656', '#991733', 'Jura', '0', '#ffffff', '#ffffff', '#424242', '0', 'carbon_fibre.png', '0', 'https://www.facebook.com/blogtorres', 'https://www.twitter.com/andersontorres', '', '', 'http://br.linkedin.com/in/andersontorres/', '', '', '', '', '55 - xxxx-xxxx', 'admin@admin.com', '', '', '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` text NOT NULL,
  `email` text NOT NULL,
  `password` blob NOT NULL,
  `updatedPass` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Extraindo dados da tabela `users`
--

INSERT INTO `users` (`id`, `user`, `email`, `password`, `updatedPass`) VALUES
(1, 'admin', 'admin@andersontorres.com.br', 0x64303333653232616533343861656235363630666332313430616563333538353063346461393937, '1');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
