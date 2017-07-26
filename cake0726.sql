-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- 主機: 127.0.0.1
-- 產生時間： 2017 �?07 ??26 ??06:45
-- 伺服器版本: 5.6.24
-- PHP 版本： 5.6.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 資料庫： `cake`
--

-- --------------------------------------------------------

--
-- 資料表結構 `allguide`
--

CREATE TABLE IF NOT EXISTS `allguide` (
  `guide_id` int(4) NOT NULL COMMENT '類別ID',
  `guide_no` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '類別代號',
  `guide_spec` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '類別說明',
  `up_id` int(4) NOT NULL COMMENT '上層ID'
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='類別群組檔';

--
-- 資料表的匯出資料 `allguide`
--

INSERT INTO `allguide` (`guide_id`, `guide_no`, `guide_spec`, `up_id`) VALUES
(1, 'A', '產品分類', 0),
(2, 'CAKE', '蛋糕類', 1),
(3, 'CLAS', '經典', 2),
(4, 'CUTE', '可愛少女系', 2),
(5, 'LOVE', '戀人專屬', 2),
(6, 'CHOC', '濃情巧克力', 2),
(7, 'FEAT', '主題特色', 2),
(8, 'TEST', '測試', 2),
(9, 'OTHE', '其他', 2);

-- --------------------------------------------------------

--
-- 資料表結構 `orderdetail`
--

CREATE TABLE IF NOT EXISTS `orderdetail` (
  `OrderDetailID` int(11) unsigned NOT NULL,
  `OrderID` int(11) unsigned DEFAULT NULL,
  `pd_id` int(11) unsigned DEFAULT NULL,
  `pd_nm` varchar(254) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `UnitPrice` int(11) unsigned DEFAULT NULL,
  `Quantity` int(11) unsigned DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 資料表的匯出資料 `orderdetail`
--

INSERT INTO `orderdetail` (`OrderDetailID`, `OrderID`, `pd_id`, `pd_nm`, `UnitPrice`, `Quantity`) VALUES
(1, 1, 53, '濃情世界', 50, 1),
(2, 2, 55, '星燦皇家', 55, 1),
(3, 3, 53, '濃情世界', 50, 1),
(4, 3, 50, '黑世界', 55, 1),
(5, 3, 45, '經典芒香', 60, 1),
(6, 4, 55, '星燦皇家', 55, 1),
(7, 5, 67, '測試123`', 11, 1),
(8, 6, 47, '皇家黑爵士', 60, 1),
(9, 7, 53, '濃情世界', 50, 1),
(10, 8, 51, '繽紛世界', 60, 1),
(11, 9, 48, '巧克力之夜', 50, 1),
(12, 10, 50, '黑世界', 55, 1),
(13, 11, 55, '星燦皇家', 55, 1),
(14, 12, 45, '經典芒香', 60, 1),
(15, 13, 51, '繽紛世界', 60, 1),
(16, 13, 40, '奶油莓香', 55, 1),
(17, 13, 65, '星空', 65, 1),
(18, 13, 33, '繽紛世界', 80, 2),
(19, 14, 47, '皇家黑爵士', 60, 3),
(20, 14, 53, '濃情世界', 50, 1),
(21, 14, 54, '白色戀人', 55, 2),
(22, 14, 51, '繽紛世界', 60, 1),
(23, 14, 64, '魔幻紫芋', 55, 1),
(24, 14, 30, '情人節', 100, 1),
(25, 15, 55, '星燦皇家', 55, 1),
(26, 16, 55, '星燦皇家', 55, 1),
(27, 16, 53, '濃情世界', 50, 2),
(28, 17, 57, '熔岩火山', 60, 1),
(29, 17, 55, '星燦皇家', 55, 1),
(30, 18, 55, '星燦皇家', 55, 10),
(31, 19, 53, '濃情世界', 50, 1000),
(32, 19, 51, '繽紛世界', 60, 1000),
(33, 19, 57, '熔岩火山', 60, 1000),
(34, 19, 45, '經典芒香', 60, 2000),
(35, 19, 40, '奶油莓香', 55, 1000),
(36, 19, 50, '黑世界', 55, 1000),
(37, 19, 39, '焦糖檸檬', 60, 10000);

-- --------------------------------------------------------

--
-- 資料表結構 `orders`
--

CREATE TABLE IF NOT EXISTS `orders` (
  `OrderID` int(11) unsigned NOT NULL,
  `SubTotal` int(11) unsigned DEFAULT NULL,
  `Shipping` int(11) unsigned DEFAULT NULL,
  `GrandTotal` int(11) unsigned DEFAULT NULL,
  `CustomerName` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `CustomerEmail` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `CustomerAddress` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `CustomerPhone` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `paytype` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '訂單成立' COMMENT '訂單狀態(訂單成立\\已付款\\出貨處理\\已出貨\\訂單完結)',
  `time` int(11) NOT NULL COMMENT '訂購日期'
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 資料表的匯出資料 `orders`
--

INSERT INTO `orders` (`OrderID`, `SubTotal`, `Shipping`, `GrandTotal`, `CustomerName`, `CustomerEmail`, `CustomerAddress`, `CustomerPhone`, `paytype`, `status`, `time`) VALUES
(1, 50, 100, 50, '13', '0', '132', '132', 'ATM 轉帳', '出貨處理中', 1500782492),
(2, 55, 100, 55, 'angel', 'mbaha75@gmail.com', 'qq', '111', 'ATM 轉帳', '已付款', 1500782492),
(3, 165, 100, 265, '測試', '123', '住址', '123', 'ATM 轉帳', '已出貨', 1500782492),
(4, 55, 100, 155, 'q23', 'mbaha75@gmail.com', '123', '123', 'ATM 轉帳', '訂單成立', 1500782492),
(5, 11, 100, 111, '13', 'mbaha75@gmail.com', '23r', '123', 'ATM 轉帳', '訂單成立', 1500782492),
(6, 60, 100, 160, '123', 'mbaha75@gmail.com', '123e', '123e', 'ATM 轉帳', '訂單成立', 1500782492),
(7, 50, 100, 150, '123', 'mbaha75@gmail.com', 'wf', '1234', 'ATM 轉帳', '訂單成立', 1500782492),
(8, 60, 100, 160, 'werty', 'mbaha75@gmail.com', '234', '1234', 'ATM 轉帳', '訂單成立', 1500782492),
(9, 50, 100, 50, 'wer', 'mbaha75@gmail.com', '1234', '1234', 'ATM 轉帳', '訂單成立', 1500782492),
(10, 55, 100, 155, '1wd', 'mbaha75@gmail.com', 'asdfg', '123', 'ATM 轉帳', '訂單成立', 1500782492),
(11, 55, 100, 55, 'angel', 'mbaha75@gmail.com', 'asdfghj', '123456789', '郵政劃撥', '訂單成立', 1500782492),
(12, 60, 100, 60, 'angel', 'mbaha75@gmail.com', 'asdfghjk', '1234567890-', 'ATM 轉帳', '訂單成立', 1500782492),
(13, 340, 100, 440, '小雅', NULL, NULL, '123123', 'ATM 轉帳', '訂單成立', 1500946572),
(14, 555, 100, 655, 'ACC', 'aaa111', '台中市', '0900000888', 'ATM 轉帳', '訂單成立', 1500950684),
(15, 55, 100, 155, '測試', 'mbaha75@gmail.com', '住址', '123', 'ATM 轉帳', '訂單成立', 1501033429),
(16, 155, 100, 255, 'angel', 'mbaha75@gmail.com', '測試', '1333', '郵政劃撥', '訂單成立', 1501033523),
(17, 115, 100, 215, 'wei', 'slkfjsdf', 'slkjaf', '091111111', 'ATM 轉帳', '訂單成立', 1501034003),
(18, 550, 100, 650, 'wei', 'aflect1@gmail.com', 'a', '0911111111', 'ATM 轉帳', '訂單成立', 1501034042),
(19, 1000000, 100, 1000100, '王小姐', 'midday0583@gmail.com', '台中', '0932157468', 'ATM 轉帳', '訂單成立', 1501034360);

-- --------------------------------------------------------

--
-- 資料表結構 `product_setno`
--

CREATE TABLE IF NOT EXISTS `product_setno` (
  `set_id` int(11) NOT NULL COMMENT 'id',
  `set_pd_type` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '產品別',
  `set_pd_spec` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '規格',
  `set_pd_num` int(11) NOT NULL DEFAULT '0' COMMENT '流水號'
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='產品編號設定檔';

--
-- 資料表的匯出資料 `product_setno`
--

INSERT INTO `product_setno` (`set_id`, `set_pd_type`, `set_pd_spec`, `set_pd_num`) VALUES
(6, 'CAKE', 'TEST', 13),
(7, 'CAKE', 'FEAT', 5),
(8, 'CAKE', 'CLAS', 6),
(9, 'CAKE', 'LOVE', 6),
(10, 'CAKE', 'CHOC', 7),
(11, 'CAKE', 'OTHE', 3),
(12, 'CAKE', 'CUTE', 6);

-- --------------------------------------------------------

--
-- 資料表結構 `sw_member`
--

CREATE TABLE IF NOT EXISTS `sw_member` (
  `id` int(11) NOT NULL COMMENT '使用者id',
  `userName` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '使用者姓名',
  `userAccount` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '使用者帳號',
  `userPassword` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '使用者密碼',
  `email` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'email',
  `registerTime` int(11) NOT NULL COMMENT '註冊時間',
  `sex` tinyint(1) NOT NULL COMMENT '性別',
  `address` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '地址',
  `birthday` int(11) DEFAULT NULL COMMENT '生日',
  `phone` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '電話',
  `level` int(1) NOT NULL DEFAULT '0' COMMENT '用者等級(0:一般使用者，1:管理者，9:超級管理者)',
  `disabled` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否停用(0:使用;1:停用)'
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='會員檔';

--
-- 資料表的匯出資料 `sw_member`
--

INSERT INTO `sw_member` (`id`, `userName`, `userAccount`, `userPassword`, `email`, `registerTime`, `sex`, `address`, `birthday`, `phone`, `level`, `disabled`) VALUES
(1, 'selina', 'selina', '123456', '0', 1500640828, 0, '0', NULL, NULL, 2, 0),
(2, '超級管理者', 'admin', 'rootqwer', '0', 1500642071, 0, NULL, NULL, NULL, 9, 0),
(4, 'angel', 'angel', '123456', '123456', 1500724859, 0, NULL, NULL, NULL, 0, 0),
(5, 'LULU', 'NCC', '1234', '0', 1500885886, 0, NULL, NULL, NULL, 1, 0),
(6, '小雅', 'Acet', 'ad860712', '0', 1500946152, 0, '0', 202, '24866060', 1, 0),
(7, 'AAA', 'abc', '123456', '0', 1500948257, 1, NULL, NULL, NULL, 1, 0),
(8, '曾柏榮', '889889889', '781123', '0', 1500948421, 1, '0', 781123, '972897286', 1, 0);

-- --------------------------------------------------------

--
-- 資料表結構 `sw_product`
--

CREATE TABLE IF NOT EXISTS `sw_product` (
  `pd_id` int(11) NOT NULL COMMENT '產品ID',
  `pd_no` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '產品編號',
  `pd_nm` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '產品名稱',
  `pd_type` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '產品類別(allguide.allguide_no,up_no = ''A'')',
  `pd_price` int(6) NOT NULL DEFAULT '0' COMMENT '產品金額',
  `pd_inventory` int(3) NOT NULL DEFAULT '0' COMMENT '產品庫存數量',
  `pd_pic` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '產品圖片',
  `pd_spec` text COLLATE utf8mb4_unicode_ci COMMENT '產品說明',
  `pd_idlaunched` tinyint(1) NOT NULL DEFAULT '1' COMMENT '產品上架[預設1：(0下架，1:上架)]',
  `addAccount` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '新增人員',
  `modifyAccount` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人員'
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='產品檔';

--
-- 資料表的匯出資料 `sw_product`
--

INSERT INTO `sw_product` (`pd_id`, `pd_no`, `pd_nm`, `pd_type`, `pd_price`, `pd_inventory`, `pd_pic`, `pd_spec`, `pd_idlaunched`, `addAccount`, `modifyAccount`) VALUES
(28, 'CAKE-TEST-0001', '12311aaaab', 'TEST', 12311, 13211, 'TEST/about01.jpg', 'test1111b', 0, 'selina', 'selina'),
(29, 'CAKE-FEAT-0001', '復活節火雞杯子蛋糕', 'FEAT', 100, 999, 'FEAT/5-3s.png', '綿密的香草蛋糕，搭配巧克力鮮奶油，再點綴上滿滿的糖果粒，繽紛你的生活。 ', 1, '0', NULL),
(30, 'CAKE-FEAT-0002', '情人節', 'FEAT', 100, 999, 'FEAT/5-2s.png', '柔膩細緻巧克力蛋糕體，配上草莓鮮奶油及草莓巧克力，刻劃出微酸香甜的清新滋味，每口都充滿幸福口感。', 1, '0', NULL),
(31, 'CAKE-FEAT-0003', '聖誕節', 'FEAT', 100, 999, 'FEAT/5-4s.png', '抹茶蛋糕加上濃郁抹茶奶油，口感柔軟順口，再撒上繽紛色彩的糖果，享受快樂聖誕佳節。', 1, '0', NULL),
(32, 'CAKE-FEAT-0004', '萬聖節', 'FEAT', 100, 999, 'FEAT/5-5s.png', '綿密的巧克力蛋糕體搭配濃郁的巧克力奶油，香醇口感豐富值得一試，甜蜜好滋味絕對不容錯過。', 1, '0', NULL),
(33, 'CAKE-FEAT-0005', '繽紛世界', 'FEAT', 80, 999, 'FEAT/5-1s.png', '色彩鮮明蛋糕體搭配濃郁新鮮奶油，多層次豐富的口感，是視覺上的新享受。', 1, '0', NULL),
(34, 'CAKE-TEST-0002', '傑尼龜', 'TEST', 100, 999, 'TEST/09KEU300.jpg', NULL, 0, '0', '0'),
(35, 'CAKE-CLAS-0001', '尊爵世界', 'CLAS', 65, 100, 'CLAS/P1-1S.png', '綿密鬆軟的杯子蛋糕，外層滿佈巧克力片，配上師傅特製的香甜奶油及金莎巧克力點綴，層次  感豐富，極致昇華的口感。', 1, '0', NULL),
(36, 'CAKE-TEST-0003', '妙蛙種子', 'TEST', 100, 999, 'TEST/0.jpg', NULL, 0, '0', '0'),
(37, 'CAKE-TEST-0004', '小火龍', 'TEST', 100, 999, 'TEST/4491_P_1463716371177.jpg', NULL, 0, '0', '0'),
(38, 'CAKE-TEST-0005', '綠毛蟲', 'TEST', 100, 999, 'TEST/1097656194_l.jpg', NULL, 0, '0', 'selina'),
(39, 'CAKE-CLAS-0002', '焦糖檸檬', 'CLAS', 60, 100, 'CLAS/P1-2s.png', '濃濃的焦糖味搭配清新的檸檬香，融合的恰到好處，入口酸甜四溢，讓您戀上它的滋味。', 1, '0', NULL),
(40, 'CAKE-CLAS-0003', '奶油莓香', 'CLAS', 55, 100, 'CLAS/P1-3s.png', '香濃順口的奶油，和新鮮的草莓清爽解膩，獨特香氣與口感，甜蜜好滋味絕對不容錯過喔。', 1, '0', NULL),
(41, 'CAKE-TEST-0006', '獨角蟲', 'TEST', 100, 999, 'TEST/0000.jpg', NULL, 0, '0', '0'),
(42, 'CAKE-TEST-0007', '波波', 'TEST', 100, 999, 'TEST/000001.jpg', NULL, 0, '0', '0'),
(43, 'CAKE-CLAS-0004', '經典櫻桃', 'CLAS', 60, 100, 'CLAS/P1-4s.png', '使用進口的櫻桃，再加上新鮮奶油，綿密的蛋糕體搭配櫻桃水果風味，是歷久彌新的經典美味。', 1, '0', NULL),
(44, 'CAKE-CLAS-0005', '皇家草莓', 'CLAS', 60, 100, 'CLAS/p1-5s.png', '義大利進口的香草所製而成的綿密香草蛋糕，搭配清新爽口不甜膩新鮮草莓，將幸福的滋味發  揮地淋漓盡致。', 1, '0', NULL),
(45, 'CAKE-CLAS-0006', '經典芒香', 'CLAS', 60, 100, 'CLAS/P1-6s.png', '清新的香草蛋糕配上滑順的奶油布蕾，再搭配新鮮芒果，酸甜滋味創造豐富的口感，融和出誘  人的完美組合。', 1, '0', NULL),
(46, 'CAKE-LOVE-0001', '粉紅甜心', 'LOVE', 60, 999, 'LOVE/p4-1s.png', '經典巧克力蛋糕搭配草莓口味奶油和巧克力碎片，巧克力愛心典雅甜蜜造型，  每一口都充滿幸福口感。', 1, '0', NULL),
(47, 'CAKE-CHOC-0001', '皇家黑爵士', 'CHOC', 60, 100, 'CHOC/p2-1s.png', '堅持使用進口動物鮮奶油加上濃郁巧克力，無添加人工香料，濃醇香令人驚艷。', 0, '0', 'Acet'),
(48, 'CAKE-CHOC-0002', '巧克力之夜', 'CHOC', 50, 100, 'CHOC/p2-2s.png', '瑞士巧克力鮮奶油搭上美國進口的櫻桃，成熟的果香味之運用，令人著迷。', 1, '0', NULL),
(49, 'CAKE-LOVE-0002', '神秘紫色戀情', 'LOVE', 55, 200, 'LOVE/p4-2s.png', '優美紫色玫瑰造型和經典口味的奶油蛋糕體，融和出誘人口感的完美組合。', 1, '0', NULL),
(50, 'CAKE-CHOC-0003', '黑世界', 'CHOC', 55, 100, 'CHOC/p2-3s.png', '香濃順口的新鮮奶油，搭配綿細巧克力杯子蛋糕，層次感豐富，極致昇華的味  蕾體驗。', 1, '0', NULL),
(51, 'CAKE-CHOC-0004', '繽紛世界', 'CHOC', 60, 100, 'CHOC/p2-4s.png', '綿密鬆軟的巧克力蛋糕，配上香濃順口的新鮮奶油，繽紛色彩視覺成為您的最  愛。', 1, '0', NULL),
(52, 'CAKE-LOVE-0003', '甜蜜愛戀 ', 'LOVE', 60, 100, 'LOVE/p4-3s.png', '草莓口味搭配藍莓莓果，以巧克力蛋糕為主體，酸甜的香濃草莓奶油，適合和最愛的他一同分享。', 1, '0', NULL),
(53, 'CAKE-CHOC-0005', '濃情世界', 'CHOC', 50, 100, 'CHOC/p2-5s.png', '微甜的可可，綿密的巧克力杯子蛋糕是巧克力愛好者不能錯過的甜點。', 1, '0', NULL),
(54, 'CAKE-LOVE-0004', '白色戀人', 'LOVE', 55, 200, 'LOVE/p4-4s.png', '香氛濃郁的牛奶鮮奶油，搭配OREO巧克力餅乾及新鮮草莓口感甜而不膩，多層次變化是口感及視覺上的新享受。讓人陶醉在一場華麗的協奏曲。', 1, '0', NULL),
(55, 'CAKE-CHOC-0006', '星燦皇家', 'CHOC', 55, 100, 'CHOC/p2-6s.png', '由手工新鮮奶油，配上瑞士巧克力，口感分明令人著迷。', 1, '0', NULL),
(56, 'CAKE-LOVE-0005', '戀愛滋味', 'LOVE', 60, 200, 'LOVE/p4-5s.png', '香草戚風蛋糕散發濃郁的牛奶香氣，上層與高雅奶油花朵裝飾完美結合，刻劃出香甜的清新戀愛滋味，嚐一口甜蜜在心頭。', 1, '0', NULL),
(57, 'CAKE-CHOC-0007', '熔岩火山', 'CHOC', 60, 100, 'CHOC/p2-7s.png', '嚴選進口巧克力配上香氛濃郁的鮮奶油，有如火山熔岩爆漿口感，讓人陶醉在  一場華麗的協奏曲。', 1, '0', NULL),
(58, 'CAKE-LOVE-0006', '幸福殿堂', 'LOVE', 65, 200, 'LOVE/p4-6s.png', '鮮甜的鮮奶油配上蓬鬆的香草蛋糕體，柔膩細緻的口感，入口即化，微甜的滋味與奶香的融合，清新的滋味如幸福的殿堂。', 1, '0', NULL),
(59, 'CAKE-OTHE-0001', '夏日檸檬口味組合(九入裝)', 'OTHE', 500, 100, 'OTHE/part-1.jpg', '夏日限定--清爽微酸檸檬口味奶油慕絲，搭配日本進口麵粉製作的低糖鬆軟的綿密蛋糕體，加上新鮮檸檬片和薄何葉裝飾，1盒九入禮盒包裝，適合送禮自用', 1, '0', NULL),
(60, 'CAKE-OTHE-0002', '野餐外帶組合-巧克力口味12入', 'OTHE', 600, 100, 'OTHE/Part-3.jpg', '外帶分享組合包裝12入裝/盒，大分量適合家族野餐、朋友聚會。老少咸宜的經典巧克力口味杯子蛋糕，上面撒滿細緻白糖霜。', 1, '0', NULL),
(61, 'CAKE-CUTE-0001', '彩虹少女心', 'CUTE', 60, 5, 'CUTE/P3-1S.png', '色彩繽紛的糖果口味鮮奶油杯子蛋糕是少女不可錯過的最新時尚配備！', 1, '0', '0'),
(62, 'CAKE-CUTE-0002', '粉色派對', 'CUTE', 60, 5, 'CUTE/P3-2S.png', '巧克力米、糖漬櫻桃、脆皮餅乾，準備好一起party了嗎？', 1, '0', NULL),
(63, 'CAKE-CUTE-0003', '愛戀咖啡', 'CUTE', 55, 5, 'CUTE/P3-3S.png', '咖啡口味的蛋糕體綴上微苦咖啡豆，是少女初嚐成熟大人世界的第一選擇。', 1, '0', NULL),
(64, 'CAKE-CUTE-0004', '魔幻紫芋', 'CUTE', 55, 5, 'CUTE/P3-4S.png', '香草蛋糕本體與裝飾奶油皆加入芋絲，口感香濃滑順。', 1, '0', NULL),
(65, 'CAKE-CUTE-0005', '星空', 'CUTE', 65, 5, 'CUTE/P3-5S.png', '佈滿白巧克力口味星星的綻藍天空給少女一天滿滿元氣！', 1, '0', NULL),
(66, 'CAKE-CUTE-0006', '粉嫩花園', 'CUTE', 65, 5, 'CUTE/P3-6S.png', '歡迎來到專屬於青春少女的粉色花園，不如帶走一朵藍色小花吧！', 1, '0', NULL),
(67, 'CAKE-TEST-0008', '測試123`', 'TEST', 11, 11, 'TEST/1.jpg', NULL, 0, '0', '0'),
(69, 'CAKE-TEST-0009', '測試直1234', 'TEST', 11, 11, 'TEST/indexad_170529083824.jpg', NULL, 0, '0', '0'),
(70, 'CAKE-TEST-0012', '1qaz', 'TEST', 11, 11, 'TEST/icon-fb.png', 'qazqazqaz1234567890sdfgfdsfhgfds一二三四五', 0, '0', '0'),
(71, 'CAKE-TEST-0013', '測試123', 'TEST', 5, 5, 'TEST/Penguins.jpg', '小企鵝', 0, 'selina', 'selina');

--
-- 已匯出資料表的索引
--

--
-- 資料表索引 `allguide`
--
ALTER TABLE `allguide`
  ADD PRIMARY KEY (`guide_id`), ADD UNIQUE KEY `guide_no` (`guide_no`);

--
-- 資料表索引 `orderdetail`
--
ALTER TABLE `orderdetail`
  ADD PRIMARY KEY (`OrderDetailID`);

--
-- 資料表索引 `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`OrderID`);

--
-- 資料表索引 `product_setno`
--
ALTER TABLE `product_setno`
  ADD PRIMARY KEY (`set_id`), ADD UNIQUE KEY `set_pd_spec` (`set_pd_spec`);

--
-- 資料表索引 `sw_member`
--
ALTER TABLE `sw_member`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `userAccount` (`userAccount`);

--
-- 資料表索引 `sw_product`
--
ALTER TABLE `sw_product`
  ADD PRIMARY KEY (`pd_id`), ADD UNIQUE KEY `pd_no` (`pd_no`);

--
-- 在匯出的資料表使用 AUTO_INCREMENT
--

--
-- 使用資料表 AUTO_INCREMENT `allguide`
--
ALTER TABLE `allguide`
  MODIFY `guide_id` int(4) NOT NULL AUTO_INCREMENT COMMENT '類別ID',AUTO_INCREMENT=10;
--
-- 使用資料表 AUTO_INCREMENT `orderdetail`
--
ALTER TABLE `orderdetail`
  MODIFY `OrderDetailID` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=38;
--
-- 使用資料表 AUTO_INCREMENT `orders`
--
ALTER TABLE `orders`
  MODIFY `OrderID` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=20;
--
-- 使用資料表 AUTO_INCREMENT `product_setno`
--
ALTER TABLE `product_setno`
  MODIFY `set_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',AUTO_INCREMENT=13;
--
-- 使用資料表 AUTO_INCREMENT `sw_member`
--
ALTER TABLE `sw_member`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '使用者id',AUTO_INCREMENT=9;
--
-- 使用資料表 AUTO_INCREMENT `sw_product`
--
ALTER TABLE `sw_product`
  MODIFY `pd_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '產品ID',AUTO_INCREMENT=72;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
