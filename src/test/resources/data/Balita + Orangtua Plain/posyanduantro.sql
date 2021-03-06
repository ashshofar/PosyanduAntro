-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 27 Agu 2016 pada 13.16
-- Versi Server: 5.6.24
-- PHP Version: 5.6.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `posyanduantro`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `assigment`
--

CREATE TABLE IF NOT EXISTS `assigment` (
  `assigment_id` varchar(255) NOT NULL,
  `id_jabatan_jabatanId` varchar(255) DEFAULT NULL,
  `id_user_userId` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `assigment`
--

INSERT INTO `assigment` (`assigment_id`, `id_jabatan_jabatanId`, `id_user_userId`) VALUES
('00d051ec-5936-44f6-bb61-8e1c4b3ee8ff', 'c33d618b-a759-4d2f-b5d0-bf5bc5c26d71', 'USER137'),
('0127cffd-35bb-40ba-874b-796679d81361', 'c33d618b-a759-4d2f-b5d0-bf5bc5c26d71', 'USER245'),
('0313a202-cd7c-4675-82e3-e99d46d3f398', 'c33d618b-a759-4d2f-b5d0-bf5bc5c26d71', 'USER225'),
('08fb04cb-d2aa-4241-9dfc-4ffee330c0b9', 'c33d618b-a759-4d2f-b5d0-bf5bc5c26d71', 'USER147'),
('0c04707a-4169-449c-aa84-eaa728b42115', 'c33d618b-a759-4d2f-b5d0-bf5bc5c26d71', 'USER169'),
('0c4a7f3a-2a2e-4f54-80ff-eff40efa88f6', 'c33d618b-a759-4d2f-b5d0-bf5bc5c26d71', 'USER234'),
('0eb6be37-e658-4c13-8b92-122a1526c0b4', 'c33d618b-a759-4d2f-b5d0-bf5bc5c26d71', 'USER190'),
('11a670e6-5c41-4a63-87ae-e6b192ea88a8', 'c33d618b-a759-4d2f-b5d0-bf5bc5c26d71', 'USER268'),
('144289dd-5db1-4fae-b2c3-de14bfb4792c', 'c33d618b-a759-4d2f-b5d0-bf5bc5c26d71', 'USER136'),
('16282f9b-1aff-423e-b3b1-fa595f5d9bc0', 'c33d618b-a759-4d2f-b5d0-bf5bc5c26d71', 'USER131'),
('165abfcd-8d1c-4af3-ae9b-882dc9338092', '9ce32cfb-67f7-4410-93a1-3f15282a9811', '4673b2bc-93bc-40a1-91fb-3cf32ec2d8ba'),
('18279e4c-303c-4f9f-b4b2-cd4d7a9fd44c', 'c33d618b-a759-4d2f-b5d0-bf5bc5c26d71', 'USER240'),
('18aa8996-fd25-4792-9925-d1c860d45b73', 'c33d618b-a759-4d2f-b5d0-bf5bc5c26d71', 'USER117'),
('18bdd3c0-12d5-4e59-9f3c-0ea0eab68cbf', 'c33d618b-a759-4d2f-b5d0-bf5bc5c26d71', 'USER244'),
('1966b33b-ad60-48c9-a901-a8a27f5dfd25', 'c33d618b-a759-4d2f-b5d0-bf5bc5c26d71', 'USER228'),
('1b2866a8-aeca-4258-aacf-4013233080da', 'c33d618b-a759-4d2f-b5d0-bf5bc5c26d71', 'USER226'),
('1d73d64c-dd1a-43d4-a15d-97c8f0f28642', 'c33d618b-a759-4d2f-b5d0-bf5bc5c26d71', 'USER166'),
('1eeea981-138f-4c35-bf3e-8cf3635f4125', 'c33d618b-a759-4d2f-b5d0-bf5bc5c26d71', 'USER206'),
('1face16e-0ff4-4a3a-82ad-00dcfb4c6ddf', 'c33d618b-a759-4d2f-b5d0-bf5bc5c26d71', 'USER200'),
('1fc3c6bc-46e2-4ec1-b1a8-39a346c38853', 'c33d618b-a759-4d2f-b5d0-bf5bc5c26d71', 'USER252'),
('222600ec-3277-4408-904e-2e9794807363', 'c33d618b-a759-4d2f-b5d0-bf5bc5c26d71', 'USER186'),
('23dbf663-b17d-4cbc-8bb3-1ab0e9eff5e1', 'c33d618b-a759-4d2f-b5d0-bf5bc5c26d71', 'USER108'),
('240f1656-c956-4eb4-806c-059960d85df7', 'c33d618b-a759-4d2f-b5d0-bf5bc5c26d71', 'USER230'),
('259b9ba2-f94a-458c-9ddc-9891d5bfcca1', 'c33d618b-a759-4d2f-b5d0-bf5bc5c26d71', 'USER125'),
('26d88d6e-f293-43fa-b6dc-a77140b5e647', 'aa0efeb2-556b-48ca-9043-69c7229c7bcb', 'USER119'),
('273cdbe2-2846-4f40-a833-72d0234dc319', 'aa0efeb2-556b-48ca-9043-69c7229c7bcb', 'USER112'),
('2863b85f-e186-42ae-9e21-752c55c50640', 'c33d618b-a759-4d2f-b5d0-bf5bc5c26d71', 'USER193'),
('287d8034-0e3b-4726-9eba-0f642ebd053b', 'c33d618b-a759-4d2f-b5d0-bf5bc5c26d71', 'USER227'),
('2dff6147-5981-41df-af45-79b46d2dd779', 'c33d618b-a759-4d2f-b5d0-bf5bc5c26d71', 'USER151'),
('2f44af3d-f52b-4bdc-8169-450489c1ba0c', 'c33d618b-a759-4d2f-b5d0-bf5bc5c26d71', 'USER195'),
('313e06e3-5fc9-4616-b986-b848b3661a92', 'c33d618b-a759-4d2f-b5d0-bf5bc5c26d71', 'USER126'),
('318ed861-cf85-45de-988f-10c494ef6ed9', 'c33d618b-a759-4d2f-b5d0-bf5bc5c26d71', 'USER171'),
('32d39de4-2af1-4be7-ab3f-f80350a6d0ad', 'c33d618b-a759-4d2f-b5d0-bf5bc5c26d71', 'USER140'),
('354f7bd1-6f3e-4428-b707-84608bfd5215', 'c33d618b-a759-4d2f-b5d0-bf5bc5c26d71', 'USER233'),
('37a4062d-5158-445d-a922-81e37b349ce6', 'c33d618b-a759-4d2f-b5d0-bf5bc5c26d71', 'USER135'),
('3a143568-6aa0-471c-83b5-16ba1e24a1c1', 'c33d618b-a759-4d2f-b5d0-bf5bc5c26d71', 'USER264'),
('3a184d7e-3528-415f-8cb0-2da41f734171', 'c33d618b-a759-4d2f-b5d0-bf5bc5c26d71', 'USER182'),
('3bf89264-f621-41c3-8852-8a2674483f11', '6b651276-f046-4ce9-b6d8-14bfeb42591c', 'USER118'),
('3cb9ea0e-2591-464f-a8ab-95d6d24d04a0', 'c33d618b-a759-4d2f-b5d0-bf5bc5c26d71', 'USER163'),
('3cff7d97-f271-429d-89d4-9e58b18ce53f', 'aa0efeb2-556b-48ca-9043-69c7229c7bcb', '89cb5ac8-6086-4ff7-8083-51e94dcb4c10'),
('3f2afd3e-6737-4b0d-98ac-4cf9b7c0a207', '9ce32cfb-67f7-4410-93a1-3f15282a9811', 'USER115'),
('49bf52bd-610a-42aa-b384-2c6bb598213f', 'c33d618b-a759-4d2f-b5d0-bf5bc5c26d71', 'USER248'),
('4b7e229a-ff30-4ca3-a827-71358184de1d', 'c33d618b-a759-4d2f-b5d0-bf5bc5c26d71', 'USER188'),
('4d57981e-9c2c-4da8-9c3b-b35335a2ed49', 'c33d618b-a759-4d2f-b5d0-bf5bc5c26d71', 'USER266'),
('4d972571-227b-43ec-b6c2-80dc29dd97f2', 'c33d618b-a759-4d2f-b5d0-bf5bc5c26d71', 'USER164'),
('4fc61fff-e546-4011-93bf-994058ae9b8d', 'c33d618b-a759-4d2f-b5d0-bf5bc5c26d71', 'USER229'),
('50e3cd38-bde2-4c8c-89bf-971d663bf830', 'c33d618b-a759-4d2f-b5d0-bf5bc5c26d71', 'USER142'),
('510c55fa-7db5-4ee0-911f-4b8bc4f68e0c', 'c33d618b-a759-4d2f-b5d0-bf5bc5c26d71', 'USER270'),
('51349cd6-f6b0-414c-aefe-ea3c544ee7f4', 'c33d618b-a759-4d2f-b5d0-bf5bc5c26d71', 'USER198'),
('52c4850c-7239-4ab7-9eb4-07ad6d1f9def', 'c33d618b-a759-4d2f-b5d0-bf5bc5c26d71', 'USER177'),
('55309e36-8c9c-410e-b551-c0b274fe3b02', 'c33d618b-a759-4d2f-b5d0-bf5bc5c26d71', 'USER260'),
('55640d6b-0de9-45f8-a9bd-37a11552c381', 'c33d618b-a759-4d2f-b5d0-bf5bc5c26d71', 'USER242'),
('58dbb886-2c59-4673-96d2-d0942c10be9e', 'c33d618b-a759-4d2f-b5d0-bf5bc5c26d71', 'USER197'),
('59501fa1-c4aa-4288-9030-a61d1d416617', 'c33d618b-a759-4d2f-b5d0-bf5bc5c26d71', 'USER208'),
('59eef802-53b1-4b57-9be5-90d8a50ac9a7', 'c33d618b-a759-4d2f-b5d0-bf5bc5c26d71', 'USER213'),
('5af3b088-52e8-48db-b49d-b7c967ec4618', 'c33d618b-a759-4d2f-b5d0-bf5bc5c26d71', 'USER236'),
('5d7a2fb1-6eb2-4df7-b388-b5f08eba84da', 'c33d618b-a759-4d2f-b5d0-bf5bc5c26d71', 'USER153'),
('5d85be18-3893-474b-b98b-41ef2b237505', 'c33d618b-a759-4d2f-b5d0-bf5bc5c26d71', 'USER145'),
('641e9159-0565-49de-a90b-332eb00efb52', 'c33d618b-a759-4d2f-b5d0-bf5bc5c26d71', 'USER192'),
('643679a9-166c-4efd-8630-e83903e1d3f2', 'c33d618b-a759-4d2f-b5d0-bf5bc5c26d71', 'USER257'),
('6483d9c3-d2d3-4b60-8ee6-507c1c6f6c95', 'c33d618b-a759-4d2f-b5d0-bf5bc5c26d71', 'USER146'),
('68773fca-7f58-488f-a614-a6c42480f1ea', 'c33d618b-a759-4d2f-b5d0-bf5bc5c26d71', 'USER128'),
('69beb3f1-3960-482b-8098-95d574f305cb', 'c33d618b-a759-4d2f-b5d0-bf5bc5c26d71', 'USER134'),
('6a104561-7dc2-4a9b-b0bf-a89560c956fd', 'c33d618b-a759-4d2f-b5d0-bf5bc5c26d71', 'USER110'),
('6a30dbc7-028c-4d0d-8e75-2d0117e0663e', 'c33d618b-a759-4d2f-b5d0-bf5bc5c26d71', 'USER246'),
('6d6be276-3345-47ef-8174-9c89e43df294', 'c33d618b-a759-4d2f-b5d0-bf5bc5c26d71', 'USER201'),
('6d850454-b3fa-40c5-9093-6e0b354f94cf', 'c33d618b-a759-4d2f-b5d0-bf5bc5c26d71', 'USER205'),
('6fc13c37-519d-4360-bb81-cae3d02293a4', 'c33d618b-a759-4d2f-b5d0-bf5bc5c26d71', 'USER194'),
('729a8e13-6237-49c2-9dca-c6ded2e033e0', 'c33d618b-a759-4d2f-b5d0-bf5bc5c26d71', 'USER184'),
('7692f6d6-e052-4fa0-944c-cc8273728afa', 'c33d618b-a759-4d2f-b5d0-bf5bc5c26d71', 'USER253'),
('77d89e2c-692c-4402-a948-a55fd9eee03d', 'c33d618b-a759-4d2f-b5d0-bf5bc5c26d71', 'USER207'),
('78984720-7508-4465-b066-1aa1ee0b4429', 'c33d618b-a759-4d2f-b5d0-bf5bc5c26d71', 'USER209'),
('7923a6b6-6798-45e1-a3fd-b23bffca7c1a', 'c33d618b-a759-4d2f-b5d0-bf5bc5c26d71', 'USER211'),
('7a48f903-750f-4dec-9b2c-eb3fb1e4cef7', 'c33d618b-a759-4d2f-b5d0-bf5bc5c26d71', 'USER122'),
('7a700d93-397d-4569-8023-1b491e1357a6', 'c33d618b-a759-4d2f-b5d0-bf5bc5c26d71', 'USER172'),
('7b81d887-0c10-4567-a6f5-d6a857e2689a', 'c33d618b-a759-4d2f-b5d0-bf5bc5c26d71', 'USER256'),
('7bf82e4a-8743-44ea-a968-30275a335327', 'c33d618b-a759-4d2f-b5d0-bf5bc5c26d71', 'USER247'),
('7cbbebed-2643-4f76-943d-f06d771fa26d', 'c33d618b-a759-4d2f-b5d0-bf5bc5c26d71', 'USER249'),
('7f46efc8-2241-4ac5-a744-3a12c00b5662', 'c33d618b-a759-4d2f-b5d0-bf5bc5c26d71', 'USER218'),
('7fc938be-b93c-4f2b-82f3-54881e63a22e', 'c33d618b-a759-4d2f-b5d0-bf5bc5c26d71', 'USER139'),
('7fcc407d-c320-4810-b660-bdca1ea06cd2', 'c33d618b-a759-4d2f-b5d0-bf5bc5c26d71', 'USER237'),
('8046a937-ad6c-45dc-885c-3a4161e9dc5e', 'c33d618b-a759-4d2f-b5d0-bf5bc5c26d71', 'USER224'),
('843b338c-1d0b-437f-8ad6-6fb3271525fa', 'c33d618b-a759-4d2f-b5d0-bf5bc5c26d71', 'USER199'),
('847c3ff6-ebaa-4070-8156-64240acb10a6', 'c33d618b-a759-4d2f-b5d0-bf5bc5c26d71', 'USER121'),
('85209bd3-5aac-4e47-bc41-2ee358bf196f', 'c33d618b-a759-4d2f-b5d0-bf5bc5c26d71', 'USER176'),
('8862caaa-1cec-4c59-ab00-2f22e0ad275d', 'c33d618b-a759-4d2f-b5d0-bf5bc5c26d71', 'USER217'),
('88bf33e1-ea33-48ff-b357-eca7f6c6a275', 'c33d618b-a759-4d2f-b5d0-bf5bc5c26d71', 'USER267'),
('89d9d8d2-1c8b-442c-92f7-4294b85ed441', 'c33d618b-a759-4d2f-b5d0-bf5bc5c26d71', 'USER196'),
('8ad04851-0a37-410d-8a1c-949630f23a4c', 'c33d618b-a759-4d2f-b5d0-bf5bc5c26d71', 'USER129'),
('8d8131e7-6040-4b9a-8680-c776d1768ed7', 'c33d618b-a759-4d2f-b5d0-bf5bc5c26d71', 'USER222'),
('8fcc92e3-c31d-40cb-9d88-259b54776476', 'c33d618b-a759-4d2f-b5d0-bf5bc5c26d71', 'dedc104d-2916-4299-9c8a-e4abd70c5e31'),
('90ec7f13-72ad-4696-bdf9-11390dfcf5c1', 'c33d618b-a759-4d2f-b5d0-bf5bc5c26d71', 'USER187'),
('923bac9b-244d-479f-9f12-67ee073bc6bc', 'c33d618b-a759-4d2f-b5d0-bf5bc5c26d71', 'USER124'),
('95ef8fbc-2bea-4917-9e9c-a54d3b6a75c0', 'c33d618b-a759-4d2f-b5d0-bf5bc5c26d71', '89cb5ac8-6086-4ff7-8083-51e94dcb4c10'),
('96bf6170-7e08-4546-ba7c-480167748883', 'c33d618b-a759-4d2f-b5d0-bf5bc5c26d71', 'USER150'),
('9732e646-1241-4ff0-a6db-5f4625427cc6', 'c33d618b-a759-4d2f-b5d0-bf5bc5c26d71', 'USER250'),
('995c8a9b-a832-452c-b526-c0db2da2c69a', 'c33d618b-a759-4d2f-b5d0-bf5bc5c26d71', 'USER159'),
('9b9bd5c5-95d6-4e70-aeb2-e60e9d29880a', 'c33d618b-a759-4d2f-b5d0-bf5bc5c26d71', 'USER216'),
('9f5f3053-a1c7-4712-bf05-a367909b5678', 'c33d618b-a759-4d2f-b5d0-bf5bc5c26d71', 'USER112'),
('a00965db-4233-4656-9ce7-2f140e0ec78f', 'c33d618b-a759-4d2f-b5d0-bf5bc5c26d71', 'USER241'),
('a0778675-1d86-4a0b-b5d7-2e6cee77c820', 'c33d618b-a759-4d2f-b5d0-bf5bc5c26d71', 'USER254'),
('a0f1bd43-06f7-4c1b-8fb3-2298698f2d6b', 'c33d618b-a759-4d2f-b5d0-bf5bc5c26d71', 'USER161'),
('a2408670-39ea-4db7-930c-ca3cfbbfc0c8', 'c33d618b-a759-4d2f-b5d0-bf5bc5c26d71', 'USER261'),
('a3a1423a-820e-423b-99d7-5395ab9fa572', 'c33d618b-a759-4d2f-b5d0-bf5bc5c26d71', 'USER143'),
('a5a93ee9-bc1b-4382-baa3-190cd3827add', 'c33d618b-a759-4d2f-b5d0-bf5bc5c26d71', 'USER262'),
('a5bf3810-b8f2-48e0-aecd-f1d26cd3fa12', '1ac99d1b-cee9-4c60-bb42-05e5399c883c', 'USER114'),
('a65a7376-6cf5-4e43-a434-28cc84251339', 'c33d618b-a759-4d2f-b5d0-bf5bc5c26d71', 'USER181'),
('a6f1c777-e276-42ca-9a90-6e59933edb6b', 'c33d618b-a759-4d2f-b5d0-bf5bc5c26d71', 'USER141'),
('a71edaaa-ddfb-4392-b36a-85ee7744777f', 'c33d618b-a759-4d2f-b5d0-bf5bc5c26d71', 'USER255'),
('a96081b4-193c-4b64-8f3c-121f371f1238', 'c33d618b-a759-4d2f-b5d0-bf5bc5c26d71', 'USER165'),
('aaed1982-a7e3-4115-af2e-8c4e5aac4abc', 'c33d618b-a759-4d2f-b5d0-bf5bc5c26d71', 'USER123'),
('ab12a7d1-159f-4d9e-8333-920bcb9d4e2c', 'c33d618b-a759-4d2f-b5d0-bf5bc5c26d71', 'USER170'),
('ac0e4121-ad8f-4f0e-8008-e32ee63db1dd', 'c33d618b-a759-4d2f-b5d0-bf5bc5c26d71', 'USER265'),
('ad34a528-8eab-4532-b9e1-4f4c66431855', 'c33d618b-a759-4d2f-b5d0-bf5bc5c26d71', 'USER132'),
('aee7ff10-5b4a-4cb9-8e7f-9940e477e860', 'c33d618b-a759-4d2f-b5d0-bf5bc5c26d71', 'USER157'),
('af3e35ef-c283-40fa-adae-e97daea941a8', 'c33d618b-a759-4d2f-b5d0-bf5bc5c26d71', 'USER116'),
('afcbab14-7dea-4366-9706-8da60933378e', 'c33d618b-a759-4d2f-b5d0-bf5bc5c26d71', 'USER191'),
('b08d604e-aa5f-4f8a-82b8-2b7415c6da1f', 'c33d618b-a759-4d2f-b5d0-bf5bc5c26d71', 'USER263'),
('b512c37e-eac1-4f0e-987b-ff79108e3ecd', 'c33d618b-a759-4d2f-b5d0-bf5bc5c26d71', 'USER162'),
('b6624a64-a18d-4517-80cc-65997a635c68', 'c33d618b-a759-4d2f-b5d0-bf5bc5c26d71', 'USER239'),
('b7c6a1cd-ef22-45c2-a5f1-2009cf7f0881', 'c33d618b-a759-4d2f-b5d0-bf5bc5c26d71', 'USER203'),
('ba8996c9-0733-45e2-aee4-4c3b83503d6d', 'c33d618b-a759-4d2f-b5d0-bf5bc5c26d71', 'USER220'),
('baceefbe-4fd6-4e19-99c4-c2e0917a20b0', 'c33d618b-a759-4d2f-b5d0-bf5bc5c26d71', 'USER231'),
('bb571872-6c3c-4a53-a73b-36507541bb2a', 'c33d618b-a759-4d2f-b5d0-bf5bc5c26d71', 'USER189'),
('be3c496c-d5a8-4cce-9ac0-67a70deb05b2', 'c33d618b-a759-4d2f-b5d0-bf5bc5c26d71', 'USER175'),
('bec9967f-520f-4074-811d-a9fc448bb5b6', 'c33d618b-a759-4d2f-b5d0-bf5bc5c26d71', 'USER214'),
('bf987379-8d1e-4e2a-8d93-cef5d7a07091', 'c33d618b-a759-4d2f-b5d0-bf5bc5c26d71', 'USER269'),
('bfe08168-4ca2-4f2c-a13a-67eb72f29310', 'c33d618b-a759-4d2f-b5d0-bf5bc5c26d71', 'USER127'),
('c085afd1-f0e6-4abc-96ae-e27d495a2b2b', 'c33d618b-a759-4d2f-b5d0-bf5bc5c26d71', 'USER223'),
('c34c7a85-3c35-4aab-92a7-39b0f6aff85d', 'c33d618b-a759-4d2f-b5d0-bf5bc5c26d71', 'USER168'),
('c38593dd-5824-4068-b0b2-7b3fcb9eac96', 'c33d618b-a759-4d2f-b5d0-bf5bc5c26d71', 'USER152'),
('c44bc58f-93ab-4383-8d40-9fd57af8ee9d', '1ac99d1b-cee9-4c60-bb42-05e5399c883c', '4c9c07f3-b36a-417f-add1-0a0ccb740d69'),
('c63440ce-0b27-453d-87cf-a1404ac99598', 'c33d618b-a759-4d2f-b5d0-bf5bc5c26d71', 'USER178'),
('cae94c74-f472-4604-b854-fa6662179b68', 'c33d618b-a759-4d2f-b5d0-bf5bc5c26d71', 'USER183'),
('cb1dc69b-5931-4fec-9ce7-be7192201ed2', 'c33d618b-a759-4d2f-b5d0-bf5bc5c26d71', 'USER148'),
('cb56a9c0-c28f-482e-ad2b-b6bf6155468a', 'c33d618b-a759-4d2f-b5d0-bf5bc5c26d71', 'USER154'),
('cb69e6d0-d177-438f-86a7-fc299374022c', 'c33d618b-a759-4d2f-b5d0-bf5bc5c26d71', 'USER210'),
('ce597449-47cb-44ef-a7ff-c355ab4829c5', 'c33d618b-a759-4d2f-b5d0-bf5bc5c26d71', 'USER179'),
('d247c59e-e9d6-4b50-aa78-6b2e14b33f10', 'c33d618b-a759-4d2f-b5d0-bf5bc5c26d71', 'USER158'),
('d3090a40-d555-408d-8466-fdc226181839', 'c33d618b-a759-4d2f-b5d0-bf5bc5c26d71', 'USER167'),
('d4a3aa04-5e3c-4901-a6dd-2a94b8a72981', 'c33d618b-a759-4d2f-b5d0-bf5bc5c26d71', 'USER243'),
('d7f4e653-8cf3-4690-9d18-3e043b6d3a64', 'c33d618b-a759-4d2f-b5d0-bf5bc5c26d71', 'USER232'),
('d80ac43c-3839-40a9-a2fa-f57273f4d7ee', 'c33d618b-a759-4d2f-b5d0-bf5bc5c26d71', 'USER133'),
('d975783a-ed72-4a09-8896-7a3c11a94bc8', 'c33d618b-a759-4d2f-b5d0-bf5bc5c26d71', 'USER149'),
('dcc34561-33ed-4c8d-b1b0-bc50d52f72f7', 'c33d618b-a759-4d2f-b5d0-bf5bc5c26d71', 'USER204'),
('df31c8aa-c4f5-465e-ba50-d90cd1f682d6', 'c33d618b-a759-4d2f-b5d0-bf5bc5c26d71', 'USER138'),
('e113e542-e8b6-41a8-995e-61f7253d3a7e', 'c33d618b-a759-4d2f-b5d0-bf5bc5c26d71', 'USER271'),
('e181d598-f02e-4f8a-acb8-b2bb1d4d4908', 'c33d618b-a759-4d2f-b5d0-bf5bc5c26d71', 'USER221'),
('e58cbbff-d48c-47f7-88b2-0ffc643d2c87', 'c33d618b-a759-4d2f-b5d0-bf5bc5c26d71', 'USER251'),
('e6bc258e-5ab6-49e6-b7f5-84ab85b45ee4', 'c33d618b-a759-4d2f-b5d0-bf5bc5c26d71', 'USER235'),
('e8de5a63-e563-4989-b6dd-cef010d16852', 'c33d618b-a759-4d2f-b5d0-bf5bc5c26d71', 'USER173'),
('e9d36778-afe0-4f32-85d1-963693e9e742', 'c33d618b-a759-4d2f-b5d0-bf5bc5c26d71', 'USER144'),
('ea0ecda4-38a0-476d-9d8d-69dfe98f7508', '6b651276-f046-4ce9-b6d8-14bfeb42591c', 'aeef8530-4b60-4072-ac06-70c471a8764a'),
('f00756ec-87de-4d1f-9fa7-ba3dee5a31cc', 'c33d618b-a759-4d2f-b5d0-bf5bc5c26d71', 'USER180'),
('f01c3fc5-9dd6-4fa7-903c-f627ce703785', 'c33d618b-a759-4d2f-b5d0-bf5bc5c26d71', 'USER215'),
('f01c9164-9a66-44f9-bb86-07ded60a5386', 'c33d618b-a759-4d2f-b5d0-bf5bc5c26d71', 'USER219'),
('f2d76c07-23d0-44d3-abcc-fb7cb3223d2a', 'c33d618b-a759-4d2f-b5d0-bf5bc5c26d71', 'USER258'),
('f4889894-c2d4-491c-938c-852da2923d79', 'c33d618b-a759-4d2f-b5d0-bf5bc5c26d71', 'USER130'),
('f688d571-47ec-4c93-9a2d-deeceba009ff', 'c33d618b-a759-4d2f-b5d0-bf5bc5c26d71', 'USER259'),
('f7e56f49-9e34-43ad-9937-359f945d0c7c', 'c33d618b-a759-4d2f-b5d0-bf5bc5c26d71', 'USER120'),
('f88d71a3-ab64-4eec-aa35-863e4a9cc17f', 'c33d618b-a759-4d2f-b5d0-bf5bc5c26d71', 'USER185'),
('f89e67f9-22e0-43ad-98de-e119cb64d76c', 'c33d618b-a759-4d2f-b5d0-bf5bc5c26d71', 'USER174'),
('fa6d8fa1-e04b-47f9-9231-91bdb4b694b3', 'c33d618b-a759-4d2f-b5d0-bf5bc5c26d71', 'USER202'),
('fb2b6a4d-08d9-4f8b-ab20-e5f33e8852f3', 'c33d618b-a759-4d2f-b5d0-bf5bc5c26d71', 'USER156'),
('fc19b28e-afb9-4f27-8635-c12a2c6a06c5', 'c33d618b-a759-4d2f-b5d0-bf5bc5c26d71', 'USER155'),
('fcab8b90-cbe3-4e96-a1af-ea71696eaa1b', 'c33d618b-a759-4d2f-b5d0-bf5bc5c26d71', 'USER160'),
('fce78bf6-41ef-4779-b395-4da617f45ed6', 'c33d618b-a759-4d2f-b5d0-bf5bc5c26d71', 'USER238'),
('fd8aaca1-2866-49e5-8227-a5fe38e8ac1d', 'c33d618b-a759-4d2f-b5d0-bf5bc5c26d71', 'USER212');

-- --------------------------------------------------------

--
-- Struktur dari tabel `balita`
--

CREATE TABLE IF NOT EXISTS `balita` (
  `balita_id` varchar(255) NOT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `jenis_kelamin` varchar(255) DEFAULT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  `tempat_lahir` varchar(255) DEFAULT NULL,
  `ayah_userId` varchar(255) DEFAULT NULL,
  `ibu_userId` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `balita`
--

INSERT INTO `balita` (`balita_id`, `foto`, `jenis_kelamin`, `nama`, `tanggal_lahir`, `tempat_lahir`, `ayah_userId`, `ibu_userId`) VALUES
('00c54817-a7b3-414f-9ebd-d26795177b45', 'foto', 'Laki-Laki', 'Tsauqi F', '2012-11-07', 'Bandung', 'USER190', 'USER191'),
('0150260c-051f-4b5c-a84e-3bd482d9da89', 'foto', 'Laki-Laki', 'M Yusuf', '2013-06-05', 'Bandung', 'USER210', 'USER211'),
('0783500c-c0db-4085-9f0f-2ccedd26cc97', 'foto', 'Perempuan', 'Yasmin R', '2013-07-22', 'Bandung', 'USER216', 'USER217'),
('09425347-341b-478b-a8b5-95ae2ff5c4c6', 'foto', 'Perempuan', 'Adisha R', '2014-08-22', 'Bandung', 'USER130', 'USER254'),
('0961eaf2-5209-495c-abb6-899aa714ccf1', 'foto', 'Laki-Laki', 'Delfin F', '2013-01-05', 'Bandung', 'USER200', 'USER201'),
('09a9e22c-2e6e-4f37-ba01-bd6493336c94', 'foto', 'Perempuan', 'Natasya S', '2015-08-18', 'Bandung', 'USER128', 'USER129'),
('0b56c4a2-57f2-4bcb-8115-6fdca8bcfb49', 'foto', 'Perempuan', 'Hafsya I', '2014-03-11', 'Bandung', 'USER234', 'USER235'),
('0d7aa3fa-bd80-4292-9de7-1efe79b7685b', 'foto', 'Perempuan', 'Byanka Alamanda', '2013-06-13', 'Bandung', 'USER208', 'USER209'),
('12916380-5497-4cca-a2dd-cf8ca8cb2efa', 'foto', 'Laki-Laki', 'Firza Rais A', '2016-06-04', 'Bandung', 'USER152', 'USER153'),
('12fe04c6-f85b-492e-b1e2-cc79c0116d38', 'foto', 'Perempuan', 'Khansa A', '2012-10-04', 'Bandung', 'USER192', 'USER193'),
('14421b3e-152c-47c9-84d4-4fd84d605761', 'foto', 'Perempuan', 'Fitriani A', '2013-08-24', 'Bandung', 'USER218', 'USER219'),
('14abadab-fa43-4d0b-8163-68f88aa608e7', 'foto', 'Perempuan', 'Arbella Noor', '2012-10-22', 'Bandung', 'USER188', 'USER189'),
('1533613d-f34a-4ee4-8294-56914fe9f419', 'foto', 'Laki-Laki', 'Alby Fakhri', '2012-04-28', 'Bandung', 'USER168', 'USER169'),
('21763ba6-59e4-4a82-b3d1-42d77870198f', 'foto', 'Laki-Laki', 'Tsaqif M', '2015-12-01', 'Bandung', 'USER132', 'USER133'),
('28fb4a6d-86f8-4a96-8bc1-4b1806ec1087', 'foto', 'Perempuan', 'Yumna K', '2012-05-30', 'Bandung', 'USER170', 'USER171'),
('2b420e19-8586-45f2-97bf-2d0b101c7a12', 'foto', 'Laki-Laki', 'Faiz Kenzie', '2014-10-01', 'Bandung', 'USER255', 'USER256'),
('2cf79048-80cd-452d-b3c4-50c5392e31bd', 'foto', 'Perempuan', 'Riana D', '2012-10-14', 'Bandung', 'USER182', 'USER183'),
('306793bc-3bb6-4985-a943-c822eb84dbaa', 'foto', 'Perempuan', 'Nesa Aulia', '2012-11-05', 'Bandung', 'USER194', 'USER195'),
('30c25313-09de-4cfc-ac80-42b4c530c161', 'foto', 'Perempuan', 'Shayma', '2012-03-14', 'Bandung', 'USER164', 'USER165'),
('310e9933-b21e-490c-9640-637e3970615a', 'foto', 'Perempuan', 'Jingga Vicky', '2013-05-19', 'Bandung', 'USER212', 'USER213'),
('32d12bbf-84f8-4eae-a62e-b721f6e5c147', 'foto', 'Laki-Laki', 'M Syahrur R', '2015-06-23', 'Bandung', 'USER124', 'USER125'),
('3428b8e2-272a-483f-89e4-bf19fbe778a9', 'foto', 'Laki-Laki', 'Fakhira Z', '2015-08-03', 'Bandung', 'USER265', 'USER266'),
('34c7072d-066a-42d5-85b0-5ad2e7fe308c', 'foto', 'Perempuan', 'Nafisah', '2014-11-07', 'Bandung', 'USER259', 'USER260'),
('35fad228-bfd7-4510-a18a-4a01bdea58aa', 'foto', 'Perempuan', 'Diana A', '2013-05-23', 'Bandung', 'USER204', 'USER205'),
('3b7d9175-f655-4f6e-b633-d0e0201b127f', 'foto', 'Perempuan', 'Nayara Q', '2014-03-05', 'Bandung', 'USER236', 'USER237'),
('3c016a11-74dd-4f7f-8f1c-3793ba84f23f', 'foto', 'Perempuan', 'Anbia A', '2012-11-05', 'Bandung', 'USER196', 'USER197'),
('3e7e8eed-0f31-4dc4-80b4-88dbb2e73c5b', 'foto', 'Laki-Laki', 'Haikal A', '2014-05-08', 'Bandung', 'USER240', 'USER241'),
('3f33f99f-d823-43ea-8c48-fd9896149fa5', 'foto', 'Perempuan', 'Ziza Naziva', '2012-06-13', 'Bandung', 'USER172', 'USER139'),
('3f73ec6d-3451-455d-9fb7-9d1dfc0261a3', 'foto', 'Laki-Laki', 'Shafwan J Q', '2013-01-10', 'Bandung', 'USER198', 'USER199'),
('431a3884-e2b3-4b0d-be08-e37e3a8dd555', 'foto', 'Perempuan', 'Kirana P', '2014-07-25', 'Bandung', 'USER249', 'USER250'),
('45523ba4-f905-43db-98b3-e55d388180e6', 'foto', 'Perempuan', 'Halisa M', '2012-03-01', 'Bandung', 'USER162', 'USER163'),
('466a375a-a9c5-4d94-80e4-166fb4c5ef04', 'foto', 'Perempuan', 'Arista Bunga', '2016-04-11', 'Bandung', 'USER140', 'USER141'),
('47021d42-df9a-40f9-8417-5df012c25621', 'foto', 'Perempuan', 'Daiba A', '2014-01-07', 'Bandung', 'USER230', 'USER231'),
('4c28671b-dd58-421c-9c5d-8dab0266c01b', 'foto', 'Laki-Laki', 'Gumilar A', '2015-05-29', 'Bandung', 'USER126', 'USER127'),
('4deecf77-3a2b-477c-88a5-5cea2d7f8745', 'foto', 'Laki-Laki', 'Aditya N', '2012-09-18', 'Bandung', 'USER178', 'USER179'),
('4e526cdf-ab69-4771-a00a-03fe52d0ba98', 'foto', 'Perempuan', 'Anikul A', '2013-10-20', 'Bandung', 'USER222', 'USER223'),
('5029e426-0432-41ea-888c-5777dafe97c9', 'foto', 'Perempuan', 'Talita Reva', '2016-02-10', 'Bandung', 'USER136', 'USER137'),
('556fb577-ac76-47f7-9770-d61051dbcadb', 'foto', 'Laki-Laki', 'Fairel A', '2013-12-16', 'Bandung', 'USER228', 'USER229'),
('57c2cd70-3944-4523-96f3-0793c0f3ff22', 'foto', 'Perempuan', 'Dara M', '2012-10-05', 'Bandung', 'USER184', 'USER185'),
('5840c5c9-e312-43f0-83e3-e7e865d9524d', 'foto', 'Perempuan', 'Bilqis', '2014-02-03', 'Bandung', 'USER232', 'USER233'),
('5e6fe54f-610e-4d40-a00a-429deffcecbe', 'foto', 'Perempuan', 'Selpiana', '2014-05-19', 'Bandung', 'USER242', 'USER243'),
('630dc414-7a49-4441-b117-3858b48682c2', 'foto', 'Perempuan', 'Junainah Z', '2013-05-23', 'Bandung', 'USER206', 'USER207'),
('68c6eb8b-9af1-4d19-9def-0a4297feb26f', 'foto', 'Perempuan', 'Assyfa N', '2011-11-10', 'Bandung', 'USER160', 'USER161'),
('6e55076b-8fc5-4049-9bfa-b3c7d42593c3', 'foto', 'Laki-Laki', 'Dimas P', '2014-12-28', 'Bandung', 'USER261', 'USER262'),
('6f9269a0-d345-43e5-b104-ab21bae7b219', 'foto', 'Laki-Laki', 'Ervin H', '2013-07-13', 'Bandung', 'USER214', 'USER215'),
('7579a35a-dfe3-4af9-adba-a91d74b8e101', 'yy', 'Perempuan', 'yu', '2009-03-05', 'yu', '89cb5ac8-6086-4ff7-8083-51e94dcb4c10', 'aeef8530-4b60-4072-ac06-70c471a8764a'),
('774e2a16-dbac-4daf-94c2-e7c687feef73', 'foto', 'Perempuan', 'Nadhifa C', '2016-06-09', 'Bandung', 'USER150', 'USER151'),
('7b4fac8f-a155-424b-b086-b6e3622d40e4', 'foto', 'Laki-Laki', 'Faiq N', '2013-12-27', 'Bandung', 'USER224', 'USER225'),
('885cbba7-2e8e-4057-a9fc-ae5bffb1c3f4', 'foto', 'Laki-Laki', 'Fadil Eka ', '2012-10-20', 'Bandung', 'USER271', 'USER270'),
('95535e4a-0c18-4197-90a9-ed7ca4b82467', 'foto', 'Laki-Laki', 'Daaris R', '2012-10-05', 'Bandung', 'USER180', 'USER151'),
('97625b14-1e43-44ce-9acf-6096026a74e1', 'foto', 'Perempuan', 'Hasna S', '2015-05-27', 'Bandung', 'USER122', 'USER123'),
('990e035d-f92a-4461-849e-879a3b07acd8', 'foto', 'Laki-Laki', 'Rizkya', '2012-07-22', 'Bandung', 'USER174', 'USER163'),
('9b0945d4-dcd2-4f71-9100-58f92ab011eb', 'foto', 'Laki-Laki', 'Al-Amru S', '2014-04-02', 'Bandung', 'USER238', 'USER239'),
('9b7c7901-8276-4741-9041-4033a7dd2b3f', 'foto', 'Perempuan', 'Nazepa', '2012-05-05', 'Bandung', 'USER166', 'USER167'),
('9e177a6a-a2a3-46bc-9197-cb99b3a54085', 'd', 'Laki-Laki', 'dd', '2016-06-15', 'dd', 'USER117', 'dedc104d-2916-4299-9c8a-e4abd70c5e31'),
('a326c2b5-26cc-4eb9-8c63-57df7e02d9be', 'foto', 'Laki-Laki', 'Soni S', '2014-05-15', 'Bandung', 'USER244', 'dedc104d-2916-4299-9c8a-e4abd70c5e31'),
('a4bee505-ff95-42e9-b48e-67dbaef44851', 'foto', 'Laki-Laki', 'Lingga Nicky', '2013-05-19', 'Bandung', 'USER212', 'USER213'),
('a56715c2-1cee-4267-ac6f-01209b0e6a67', 'foto', 'Laki-Laki', 'Rizki Banyu', '2016-03-25', 'Bandung', 'USER142', 'USER143'),
('a7730737-6e4e-4e10-9f44-f16c6f66700b', 'foto', 'Perempuan', 'Amira A', '2013-10-25', 'Bandung', 'USER220', 'USER221'),
('a9319f80-e5d2-4bcc-9ee9-298ec901330c', 'foto', 'Laki-Laki', 'Arka Putra', '2015-09-14', 'Bandung', 'USER130', 'USER131'),
('aa9c8fdf-3a13-4343-81c8-23226d55d779', 'ss', 'Perempuan', 'balitaku', '2015-11-11', '2332', 'USER117', 'dedc104d-2916-4299-9c8a-e4abd70c5e31'),
('b3574337-47d3-43b1-ab4d-3fe87cd7dce8', 'foto', 'Laki-Laki', 'M Athar M', '2014-06-26', 'Bandung', 'USER146', 'USER248'),
('b6f4da3f-105b-4336-9858-c7d25f7a904c', 'foto', 'Laki-Laki', 'Maulana Ibrahim', '2011-11-23', 'Bandung', 'USER124', 'USER125'),
('ba12e94c-ea5b-4a2e-b5b9-99e0fa26ca5e', 'foto', 'Laki-Laki', 'Anjar S', '2013-12-14', 'Bandung', 'USER226', 'USER227'),
('ba3c1c4e-0f36-4729-b55d-3c4c70587b89', 'foto', 'Perempuan', 'Habibah', '2012-08-05', 'Bandung', 'USER176', 'USER177'),
('bb215c31-d524-4644-9a1f-970954fecb0d', 'foto', 'Perempuan', 'Naila Inara', '2016-04-18', 'Bandung', 'USER144', 'USER145'),
('ca2c1844-4a41-467a-a9c6-77e633071305', 'foto', 'Laki-Laki', 'Ibrahim H', '2014-06-29', 'Bandung', 'USER245', 'USER246'),
('cc2d640b-e6b8-4772-b848-f6c83339d39e', 'foto', 'Laki-Laki', 'Fabian G', '2013-04-22', 'Bandung', 'USER202', 'USER203'),
('d072b260-ac8d-43c1-b69c-b86fa86566c1', 'foto', 'Laki-Laki', 'M Farrel', '2014-10-02', 'Bandung', 'USER257', 'USER258'),
('d1ee4839-2fe9-499b-a83a-d9248632c91a', 'foto', 'Perempuan', 'Qonita H', '2015-04-02', 'Bandung', 'USER267', 'USER268'),
('d21e2552-ec62-4894-abb0-ddf1debbc89c', 'foto', 'Perempuan', 'Putri', '2016-08-03', 'Bandung', 'USER146', 'USER147'),
('da5c0e58-c2a9-4514-970a-e8276c56fe71', 'foto', 'Perempuan', 'Syakilla R', '2016-06-29', 'Bandung', 'USER156', 'USER157'),
('e17502e4-2802-45f2-bb73-be903bf30659', 'foto', 'Laki-Laki', 'Dzan Byiqi', '2015-02-20', 'Bandung', 'USER208', 'USER209'),
('e7c7b4c7-3b24-4706-ba2d-08ffd14c8c41', 'foto', 'Laki-Laki', 'Karima A K', '2011-09-21', 'Bandung', 'USER148', 'USER149'),
('e8cc6245-850a-4289-a46c-9baf975b2009', 'foto', 'Laki-Laki', 'Fairel R. C', '2016-05-03', 'Bandung', 'USER148', 'USER149'),
('f05d19fd-7156-4d34-83a6-23d164b2c337', 'foto', 'Laki-Laki', 'Rafka H', '2014-08-08', 'Bandung', 'USER251', 'USER252'),
('f16e6f42-69f0-4693-896a-c622382acc75', 'foto', 'Laki-Laki', 'Rehan A', '2012-05-04', 'Bandung', 'USER146', 'USER147'),
('f24b69e1-720e-48b4-9efe-a07298f73a4d', 'foto', 'Perempuan', 'Citra Dewi', '2016-03-04', 'Bandung', 'USER138', 'USER139'),
('f58d3ec2-ef2f-4413-b113-45067f84530c', 'foto', 'Perempuan', 'Nabila ', '2016-06-29', 'Bandung', 'USER154', 'USER155'),
('fc12ae41-bc0e-4a7f-980b-bb76f551f000', 'foto', 'Perempuan', 'Anindya W', '2015-01-31', 'Bandung', 'USER263', 'USER264'),
('fdcfcd30-747b-4030-b069-6d7bb9dbaa08', 'foto', 'Laki-Laki', 'Radit T', '2012-10-15', 'Bandung', 'USER186', 'USER187'),
('fe74f26c-77d1-4865-a950-aaf807116fbc', 'foto', 'Laki-Laki', 'Daffa Faruq', '2015-12-07', 'Bandung', 'USER134', 'USER135');

-- --------------------------------------------------------

--
-- Struktur dari tabel `berat`
--

CREATE TABLE IF NOT EXISTS `berat` (
  `berat_id` varchar(255) NOT NULL,
  `berat_balita` float NOT NULL,
  `tanggal_posyandu` date DEFAULT NULL,
  `id_balita` varchar(255) DEFAULT NULL,
  `umur` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `berat`
--

INSERT INTO `berat` (`berat_id`, `berat_balita`, `tanggal_posyandu`, `id_balita`, `umur`) VALUES
('03f30945-8c68-4162-980c-6ed569a141a0', 4.2, NULL, 'aa9c8fdf-3a13-4343-81c8-23226d55d779', '3'),
('09c4f13f-38a4-490e-9bb4-bae8de5cb8aa', 7, NULL, '9e177a6a-a2a3-46bc-9197-cb99b3a54085', '8'),
('4aff4524-c1e8-4c1e-8ebc-6e26cc84ebc5', 18.6, NULL, 'aa9c8fdf-3a13-4343-81c8-23226d55d779', '24'),
('66bebefc-1b36-46c6-848c-c34ae5874b8c', 8, NULL, '9e177a6a-a2a3-46bc-9197-cb99b3a54085', '6'),
('afaf0d93-1829-4b0b-bcde-f108c448e3d0', 44, '2016-07-03', 'aa9c8fdf-3a13-4343-81c8-23226d55d779', '9'),
('bea1e621-3f77-4cba-8dfa-ab9b50531262', 8, NULL, '9e177a6a-a2a3-46bc-9197-cb99b3a54085', '4'),
('c31e632a-95a5-45e5-973a-09b4dcb86238', 14.8, NULL, 'aa9c8fdf-3a13-4343-81c8-23226d55d779', '23'),
('c73dc455-585b-481c-8c32-44427e43026a', 8.2, NULL, '9e177a6a-a2a3-46bc-9197-cb99b3a54085', '10'),
('d1756d0d-f2e4-49a7-bf85-9c27a9b35836', 10, NULL, '9e177a6a-a2a3-46bc-9197-cb99b3a54085', '39'),
('d86d5892-ea8e-4f62-a08e-b73c705947a1', 6.3, NULL, 'aa9c8fdf-3a13-4343-81c8-23226d55d779', '7'),
('f58c78a6-884a-4ffb-94a3-e311559aff97', 55, NULL, '9e177a6a-a2a3-46bc-9197-cb99b3a54085', '61');

-- --------------------------------------------------------

--
-- Struktur dari tabel `beratbadanpanjang`
--

CREATE TABLE IF NOT EXISTS `beratbadanpanjang` (
  `id` varchar(255) NOT NULL,
  `jenis_kelamin` varchar(255) DEFAULT NULL,
  `median` float NOT NULL,
  `minus1sd` float NOT NULL,
  `minus2sd` float NOT NULL,
  `minus3sd` float NOT NULL,
  `plus1sd` float NOT NULL,
  `plus2sd` float NOT NULL,
  `plus3sd` float NOT NULL,
  `panjang` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `beratbadanpanjang`
--

INSERT INTO `beratbadanpanjang` (`id`, `jenis_kelamin`, `median`, `minus1sd`, `minus2sd`, `minus3sd`, `plus1sd`, `plus2sd`, `plus3sd`, `panjang`) VALUES
('1', 'Laki-Laki', 2.4, 2.2, 2, 1.9, 2.7, 3, 3.3, 45),
('10', 'Laki-Laki', 3.2, 3, 2.7, 2.5, 3.5, 3.9, 4.3, 49.5),
('100', 'Laki-Laki', 13.8, 12.7, 11.8, 10.9, 14.9, 16.3, 17.7, 94.5),
('101', 'Laki-Laki', 13.9, 12.8, 11.9, 11, 15.1, 16.4, 17.9, 95),
('102', 'Laki-Laki', 14, 12.9, 12, 11.1, 15.2, 16.5, 18, 95.5),
('103', 'Laki-Laki', 14.1, 13.1, 12.1, 11.2, 15.3, 16.7, 18.2, 96),
('104', 'Laki-Laki', 14.3, 13.2, 12.2, 11.3, 15.5, 16.8, 18.4, 96.5),
('105', 'Laki-Laki', 14.4, 13.3, 12.3, 11.4, 15.6, 17, 18.5, 97),
('106', 'Laki-Laki', 14.5, 13.4, 12.4, 11.5, 15.7, 17.1, 18.7, 97.5),
('107', 'Laki-Laki', 14.6, 13.5, 12.5, 11.6, 15.9, 17.3, 18.9, 98),
('108', 'Laki-Laki', 14.8, 13.6, 12.6, 11.7, 16, 17.5, 19.1, 98.5),
('109', 'Laki-Laki', 14.9, 13.7, 12.7, 11.8, 16.2, 17.6, 19.2, 99),
('11', 'Laki-Laki', 3.3, 3, 2.8, 2.6, 3.6, 4, 4.4, 50),
('110', 'Laki-Laki', 15, 13.9, 12.8, 11.9, 16.3, 17.8, 19.4, 99.5),
('111', 'Laki-Laki', 15.2, 14, 12.9, 12, 16.5, 18, 19.6, 100),
('112', 'Laki-Laki', 15.3, 14.1, 13, 12.1, 16.6, 18.1, 19.8, 100.5),
('113', 'Laki-Laki', 15.4, 14.2, 13.2, 12.2, 16.8, 18.3, 20, 101),
('114', 'Laki-Laki', 15.6, 14.4, 13.3, 12.3, 16.9, 18.5, 20.2, 101.5),
('115', 'Laki-Laki', 15.7, 14.5, 13.4, 12.4, 17.1, 18.7, 20.4, 102),
('116', 'Laki-Laki', 15.9, 14.6, 13.5, 12.5, 17.3, 18.8, 20.6, 102.5),
('117', 'Laki-Laki', 16, 14.8, 13.6, 12.6, 17.4, 19, 20.8, 103),
('118', 'Laki-Laki', 16.2, 14.9, 13.7, 12.7, 17.6, 19.2, 21, 103.5),
('119', 'Laki-Laki', 16.3, 15, 13.9, 12.8, 17.8, 19.4, 21.2, 104),
('12', 'Laki-Laki', 3.4, 3.1, 2.9, 2.7, 3.8, 4.1, 4.5, 50.5),
('120', 'Laki-Laki', 16.5, 15.2, 14, 12.9, 17.9, 19.6, 21.5, 104.5),
('121', 'Laki-Laki', 16.6, 15.3, 14.1, 13, 18.1, 19.8, 21.7, 105),
('122', 'Laki-Laki', 16.8, 15.4, 14.2, 13.2, 18.3, 20, 21.9, 105.5),
('123', 'Laki-Laki', 16.9, 15.6, 14.4, 13.3, 18.5, 20.2, 22.1, 106),
('124', 'Laki-Laki', 17.1, 15.7, 14.5, 13.4, 18.6, 20.4, 22.4, 106.5),
('125', 'Laki-Laki', 17.3, 15.9, 14.6, 13.5, 18.8, 20.6, 22.6, 107),
('126', 'Laki-Laki', 17.4, 16, 14.7, 13.6, 19, 20.8, 22.8, 107.5),
('127', 'Laki-Laki', 17.6, 16.2, 14.9, 13.7, 19.2, 21, 23.1, 108),
('128', 'Laki-Laki', 17.8, 16.3, 15, 13.8, 19.4, 21.1, 23.3, 108.5),
('129', 'Laki-Laki', 17.9, 16.5, 15.1, 14, 19.6, 21.4, 23.6, 109),
('13', 'Laki-Laki', 3.5, 3.2, 3, 2.7, 3.9, 4.2, 4.7, 51),
('130', 'Laki-Laki', 18.1, 16.6, 15.3, 14.1, 19.8, 21.7, 23.8, 109.5),
('131', 'Laki-Laki', 18.3, 16.8, 15.4, 14.2, 20, 21.9, 24.1, 110),
('132', 'Perempuan', 2.5, 2.3, 2.1, 1.9, 2.7, 3, 3.3, 45),
('133', 'Perempuan', 2.5, 2.3, 2.1, 2, 2.8, 3.1, 3.4, 45.5),
('134', 'Perempuan', 2.6, 2.4, 2.2, 2, 2.9, 3.2, 3.5, 46),
('135', 'Perempuan', 2.7, 2.5, 2.3, 2.1, 3, 3.3, 3.6, 46.5),
('136', 'Perempuan', 2.8, 2.6, 2.4, 2.2, 3.1, 3.4, 3.7, 47),
('137', 'Perempuan', 2.9, 2.6, 2.4, 2.2, 3.2, 3.5, 3.8, 47.5),
('138', 'Perempuan', 3, 2.7, 2.5, 2.3, 3.3, 3.6, 4, 48),
('139', 'Perempuan', 3.1, 2.8, 2.6, 2.4, 3.4, 3.7, 4.1, 48.5),
('14', 'Laki-Laki', 3.6, 3.3, 3.1, 2.8, 4, 4.4, 4.8, 51.5),
('140', 'Perempuan', 3.2, 2.9, 2.6, 2.4, 3.5, 3.8, 4.2, 49),
('141', 'Perempuan', 3.3, 3, 2.7, 2.5, 3.6, 3.9, 4.3, 49.5),
('142', 'Perempuan', 3.4, 3.1, 2.8, 2.6, 3.7, 4, 4.5, 50),
('143', 'Perempuan', 3.5, 3.2, 2.9, 2.7, 3.8, 4.2, 4.6, 50.5),
('144', 'Perempuan', 3.6, 3.3, 3, 2.8, 3.9, 4.3, 4.8, 51),
('145', 'Perempuan', 3.7, 3.4, 3.1, 2.8, 4, 4.4, 4.9, 51.5),
('146', 'Perempuan', 3.8, 3.5, 3.2, 2.9, 4.2, 4.6, 5.1, 52),
('147', 'Perempuan', 3.9, 3.6, 3.3, 3, 4.3, 4.7, 5.2, 52.5),
('148', 'Perempuan', 4, 3.7, 3.4, 3.1, 4.4, 4.9, 5.4, 53),
('149', 'Perempuan', 4.2, 3.8, 3.5, 3.2, 4.6, 5, 5.5, 53.5),
('15', 'Laki-Laki', 3.8, 3.5, 3.2, 2.9, 4.1, 4.5, 5, 52),
('150', 'Perempuan', 4.3, 3.9, 3.6, 3.3, 4.7, 5.2, 5.7, 54),
('151', 'Perempuan', 4.4, 4, 3.7, 3.4, 4.8, 5.3, 5.9, 54.5),
('152', 'Perempuan', 4.5, 4.2, 3.8, 3.5, 5, 5.5, 6.1, 55),
('153', 'Perempuan', 4.7, 4.3, 3.9, 3.6, 5.1, 5.7, 6.3, 55.5),
('154', 'Perempuan', 4.8, 4.4, 4, 3.7, 5.3, 5.8, 6.4, 56),
('155', 'Perempuan', 5, 4.5, 4.1, 3.8, 5.4, 6, 6.6, 56.5),
('156', 'Perempuan', 5.1, 4.6, 4.3, 3.9, 5.6, 6.1, 6.8, 57),
('157', 'Perempuan', 5.2, 4.8, 4.4, 4, 5.7, 6.3, 7, 57.5),
('158', 'Perempuan', 5.4, 4.9, 4.5, 4.1, 5.9, 6.5, 7.1, 58),
('159', 'Perempuan', 5.5, 5, 4.6, 4.2, 6, 6.6, 7.3, 58.5),
('16', 'Laki-Laki', 3.9, 3.6, 3.3, 3, 4.2, 4.6, 5.1, 52.5),
('160', 'Perempuan', 5.6, 5.1, 4.7, 4.3, 6.2, 6.8, 7.5, 59),
('161', 'Perempuan', 5.7, 5.3, 4.8, 4.4, 6.3, 6.4, 7.7, 59.5),
('162', 'Perempuan', 5.9, 5.4, 4.9, 4.5, 6.4, 7.1, 7.8, 60),
('163', 'Perempuan', 6, 5.5, 5, 4.6, 6.6, 7.3, 8, 60.5),
('164', 'Perempuan', 6.1, 5.6, 5.1, 4.7, 6.7, 7.4, 8.2, 61),
('165', 'Perempuan', 6.3, 5.7, 5.2, 4.8, 6.9, 7.6, 8.4, 61.5),
('166', 'Perempuan', 6.4, 5.8, 5.3, 4.9, 7, 7.7, 8.5, 62),
('167', 'Perempuan', 6.5, 5.9, 5.4, 5, 7.1, 7.8, 8.7, 62.5),
('168', 'Perempuan', 6.6, 6, 5.5, 5.1, 7.3, 8, 8.8, 63),
('169', 'Perempuan', 6.7, 6.2, 5.6, 5.2, 7.4, 8.1, 9, 63.5),
('17', 'Laki-Laki', 4, 3.7, 3.4, 3.1, 4.4, 4.8, 5.3, 53),
('170', 'Perempuan', 6.9, 6.3, 5.7, 5.3, 7.5, 8.3, 9.1, 64),
('171', 'Perempuan', 7, 6.4, 5.8, 5.4, 7.6, 8.4, 9.3, 64.5),
('172', 'Perempuan', 7.1, 6.5, 5.9, 5.5, 7.8, 8.6, 9.5, 65),
('173', 'Perempuan', 7.2, 6.6, 6, 5.5, 7.9, 8.7, 9.6, 65.5),
('174', 'Perempuan', 7.3, 6.7, 6.1, 5.6, 8, 8.8, 9.8, 66),
('175', 'Perempuan', 7.4, 6.8, 6.2, 5.7, 8.1, 9, 9.9, 66.5),
('176', 'Perempuan', 7.5, 6.9, 6.3, 5.8, 8.3, 9.1, 10, 67),
('177', 'Perempuan', 7.6, 7, 6.4, 5.9, 8.4, 9.2, 10.2, 67.5),
('178', 'Perempuan', 7.7, 7.1, 6.5, 6, 8.5, 9.4, 10.3, 68),
('179', 'Perempuan', 7.9, 7.2, 6.6, 6.1, 8.6, 9.5, 10.5, 68.5),
('18', 'Laki-Laki', 4.1, 3.8, 3.5, 3.2, 4.5, 4.9, 5.4, 53.5),
('180', 'Perempuan', 8, 7.3, 6.7, 6.1, 8.7, 9.6, 10.6, 69),
('181', 'Perempuan', 8.1, 7.4, 6.8, 6.2, 8.8, 9.7, 10.7, 69.5),
('182', 'Perempuan', 8.2, 7.5, 6.9, 6.3, 9, 9.9, 10.9, 70),
('183', 'Perempuan', 8.3, 7.6, 6.9, 6.4, 9.1, 10, 11, 70.5),
('184', 'Perempuan', 8.4, 7.7, 7, 6.5, 9.2, 10.1, 11.1, 71),
('185', 'Perempuan', 8.5, 7.7, 7.1, 6.5, 9.3, 10.2, 11.3, 71.5),
('186', 'Perempuan', 8.6, 7.8, 7.2, 6.6, 9.4, 10.3, 11.4, 72),
('187', 'Perempuan', 8.7, 7.9, 7.3, 6.7, 9.5, 10.5, 11.5, 72.5),
('188', 'Perempuan', 8.8, 8, 7.4, 6.8, 9.6, 10.6, 11.7, 73),
('189', 'Perempuan', 8.9, 8.1, 7.4, 6.9, 9.7, 10.7, 11.8, 73.5),
('19', 'Laki-Laki', 4.3, 3.9, 3.6, 3.3, 4.7, 5.1, 5.6, 54),
('190', 'Perempuan', 9, 8.2, 7.5, 6.9, 9.8, 10.8, 11.9, 74),
('191', 'Perempuan', 9.1, 8.3, 7.6, 7, 9.9, 10.9, 12, 74.5),
('192', 'Perempuan', 9.1, 8.4, 7.7, 7.1, 10, 11, 12.2, 75),
('193', 'Perempuan', 9.2, 8.5, 7.8, 7.1, 10.1, 11.1, 12.3, 75.5),
('194', 'Perempuan', 9.3, 8.5, 7.8, 7.2, 10.2, 11.2, 12.4, 76),
('195', 'Perempuan', 9.4, 8.6, 7.9, 7.3, 10.3, 11.4, 12.5, 76.5),
('196', 'Perempuan', 9.5, 8.7, 8, 7.4, 10.4, 11.5, 12.6, 77),
('197', 'Perempuan', 9.6, 8.8, 8.1, 7.4, 10.5, 11.6, 12.8, 77.5),
('198', 'Perempuan', 9.7, 8.9, 8.2, 7.5, 10.6, 11.7, 12.9, 78),
('199', 'Perempuan', 9.8, 9, 8.2, 7.6, 10.7, 11.8, 13, 78.5),
('2', 'Laki-Laki', 2.5, 2.3, 2.1, 1.9, 2.8, 3.1, 3.4, 45.5),
('20', 'Laki-Laki', 4.4, 4, 3.7, 3.4, 4.8, 5.3, 5.8, 54.5),
('200', 'Perempuan', 9.9, 9.1, 8.3, 7.7, 10.8, 11.9, 13.1, 79),
('201', 'Perempuan', 10, 9.1, 8.4, 7.7, 10.9, 12, 13.3, 79.5),
('202', 'Perempuan', 10.1, 9.2, 8.5, 7.8, 11, 12.1, 13.4, 80),
('203', 'Perempuan', 10.2, 9.3, 8.6, 7.9, 11.2, 12.3, 13.5, 80.5),
('204', 'Perempuan', 10.3, 9.4, 8.7, 8, 11.3, 12.4, 13.7, 81),
('205', 'Perempuan', 10.4, 9.5, 8.8, 8.1, 11.4, 12.5, 13.8, 81.5),
('206', 'Perempuan', 10.5, 9.6, 8.8, 8.1, 11.5, 12.6, 13.9, 82),
('207', 'Perempuan', 10.6, 9.7, 8.9, 8.2, 11.6, 12.8, 14.1, 82.5),
('208', 'Perempuan', 10.7, 9.8, 9, 8.3, 11.8, 12.9, 14.2, 83),
('209', 'Perempuan', 10.9, 9.9, 9.1, 8.4, 11.9, 13.1, 14.4, 83.5),
('21', 'Laki-Laki', 4.5, 4.2, 3.8, 3.6, 5, 5.4, 6, 55),
('210', 'Perempuan', 11, 10.1, 9.2, 8.5, 12, 13.2, 14.5, 84),
('211', 'Perempuan', 11.1, 10.2, 9.3, 8.6, 12.1, 13.3, 14.7, 84.5),
('212', 'Perempuan', 11.2, 10.3, 9.4, 8.7, 12.3, 13.5, 17.9, 85),
('213', 'Perempuan', 11.3, 10.4, 9.5, 8.8, 12.4, 13.6, 15, 85.5),
('214', 'Perempuan', 11.5, 10.5, 9.7, 8.9, 12.6, 13.8, 15.2, 86),
('215', 'Perempuan', 11.6, 10.6, 9.8, 9, 12.7, 13.9, 15.4, 86.5),
('216', 'Perempuan', 11.7, 10.7, 9.9, 9.1, 12.8, 14.1, 15.5, 87),
('217', 'Perempuan', 11.8, 10.9, 10, 9.2, 13, 14.2, 15.7, 87.5),
('218', 'Perempuan', 12, 11, 10.1, 9.3, 13.7, 14.4, 15.9, 88),
('219', 'Perempuan', 12.1, 11.1, 10.2, 9.4, 13.2, 14.5, 16, 88.5),
('22', 'Laki-Laki', 4.7, 4.3, 4, 3.7, 5.1, 5.6, 6.1, 55.5),
('220', 'Perempuan', 12.2, 11.2, 10.3, 9.5, 13.4, 14.7, 16.2, 89),
('221', 'Perempuan', 12.3, 11.3, 10.4, 9.6, 13.5, 14.8, 16.4, 89.5),
('222', 'Perempuan', 12.5, 11.4, 10.5, 9.7, 13.7, 15, 16.5, 90),
('223', 'Perempuan', 12.6, 11.5, 10.6, 9.8, 13.8, 15.1, 16.7, 90.5),
('224', 'Perempuan', 12.7, 11.7, 10.7, 9.9, 13.9, 15.3, 16.9, 91),
('225', 'Perempuan', 12.8, 11.8, 10.8, 10, 14.1, 15.5, 17, 91.5),
('226', 'Perempuan', 13, 11.9, 10.9, 10.1, 14.2, 15.6, 17.2, 92),
('227', 'Perempuan', 13.1, 12, 11, 10.1, 14.3, 15.8, 17.4, 92.5),
('228', 'Perempuan', 13.2, 12.1, 11.1, 10.2, 14.5, 15.9, 17.5, 93),
('229', 'Perempuan', 13.3, 12.2, 11.2, 10.3, 14.6, 16.1, 17.7, 93.5),
('23', 'Laki-Laki', 4.8, 4.4, 4.1, 3.8, 5.9, 5.8, 6.3, 56),
('230', 'Perempuan', 13.5, 12.3, 11.3, 10.5, 14.7, 16.2, 17.9, 94),
('231', 'Perempuan', 13.6, 12.4, 11.4, 10.5, 14.9, 16.4, 18, 94.5),
('232', 'Perempuan', 13.7, 12.6, 11.5, 10.6, 15, 16.5, 18.2, 95),
('233', 'Perempuan', 13.8, 12.7, 11.6, 10.7, 15.2, 16.7, 18.4, 95.5),
('234', 'Perempuan', 14, 12.8, 11.7, 10.8, 15.3, 16.8, 18.6, 96),
('235', 'Perempuan', 14.1, 12.9, 11.8, 10.9, 15.4, 17, 18.7, 96.5),
('236', 'Perempuan', 14.2, 13, 12, 11, 15.6, 17.1, 18.9, 97),
('237', 'Perempuan', 14.4, 13.1, 12.1, 11.1, 15.7, 17.3, 19.1, 97.5),
('238', 'Perempuan', 14.5, 13.3, 12.2, 11.2, 15.9, 17.5, 19.3, 98),
('239', 'Perempuan', 14.6, 13.4, 12.3, 11.3, 16, 17.6, 19.5, 98.5),
('24', 'Laki-Laki', 5, 4.6, 4.2, 3.9, 5.4, 5.9, 6.5, 56.5),
('240', 'Perempuan', 14.8, 13.5, 12.4, 11.4, 16.2, 17.8, 19.6, 99),
('241', 'Perempuan', 14.9, 13.6, 12.5, 11.5, 16.3, 18, 19.8, 99.5),
('242', 'Perempuan', 15, 13.7, 12.6, 11.6, 16.5, 18.1, 20, 100),
('243', 'Perempuan', 15.2, 13.9, 12.7, 11.7, 16.6, 18.3, 20.2, 100.5),
('244', 'Perempuan', 15.3, 14, 12.8, 11.8, 16.8, 18.5, 20.4, 101),
('245', 'Perempuan', 15.5, 14.1, 13, 11.9, 17, 18.7, 20.6, 101.5),
('246', 'Perempuan', 15.6, 14.3, 13.1, 12, 17.1, 18.9, 20.8, 102),
('247', 'Perempuan', 15.8, 14.4, 13.2, 12.1, 17.3, 19, 21, 102.5),
('248', 'Perempuan', 15.9, 14.5, 13.3, 12.3, 17.5, 19.2, 21.3, 103),
('249', 'Perempuan', 16.1, 14.7, 13.5, 12.4, 17.6, 19.4, 21.5, 103.5),
('25', 'Laki-Laki', 5.1, 4.7, 4.3, 4, 5.6, 6.1, 6.7, 57),
('250', 'Perempuan', 16.2, 14.8, 13.6, 12.5, 17.8, 19.6, 21.7, 104),
('251', 'Perempuan', 16.4, 15, 13.7, 12.6, 18, 19.8, 21.9, 104.5),
('252', 'Perempuan', 16.5, 15.1, 13.8, 12.7, 18.2, 20, 22.2, 105),
('253', 'Perempuan', 16.7, 15.3, 14, 12.8, 18.4, 20.2, 22.4, 105.5),
('254', 'Perempuan', 16.9, 15.4, 14.1, 13, 18.5, 20.5, 22.6, 106),
('255', 'Perempuan', 17.1, 15.6, 14.3, 13.1, 18.7, 20.7, 22.9, 106.5),
('256', 'Perempuan', 17.2, 15.7, 174.4, 13.2, 18.9, 20.9, 23.1, 107),
('257', 'Perempuan', 17.4, 15.9, 14.5, 13.3, 19.1, 21.1, 23.4, 107.5),
('258', 'Perempuan', 17.6, 16, 14.7, 13.5, 19.3, 21.3, 23.6, 108),
('259', 'Perempuan', 17.8, 16.2, 14.8, 13.6, 19.5, 21.6, 23.9, 108.5),
('26', 'Laki-Laki', 5.3, 4.9, 4.5, 4.1, 5.7, 6.3, 6.9, 57.5),
('260', 'Perempuan', 18, 16.4, 15, 13.7, 19.7, 21.8, 24.2, 109),
('261', 'Perempuan', 18.1, 16.5, 15.1, 13.9, 20, 22, 24.4, 109.5),
('262', 'Perempuan', 18.3, 16.7, 15.3, 14, 20.2, 22.3, 24.7, 110),
('27', 'Laki-Laki', 5.4, 5, 4.6, 4.3, 5.9, 6.4, 7.1, 58),
('28', 'Laki-Laki', 5.6, 5.1, 4.7, 4.4, 6.1, 6.6, 8.2, 58.5),
('29', 'Laki-Laki', 5.7, 5.3, 4.8, 4.5, 6.2, 6.8, 7.4, 59),
('3', 'Laki-Laki', 2.6, 2.4, 2.2, 2, 2.9, 3.1, 3.5, 46),
('30', 'Laki-Laki', 5.9, 5.4, 5, 4.6, 6.4, 7, 4.6, 59.5),
('31', 'Laki-Laki', 6, 5.5, 5.1, 4.7, 6.5, 7.1, 7.8, 60),
('32', 'Laki-Laki', 6.1, 5.6, 5.2, 4.8, 6.7, 7.3, 8, 60.5),
('33', 'Laki-Laki', 6.3, 5.8, 5.3, 4.9, 6.8, 7.4, 8.1, 61),
('34', 'Laki-Laki', 6.4, 5.9, 5.4, 5, 7, 7.6, 8.3, 61.5),
('35', 'Laki-Laki', 6.5, 6, 5.6, 5.1, 7.1, 7.7, 8.5, 62),
('36', 'Laki-Laki', 6.7, 6.1, 5.7, 5.2, 7.2, 7.9, 8.6, 62.5),
('37', 'Laki-Laki', 6.8, 6.2, 5.8, 5.3, 7.4, 8, 8.8, 63),
('38', 'Laki-Laki', 6.9, 6.4, 5.9, 5.4, 7.5, 8.2, 8.9, 63.5),
('39', 'Laki-Laki', 7, 6.5, 6, 5.5, 7.6, 8.3, 9.1, 64),
('4', 'Laki-Laki', 2.7, 2.5, 2.3, 2.1, 3, 3.2, 3.6, 46.5),
('40', 'Laki-Laki', 7.1, 6.6, 6.1, 5.6, 7.8, 8.5, 9.3, 64.5),
('41', 'Laki-Laki', 7.3, 6.7, 6.2, 5.7, 7.9, 8.6, 9.4, 65),
('42', 'Laki-Laki', 7.4, 6.8, 6.3, 5.8, 8, 8.7, 9.6, 65.5),
('43', 'Laki-Laki', 7.5, 6.9, 6.4, 5.9, 8.2, 8.9, 9.7, 66),
('44', 'Laki-Laki', 7.6, 7, 6.5, 6, 8.3, 9, 9.9, 66.5),
('45', 'Laki-Laki', 7.7, 7.1, 6.6, 6.1, 8.4, 9.2, 10, 67),
('46', 'Laki-Laki', 7.9, 7.2, 6.7, 6.2, 8.5, 9.3, 10.2, 67.5),
('47', 'Laki-Laki', 8, 7.3, 6.8, 6.3, 8.7, 9.4, 10.3, 68),
('48', 'Laki-Laki', 8.1, 7.5, 6.9, 6.4, 8.8, 9.6, 10.5, 68.5),
('49', 'Laki-Laki', 8.2, 7.6, 7, 6.5, 8.9, 9.7, 10.6, 69),
('5', 'Laki-Laki', 2.8, 2.5, 2.3, 2.1, 3, 3.3, 3.7, 47),
('50', 'Laki-Laki', 8.3, 7.7, 7.1, 6.6, 9, 9.8, 10.8, 69.5),
('51', 'Laki-Laki', 8.4, 7.8, 7.2, 6.6, 9.2, 10, 10.9, 70),
('52', 'Laki-Laki', 8.5, 7.9, 7.3, 6.7, 9.3, 10.1, 11.1, 70.5),
('53', 'Laki-Laki', 8.6, 8, 7.4, 6.8, 9.4, 10.2, 11.2, 71),
('54', 'Laki-Laki', 8.8, 8.1, 7.5, 6.9, 9.5, 10.4, 11.3, 71.5),
('55', 'Laki-Laki', 8.9, 8.2, 7.6, 7, 9.6, 10.5, 11.5, 72),
('56', 'Laki-Laki', 9, 8.3, 7.6, 7.1, 9.8, 10.6, 11.6, 72.5),
('57', 'Laki-Laki', 9.1, 8.4, 7.7, 7.2, 9.9, 10.8, 11.8, 73),
('58', 'Laki-Laki', 9.2, 8.5, 7.8, 7.2, 10, 10.9, 11.9, 73.5),
('59', 'Laki-Laki', 9.3, 8.6, 7.9, 7.3, 10.1, 11, 12.1, 74),
('6', 'Laki-Laki', 2.9, 2.6, 2.4, 2.2, 3.1, 3.4, 3.8, 47.5),
('60', 'Laki-Laki', 9.4, 8.7, 8, 7.4, 10.1, 11.2, 12.2, 74.5),
('61', 'Laki-Laki', 9.5, 8.8, 8.1, 7.5, 10.2, 11.3, 12.3, 75),
('62', 'Laki-Laki', 9.6, 8.8, 8.2, 7.6, 10.3, 11.4, 12.5, 75.5),
('63', 'Laki-Laki', 9.7, 8.9, 8.3, 7.6, 10.4, 11.5, 12.6, 76),
('64', 'Laki-Laki', 9.8, 9, 8.3, 7.7, 10.6, 11.6, 12.7, 76.5),
('65', 'Laki-Laki', 9.9, 9.1, 8.4, 7.8, 10.7, 11.7, 12.8, 77),
('66', 'Laki-Laki', 10, 9.2, 8.5, 7.9, 10.8, 11.9, 13, 77.5),
('67', 'Laki-Laki', 10.1, 9.3, 8.6, 7.9, 10.9, 12, 13.1, 78),
('68', 'Laki-Laki', 10.2, 9.4, 8.7, 8, 11, 12.4, 13.2, 78.5),
('69', 'Laki-Laki', 10.3, 9.5, 8.7, 8.1, 11.1, 12.2, 13.3, 79),
('7', 'Laki-Laki', 2.9, 2.7, 2.5, 2.3, 3.2, 3.6, 3.9, 48),
('70', 'Laki-Laki', 10.4, 9.5, 8.8, 8.2, 11.2, 12.3, 13.4, 79.5),
('71', 'Laki-Laki', 10.4, 9.6, 8.9, 8.2, 11.4, 12.4, 13.6, 80),
('72', 'Laki-Laki', 10.5, 9.7, 9, 8.3, 11.5, 12.5, 13.7, 80.5),
('73', 'Laki-Laki', 10.6, 9.8, 9.1, 8.4, 11.6, 12.6, 13.8, 81),
('74', 'Laki-Laki', 10.7, 9.9, 9.1, 8.5, 11.7, 12.7, 13.9, 81.5),
('75', 'Laki-Laki', 10.8, 10, 9.2, 8.5, 11.8, 12.8, 14, 82),
('76', 'Laki-Laki', 10.9, 10.1, 9.3, 8.6, 11.9, 13, 14.2, 82.5),
('77', 'Laki-Laki', 11, 10.2, 9.4, 8.7, 12, 13.1, 14.3, 83),
('78', 'Laki-Laki', 11.2, 10.3, 9.5, 8.8, 12.1, 13.2, 14.4, 83.5),
('79', 'Laki-Laki', 11.3, 10.4, 9.6, 8.9, 12.2, 13.3, 14.6, 84),
('8', 'Laki-Laki', 3, 2.8, 2.6, 2.3, 3.3, 3.7, 4, 48.5),
('80', 'Laki-Laki', 11.4, 10.5, 9.7, 9, 12.4, 13.5, 14.7, 84.5),
('81', 'Laki-Laki', 11.5, 10.6, 9.8, 9.1, 12.5, 13.6, 14.9, 85),
('82', 'Laki-Laki', 11.6, 10.7, 9.9, 9.2, 12.6, 13.7, 15, 85.5),
('83', 'Laki-Laki', 11.7, 10.8, 10, 9.3, 12.8, 13.9, 15.2, 86),
('84', 'Laki-Laki', 11.9, 11, 10.1, 9.4, 12.9, 14, 15.3, 86.5),
('85', 'Laki-Laki', 12, 11.1, 10.2, 9.5, 13, 14.2, 15.5, 87),
('86', 'Laki-Laki', 12.1, 11.2, 10.4, 9.6, 13.2, 14.3, 15.6, 87.5),
('87', 'Laki-Laki', 12.2, 11.3, 10.5, 9.7, 13.3, 14.5, 15.8, 88),
('88', 'Laki-Laki', 12.4, 11.4, 10.6, 9.8, 13.4, 14.6, 15.9, 88.5),
('89', 'Laki-Laki', 12.5, 11.5, 10.7, 9.9, 13.5, 14.7, 16.1, 89),
('9', 'Laki-Laki', 3.1, 2.9, 2.6, 2.4, 3.4, 3.8, 4.2, 49),
('90', 'Laki-Laki', 12.6, 11.6, 10.8, 10, 13.7, 14.9, 16.2, 89.5),
('91', 'Laki-Laki', 12.7, 11.8, 10.9, 10.1, 13.8, 15, 16.4, 90),
('92', 'Laki-Laki', 12.8, 11.9, 11, 10.2, 13.9, 15.1, 16.5, 90.5),
('93', 'Laki-Laki', 13, 12, 11.1, 10.3, 14.1, 15.3, 16.7, 91),
('94', 'Laki-Laki', 13.1, 12.1, 11.2, 10.4, 14.2, 15.4, 16.8, 91.5),
('95', 'Laki-Laki', 13.2, 12.1, 11.3, 10.5, 14.3, 15.6, 17, 92),
('96', 'Laki-Laki', 13.3, 12.3, 11.4, 10.6, 14.4, 15.7, 17.1, 92.5),
('97', 'Laki-Laki', 13.4, 12.4, 11.5, 10.7, 14.6, 15.8, 17.3, 93),
('98', 'Laki-Laki', 13.5, 12.5, 11.6, 10.7, 14.7, 16, 17.4, 93.5),
('99', 'Laki-Laki', 13.7, 12.6, 11.7, 10.8, 14.8, 16.1, 17.6, 94),
('id', 'jenis_kelamin', 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `beratbadantinggi`
--

CREATE TABLE IF NOT EXISTS `beratbadantinggi` (
  `id` varchar(255) NOT NULL,
  `jenis_kelamin` varchar(255) DEFAULT NULL,
  `median` float NOT NULL,
  `minus1sd` float NOT NULL,
  `minus2sd` float NOT NULL,
  `minus3sd` float NOT NULL,
  `plus1sd` float NOT NULL,
  `plus2sd` float NOT NULL,
  `plus3sd` float NOT NULL,
  `tinggi` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `beratbadantinggi`
--

INSERT INTO `beratbadantinggi` (`id`, `jenis_kelamin`, `median`, `minus1sd`, `minus2sd`, `minus3sd`, `plus1sd`, `plus2sd`, `plus3sd`, `tinggi`) VALUES
('1', 'Laki-Laki', 7.4, 6.9, 6.3, 5.9, 8.1, 8.8, 9.6, 65),
('10', 'Laki-Laki', 8.5, 7.8, 7.2, 6.7, 9.2, 10, 11, 69.5),
('100', 'Laki-Laki', 20.2, 18.5, 16.9, 15.6, 22.1, 24.4, 26.9, 114.5),
('101', 'Laki-Laki', 20.4, 18.6, 17.1, 15.7, 22.4, 24.6, 27.2, 115),
('102', 'Laki-Laki', 20.6, 18.8, 17.2, 15.8, 22.6, 24.9, 27.5, 115.5),
('103', 'Laki-Laki', 20.8, 19, 17.4, 16, 22.8, 25.1, 27.8, 116),
('104', 'Laki-Laki', 21, 19.2, 17.5, 16.1, 23, 25.4, 28, 116.5),
('105', 'Laki-Laki', 21.2, 19.3, 17.7, 16.2, 23.3, 25.6, 28.3, 117),
('106', 'Laki-Laki', 21.4, 19.5, 17.9, 16.4, 23.5, 25.9, 28.6, 117.5),
('107', 'Laki-Laki', 21.6, 19.7, 18, 16.5, 23.7, 26.1, 28.9, 118),
('108', 'Laki-Laki', 21.8, 19.9, 18.2, 16.7, 23.9, 26.4, 29.2, 118.5),
('109', 'Laki-Laki', 22, 20, 18.3, 16.8, 24.1, 26.6, 29.5, 119),
('11', 'Laki-Laki', 8.6, 7.9, 7.3, 6.8, 9.3, 10.2, 11.1, 70),
('110', 'Laki-Laki', 22.2, 20.2, 18.5, 16.9, 24.4, 26.9, 29.8, 119.5),
('111', 'Laki-Laki', 22.4, 20.4, 18.6, 17.1, 24.6, 27.2, 30.1, 120),
('112', 'Perempuan', 7.2, 6.6, 6.1, 5.6, 7.9, 8.7, 9.7, 65),
('113', 'Perempuan', 7.4, 6.7, 6.2, 5.7, 8.1, 8.9, 9.8, 65.5),
('114', 'Perempuan', 7.5, 6.8, 6.3, 5.8, 8.2, 9, 10, 66),
('115', 'Perempuan', 7.6, 6.9, 6.4, 5.8, 8.3, 9.1, 10.1, 66.5),
('116', 'Perempuan', 7.7, 7, 6.4, 5.9, 8.4, 9.3, 10.2, 67),
('117', 'Perempuan', 7.8, 7.1, 6.5, 6, 8.5, 9.4, 10.4, 67.5),
('118', 'Perempuan', 7.9, 7.2, 6.6, 6.1, 8.7, 9.5, 10.5, 68),
('119', 'Perempuan', 8, 7.3, 6.7, 6.2, 8.8, 9.7, 10.7, 68.5),
('12', 'Laki-Laki', 8.7, 8, 7.4, 6.9, 9.5, 10.3, 11.3, 70.5),
('120', 'Perempuan', 8.1, 7.4, 6.8, 6.3, 8.9, 9.8, 10.8, 69),
('121', 'Perempuan', 8.2, 7.5, 6.9, 6.3, 9, 9.9, 10.9, 69.5),
('122', 'Perempuan', 8.3, 7.6, 7, 6.4, 9.1, 10, 11.1, 70),
('123', 'Perempuan', 8.4, 7.7, 7.1, 6.5, 9.2, 10.1, 11.2, 70.5),
('124', 'Perempuan', 8.5, 7.8, 7.1, 6.6, 9.3, 10.3, 11.3, 71),
('125', 'Perempuan', 8.6, 7.9, 7.2, 6.7, 9.4, 10.4, 11.5, 71.5),
('126', 'Perempuan', 8.7, 8, 7.3, 6.7, 9.5, 10.5, 11.6, 72),
('127', 'Perempuan', 8.8, 8.1, 7.4, 6.8, 9.7, 10.6, 11.7, 72.5),
('128', 'Perempuan', 8.9, 8.1, 7.5, 6.9, 9.8, 10.7, 11.8, 73),
('129', 'Perempuan', 9, 8.2, 7.6, 7, 9.9, 10.8, 12, 73.5),
('13', 'Laki-Laki', 8.8, 8.1, 7.5, 6.9, 9.6, 10.4, 11.4, 71),
('130', 'Perempuan', 9.1, 8.3, 7.6, 7, 10, 11, 12.1, 74),
('131', 'Perempuan', 9.2, 8.4, 7.7, 7.1, 10.1, 11.1, 12.2, 74.5),
('132', 'Perempuan', 9.3, 8.5, 7.8, 7.2, 10.2, 11.2, 12.3, 75),
('133', 'Perempuan', 9.4, 8.6, 7.9, 7.2, 10.3, 11.3, 12.5, 75.5),
('134', 'Perempuan', 9.5, 8.7, 8, 7.3, 10.4, 11.4, 12.6, 76),
('135', 'Perempuan', 9.6, 8.7, 8, 7.4, 10.5, 11.5, 12.7, 76.5),
('136', 'Perempuan', 9.9, 8.8, 8.1, 7.5, 10.6, 11.6, 12.8, 77),
('137', 'Perempuan', 9.7, 8.9, 8.2, 7.5, 10.7, 11.7, 12.9, 77.5),
('138', 'Perempuan', 9.8, 9, 8.3, 7.6, 10.8, 11.8, 13.1, 78),
('139', 'Perempuan', 9.9, 9.1, 8.4, 7.7, 10.9, 12, 13.2, 78.5),
('14', 'Laki-Laki', 8.9, 8.2, 7.6, 7, 9.7, 10.6, 11.6, 71.5),
('140', 'Perempuan', 10, 9.2, 8.4, 7.8, 11, 12.1, 13.3, 79),
('141', 'Perempuan', 10.1, 9.3, 8.5, 7.8, 11.1, 12.2, 13.4, 79.5),
('142', 'Perempuan', 10.2, 9.4, 8.6, 7.9, 11.2, 12.3, 13.6, 80),
('143', 'Perempuan', 10.3, 9.5, 8.7, 8, 11.3, 12.4, 13.7, 80.5),
('144', 'Perempuan', 10.4, 9.6, 8.8, 8.1, 11.4, 12.6, 13.9, 81),
('145', 'Perempuan', 10.6, 9.7, 8.9, 8.2, 11.6, 12.7, 14, 81.5),
('146', 'Perempuan', 10.7, 9.8, 9, 8.3, 11.7, 12.8, 14.1, 82),
('147', 'Perempuan', 10.8, 9.9, 9.1, 8.4, 11.8, 13, 14.3, 82.5),
('148', 'Perempuan', 10.9, 10, 9, 8.5, 11.9, 13.1, 14.5, 83),
('149', 'Perempuan', 11, 10.1, 9.3, 8.5, 12.1, 13.3, 14.6, 83.5),
('15', 'Laki-Laki', 9, 8.3, 7.7, 7.1, 9.8, 10.7, 11.7, 72),
('150', 'Perempuan', 11.1, 10.2, 9.4, 8.6, 12.2, 13.4, 14.8, 84),
('151', 'Perempuan', 11.3, 10.3, 9.5, 8.7, 12.3, 13.5, 14.9, 84.5),
('152', 'Perempuan', 11.4, 10.4, 9.6, 8.8, 12.5, 137, 15.1, 85),
('153', 'Perempuan', 11.5, 10.6, 9.7, 8.9, 12.6, 13.8, 15.3, 85.5),
('154', 'Perempuan', 11.6, 10.7, 9.8, 9, 12.7, 14, 15.4, 86),
('155', 'Perempuan', 11.8, 10.8, 9.9, 9.1, 12.9, 14.2, 15.6, 86.5),
('156', 'Perempuan', 11.9, 10.9, 10, 9.2, 13, 14.3, 15.8, 87),
('157', 'Perempuan', 12, 11, 10.1, 9.3, 13.2, 14.5, 15.9, 87.5),
('158', 'Perempuan', 12.1, 11.1, 10.2, 9.4, 13.3, 147.6, 16.1, 88),
('159', 'Perempuan', 12.3, 11.2, 10.3, 9.5, 13.4, 14.8, 16.3, 88.5),
('16', 'Laki-Laki', 9.1, 8.4, 7.8, 7.2, 9.9, 10.8, 11.8, 72.5),
('160', 'Perempuan', 12.4, 11.4, 10.4, 9.6, 13.6, 14.9, 16.4, 89),
('161', 'Perempuan', 12.5, 11.5, 10.5, 9.7, 13.7, 15.1, 16.6, 89.5),
('162', 'Perempuan', 12.6, 11.6, 10.6, 9.8, 13.8, 15.2, 16.8, 90),
('163', 'Perempuan', 12.8, 11.7, 10.7, 9.9, 14, 15.4, 16.9, 90.5),
('164', 'Perempuan', 12.9, 11.8, 10.9, 10, 14.1, 15.5, 17.1, 91),
('165', 'Perempuan', 13, 11.9, 11, 10.1, 14.3, 15.7, 17.3, 91.5),
('166', 'Perempuan', 13.1, 12, 11.1, 10.2, 14.4, 15.8, 17.4, 92),
('167', 'Perempuan', 13.3, 12.4, 11.2, 10.3, 14.5, 16, 17.6, 92.5),
('168', 'Perempuan', 13.4, 12.3, 11.3, 10.4, 14.7, 16.1, 17.8, 93),
('169', 'Perempuan', 13.5, 12.4, 11.4, 10.5, 14.8, 16.3, 17.9, 93.5),
('17', 'Laki-Laki', 9.2, 8.5, 7.9, 7.3, 10, 11, 12, 73),
('170', 'Perempuan', 13.6, 12.5, 11.5, 10.6, 14.9, 16.4, 18.1, 94),
('171', 'Perempuan', 13.8, 12.6, 11.6, 10.7, 15.1, 16.6, 18.3, 94.5),
('172', 'Perempuan', 13.9, 12.7, 11.7, 10.8, 15.2, 16.7, 18.5, 95),
('173', 'Perempuan', 14, 12.8, 11.8, 10.8, 15.4, 16.9, 18.6, 95.5),
('174', 'Perempuan', 14.1, 12.9, 11.9, 10.9, 15.5, 17, 18.8, 96),
('175', 'Perempuan', 14.3, 13.1, 12, 11, 15.6, 17.2, 19, 96.5),
('176', 'Perempuan', 14.4, 13.2, 12.1, 11.1, 15.8, 17.4, 19.2, 97),
('177', 'Perempuan', 14.5, 13.3, 12.2, 11.2, 15.9, 17.5, 19.3, 97.5),
('178', 'Perempuan', 14.7, 13.4, 12.3, 11.3, 16.1, 17.7, 19.5, 98),
('179', 'Perempuan', 14.8, 13.5, 12.4, 11.4, 16.2, 17.9, 19.7, 98.5),
('18', 'Laki-Laki', 9.3, 8.6, 7.9, 7.4, 10.2, 11.1, 12.1, 73.5),
('180', 'Perempuan', 14.9, 13.7, 12.5, 11.5, 16.4, 18, 19.9, 99),
('181', 'Perempuan', 15.1, 13.8, 12.7, 11.6, 16.5, 18.2, 20.1, 99.5),
('182', 'Perempuan', 15.2, 13.9, 12.8, 11.7, 16.7, 18.4, 20.3, 100),
('183', 'Perempuan', 15.4, 14.1, 12.9, 11.9, 16.9, 18.6, 20.5, 100.5),
('184', 'Perempuan', 15.5, 14.2, 13, 12, 17, 18.7, 20.7, 101),
('185', 'Perempuan', 15.7, 14.3, 13.1, 12.1, 17.2, 18.9, 20.9, 101.5),
('186', 'Perempuan', 15.8, 14.5, 13.3, 12.2, 17.4, 19.1, 21.1, 102),
('187', 'Perempuan', 16, 14.6, 13.4, 12.3, 17.5, 19.3, 21.4, 102.5),
('188', 'Perempuan', 16.1, 14.7, 13.5, 12.4, 17.7, 19.5, 21.6, 103),
('189', 'Perempuan', 16.3, 14.9, 13.6, 12.5, 17.9, 19.7, 21.8, 103.5),
('19', 'Laki-Laki', 9.4, 8.7, 8, 7.4, 10.3, 11.2, 12.2, 74),
('190', 'Perempuan', 16.4, 15, 13.8, 12.6, 18.1, 19.9, 22, 104),
('191', 'Perempuan', 16.6, 15.2, 13.9, 12.8, 18.2, 20.1, 22.3, 104.5),
('192', 'Perempuan', 16.8, 15.3, 14, 12.9, 18.4, 20.3, 22.5, 105),
('193', 'Perempuan', 16.9, 15.5, 14.2, 13, 18.6, 20.5, 22.7, 105.5),
('194', 'Perempuan', 17.1, 15.6, 14.3, 13.1, 18.8, 20.8, 23, 106),
('195', 'Perempuan', 17.3, 15.8, 14.5, 13.3, 19, 21, 23.2, 106.5),
('196', 'Perempuan', 17.5, 15.9, 14.6, 13.4, 19.2, 21.2, 23.5, 107),
('197', 'Perempuan', 17.7, 16.1, 14.7, 13.5, 19.4, 21.4, 23.7, 107.5),
('198', 'Perempuan', 17.8, 16.3, 14.9, 13.7, 19.6, 21.7, 24, 108),
('199', 'Perempuan', 18, 16.4, 15, 13.8, 19.8, 21.9, 24.3, 108.5),
('2', 'Laki-Laki', 7.6, 7, 6.4, 6, 8.2, 8.9, 9.8, 65.5),
('20', 'Laki-Laki', 9.5, 8.8, 8.1, 4.5, 10.4, 11.3, 12.4, 74.5),
('200', 'Perempuan', 18.2, 16.6, 15.2, 13.9, 20, 22.1, 24.5, 109),
('201', 'Perempuan', 18.4, 16.8, 15.4, 14.1, 20.3, 22.4, 24.8, 109.5),
('202', 'Perempuan', 18.6, 17, 15.5, 14.2, 20.5, 22.6, 25.1, 110),
('203', 'Perempuan', 18.8, 17.1, 15.7, 14.4, 20.7, 22.9, 25.4, 110.5),
('204', 'Perempuan', 19, 17.9, 15.8, 14.5, 20.9, 23.1, 25.7, 111),
('205', 'Perempuan', 19.2, 17.5, 16, 14.7, 21.2, 23.4, 26, 111.5),
('206', 'Perempuan', 19.4, 17.7, 16.2, 14.8, 21.4, 23.6, 26.2, 112),
('207', 'Perempuan', 19.5, 17.9, 16.3, 15, 21.6, 23.9, 26.5, 112.5),
('208', 'Perempuan', 19.8, 18, 16.5, 15.1, 21.8, 24.2, 26.8, 113),
('209', 'Perempuan', 20, 18.2, 16.7, 15.3, 22.1, 24.4, 27.1, 113.5),
('21', 'Laki-Laki', 9.6, 8.9, 8.2, 7.6, 10.5, 11.4, 12.5, 75),
('210', 'Perempuan', 20.2, 18.4, 16.8, 15.4, 22.3, 24.7, 27.4, 114),
('211', 'Perempuan', 20.5, 18.6, 17, 15.6, 22.6, 25, 27.8, 114.5),
('212', 'Perempuan', 20.7, 18.8, 17.2, 15.7, 22.8, 25.2, 28.1, 115),
('213', 'Perempuan', 20.9, 19, 17.3, 15.9, 23, 25.5, 28.4, 115.5),
('214', 'Perempuan', 21.1, 19.2, 17.5, 16, 23.3, 25.8, 28.7, 116),
('215', 'Perempuan', 21.3, 19.4, 17.7, 16.2, 23.5, 26.1, 29, 116.5),
('216', 'Perempuan', 21.5, 19.6, 17.8, 16.3, 23.8, 26.3, 29.3, 117),
('217', 'Perempuan', 21.7, 19.8, 18, 16.5, 24, 26.6, 29.6, 117.5),
('218', 'Perempuan', 22, 19.9, 18.2, 16.6, 24.2, 26.9, 29.9, 118),
('219', 'Perempuan', 22.2, 20.1, 18.4, 16.8, 24.5, 27.2, 30.3, 118.5),
('22', 'Laki-Laki', 9.7, 9, 8.3, 7.7, 10.6, 11.6, 12.6, 75.5),
('220', 'Perempuan', 22.4, 20.3, 18.5, 16.9, 24.7, 27.4, 30.6, 119),
('221', 'Perempuan', 22.6, 20.5, 18.7, 17.1, 25, 27.7, 30.9, 119.5),
('222', 'Perempuan', 22.8, 20.7, 18.9, 17.3, 25.2, 28, 31.2, 120),
('23', 'Laki-Laki', 9.8, 9.1, 8.4, 7.7, 10.7, 11.7, 12.8, 76),
('24', 'Laki-Laki', 9.9, 9.2, 8.5, 7.8, 10.8, 11.8, 12.9, 76.5),
('25', 'Laki-Laki', 10, 9.2, 8.5, 7.9, 10.9, 11.9, 13, 77),
('26', 'Laki-Laki', 10.1, 9.3, 8.6, 8, 11, 12, 13.1, 77.5),
('27', 'Laki-Laki', 10.2, 9.4, 8.7, 8, 11.1, 12.1, 13.3, 78),
('28', 'Laki-Laki', 10.3, 9.5, 8.8, 8.1, 11.2, 12.2, 13.4, 78.5),
('29', 'Laki-Laki', 10.4, 9.6, 8.8, 8.2, 11.3, 12.3, 13.5, 79),
('3', 'Laki-Laki', 7.7, 7.1, 6.5, 6.1, 8.3, 9.1, 9.9, 66),
('30', 'Laki-Laki', 10.5, 9.7, 8.9, 8.3, 11.4, 12.4, 13.6, 79.5),
('31', 'Laki-Laki', 10.6, 9.7, 9, 8.3, 11.5, 12.6, 13.7, 80),
('32', 'Laki-Laki', 10.7, 9.8, 9.1, 8.4, 11.6, 12.7, 13.8, 80.5),
('33', 'Laki-Laki', 10.8, 9.9, 9.2, 8.5, 11.7, 12.8, 14, 81),
('34', 'Laki-Laki', 10.9, 10, 9.3, 8.6, 11.8, 12.9, 14.1, 81.5),
('35', 'Laki-Laki', 11, 10.1, 9.3, 8.7, 11.9, 13, 14.2, 82),
('36', 'Laki-Laki', 11.1, 10.2, 9.4, 8.7, 12.1, 13.1, 14.4, 82.5),
('37', 'Laki-Laki', 11.2, 10.3, 9.5, 8.8, 12.2, 13.3, 14.5, 83),
('38', 'Laki-Laki', 11.3, 10.4, 9.6, 8.9, 12.3, 13.4, 14.6, 83.5),
('39', 'Laki-Laki', 11.4, 10.5, 9.7, 9, 12.4, 13.5, 14.8, 84),
('4', 'Laki-Laki', 7.8, 7.2, 6.6, 6.1, 8.5, 9.2, 10.1, 66.5),
('40', 'Laki-Laki', 11.5, 10.7, 9.9, 9.1, 12.5, 13.7, 14.9, 84.5),
('41', 'Laki-Laki', 11.7, 10.8, 10, 9.2, 12.7, 13.8, 15.1, 85),
('42', 'Laki-Laki', 11.8, 10.9, 10.1, 9.3, 12.8, 13.9, 15.2, 85.5),
('43', 'Laki-Laki', 11.9, 11, 10.2, 9.4, 12.9, 14.1, 15.4, 86),
('44', 'Laki-Laki', 12, 11.1, 10.3, 9.5, 13.1, 14.2, 15.5, 86.5),
('45', 'Laki-Laki', 12.2, 11.2, 10.4, 9.6, 13.2, 14.4, 15.7, 87),
('46', 'Laki-Laki', 12.3, 11.3, 10.5, 9.7, 13.3, 14.5, 15.8, 87.5),
('47', 'Laki-Laki', 12.4, 11.5, 10.6, 9.8, 13.5, 14.7, 16, 88),
('48', 'Laki-Laki', 12.5, 11.6, 10.7, 9.9, 13.6, 14.8, 16.4, 88.5),
('49', 'Laki-Laki', 12.6, 11.7, 10.8, 10, 13.7, 14.9, 16.3, 89),
('5', 'Laki-Laki', 7.9, 7.3, 6.7, 6.2, 8.6, 9.4, 10.2, 67),
('50', 'Laki-Laki', 12.8, 11.8, 10.9, 10.1, 13.9, 15.1, 16.4, 89.5),
('51', 'Laki-Laki', 12.9, 11.9, 11, 10.2, 14, 15.2, 16.6, 90),
('52', 'Laki-Laki', 13, 12, 11.1, 10.3, 14.1, 15.3, 16.7, 90.5),
('53', 'Laki-Laki', 13.1, 12.1, 11.2, 10.4, 14.2, 15.5, 16.7, 91),
('54', 'Laki-Laki', 13.2, 12.2, 11.3, 10.5, 14.4, 15.6, 17, 91.5),
('55', 'Laki-Laki', 13.4, 12.3, 11.4, 10.6, 14.5, 15.8, 17.2, 92),
('56', 'Laki-Laki', 13.5, 12.4, 11.5, 10.7, 14.6, 15.9, 17.3, 92.5),
('57', 'Laki-Laki', 13.6, 12.6, 11.6, 10.8, 14.7, 16, 17.5, 93),
('58', 'Laki-Laki', 13.7, 12.7, 11.7, 10.9, 14.9, 16.2, 17.6, 93.5),
('59', 'Laki-Laki', 13.8, 12.8, 11.8, 11, 15, 16.3, 17.8, 94),
('6', 'Laki-Laki', 8, 7.4, 6.8, 6.3, 8.7, 9.5, 10.4, 67.5),
('60', 'Laki-Laki', 13.9, 12.9, 11.9, 11.1, 15.1, 16.5, 17.9, 94.5),
('61', 'Laki-Laki', 14.1, 13, 12, 11.1, 15.3, 16.6, 18.1, 95),
('62', 'Laki-Laki', 14.2, 13.1, 12.1, 11.2, 15.4, 16.7, 18.3, 95.5),
('63', 'Laki-Laki', 14.3, 13.2, 12.2, 11.3, 15.5, 16.9, 18.4, 96),
('64', 'Laki-Laki', 14.4, 13.3, 12.3, 11.4, 15.7, 17, 18.6, 96.5),
('65', 'Laki-Laki', 14.6, 13.4, 12.4, 11.5, 15.8, 17.2, 18.8, 97),
('66', 'Laki-Laki', 14.7, 13.6, 12.5, 11.6, 15.9, 17.4, 18.9, 97.5),
('67', 'Laki-Laki', 14.8, 13.7, 12.6, 11.7, 16.1, 17.5, 19.1, 98),
('68', 'Laki-Laki', 14.9, 13.8, 12.8, 11.8, 16.2, 17.7, 19.3, 98.5),
('69', 'Laki-Laki', 15.1, 13.9, 12.9, 11.9, 16.4, 17.9, 19.5, 99),
('7', 'Laki-Laki', 8.1, 7.5, 6.9, 6.4, 8.8, 9.6, 10.5, 68),
('70', 'Laki-Laki', 15.2, 14, 13, 12, 16.5, 18, 19.7, 99.5),
('71', 'Laki-Laki', 15.4, 14.2, 13.1, 12.1, 16.7, 18.2, 19.9, 100),
('72', 'Laki-Laki', 15.5, 14.3, 13.2, 12.2, 16.9, 18.4, 20.1, 100.5),
('73', 'Laki-Laki', 15.6, 14.4, 13.3, 12.3, 17, 18.5, 20.3, 101),
('74', 'Laki-Laki', 15.8, 14.5, 13.4, 12.4, 17.2, 18.7, 20.5, 101.5),
('75', 'Laki-Laki', 15.9, 14.7, 13.6, 12.5, 17.3, 18.9, 20.7, 102),
('76', 'Laki-Laki', 16.1, 14.8, 13.7, 12.6, 17.5, 19.1, 20.9, 102.5),
('77', 'Laki-Laki', 16.2, 14.9, 13.8, 12.8, 17.7, 19.3, 21.1, 103),
('78', 'Laki-Laki', 16.4, 15.1, 13.9, 12.9, 17.8, 19.5, 21.3, 103.5),
('79', 'Laki-Laki', 16.5, 15.2, 14, 13, 18, 19.7, 21.6, 104),
('8', 'Laki-Laki', 8.2, 7.6, 7, 6.5, 9, 9.8, 10.7, 68.5),
('80', 'Laki-Laki', 16.7, 15.4, 14.2, 13.1, 18.2, 19.9, 21.8, 104.5),
('81', 'Laki-Laki', 16.8, 15.5, 14.3, 13.2, 18.4, 20.1, 22, 105),
('82', 'Laki-Laki', 17, 15.6, 14.4, 13.3, 18.5, 20.3, 22.2, 105.5),
('83', 'Laki-Laki', 17.2, 15.8, 14.5, 13.4, 18.7, 20.5, 22.5, 106),
('84', 'Laki-Laki', 17.3, 15.9, 14.7, 13.5, 18.9, 20.7, 22.7, 106.5),
('85', 'Laki-Laki', 17.5, 16.1, 14.8, 13.7, 19.1, 20.9, 22.9, 107),
('86', 'Laki-Laki', 17.7, 16.2, 14.9, 13.8, 19.3, 21.1, 23.2, 107.5),
('87', 'Laki-Laki', 17.8, 16.4, 15.1, 13.9, 19.5, 21.3, 23.4, 108),
('88', 'Laki-Laki', 18, 16.5, 15.2, 14, 19.7, 21.5, 23.7, 108.5),
('89', 'Laki-Laki', 18.2, 16.7, 15.3, 14.1, 19.8, 21.8, 23.9, 109),
('9', 'Laki-Laki', 8.4, 7.7, 7.1, 6.6, 9.1, 9.9, 10.8, 69),
('90', 'Laki-Laki', 18.3, 16.8, 15.5, 14.3, 20, 22, 24.2, 109.5),
('91', 'Laki-Laki', 18.5, 17, 15.6, 14.4, 20.2, 22.2, 24.4, 110),
('92', 'Laki-Laki', 18.7, 17.1, 15.8, 14.5, 20.4, 22.4, 24.7, 110.5),
('93', 'Laki-Laki', 18.9, 17.3, 15.9, 14.6, 20.7, 22.7, 25, 111),
('94', 'Laki-Laki', 19.1, 17.5, 16, 14.8, 20.9, 22.9, 25.2, 111.5),
('95', 'Laki-Laki', 19.2, 17.6, 16.2, 14.4, 21.1, 23.1, 25.5, 112),
('96', 'Laki-Laki', 19.4, 17.8, 16.3, 15, 21.3, 23.4, 25.8, 112.5),
('97', 'Laki-Laki', 19.6, 18, 16.5, 15.2, 21.5, 23.6, 26, 113),
('98', 'Laki-Laki', 19.8, 18.1, 16.6, 15.3, 21.7, 23.9, 26.3, 113.5),
('99', 'Laki-Laki', 20, 18.3, 16.8, 15.4, 21.9, 24.1, 26.6, 114),
('id', 'jenis_kelamin', 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `beratbadanumur`
--

CREATE TABLE IF NOT EXISTS `beratbadanumur` (
  `id` varchar(255) NOT NULL,
  `jenis_kelamin` varchar(255) DEFAULT NULL,
  `median` float NOT NULL,
  `minus1sd` float NOT NULL,
  `minus2sd` float NOT NULL,
  `minus3sd` float NOT NULL,
  `plus1sd` float NOT NULL,
  `plus2sd` float NOT NULL,
  `plus3sd` float NOT NULL,
  `umur` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `beratbadanumur`
--

INSERT INTO `beratbadanumur` (`id`, `jenis_kelamin`, `median`, `minus1sd`, `minus2sd`, `minus3sd`, `plus1sd`, `plus2sd`, `plus3sd`, `umur`) VALUES
('1', 'Laki-Laki', 3.3, 2.9, 2.5, 2.1, 3.9, 4.4, 5, '0'),
('10', 'Laki-Laki', 8.9, 8, 7.1, 6.4, 9.9, 11, 12.3, '9'),
('100', 'Perempuan', 14.2, 12.5, 11.1, 9.8, 16.3, 18.7, 21.6, '38'),
('101', 'Perempuan', 14.4, 12.7, 11.2, 9.9, 16.5, 19, 22, '39'),
('102', 'Perempuan', 14.6, 12.8, 11.3, 10.1, 16.7, 19.2, 2.3, '40'),
('103', 'Perempuan', 14.8, 13, 11.5, 10.2, 16.9, 19.5, 22.7, '41'),
('104', 'Perempuan', 15, 13.1, 11.6, 10.3, 17.2, 19.8, 23, '42'),
('105', 'Perempuan', 15.2, 13.3, 11.7, 10.4, 17.4, 20.1, 23.4, '43'),
('106', 'Perempuan', 15.3, 13.4, 11.8, 10.5, 17.6, 20.4, 23.7, '44'),
('107', 'Perempuan', 15.5, 13.6, 10, 10.6, 17.8, 20.7, 24.1, '45'),
('108', 'Perempuan', 15.7, 13.7, 12.1, 10.7, 18.1, 20.9, 24.5, '46'),
('109', 'Perempuan', 15.9, 13.9, 12.2, 10.8, 18.3, 21.2, 24.8, '47'),
('11', 'Laki-Laki', 9.2, 8.2, 7.4, 6.6, 10.2, 11.4, 12.7, '10'),
('110', 'Perempuan', 16.1, 14, 12.3, 10.9, 18.5, 21.5, 25.2, '48'),
('111', 'Perempuan', 16.3, 14.2, 12.4, 11, 18.8, 21.8, 25.5, '49'),
('112', 'Perempuan', 16.4, 14.3, 12.6, 11.1, 19, 22.1, 25.9, '50'),
('113', 'Perempuan', 16.6, 14.5, 12.7, 11.2, 19.2, 22.4, 26.3, '51'),
('114', 'Perempuan', 16.8, 14.6, 12.8, 11.3, 19.4, 22.6, 26.6, '52'),
('115', 'Perempuan', 17, 14.8, 12.9, 11.4, 19.4, 22.9, 27, '53'),
('116', 'Perempuan', 17.2, 14.9, 13, 11.5, 19.9, 23.2, 27.4, '54'),
('117', 'Perempuan', 17.3, 15.1, 13.2, 11.6, 20.1, 23.5, 27.7, '55'),
('118', 'Perempuan', 17.5, 15.2, 13.3, 11.7, 20.1, 23.8, 28.1, '56'),
('119', 'Perempuan', 17.7, 15.3, 13.4, 11.8, 20, 24.1, 28.5, '57'),
('12', 'Laki-Laki', 9.4, 8.4, 7.6, 6.8, 10.5, 11.7, 13, '11'),
('120', 'Perempuan', 17.9, 15.5, 13.5, 11.9, 20.8, 24.4, 28.8, '58'),
('121', 'Perempuan', 18, 15.6, 13.6, 12, 21, 24.6, 29.2, '59'),
('122', 'Perempuan', 18.2, 15.8, 13.7, 12.1, 21.2, 24.9, 29.5, '60'),
('13', 'Laki-Laki', 9.6, 8.6, 7.7, 6.9, 10.8, 12, 13.3, '12'),
('14', 'Laki-Laki', 9.9, 8.8, 7.9, 7.1, 11, 12.3, 13.7, '13'),
('15', 'Laki-Laki', 10.1, 9, 8.1, 7.2, 11.3, 12.6, 14, '14'),
('16', 'Laki-Laki', 10.3, 9.2, 8.3, 7.4, 11.5, 12.8, 14.3, '15'),
('17', 'Laki-Laki', 10.5, 9.4, 8.4, 7.5, 11.7, 13.1, 14.6, '16'),
('18', 'Laki-Laki', 10.7, 9.6, 8.6, 7.7, 12, 13.4, 14.9, '17'),
('19', 'Laki-Laki', 10.9, 9.8, 8.8, 7.8, 12.2, 13.7, 15.3, '18'),
('2', 'Laki-Laki', 4.5, 3.9, 3.4, 2.9, 5.1, 5.8, 6.6, '1'),
('20', 'Laki-Laki', 11.1, 10, 8.9, 8, 12.5, 13.9, 15.6, '19'),
('21', 'Laki-Laki', 11.3, 10.1, 9.1, 8.1, 12.7, 14.2, 15.9, '20'),
('22', 'Laki-Laki', 11.5, 10.3, 9.2, 8.2, 12.9, 14.5, 16.2, '21'),
('23', 'Laki-Laki', 11.8, 10.5, 9.4, 8.4, 13.2, 14.7, 16.5, '22'),
('24', 'Laki-Laki', 12, 10.7, 9.5, 8.5, 13.4, 15, 16.8, '23'),
('25', 'Laki-Laki', 12.2, 10.8, 9.7, 8.6, 13.6, 15.3, 17.1, '24'),
('26', 'Laki-Laki', 12.4, 11, 9.8, 8.8, 13.9, 15.5, 17.5, '25'),
('27', 'Laki-Laki', 12.5, 11.2, 10, 8.9, 14.1, 15.8, 17.8, '26'),
('28', 'Laki-Laki', 12.7, 11.3, 10.1, 9, 14.3, 16.1, 18.1, '27'),
('29', 'Laki-Laki', 12.9, 11.5, 10.2, 9.1, 14.5, 16.3, 18.4, '28'),
('3', 'Laki-Laki', 5.6, 4.9, 4.3, 3.8, 6.3, 7.1, 8, '2'),
('30', 'Laki-Laki', 13.1, 11.7, 10.4, 9.2, 14.8, 16.6, 18.7, '29'),
('31', 'Laki-Laki', 13.3, 11.8, 10.5, 9.4, 15, 16.9, 19, '30'),
('32', 'Laki-Laki', 13.5, 12, 10.7, 9.5, 15.2, 17.1, 19.3, '31'),
('33', 'Laki-Laki', 13.7, 12.1, 10.8, 9.6, 15.4, 17.4, 19.6, '32'),
('34', 'Laki-Laki', 13.8, 12.3, 10.9, 9.7, 15.6, 17.6, 19.9, '33'),
('35', 'Laki-Laki', 14, 12.4, 11, 9.8, 15.8, 17.8, 20.2, '34'),
('36', 'Laki-Laki', 14.2, 12.6, 11.2, 9.9, 16, 18.1, 20.4, '35'),
('37', 'Laki-Laki', 14.3, 12.7, 11.3, 10, 16.2, 18.3, 20.7, '36'),
('38', 'Laki-Laki', 14.5, 12.9, 11.4, 10.1, 16.4, 18.6, 21, '37'),
('39', 'Laki-Laki', 14.7, 13, 11.5, 10.2, 16.6, 18.8, 21.3, '38'),
('4', 'Laki-Laki', 6.4, 5.7, 5, 4.4, 7.2, 8, 9, '3'),
('40', 'Laki-Laki', 14.8, 13.1, 11.6, 10.3, 16.8, 19, 21.6, '39'),
('41', 'Laki-Laki', 15, 13.3, 11.8, 10.4, 17, 19.3, 21.9, '40'),
('42', 'Laki-Laki', 15.2, 13.4, 11.9, 10.5, 17.2, 19.5, 22.1, '41'),
('43', 'Laki-Laki', 15.3, 14.6, 12, 10.6, 17.4, 19.7, 22.4, '42'),
('44', 'Laki-Laki', 15.5, 13.7, 12.1, 10.7, 17.6, 20, 22.7, '43'),
('45', 'Laki-Laki', 15.7, 13.8, 12.2, 10.8, 17.8, 20.2, 23, '44'),
('46', 'Laki-Laki', 15.8, 14, 12.4, 10.9, 18, 20.5, 23.3, '45'),
('47', 'Laki-Laki', 16, 14.1, 12.5, 11, 18.2, 20.7, 23.6, '46'),
('48', 'Laki-Laki', 16.2, 4.3, 12.6, 11.1, 18.4, 20.9, 23.9, '47'),
('49', 'Laki-Laki', 16.3, 14.4, 12.7, 11.2, 18.6, 21.2, 24.2, '48'),
('5', 'Laki-Laki', 7, 6.2, 5.6, 4.9, 7.8, 8.7, 9.7, '4'),
('50', 'Laki-Laki', 16.5, 14.5, 12.8, 11.3, 18.8, 21.4, 24.5, '49'),
('51', 'Laki-Laki', 16.7, 14.7, 12.9, 11.4, 19, 21.7, 24.8, '50'),
('52', 'Laki-Laki', 16.8, 14.8, 13.1, 11.5, 19.2, 21.9, 25.1, '51'),
('53', 'Laki-Laki', 17, 15, 13.2, 11.6, 19.4, 22.2, 25.4, '52'),
('54', 'Laki-Laki', 17.2, 15.1, 13.3, 11.7, 19.6, 22.4, 25.7, '53'),
('55', 'Laki-Laki', 17.3, 5.2, 13.4, 11.8, 19.8, 22.7, 26, '54'),
('56', 'Laki-Laki', 17.5, 15.4, 13.5, 11.9, 20, 22.9, 26.3, '55'),
('57', 'Laki-Laki', 17.7, 15.5, 13.6, 12, 20.2, 23.2, 26.6, '56'),
('58', 'Laki-Laki', 17.8, 15.6, 13.7, 12.1, 20.4, 23.4, 26.9, '57'),
('59', 'Laki-Laki', 18, 15.8, 13.8, 12.2, 20.6, 23.7, 27.2, '58'),
('6', 'Laki-Laki', 7.5, 6.7, 6, 5.3, 8.4, 9.3, 10.4, '5'),
('60', 'Laki-Laki', 18.2, 15.9, 14, 12.3, 20.8, 23.9, 27.6, '59'),
('61', 'Laki-Laki', 18.3, 16, 14.1, 12.4, 21, 24.2, 27.9, '60'),
('62', 'Perempuan', 3.2, 2.8, 2.4, 2, 3.7, 4.2, 4.8, '0'),
('63', 'Perempuan', 4.2, 3.6, 3.2, 2.7, 4.8, 5.5, 6.2, '1'),
('64', 'Perempuan', 5.1, 4.5, 3.9, 3.4, 5.8, 6.6, 7.5, '2'),
('65', 'Perempuan', 5.8, 5.2, 4.5, 4, 6.6, 7.5, 8.5, '3'),
('66', 'Perempuan', 6.4, 5.7, 5, 4.4, 7.3, 8.2, 9.3, '4'),
('67', 'Perempuan', 6.9, 6.1, 5.4, 0.8, 7.8, 8.8, 10, '5'),
('68', 'Perempuan', 7.3, 6.5, 5.7, 5.1, 8.2, 9.3, 10.6, '6'),
('69', 'Perempuan', 7.6, 6.8, 6, 5.3, 8.6, 9.8, 11.1, '7'),
('7', 'Laki-Laki', 7.9, 7.1, 6.4, 5.7, 8.8, 9.8, 10.9, '6'),
('70', 'Perempuan', 7.9, 7, 6.3, 5.6, 9, 10.2, 11.6, '8'),
('71', 'Perempuan', 8.2, 7.3, 6.5, 5.8, 9.3, 10.5, 12, '9'),
('72', 'Perempuan', 8.5, 7.5, 6.7, 5.9, 9, 10.9, 12.4, '10'),
('73', 'Perempuan', 8.7, 7.7, 6.9, 0.1, 9.9, 11.2, 12.8, '11'),
('74', 'Perempuan', 8.9, 7.9, 7, 6.3, 10.1, 11.5, 13.1, '12'),
('75', 'Perempuan', 9.2, 8.1, 7.2, 6.4, 10.4, 11.8, 13.5, '13'),
('76', 'Perempuan', 9.4, 8.3, 7.4, 6.6, 10.6, 12.1, 13.8, '14'),
('77', 'Perempuan', 9.6, 8.5, 7.6, 6.7, 10.9, 12.4, 14.1, '15'),
('78', 'Perempuan', 9.8, 8.7, 7.7, 6.9, 11.1, 12.6, 14.5, '16'),
('79', 'Perempuan', 10, 8.9, 7.9, 7, 11.4, 12.9, 14.8, '17'),
('8', 'Laki-Laki', 8.3, 7.4, 6.7, 5.9, 9.2, 10.3, 11.4, '7'),
('80', 'Perempuan', 10.2, 8.1, 8.1, 7.2, 11.6, 13.2, 15.1, '18'),
('81', 'Perempuan', 10.4, 9.2, 8.2, 7.3, 11.8, 13.5, 15.4, '19'),
('82', 'Perempuan', 10.6, 9.5, 8.4, 7.5, 12.1, 13.7, 15.7, '20'),
('83', 'Perempuan', 10.9, 9.6, 8.6, 7.6, 12.3, 14, 16, '21'),
('84', 'Perempuan', 11.1, 9.8, 8.7, 7.8, 12.5, 14.3, 16.4, '22'),
('85', 'Perempuan', 11.3, 10, 8.9, 7.9, 12.8, 14.6, 16.7, '23'),
('86', 'Perempuan', 11.5, 10.2, 9, 8.1, 13, 14.8, 17, '24'),
('87', 'Perempuan', 11.7, 10.3, 9.2, 8.2, 13.3, 15.1, 17.3, '25'),
('88', 'Perempuan', 11.9, 10.5, 9.4, 8.4, 13.5, 15.4, 17.7, '26'),
('89', 'Perempuan', 12.1, 10.7, 9.5, 8.5, 13.7, 15.7, 18, '27'),
('9', 'Laki-Laki', 8.6, 7.7, 6.9, 6.2, 9.6, 10.7, 11.9, '8'),
('90', 'Perempuan', 12.3, 10.9, 9.7, 8.6, 14, 16, 18.3, '28'),
('91', 'Perempuan', 12.5, 11.1, 9.8, 8.8, 14.2, 16.2, 18.7, '29'),
('92', 'Perempuan', 12.7, 11.2, 10, 8.9, 14.4, 16.5, 19, '30'),
('93', 'Perempuan', 12.9, 11.4, 10.1, 9, 4.7, 16.8, 19.3, '31'),
('94', 'Perempuan', 13.1, 11.6, 10.3, 9.1, 14.9, 17.1, 19.6, '32'),
('95', 'Perempuan', 13.3, 11.7, 10.4, 9.3, 15.1, 17.3, 20, '33'),
('96', 'Perempuan', 13.5, 11.9, 10.5, 9.4, 15.4, 17.6, 20.3, '34'),
('97', 'Perempuan', 13.7, 12, 10.7, 9.5, 15.6, 17.9, 20.6, '35'),
('98', 'Perempuan', 13.9, 12.2, 10.8, 9.6, 15.8, 18.1, 20.9, '36'),
('99', 'Perempuan', 14, 12.4, 10.9, 9.7, 16, 18.4, 21.3, '37');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jabatan`
--

CREATE TABLE IF NOT EXISTS `jabatan` (
  `jabatan_id` varchar(255) NOT NULL,
  `deskripsi` varchar(255) DEFAULT NULL,
  `nama_jabatan` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `jabatan`
--

INSERT INTO `jabatan` (`jabatan_id`, `deskripsi`, `nama_jabatan`) VALUES
('1ac99d1b-cee9-4c60-bb42-05e5399c883c', 'Kader Posyandu', 'Petugas'),
('6b651276-f046-4ce9-b6d8-14bfeb42591c', 'Ketua Rw', 'RW'),
('9ce32cfb-67f7-4410-93a1-3f15282a9811', 'Bidan yang Bertugas di Posyandu', 'Bidan'),
('aa0efeb2-556b-48ca-9043-69c7229c7bcb', 'Administrator', 'Admin'),
('c33d618b-a759-4d2f-b5d0-bf5bc5c26d71', 'Orang Tua Balita', 'Orangtua');

-- --------------------------------------------------------

--
-- Struktur dari tabel `panjangbadanumur`
--

CREATE TABLE IF NOT EXISTS `panjangbadanumur` (
  `id` varchar(255) NOT NULL,
  `jenis_kelamin` varchar(255) DEFAULT NULL,
  `median` float NOT NULL,
  `minus1sd` float NOT NULL,
  `minus2sd` float NOT NULL,
  `minus3sd` float NOT NULL,
  `plus1sd` float NOT NULL,
  `plus2sd` float NOT NULL,
  `plus3sd` float NOT NULL,
  `umur` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `panjangbadanumur`
--

INSERT INTO `panjangbadanumur` (`id`, `jenis_kelamin`, `median`, `minus1sd`, `minus2sd`, `minus3sd`, `plus1sd`, `plus2sd`, `plus3sd`, `umur`) VALUES
('1', 'Laki-Laki', 49.9, 48, 46.1, 44.2, 51.8, 53.7, 55.6, '0'),
('10', 'Laki-Laki', 72, 69.7, 67.5, 65.2, 74.2, 76.5, 78.7, '9'),
('11', 'Laki-Laki', 73.3, 71, 68.7, 66.4, 75.6, 77.9, 80.1, '10'),
('12', 'Laki-Laki', 74.5, 72.2, 69.9, 67.6, 76.9, 79.2, 81.5, '11'),
('13', 'Laki-Laki', 75.7, 73.4, 71, 68.6, 78.1, 80.5, 82.9, '12'),
('14', 'Laki-Laki', 76.9, 74.5, 72.1, 69.6, 79.3, 81.8, 84.2, '13'),
('15', 'Laki-Laki', 78, 75.6, 73.1, 70.6, 80.5, 83, 85.5, '14'),
('16', 'Laki-Laki', 79.1, 76.6, 74.1, 71.6, 81.7, 84.2, 86.7, '15'),
('17', 'Laki-Laki', 80.2, 77.6, 75, 72.5, 82.8, 85.4, 88, '16'),
('18', 'Laki-Laki', 81.2, 78.6, 76, 73.3, 83.9, 86.5, 89.2, '17'),
('19', 'Laki-Laki', 82.3, 79.6, 76.9, 74.2, 85, 87.7, 90.4, '18'),
('2', 'Laki-Laki', 54.7, 52.8, 50.8, 48.9, 56.7, 58.6, 60.6, '1'),
('20', 'Laki-Laki', 83.2, 80.5, 77.7, 75, 86, 88.8, 91.5, '19'),
('21', 'Laki-Laki', 64.2, 81.4, 78.6, 75.8, 87, 89.8, 92.6, '20'),
('22', 'Laki-Laki', 85.1, 82.3, 79.4, 76.5, 88, 90.9, 93.8, '21'),
('23', 'Laki-Laki', 86, 83.1, 80.2, 77.2, 89, 91.9, 94.9, '22'),
('24', 'Laki-Laki', 86.9, 83.9, 81, 78, 89.9, 92.9, 95.9, '23'),
('25', 'Laki-Laki', 87.8, 84.8, 81.7, 78.7, 90.9, 93.9, 97, '24'),
('26', 'Perempuan', 49.1, 47.3, 45.4, 43.6, 51, 52.9, 54.7, '0'),
('27', 'Perempuan', 53.7, 51.7, 49.8, 47.8, 55.6, 57.6, 59.5, '1'),
('28', 'Perempuan', 57.1, 55, 53, 51, 59.1, 61.1, 63.2, '2'),
('29', 'Perempuan', 59.8, 57.7, 55.6, 53.5, 61.9, 64, 66.1, '3'),
('3', 'Laki-Laki', 58.4, 56.4, 54.4, 52.4, 60.4, 62.4, 61.4, '2'),
('30', 'Perempuan', 62.1, 59.9, 57.8, 55.6, 64.3, 66.4, 68.6, '4'),
('31', 'Perempuan', 64, 61.8, 59.6, 57.4, 66.2, 68.5, 70.7, '5'),
('32', 'Perempuan', 65.7, 63.5, 61.2, 59.9, 68, 70.3, 72.5, '6'),
('33', 'Perempuan', 67.3, 65, 62.7, 60.3, 69.6, 71.9, 74.2, '7'),
('34', 'Perempuan', 68.7, 66.4, 64, 61.7, 71.1, 73.5, 75.8, '8'),
('35', 'Perempuan', 70.1, 67.7, 65.3, 62.9, 72.6, 75, 77.4, '9'),
('36', 'Perempuan', 71.5, 69, 66.5, 64.1, 73.9, 76.4, 78.9, '10'),
('37', 'Perempuan', 72.8, 70.3, 67.7, 65.2, 75.3, 77.8, 80.3, '11'),
('38', 'Perempuan', 74, 71.4, 68.9, 66.3, 76.6, 79.2, 81.7, '12'),
('39', 'Perempuan', 75.2, 72.6, 70, 67.3, 77.8, 80.5, 83.1, '13'),
('4', 'Laki-Laki', 61.4, 59.4, 57.3, 55.3, 63.5, 65.5, 67.6, '3'),
('40', 'Perempuan', 76.4, 73.7, 71, 68.3, 79.1, 81.7, 84.4, '14'),
('41', 'Perempuan', 77.5, 74.8, 72, 69.3, 80.2, 83, 85.7, '15'),
('42', 'Perempuan', 78.6, 75.8, 73, 70.2, 81.4, 84.2, 87, '16'),
('43', 'Perempuan', 79.7, 76.8, 74, 71.1, 82.5, 85.4, 88.2, '17'),
('44', 'Perempuan', 80.7, 77.8, 74.9, 72, 83.6, 86.5, 89.4, '18'),
('45', 'Perempuan', 81.7, 78.8, 75.8, 72.8, 84.7, 84.6, 90.6, '19'),
('46', 'Perempuan', 82.7, 79.7, 76.7, 73.7, 85.7, 88.7, 91.7, '20'),
('47', 'Perempuan', 83.7, 80.6, 77.5, 74.5, 86.7, 89.8, 92.9, '21'),
('48', 'Perempuan', 84.6, 81.5, 78.4, 75.2, 87.7, 80.8, 94, '22'),
('49', 'Perempuan', 85.5, 82.3, 79.2, 76, 88.7, 81.9, 95, '23'),
('5', 'Laki-Laki', 63.9, 61.8, 59.7, 57.6, 66, 68, 70.1, '4'),
('50', 'Perempuan', 86.4, 83.2, 80, 76.7, 89.6, 92.9, 96.1, '24'),
('6', 'Laki-Laki', 65.9, 63.8, 61.7, 59.6, 68, 70.1, 72.2, '5'),
('7', 'Laki-Laki', 67.6, 65.5, 63.3, 61.2, 69.8, 71.9, 74, '6'),
('8', 'Laki-Laki', 69.2, 67, 64.8, 62.7, 71.3, 73.5, 75.7, '7'),
('9', 'Laki-Laki', 70.6, 68.4, 66.2, 64, 72.8, 75, 77.2, '8');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tinggi`
--

CREATE TABLE IF NOT EXISTS `tinggi` (
  `tinggi_id` varchar(255) NOT NULL,
  `tanggal_posyandu` date DEFAULT NULL,
  `tinggi_balita` float DEFAULT NULL,
  `umur` varchar(255) DEFAULT NULL,
  `id_balita` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tinggi`
--

INSERT INTO `tinggi` (`tinggi_id`, `tanggal_posyandu`, `tinggi_balita`, `umur`, `id_balita`) VALUES
('3a4e1cbd-a824-4355-907e-3d388df8a903', NULL, 58.4, '23', 'aa9c8fdf-3a13-4343-81c8-23226d55d779'),
('4266f841-eed7-410e-a420-3186ac9eb896', NULL, 88, '24', 'aa9c8fdf-3a13-4343-81c8-23226d55d779'),
('538ed64d-2a2a-479d-b7e6-c1bb3661d9e9', NULL, 112, '39', '9e177a6a-a2a3-46bc-9197-cb99b3a54085'),
('63208c3f-ed4d-4f9d-8624-141f8cf1f8c7', '2016-07-03', 222, '4', '9e177a6a-a2a3-46bc-9197-cb99b3a54085'),
('6fc5d85f-494f-40e9-9ba2-b63e2073f993', NULL, 48, '3', 'aa9c8fdf-3a13-4343-81c8-23226d55d779'),
('b6ca099d-cecc-419e-88ce-d5eb7f036181', NULL, 89, '8', '9e177a6a-a2a3-46bc-9197-cb99b3a54085'),
('dfaf9c5d-fbd8-4fbd-bd45-625f3f509f74', NULL, 83.2, '6', '9e177a6a-a2a3-46bc-9197-cb99b3a54085'),
('f32d0843-dc9e-45b4-98ce-d4a6453ec78a', NULL, 98.5, '7', 'aa9c8fdf-3a13-4343-81c8-23226d55d779'),
('ff7d826c-02b6-4e41-bb10-57ed13f08f66', NULL, 99, '9', 'aa9c8fdf-3a13-4343-81c8-23226d55d779'),
('ff94d632-545b-4499-9928-7ae8506eb478', NULL, 76, '10', '9e177a6a-a2a3-46bc-9197-cb99b3a54085');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tinggibadanumur`
--

CREATE TABLE IF NOT EXISTS `tinggibadanumur` (
  `id` varchar(255) NOT NULL,
  `jenis_kelamin` varchar(255) DEFAULT NULL,
  `median` float NOT NULL,
  `minus1sd` float NOT NULL,
  `minus2sd` float NOT NULL,
  `minus3sd` float NOT NULL,
  `plus1sd` float NOT NULL,
  `plus2sd` float NOT NULL,
  `plus3sd` float NOT NULL,
  `umur` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tinggibadanumur`
--

INSERT INTO `tinggibadanumur` (`id`, `jenis_kelamin`, `median`, `minus1sd`, `minus2sd`, `minus3sd`, `plus1sd`, `plus2sd`, `plus3sd`, `umur`) VALUES
('1', 'Laki-Laki', 87.1, 84.1, 81, 78, 90.2, 93.2, 96.3, '24'),
('10', 'Laki-Laki', 94.1, 90.5, 86.9, 83.4, 97.6, 101.2, 104.8, '33'),
('11', 'Laki-Laki', 94.8, 91.1, 87.5, 83.9, 98.4, 102, 105.6, '34'),
('12', 'Laki-Laki', 95.4, 91.8, 88.1, 84.4, 99.1, 102.7, 106.4, '35'),
('13', 'Laki-Laki', 96.1, 92.4, 88.7, 85, 99.8, 103.5, 107.2, '36'),
('14', 'Laki-Laki', 96.7, 93, 89.2, 85.5, 100.5, 104.2, 108, '37'),
('15', 'Laki-Laki', 97.4, 93.6, 89.8, 86, 101.2, 105, 108.8, '38'),
('16', 'Laki-Laki', 98, 94.2, 90.3, 86.5, 101.8, 105.7, 109.5, '39'),
('17', 'Laki-Laki', 98.6, 94.7, 90.9, 87, 102.5, 106.4, 110.3, '40'),
('18', 'Laki-Laki', 99.2, 95.3, 91.4, 87.5, 103.2, 107.1, 111, '41'),
('19', 'Laki-Laki', 99.9, 95.9, 91.9, 88, 103.8, 1074.8, 111.7, '42'),
('2', 'Laki-Laki', 88, 84.9, 81.7, 78.6, 91.1, 94.2, 97.3, '25'),
('20', 'Laki-Laki', 100.4, 96.4, 92.4, 88.4, 104.5, 105.5, 112.5, '43'),
('21', 'Laki-Laki', 101, 97, 93, 88.9, 105.1, 109.1, 113.2, '44'),
('22', 'Laki-Laki', 101.6, 97.5, 93.5, 89.4, 105.7, 109.8, 113.9, '45'),
('23', 'Laki-Laki', 102.2, 98.1, 94, 89.8, 106.3, 110.4, 114.6, '46'),
('24', 'Laki-Laki', 102.8, 96.6, 94.4, 90.3, 106.9, 111.1, 115.2, '47'),
('25', 'Laki-Laki', 103.3, 99.1, 94.9, 90.7, 107.5, 111.7, 115.9, '48'),
('26', 'Laki-Laki', 103.9, 99.7, 95.4, 91.2, 108.1, 112.4, 116.6, '49'),
('27', 'Laki-Laki', 104.4, 100.2, 95.9, 91.6, 108.7, 113, 117.3, '50'),
('28', 'Laki-Laki', 105, 100.7, 95.4, 92.1, 109.3, 113.6, 117.9, '51'),
('29', 'Laki-Laki', 105.6, 101.2, 96.9, 92.5, 109.9, 114.2, 118.6, '52'),
('3', 'Laki-Laki', 88.8, 85.6, 82.5, 79.3, 92, 95.2, 98.3, '26'),
('30', 'Laki-Laki', 106.1, 101.7, 97.4, 93, 110.5, 114.9, 119.2, '53'),
('31', 'Laki-Laki', 106.7, 102.3, 97.8, 93.4, 111.1, 115.5, 119.9, '54'),
('32', 'Laki-Laki', 107.2, 102.8, 98.3, 93.9, 111.7, 116.1, 120.6, '55'),
('33', 'Laki-Laki', 107.8, 103.3, 98.8, 94.3, 112.3, 116.7, 121.2, '56'),
('34', 'Laki-Laki', 108.3, 103.8, 99.3, 94.7, 112.8, 117.4, 121.9, '57'),
('35', 'Laki-Laki', 108.9, 104.3, 99.7, 95.2, 113.4, 118, 122.6, '58'),
('36', 'Laki-Laki', 109.4, 104.8, 100.2, 95.6, 114, 118.6, 123.2, '59'),
('37', 'Laki-Laki', 110, 105.3, 100.7, 95.6, 114.6, 119.2, 123.9, '60'),
('38', 'Perempuan', 85.7, 82.5, 79.3, 76, 88.9, 92.2, 95.4, '24'),
('39', 'Perempuan', 86.6, 83.3, 80, 76.8, 89.8, 93.1, 96.4, '25'),
('4', 'Laki-Laki', 89.6, 86.4, 83.1, 79.9, 92.9, 96.1, 99.3, '27'),
('40', 'Perempuan', 87.4, 84.1, 80.8, 77.5, 90.8, 94.1, 97.4, '26'),
('41', 'Perempuan', 88.3, 84.9, 81.5, 78.1, 91.7, 95, 98.4, '27'),
('42', 'Perempuan', 89.1, 85.7, 82.2, 78.8, 92.5, 96, 99.4, '28'),
('43', 'Perempuan', 89.9, 86.4, 82.9, 79.5, 93.4, 96.9, 100.3, '29'),
('44', 'Perempuan', 90.7, 87.1, 83.6, 80.1, 94.2, 97.7, 101.3, '30'),
('45', 'Perempuan', 91.4, 87.9, 84.3, 80.7, 95, 98.6, 102.2, '31'),
('46', 'Perempuan', 92.2, 88.6, 84.9, 81.3, 95.8, 99.4, 103.1, '32'),
('47', 'Perempuan', 92.9, 89.3, 85.6, 81.9, 96.6, 100.3, 103.9, '33'),
('48', 'Perempuan', 93.6, 89.9, 86.2, 82.5, 97.4, 101.1, 104.8, '34'),
('49', 'Perempuan', 94.4, 90.6, 86.8, 83.1, 98.1, 101.9, 105.6, '35'),
('5', 'Laki-Laki', 90.4, 87.1, 83.8, 80.5, 93.7, 97, 100.3, '28'),
('50', 'Perempuan', 95.1, 91.2, 84.4, 83.6, 98.9, 102.7, 106.5, '36'),
('51', 'Perempuan', 95.7, 91.9, 88, 84.2, 99.6, 103.4, 107.3, '37'),
('52', 'Perempuan', 96.4, 92.5, 88.6, 84.7, 100.3, 104.2, 108.1, '38'),
('53', 'Perempuan', 97.1, 93.1, 89.2, 85.3, 101, 105, 108.9, '39'),
('54', 'Perempuan', 97.7, 93.8, 89.8, 85.8, 101.7, 105.7, 109.7, '40'),
('55', 'Perempuan', 98.4, 94.4, 90.4, 86.3, 102.4, 106.4, 110.5, '41'),
('56', 'Perempuan', 99, 95, 90.9, 86.8, 103.1, 107.2, 111.2, '42'),
('57', 'Perempuan', 99.7, 95.6, 91.5, 87.4, 103.8, 107.9, 112, '43'),
('58', 'Perempuan', 100.3, 96.2, 92, 87.9, 104.5, 106.6, 112.7, '44'),
('59', 'Perempuan', 100.9, 96.7, 92.5, 88.4, 105.1, 109.3, 113.5, '45'),
('6', 'Laki-Laki', 91.2, 87.8, 84.5, 81.1, 94.5, 97.9, 101.2, '29'),
('60', 'Perempuan', 101.5, 97.3, 93.1, 88.9, 105.8, 110, 114.2, '46'),
('61', 'Perempuan', 102.1, 97.9, 93.6, 89.3, 106.4, 110.7, 114.9, '47'),
('62', 'Perempuan', 102.7, 98.4, 94.1, 89.9, 107, 111.3, 115.7, '48'),
('63', 'Perempuan', 103.3, 99, 94.6, 90.3, 107.7, 112, 116.4, '49'),
('64', 'Perempuan', 103.9, 99.5, 95.1, 90.7, 108.3, 112.7, 117.1, '50'),
('65', 'Perempuan', 104.5, 100.1, 95.6, 91.2, 108.9, 113.3, 117.7, '51'),
('66', 'Perempuan', 105, 100.6, 96.1, 91.7, 109.5, 114, 118.4, '52'),
('67', 'Perempuan', 105.6, 101.1, 96.6, 92.1, 110.1, 114.6, 119.1, '53'),
('68', 'Perempuan', 106.2, 101.6, 97.1, 92.6, 110.7, 115.2, 119.8, '54'),
('69', 'Perempuan', 106.7, 102.2, 97.6, 93, 111.3, 115.9, 180.4, '55'),
('7', 'Laki-Laki', 91.9, 88.5, 85.1, 81.7, 95.3, 98.7, 102.1, '30'),
('70', 'Perempuan', 107.3, 102.7, 98.1, 93.4, 111.9, 116.5, 121.1, '56'),
('71', 'Perempuan', 107.8, 103.2, 98.5, 93.9, 112.5, 117.1, 121.8, '57'),
('72', 'Perempuan', 108.4, 103.7, 99, 94.3, 113, 117.7, 122.4, '58'),
('73', 'Perempuan', 108.9, 104.2, 99.5, 94.7, 113.6, 118.3, 123.1, '59'),
('74', 'Perempuan', 109.4, 104.7, 99.9, 95.2, 114.2, 118.9, 123.7, '60'),
('8', 'Laki-Laki', 92.7, 89.2, 85.7, 82.3, 96.1, 99.6, 103, '31'),
('9', 'Laki-Laki', 93.4, 89.9, 86.4, 82.8, 96.9, 100.4, 103.9, '32'),
('id', 'jenis_kelamin', 0, 0, 0, 0, 0, 0, 0, 'umur');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `user_id` varchar(255) NOT NULL,
  `active` bit(1) NOT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `jenis_kelamin` varchar(255) DEFAULT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `rt` varchar(255) DEFAULT NULL,
  `telepon` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`user_id`, `active`, `foto`, `jenis_kelamin`, `nama`, `password`, `rt`, `telepon`, `username`) VALUES
('4673b2bc-93bc-40a1-91fb-3cf32ec2d8ba', b'1', '23', 'Perempuan', 'sad', '111', '2', '23', '111'),
('4c9c07f3-b36a-417f-add1-0a0ccb740d69', b'1', '23', 'Perempuan', 'adew', '111', '2', '2323', '555'),
('89cb5ac8-6086-4ff7-8083-51e94dcb4c10', b'1', '111', 'Laki-Laki', 'qwe', '111', 'aa', '111', '222'),
('aeef8530-4b60-4072-ac06-70c471a8764a', b'1', '22', 'Perempuan', 'ttrqq', '111', '3', '22', '333'),
('dedc104d-2916-4299-9c8a-e4abd70c5e31', b'1', '22', 'Perempuan', 'cv', '111', '23', '23', '444'),
('USER108', b'1', 'yyy', 'Perempuan', 'yyy', '2016', '3', 'yyy', 'USER108'),
('USER110', b'1', '44', 'Perempuan', 'jjj', '$2a$10$HHRZEbkwmeqWRO8SKqvZaOGtuLeWi.Djn1x2SJH8aLvySyjDipgMi', '44', '44', 'USER110'),
('USER112', b'1', '2', 'Laki-Laki', 'gggqq', '$2a$10$utPDKX7hXt2keFSMWOeK5.nqRjIe3bM6oZiknb.12kYNlrc4vylMS', '2', '2', 'USER112'),
('USER114', b'1', 'petugas', 'Perempuan', 'Petugas', '$2a$10$3xe7FNsJVKfakcWTQHkk..bkSEb3B33zDZCuwJFjy2.4J2cyo4g7e', '3', '222', 'petugas'),
('USER115', b'1', 'bidan', 'Perempuan', 'Bidan', '$2a$10$WTvcHka2Cb1KwGRyMfj4gObv0y5ZWok7krgc0DtlsCkzLEGUtdIV6', '5', '1212', 'bidan'),
('USER116', b'1', '23', 'Perempuan', 'OrangtuaIbu', '$2a$10$Z.G0P46S1vU2rHYkiTo4vuzOkt7FdJtvPSFxbpvVFSyWJrNdsMfaq', '3', '23', 'orangtuaibu'),
('USER117', b'1', 'sd', 'Laki-Laki', 'OrangtuaAyah', '$2a$10$y2VPNE9q3rkI3hEAUG/fw.gM/nCRa8rFKVaKKJHcfuVNZqM159AU.', '3', '09834', 'orangtuaayah'),
('USER118', b'1', '23', 'Perempuan', 'Rw', '$2a$10$UL8URixrEUliSkhtjgIR8.v5UwAO9hdVS1ddzt25HHltzPb8UjUzy', '2', '2323', 'rw'),
('USER119', b'1', 'ikhsan', 'Laki-Laki', 'Ikhsan Nugraha Ash Shofar', '$2a$10$x1yS2ZJRGXPxcdC23nYtCO8Q0B0p9csXSL3yMYAX9pBalIfSiA/zi', '3', '085317742187', 'superadmin'),
('USER120', b'1', 'C:\\Users\\feda\\AppData\\Local\\Temp\\tomcat-docbase.6636363714480264593.8080\\upload\\\\albedo smudge.jpg', 'Laki-Laki', 'ashash', '$2a$10$vjt81WKw8uMX2Xtgrh7AJedmnlYM7ITW/5PU6EJlV4hTP.XuEzCMC', '2', '2', 'USER120'),
('USER121', b'1', 'C:\\Users\\feda\\AppData\\Local\\Temp\\tomcat-docbase.315618029713266104.8080\\upload\\\\edelyn.jpg', 'Perempuan', 'dd', '$2a$10$MzyT4InWG6fd2PIBscgJZeURd7MSEjeP7z2qbVB.AAZLe8KWBE7ZS', '3', '3', 'USER121'),
('USER122', b'1', 'foto', 'Laki-Laki', 'Kurniawan', '$2a$10$0QpG2uogd1C2tGhg0yf/Ve.NBKTUdWthHyB3YK2DlM5e61URiOyMu', '2', '085', 'USER122'),
('USER123', b'1', 'foto', 'Perempuan', 'Sri', '$2a$10$px7ZL4XtFHG/BlOWAYS9vu4JRBqtQqapDCQ3Zyf3a.pNLLxgo8Z5K', '2', '085', 'USER123'),
('USER124', b'1', 'foto', 'Laki-Laki', 'Hasan', '$2a$10$azC7dYSUQEuKZSs20oqA2uyOpyNC1ru3ECVZEe8EpA3O9zKzOpw76', '1', '085', 'USER124'),
('USER125', b'1', 'foto', 'Perempuan', 'Nila', '$2a$10$iGoiTSu/gzO9iKxcj7TJMebOstzsB.merPbDb5K3aupwhbMIPtKaC', '1', '085', 'USER125'),
('USER126', b'1', 'foto', 'Laki-Laki', 'Nendi', '$2a$10$U2v3MqjzXjgjeyZSVYH.Su5/M.uBpdRS5FDLml6s.MjICkFrvrQmy', '2', '085', 'USER126'),
('USER127', b'1', 'foto', 'Perempuan', 'Dedeh', '$2a$10$OqsLwbPTiISQcRhZGVHvwuPpfC35LaEWHhSQkkzzC8Ue4ryXsE0TK', '1', '085', 'USER127'),
('USER128', b'1', 'foto', 'Laki-Laki', 'Haris', '$2a$10$0nIANynf2zbmTdAhlLoiu.3jEwwezfWaT7UqCnsrZ1BG5TVfwspQ.', '3', '085', 'USER128'),
('USER129', b'1', 'foto', 'Perempuan', 'Lisna', '$2a$10$KHQg8SSOKw1.de.bjfluluP3MdYcLRQbPAPS0xv0w7vSXa5ncMJOy', '3', '085', 'USER129'),
('USER130', b'1', 'foto', 'Laki-Laki', 'Sandi', '$2a$10$epHhV.PyQ111/QrBzbfsbOEvBD9s/57pPXrJRWNKXYla4Xjmxderm', '2', '085', 'USER130'),
('USER131', b'1', 'foto', 'Perempuan', 'Neti', '$2a$10$dnC5dITjNksWedqEUPKqE.4Vafp09yb4hjMUnNTfMGf.lN1xDn80W', '2', '085', 'USER131'),
('USER132', b'1', 'foto', 'Laki-Laki', 'Solehudin', '$2a$10$ts4OyXHP9l0sZnXAPvuW4utwRk34I3aroIDMPEMjGO3xwBLytxW7K', '1', '085', 'USER132'),
('USER133', b'1', 'foto', 'Perempuan', 'Gina', '$2a$10$XV0iUnTaqmIShVG.NSRPAeKCpdxTQyLHztKlNBQkGIRdHRAHVLTj2', '1', '085317742187', 'USER133'),
('USER134', b'1', 'foto', 'Laki-Laki', 'Kurniawan D', '$2a$10$Ql5x/vGXTkXZFM6859Qcue3M2DbCZvTcxto41hVX9uDZWs0XYHldK', '1', '085', 'USER134'),
('USER135', b'1', 'foto', 'Perempuan', 'Kayla', '$2a$10$jZFy5KEb/TTMcBm4FbsmG.jZu0nLBIjR5p7rMRiFvhzwuPrS2R9M.', '1', '085', 'USER135'),
('USER136', b'1', 'foto', 'Laki-Laki', 'Agus', '$2a$10$eguj9SAyyqLhchjxBSt/b.o.Ofekdda4.XJ8ILvN/kT8n1VHTokxW', '1', '085', 'USER136'),
('USER137', b'0', 'foto', 'Perempuan', 'Sri Talita', '2016', '1', '085', 'USER137'),
('USER138', b'1', 'foto', 'Laki-Laki', 'Yanto', '$2a$10$ppW8OAFY.ZIU0cS9xCRbP.RTqAEWamZ6P6AhaBNeg8SKLw1SX4Cia', '1', '085', 'USER138'),
('USER139', b'1', 'foto', 'Perempuan', 'Dewi', '$2a$10$XJR0wjQDdZM5PXNDXZ0NOuQNDID3mUS647gL.1gV2lx993Xr1Cd2S', '1', '085', 'USER139'),
('USER140', b'1', 'foto', 'Laki-Laki', 'Ajat', '$2a$10$XUZJzpbrZSdSlScD76gFtuJfbT2fzqQ8D4yu4pO0Js/MvRToCFg06', '2', '085', 'USER140'),
('USER141', b'1', 'foto', 'Perempuan', 'Yayang', '$2a$10$b5TqB9hFdCc/i5xEx7mZIuFh2i6GYfRngFf/2k2ubVe/sPDREl7pu', '1', '085', 'USER141'),
('USER142', b'1', 'foto', 'Laki-Laki', 'Peri', '$2a$10$1sMorrsarUFYDDC2zwCF5eJ8DR4J2eB3DvGQK3sov3JJurnbFtJm.', '3', '085', 'USER142'),
('USER143', b'1', 'foto', 'Perempuan', 'Sri Rizki', '$2a$10$MDF1zKvT1cX.KitzXuV9Q.lxT56RkZBOdcp.M5dgXGge.OLk5VK06', '3', '085', 'USER143'),
('USER144', b'1', 'foto', 'Laki-Laki', 'Kusworo', '$2a$10$F1AhBXjxDBa/bhkx5gbGoe2h1no7.IBDJ.TsJ3Q.SKdbbm5sjolay', '2', '085', 'USER144'),
('USER145', b'1', 'foto', 'Perempuan', 'N. Siti', '$2a$10$nblYCTBgqY06VBx.4knW5u.SiZosYdHRkvRQUEztZpCMNQU00L.DO', '1', '085', 'USER145'),
('USER146', b'1', 'foto', 'Laki-Laki', 'Dudi', '$2a$10$F5NxW6dvns5q4WUu/S2.kOdjS1RCcEr/I26gtbRfbF7N8E4jkrSwS', '3', '085', 'USER146'),
('USER147', b'1', 'foto', 'Perempuan', 'Narti', '$2a$10$69a7jnBwKcl//fGKBrRFse4kAvNmD1FUnUVx9LEfjMFh1ymZUEHDy', '3', '085', 'USER147'),
('USER148', b'1', 'foto', 'Laki-Laki', 'Dedi', '$2a$10$a4dGglNg2E8VzF4FDFHCm.RZSB9Tx.vgDg.f98d1p97ZufE0f0Nme', '3', '085', 'USER148'),
('USER149', b'1', 'foto', 'Perempuan', 'Nunik', '$2a$10$Psv05LwLJmd5peBN/70LOe4lLoPDv6bJyl4hp01bbcbauda3wfzvy', '3', '085', 'USER149'),
('USER150', b'1', 'foto', 'Laki-Laki', 'Nandang', '$2a$10$jr9jGh1XFEl.t9cASIaQ1.YBQvwONqp1LiVo6WuDIgdPYlgg/pkve', '3', '085', 'USER150'),
('USER151', b'1', 'foto', 'Perempuan', 'Nunung', '$2a$10$MqcaXZUu/87xEajEToHoWuebBJRLfxYFEtasZJ4usBESpIoeaYgPu', '3', '085', 'USER151'),
('USER152', b'1', 'foto', 'Laki-Laki', 'A. Halim', '$2a$10$PYjwHEXKofcmoC2kgO7QAOyKiTDFDCQf56D4K0vTyms1i18akSOj2', '3', '085', 'USER152'),
('USER153', b'1', 'foto', 'Perempuan', 'Eva', '$2a$10$PB/KB4H4wtFgoEZHh0xz5u/SQxfuo7xY5Ui/Hnw4v.nLliu0pIZzm', '3', '085', 'USER153'),
('USER154', b'1', 'foto', 'Laki-Laki', 'Jajang', '$2a$10$zus/GPgXIiTlq9RoeRL1Dev8.ONhIKT/Ojs3P2qJLnWOAP0zsD0T6', '3', '085', 'USER154'),
('USER155', b'1', 'foto', 'Perempuan', 'Godijah', '$2a$10$hBS.YM6h5dK7SPO/wn6Il.SEXbLe.m.kCeyHy39YUoKclwWgysnna', '3', '085', 'USER155'),
('USER156', b'1', 'foto', 'Laki-Laki', 'Tatus', '$2a$10$UQ3sG/vCIH6TT11tjnEZ0eQanHVdZXyOpO7kTbJx5sFGnHDH60Z7e', '2', '085', 'USER156'),
('USER157', b'1', 'foto', 'Perempuan', 'Ela', '$2a$10$NXLY.mIhatAW3noEVyGB..tUDAheE8TiAAY61fP2IB6a3gE2fLaY.', '2', '085', 'USER157'),
('USER158', b'1', 'foto', 'Laki-Laki', 'Hasan', '$2a$10$aayaR0L3xqNDCfsRsw1Q6Ofqw.lDfl1Clm075kgALAfH/uB2apVtm', '2', '085', 'USER158'),
('USER159', b'1', 'foto', 'Laki-Laki', 'Nila', '$2a$10$5fWypUcv0MqtVPWo3t8HeuqKZgBS3shOT1kAGRKKnT67BKOhibtGS', '2', '085', 'USER159'),
('USER160', b'1', 'foto', 'Laki-Laki', 'Atang', '$2a$10$fWPG74mnxfD7nyN/zd81fuxi5Ks.UBjKb/Z9o6VtirGazof/1sEKS', '2', '085', 'USER160'),
('USER161', b'1', 'foto', 'Perempuan', 'Nenok', '$2a$10$Df7lk1PyGXo1VSPpvTfqc.z2.9u.R/KiUI3j.fyedGo2JkzB7sABm', '2', '085', 'USER161'),
('USER162', b'1', 'foto', 'Laki-Laki', 'Hilman', '$2a$10$1NcVE4tQEvYKWlxp89VlO.llpfQwhIrI6DGt/JnHwBdaVVqMiBrx2', '3', '085', 'USER162'),
('USER163', b'1', 'foto', 'Perempuan', 'Eka', '$2a$10$zKkSfIG9xiqiftQ./ZL7DeyinbuHf7x5LiH4sb7rfxSK/SQKHwALm', '3', '085', 'USER163'),
('USER164', b'1', 'foto', 'Laki-Laki', 'Dadang Shayma', '$2a$10$O.3I4Mtg016QM0BD6VYWwOMQq/Q/mTyzxNczZyeETmO6hAmZjik5u', '3', '085', 'USER164'),
('USER165', b'1', 'foto', 'Perempuan', 'Diana', '$2a$10$xo32qgdTGkAgjnvltgnr.uqZvn7yCI8q1158pKc3TmPvYmItEFumS', '3', '085', 'USER165'),
('USER166', b'1', 'foto', 'Laki-Laki', 'Ajat Nazepa', '$2a$10$lY.Hj.k3O/y81IRlK.ZujuGbuZJGK.y9IfsYwlYv281T0fVzfGnIW', '1', '085', 'USER166'),
('USER167', b'1', 'foto', 'Perempuan', 'Nurwendah', '$2a$10$YIlfVKE8ggXKVl5RbmOBSOrz2jxR.ZQP7jXjIGLCwqeZBo.IbfZnC', '1', '085', 'USER167'),
('USER168', b'1', 'foto', 'Laki-Laki', 'Wahyu', '$2a$10$cXmk8H.iGDSEKwkffdisV.UitXqgvVd1F3ZDtCw36odRvep/TxMgC', '2', '085', 'USER168'),
('USER169', b'1', 'foto', 'Perempuan', 'Santi', '$2a$10$aRjUh6HSnft7TZsl4mq2L.WyCzqLIpu4lhUtqRo8TqQobmS7aae4q', '3', '085', 'USER169'),
('USER170', b'1', 'foto', 'Laki-Laki', 'Yuyus', '$2a$10$AMuhRgvL8tIgy8enDHOsUO9taDqGHqZU1dKokIUeOVSZAGqtBMqke', '3', '085', 'USER170'),
('USER171', b'1', 'foto', 'Perempuan', 'Eris', '$2a$10$NKS919OQU.auAwCr7HJ9MOS7GItGKkDLjXtlqkGG.3GNCuM5pbUVO', '3', '085', 'USER171'),
('USER172', b'1', 'foto', 'Laki-Laki', 'Dodi', '$2a$10$2z.ngUDudfp2MdDApRY9C.J/UV7OSN.h9YZCEDNNga/l5osc1A9Te', '3', '085', 'USER172'),
('USER173', b'1', 'foto', 'Perempuan', 'Dewi', '$2a$10$4XrNiIqloBofHC3BoTP.d.kCJzram.9Y.OqZsI3lZlofC94tRB5ki', '3', '085', 'USER173'),
('USER174', b'1', 'foto', 'Laki-Laki', 'Asep R', '$2a$10$tdgtko.48BrJ8XanQHxoLONQ3y4Qji/XdBefvD/5mCnhxRWBZYOdS', '3', '085', 'USER174'),
('USER175', b'1', 'foto', 'Perempuan', 'Eka', '$2a$10$QIOcxv84gq8h8t/55/e08uKGfOGOWwdJqn1hTg9tk0MQEMiTnLWry', '3', '085', 'USER175'),
('USER176', b'1', 'foto', 'Laki-Laki', 'Handi', '$2a$10$ftvrgskdj/odSOLT1.t6/eSRzVQ2bvEGlZdJfwQWTuahARY4uk5xm', '1', '085', 'USER176'),
('USER177', b'1', 'foto', 'Perempuan', 'N. Ani', '$2a$10$N8JPpHw/sKYW.gqkfawgyu.U8OJuSCkNt1ZC3QsuGx9nFh6WFUX.G', '1', '085', 'USER177'),
('USER178', b'1', 'foto', 'Laki-Laki', 'Dadang Aditya', '$2a$10$tUBfHJjh85Q0ICWyXwu0WOPaAOhhk8ssYzv9F4oiAQ.harluVa1VO', '4', '085', 'USER178'),
('USER179', b'1', 'foto', 'Perempuan', 'Dian A', '$2a$10$YnGp.uwVnj1hvL9B3xgIxOU.PfsG9fWeeeseUsz6O6rxOcw5wstJm', '4', '085', 'USER179'),
('USER180', b'1', 'foto', 'Laki-Laki', 'Dik-Dik', '$2a$10$rIgIYTJOvyOXFDxyuTz7/e6zAnE9tVSRBQUoFbWZ/VQdPeWlodHSS', '3', '085', 'USER180'),
('USER181', b'1', 'foto', 'Perempuan', 'Nunung', '$2a$10$pExx/fb1X4tzftR0ipEn3OXxaa0pKuxgYUp.q1E.3Yje3qv4C6vtm', '3', '085', 'USER181'),
('USER182', b'1', 'foto', 'Laki-Laki', 'Kusman', '$2a$10$KOLkI881h4D3nMxgHzlxkuMkjkqWz4r2DSiUR1rlFDD/t1B.uRawS', '3', '085', 'USER182'),
('USER183', b'1', 'foto', 'Perempuan', 'Teti', '$2a$10$pgcsAUJgF1s6JLM8PrGkZ.se7PoRR5cgVLALvFT2q0ExWYpWFzz5S', '3', '085', 'USER183'),
('USER184', b'1', 'foto', 'Laki-Laki', 'Sun-Sun', '$2a$10$x11jSMUt/1UiSpV2FKUNdekInR9E5yQe4aQB/3KgZ6Fgo/m8dtVdS', '2', '085', 'USER184'),
('USER185', b'1', 'foto', 'Perempuan', 'Dahlia', '$2a$10$C2knXI3lq3AwEqsQLGbqaOKWbsizeT5bj54t1gNnimh9bsoHr.PMO', '2', '085', 'USER185'),
('USER186', b'1', 'foto', 'Laki-Laki', 'Taryat', '$2a$10$ztTYzuSckEdZVdsQNhBmFOni9oEMkKMlXhBey.OUnMfPbFfcGUDLC', '2', '085', 'USER186'),
('USER187', b'1', 'foto', 'Perempuan', 'Fitri', '$2a$10$jGusfFYl2embFeS6JU.UreI.TRPJMdC6RuMyP9cQNn7.PlbUL1jJq', '2', '085', 'USER187'),
('USER188', b'1', 'foto', 'Laki-Laki', 'Deden', '$2a$10$5EOYZQ.nhA3Uf.sYL/pOSeGnuOGJCMeRbiEY5kCaOaSJ/E.Zo.0e6', '4', '085', 'USER188'),
('USER189', b'1', 'foto', 'Perempuan', 'Hesti', '$2a$10$QUgit7rQUSn0WJh7IFDm3uQfcP.g9fIIzB7v7Zgf14.r5vBTJvWBC', '4', '085', 'USER189'),
('USER190', b'1', 'foto', 'Laki-Laki', 'Ahmad', '$2a$10$ov5bhDPpa9Y.dUFoW1OpA.ZE7LspfpZyp6ezZMr1ZRS7g3JQ8k9z.', '2', '085', 'USER190'),
('USER191', b'1', 'foto', 'Perempuan', 'Elin', '$2a$10$I017Oy5jfGbbNmVT43AjYuuy.uYiuAUUEJCya8zDl8d5bgkdeZHly', '2', '085', 'USER191'),
('USER192', b'1', 'foto', 'Laki-Laki', 'Miftah', '$2a$10$DdDQ.nRupw5DnpCJtDE8cOai4/WCfXTeWPpxEcAlzOSlmKlWGWQcW', '1', '085', 'USER192'),
('USER193', b'1', 'foto', 'Perempuan', 'Yanti', '$2a$10$U6qRdZLCvxj5tlbw.7jzweaiYK8n1L0KbaTnA2.wkYc8LrNj8vM7G', '1', '085', 'USER193'),
('USER194', b'1', 'foto', 'Laki-Laki', 'Opik', '$2a$10$QEuoUGPoS5SPAbnXCLU5kOHVVOLl3Uex54vTaX0lds86EHdqYyJfO', '2', '085', 'USER194'),
('USER195', b'1', 'foto', 'Perempuan', 'Siti N', '$2a$10$o89KEtsnSQNj4mXmldF.6eXsQRJGQPWgdL3S2O4NZCPjBJQX/ep3C', '2', '085', 'USER195'),
('USER196', b'1', 'foto', 'Laki-Laki', 'Asep An', '$2a$10$O7V9hk3MQveOLEAxQFl7Our7WpOfjkSI.XHHw8giN6HHFGHyymXTq', '1', '085', 'USER196'),
('USER197', b'1', 'foto', 'Perempuan', 'Ai An', '$2a$10$rGrTusPTatIr.SqF47vr4uhgBbNf2exdqkXxSFPg8ZEMwm7mROywy', '1', '085', 'USER197'),
('USER198', b'1', 'foto', 'Laki-Laki', 'Dede', '$2a$10$CZ.VnfZRg9s7Qg1F7gr0je1ULJSWFfmTvXWmKusKXQzwMaoMS3CSq', '3', '085', 'USER198'),
('USER199', b'1', 'foto', 'Perempuan', 'Endang', '$2a$10$hsYEbxD7bz4afzMofc2wKOkakreuvnLEu12Qtm0u6XlrZt/f1I45.', '3', '085', 'USER199'),
('USER200', b'1', 'foto', 'Laki-Laki', 'Deni', '$2a$10$fHU9iBUn.VAkGaWYAvNJA.1xAUijFuxOfL/3r96SZ5zu282ePpjfe', '3', '085', 'USER200'),
('USER201', b'1', 'foto', 'Perempuan', 'Nita', '$2a$10$lEfzKktmW34/gNBHU1ajiOe/g16i6W0juxOFsAM3KBc46HNB7nKoe', '3', '085', 'USER201'),
('USER202', b'1', 'foto', 'Laki-Laki', 'Ade', '$2a$10$MxU0/in14puailivnkxCs.xEQVUdWa6bOtTGF0rhFLQLkQ3zQaczq', '3', '085', 'USER202'),
('USER203', b'1', 'foto', 'Perempuan', 'Siti F', '$2a$10$1RGrzfBuJalYYp3NHwTgTOMHgk2OBjZF50azOUaDzonP0xGXd5yo2', '3', '085', 'USER203'),
('USER204', b'1', 'foto', 'Laki-Laki', 'Opa', '$2a$10$hwQfjAWLh0DcuQjispGM8.Fu1YqggV/Wx68raevP/gVNTHS7AEqF6', '4', '085', 'USER204'),
('USER205', b'1', 'foto', 'Perempuan', 'Ratih', '$2a$10$EFf0kUQBiLQT8A8urHTpyOdKhI.JDGvJWlcHqJoIlvLh4/6xcSwJO', '4', '085', 'USER205'),
('USER206', b'1', 'foto', 'Laki-Laki', 'Asep J', '$2a$10$0stl0HfNFW/KS1DVYRSiMO0bS4hjuwuvoj8j0tHSQQZQ5WuM/lEt.', '1', '085', 'USER206'),
('USER207', b'1', 'foto', 'Perempuan', 'Indri', '$2a$10$bQXtCH/obmJ89tYk9Ffr/.dDLIORuY8AT10bZTRMMhWdUlyhUyU0m', '1', '085', 'USER207'),
('USER208', b'1', 'foto', 'Laki-Laki', 'Dadang Sambas', '$2a$10$1Wxh1TIMmhk5fWbHshTam.nq7KvgsgI/uEtEcv0G3uJu7AnUUFjLS', '3', '085', 'USER208'),
('USER209', b'1', 'foto', 'Perempuan', 'Siti B', '$2a$10$WbW5pvxKLUWjvAVvWYT7f.oNmBBzIcJFL6ci0DwNtOjzdOxFC/lDq', '3', '085', 'USER209'),
('USER210', b'1', 'foto', 'Laki-Laki', 'Ajat M', '$2a$10$2khr7YVZq1dVqFzJGjx52.5.3yzuAxzqaD6I..QSdB/6TiItiVQwy', '4', '085', 'USER210'),
('USER211', b'1', 'foto', 'Perempuan', 'Ida', '$2a$10$rTvMCfNI7xonAmpAqvxqlOoJxR1CkJA3lvBaj6wr5IK9PyJ9oFeDK', '1', '085', 'USER211'),
('USER212', b'1', 'foto', 'Laki-Laki', 'Yoko S', '$2a$10$H2oaysWv53/XCbKha2OkqueEzOv25Qip7z7Fu1HbNiY/Q3iou/RAa', '3', '085', 'USER212'),
('USER213', b'1', 'foto', 'Perempuan', 'Nurhayati', '$2a$10$42FZclMDCCSFc8rQWe0M5OCXSA5GBDt7R0vjcaPMROBrdy/YrTjxO', '3', '085', 'USER213'),
('USER214', b'1', 'foto', 'Laki-Laki', 'Asep E', '$2a$10$I7wSf10sG.D9avP3wP3ezOdjIa3TPnrp5c/Dpt7.oIb2Ig1QasTCi', '3', '085', 'USER214'),
('USER215', b'1', 'foto', 'Perempuan', 'Imas E', '$2a$10$Shaab5UN.8a.EqVAbBjmru73nkeOV/.rKZx56DC5LlJnYgBPMWmju', '3', '085', 'USER215'),
('USER216', b'1', 'foto', 'Laki-Laki', 'Luki', '$2a$10$y1Oje6C7qy6UfLxUZEyG9.TgXutpH15G4bpsO.EVhdYUVnyVFCz3.', '1', '085', 'USER216'),
('USER217', b'1', 'foto', 'Perempuan', 'Imas Y', '$2a$10$OVypl0.uXI3kAu1eKAkAKOIbjZFrIyupsXJ32nGC0a9gHqMXSLVES', '1', '085', 'USER217'),
('USER218', b'1', 'foto', 'Laki-Laki', 'Rizal', '$2a$10$aF3T5THNC8FsoEaYXZr7w..2Sr1eAvNNxvZvNpzBwqIodYXM.nkGa', '2', '085', 'USER218'),
('USER219', b'1', 'foto', 'Perempuan', 'Yuliati', '$2a$10$zi8to0vJFIMu77hZCKtJEO.V4kUn4SSfTv81kk43MHjK7kvhTH076', '2', '085', 'USER219'),
('USER220', b'1', 'foto', 'Laki-Laki', 'Memet', '$2a$10$iIEpP2fBD2xfEHKYmJ0s5uPC8sAlfUvx///drE2dalixPx4DjSITm', '3', '085', 'USER220'),
('USER221', b'1', 'foto', 'Perempuan', 'Aliyah', '$2a$10$cB/PXg9n6dU2QeGd7tVk8ejCBhMIuLXzF6r0/pbcPuwSgmXAqc0Hi', '3', '085', 'USER221'),
('USER222', b'1', 'foto', 'Laki-Laki', 'Tohir', '$2a$10$aYNLFRmdNx0j8NEcBTUyxOKMGvyx11vwBA28MZTq.wdhEOGdzttzu', '1', '085', 'USER222'),
('USER223', b'1', 'foto', 'Perempuan', 'Yani', '$2a$10$ELv2XfG1vbzmn..cgIS8x.zBhqUalxXbkE9alZA2DP8urf8Dtrlvi', '1', '085', 'USER223'),
('USER224', b'1', 'foto', 'Laki-Laki', 'Heri', '$2a$10$5IxoOloWiCpNAbUXd3Qo.eO2rjeV0rbUZYH8MtJeTQ1x6Zvjarmqq', '3', '085', 'USER224'),
('USER225', b'1', 'foto', 'Perempuan', 'Sri F', '$2a$10$ovZLWImOesm9VudfnG.EwOYT0H85AQk.5NGu4TIpsAOgsFbGwk3ta', '3', '085', 'USER225'),
('USER226', b'1', 'foto', 'Laki-Laki', 'UUs', '$2a$10$Jh.RejBRNMzC3MkJ6eDgS.IXBVJG9EGMysxatvU7ESOtgja04maL2', '4', '085', 'USER226'),
('USER227', b'1', 'foto', 'Perempuan', 'Nurjanah', '$2a$10$QqwE67yd201175krU1FMruF1.DdEBcPwZuBBQsL3ecZOIP83upAPi', '4', '085', 'USER227'),
('USER228', b'1', 'foto', 'Laki-Laki', 'Jajang F', '$2a$10$Zoo7eVOUTIteNOlvzsBydOizwHoatb0R0XFPi6Buft0MVlaFKIk26', '4', '085', 'USER228'),
('USER229', b'1', 'foto', 'Perempuan', 'Elin F', '$2a$10$tbFjT9hHy2xILqvi4NoBKe8IECYiu1ioqhr9Q5jpmL73V7tbKtFRO', '4', '085', 'USER229'),
('USER230', b'1', 'foto', 'Laki-Laki', 'Yudi', '$2a$10$q4qgS69kHm94Wxc/eYbTWeA78nTPJmfEswnrq7aZ4GUyN.IRidf.C', '4', '085', 'USER230'),
('USER231', b'1', 'foto', 'Perempuan', 'Santi F', '$2a$10$8N5FdmJXzP0AB91zvr0Qx.4MWhy46K6T/VoI4Vlrjbv8DpdhTVNei', '4', '085', 'USER231'),
('USER232', b'1', 'foto', 'Laki-Laki', 'Deni B', '$2a$10$t8jp2LqYTmBlFhJCAADj5uXHmiCEtHahqtE0JHwjKuB8EG2B1Hs76', '3', '085', 'USER232'),
('USER233', b'1', 'foto', 'Perempuan', 'Purwanti', '$2a$10$qtSCQx/4X8cZIIkFdcqdgeSiBvGaHD5/kRNG67g7YdIj.e5M1T.qu', '3', '085', 'USER233'),
('USER234', b'1', 'foto', 'Laki-Laki', 'Ade H', '$2a$10$b5.zKe7LZSJkEfUraBFPbOaH7IGWS82OFFOoWMiiFy.1RJvo/BFiy', '4', '085', 'USER234'),
('USER235', b'1', 'foto', 'Perempuan', 'Elis', '$2a$10$FsTGEngqU2/8PBxRnB460OY39dJfTvXcdA.nxHr4uIPjR8j3cTNmy', '4', '085', 'USER235'),
('USER236', b'1', 'foto', 'Laki-Laki', 'Pian', '$2a$10$3N.gll/MP2PpKiRaPHCHNujuTjRkH2w6v2c9dUaN5WATHN8/IBSRm', '1', '085', 'USER236'),
('USER237', b'1', 'foto', 'Perempuan', 'Wulan', '$2a$10$A9iTQ0XaXcvGDEPesNFx9O6XSbmOC2tWLVIMrDomOWoEhqP3lzRRi', '1', '085', 'USER237'),
('USER238', b'1', 'foto', 'Laki-Laki', 'Aji', '$2a$10$0xurukbEyCBeKxMVShTFturx7ELy.01A0GRQVJfM8hqFTGvKWWZfC', '3', '085', 'USER238'),
('USER239', b'1', 'foto', 'Perempuan', 'Dede A', '$2a$10$toz1wbSTi4jpwOjQmgclEuYVjDjpEpV9CDijTsSTSLJkFXTdSWy0W', '3', '085', 'USER239'),
('USER240', b'1', 'foto', 'Laki-Laki', 'Andri', '$2a$10$log778aKYLIC/rdwCa4T6.w0WqEyxrzrOjmde5a4abfBdKRARsuAK', '4', '085', 'USER240'),
('USER241', b'1', 'foto', 'Perempuan', 'Fitri H', '$2a$10$rX.DmqxZQAQA7AOZdqb3OOpwOZI8hcIQMqAAI6tLR5W5aDJZfsJwW', '4', '085', 'USER241'),
('USER242', b'1', 'foto', 'Laki-Laki', 'Engkan', '$2a$10$dqxo8NwIq2BB/N8DXJlalePO7GONRWVu89obJEvXSZm/3hMYV/1MW', '2', '085', 'USER242'),
('USER243', b'1', 'foto', 'Perempuan', 'Ilfa', '$2a$10$BCTs5G16nkkEaNXnqFsfKeBA64Hrth9W8x199.7XZvG1rITscup8a', '2', '085', 'USER243'),
('USER244', b'1', 'foto', 'Laki-Laki', 'Nentri', '$2a$10$38foZp9AkUKCjbCezsLZ.etLwn7Zf/mA1FH2ZzOAS6O0c3PGZe5Zi', '2', '085', 'USER244'),
('USER245', b'1', 'foto', 'Laki-Laki', 'Gugi', '$2a$10$A965E.gxIbbFGfmIzmHlBuQQoEb175TicXazUgWhQiKa.ZVzRviDm', '2', '085', 'USER245'),
('USER246', b'1', 'foto', 'Perempuan', 'Ira', '$2a$10$CxvRfvmYrUDw6JiBtmj3GOcDCTgDrdzcwHAn.eSncmcgQcuTfuAtC', '2', '085', 'USER246'),
('USER247', b'1', 'foto', 'Laki-Laki', 'Dudi', '$2a$10$m3qpow1TO0wYeIZHQ7AyvuYW3s7fAhbgSSesasU9fe1sg9uSgNEmC', '2', '085', 'USER247'),
('USER248', b'1', 'foto', 'Perempuan', 'Diana M', '$2a$10$2eOEc4J8hWPIEVg4rIavYu/Lg3TKApgL2O7OF72lPNKXCjMw3QiM6', '2', '085', 'USER248'),
('USER249', b'1', 'foto', 'Laki-Laki', 'Juju', '$2a$10$KwzkX6yzIUEt81Cc.BLbpeR9R5cn19B5fnLGrYE.zVmPU9TWml0c.', '2', '085', 'USER249'),
('USER250', b'1', 'foto', 'Perempuan', 'Yuli', '$2a$10$PkYRxESLQWWo5GjenW5ko.iYRRx1GavKv9t29N0t/OK4XrYDyrOV2', '2', '085', 'USER250'),
('USER251', b'1', 'foto', 'Laki-Laki', 'Niko', '$2a$10$YaH1eUybHJwxLr1zPHbaNe.WupSJGItP4tvg1H6ROjCkTE9xrpBOm', '3', '085', 'USER251'),
('USER252', b'1', 'foto', 'Perempuan', 'Rahma', '$2a$10$dOtzyHZm4Zp6Hax7D1MZDevihA9wIQNyxV9dtI5Yh/Lq9j4VxxSeO', '3', '085', 'USER252'),
('USER253', b'1', 'foto', 'Laki-Laki', 'Sandi', '$2a$10$0pn5iEn/8AeYmH9ifIEh0ey7TEj/PH2l4A80LeLjZgLg56GxtpyZC', '1', '085', 'USER253'),
('USER254', b'1', 'foto', 'Perempuan', 'Dina R', '$2a$10$f1KUsbuEMjl7Z3HgoyWrC.014dXEeU2GChfOzUtSos6fWZWRCZB1W', '1', '085', 'USER254'),
('USER255', b'1', 'foto', 'Laki-Laki', 'PIpik', '$2a$10$CoG2lMYb3lCRJGAz0REse.2oyzG7b3950mYrbO3XFAKdaPoRUHpDG', '4', '085', 'USER255'),
('USER256', b'1', 'foto', 'Perempuan', 'Yanti F', '$2a$10$qebilaVWyx4j3slPaGOQ3.F6YDLnZVGFKdEBa.5UBWxRFaykqS5LC', '4', '085', 'USER256'),
('USER257', b'1', 'foto', 'Laki-Laki', 'Dik-Dik M', '$2a$10$i/B0FB8N/r.bWKQo6lrMFemnq8ANysUvkQ5bv/5fyIJ/.i399ICtq', '3', '085', 'USER257'),
('USER258', b'1', 'foto', 'Perempuan', 'Resa', '$2a$10$CFhHAXq0xLjN1jav1ZjzS.puKwDgDcfwqKqDQ2D56X7/dTeBAFCEy', '4', '085', 'USER258'),
('USER259', b'1', 'foto', 'Laki-Laki', 'Yayat', '$2a$10$dFUK96D0sFN8EsMbijW4.uckbXQHamIZwj6p6ngUKgiEdm492lgY2', '2', '085', 'USER259'),
('USER260', b'1', 'foto', 'Perempuan', 'Elitia', '$2a$10$79EcLUWnsjOmUyc2T7Z7aOT5em3uAAHzirtTJhcGy8JG7opkf1oku', '2', '085', 'USER260'),
('USER261', b'1', 'foto', 'Laki-Laki', 'Jatnika', '$2a$10$5g3DTk/ct/6QlZlxG0Een.rASS0vN19A8mC2aJZ3qV/I7oRELSgaC', '2', '085', 'USER261'),
('USER262', b'1', 'foto', 'Perempuan', 'Ima', '$2a$10$c32L5e9letTMPWRmS72yCOlxXPm921Bb7AnUX5tXxSnVPYsMmAVlS', '2', '085', 'USER262'),
('USER263', b'1', 'foto', 'Laki-Laki', 'Haris A', '$2a$10$sUK55MtSt3X3sYE3UFtOs.d7u9ADdYUCgF5b27BdRCpBAnvGbubsi', '2', '085', 'USER263'),
('USER264', b'1', 'foto', 'Perempuan', 'Wulan', '$2a$10$ykNMfxfBViImCxKa0J1D6O2Nwfgmo41nb7YVR1Xih/gMs3zcmh/re', '2', '085', 'USER264'),
('USER265', b'1', 'foto', 'Laki-Laki', 'Yandi', '$2a$10$kc34ZWeG/Qc5oI/E5GoU0u.K82fujimxob7HeLi94FWk4nRf5OGSC', '4', '085', 'USER265'),
('USER266', b'1', 'foto', 'Perempuan', 'N Maryati', '$2a$10$8HgudM8ikwkko8QpRWHjpubKBeYiNav5n6SUAADd1PxCUq6isoHO.', '4', '085', 'USER266'),
('USER267', b'1', 'foto', 'Laki-Laki', 'Rohmat', '$2a$10$7Pw3Hx2TAvAWAgercUOWZuWfKws9Io8VfsB5aG82xjccgkjpQhlEG', '2', '085', 'USER267'),
('USER268', b'1', 'foto', 'Perempuan', 'Intan', '$2a$10$1TbrrZxiRZt9dBdHJVLZZuucyRPGI73ieyqWN3OsGgqGdHeShmhxW', '2', '085', 'USER268'),
('USER269', b'1', 'foto', 'Perempuan', 'Din-Din', '$2a$10$m0fVtM1UAEhAr.RELmizTO.xoEPX/NXoU54b.TJdO29IU4tWY59F2', '3', '085', 'USER269'),
('USER270', b'1', 'foto', 'Perempuan', 'Rani', '$2a$10$u3lG8yMdLEfxX4ZS02T9kew4NB9yUJm1VcBTcbrwR4/YwktZJ03Tm', '3', '085', 'USER270'),
('USER271', b'1', 'foto', 'Laki-Laki', 'Din-Din', '$2a$10$/B0bFvImftfF2I2eyyEHMuAohR1DdvY3hzlRzlzkkmbI0efSuww7G', '3', '085', 'USER271');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `assigment`
--
ALTER TABLE `assigment`
  ADD PRIMARY KEY (`assigment_id`), ADD KEY `FK_iri3lakfej3gn8wpel44o6fgd` (`id_jabatan_jabatanId`), ADD KEY `FK_5b7v5m0dafijwa82gu3s8ny20` (`id_user_userId`);

--
-- Indexes for table `balita`
--
ALTER TABLE `balita`
  ADD PRIMARY KEY (`balita_id`), ADD KEY `FK_srb2b5g8h64otkwtovrlmyn9w` (`ayah_userId`), ADD KEY `FK_3k7i7rtqirbt49eqab7v2xm0l` (`ibu_userId`);

--
-- Indexes for table `berat`
--
ALTER TABLE `berat`
  ADD PRIMARY KEY (`berat_id`), ADD KEY `FK_jl6v1nex39sjscqwlcrix7vpy` (`id_balita`);

--
-- Indexes for table `beratbadanpanjang`
--
ALTER TABLE `beratbadanpanjang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `beratbadantinggi`
--
ALTER TABLE `beratbadantinggi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `beratbadanumur`
--
ALTER TABLE `beratbadanumur`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jabatan`
--
ALTER TABLE `jabatan`
  ADD PRIMARY KEY (`jabatan_id`);

--
-- Indexes for table `panjangbadanumur`
--
ALTER TABLE `panjangbadanumur`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tinggi`
--
ALTER TABLE `tinggi`
  ADD PRIMARY KEY (`tinggi_id`), ADD KEY `FK_7n4wmm0xwbya6av9ovngjtvn3` (`id_balita`);

--
-- Indexes for table `tinggibadanumur`
--
ALTER TABLE `tinggibadanumur`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `assigment`
--
ALTER TABLE `assigment`
ADD CONSTRAINT `FK_5b7v5m0dafijwa82gu3s8ny20` FOREIGN KEY (`id_user_userId`) REFERENCES `user` (`user_id`),
ADD CONSTRAINT `FK_iri3lakfej3gn8wpel44o6fgd` FOREIGN KEY (`id_jabatan_jabatanId`) REFERENCES `jabatan` (`jabatan_id`);

--
-- Ketidakleluasaan untuk tabel `balita`
--
ALTER TABLE `balita`
ADD CONSTRAINT `FK_3k7i7rtqirbt49eqab7v2xm0l` FOREIGN KEY (`ibu_userId`) REFERENCES `user` (`user_id`),
ADD CONSTRAINT `FK_srb2b5g8h64otkwtovrlmyn9w` FOREIGN KEY (`ayah_userId`) REFERENCES `user` (`user_id`);

--
-- Ketidakleluasaan untuk tabel `berat`
--
ALTER TABLE `berat`
ADD CONSTRAINT `FK_jl6v1nex39sjscqwlcrix7vpy` FOREIGN KEY (`id_balita`) REFERENCES `balita` (`balita_id`);

--
-- Ketidakleluasaan untuk tabel `tinggi`
--
ALTER TABLE `tinggi`
ADD CONSTRAINT `FK_7n4wmm0xwbya6av9ovngjtvn3` FOREIGN KEY (`id_balita`) REFERENCES `balita` (`balita_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
