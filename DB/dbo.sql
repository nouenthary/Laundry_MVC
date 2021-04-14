/*
 Navicat Premium Data Transfer

 Source Server         : SQL SERVER
 Source Server Type    : SQL Server
 Source Server Version : 11002218
 Source Catalog        : Laundry_DB
 Source Schema         : dbo

 Target Server Type    : SQL Server
 Target Server Version : 11002218
 File Encoding         : 65001

 Date: 04/04/2021 20:58:51
*/


-- ----------------------------
-- Table structure for Category
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Category]') AND type IN ('U'))
	DROP TABLE [dbo].[Category]
GO

CREATE TABLE [dbo].[Category] (
  [CategoryId] int  IDENTITY(1,1) NOT NULL,
  [Name] nvarchar(255) COLLATE SQL_Latin1_General_CP850_BIN  NULL,
  [Price] float(53)  NULL,
  [Delete] tinyint DEFAULT ((1)) NULL,
  [Image] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Whole] float(53)  NULL,
  [VIP] float(53)  NULL,
  [Discount] float(53)  NULL,
  [Start] varchar(255) COLLATE SQL_Latin1_General_CP850_BIN  NULL,
  [End] varchar(255) COLLATE SQL_Latin1_General_CP850_BIN  NULL
)
GO

ALTER TABLE [dbo].[Category] SET (LOCK_ESCALATION = AUTO)
GO


-- ----------------------------
-- Records of Category
-- ----------------------------
SET IDENTITY_INSERT [dbo].[Category] ON
GO

INSERT INTO [dbo].[Category] ([CategoryId], [Name], [Price], [Delete], [Image], [Whole], [VIP], [Discount], [Start], [End]) VALUES (N'1', N'បោកអ៊ុត', N'500', N'1', N'Service_1600846032.png', N'1500', N'2000', N'0', NULL, NULL)
GO

INSERT INTO [dbo].[Category] ([CategoryId], [Name], [Price], [Delete], [Image], [Whole], [VIP], [Discount], [Start], [End]) VALUES (N'2', N'បោក(អត់អ៊ុត)', N'1000', N'1', N'Service_1600845986.png', N'2000', N'3000', N'0', NULL, NULL)
GO

SET IDENTITY_INSERT [dbo].[Category] OFF
GO


-- ----------------------------
-- Table structure for Commission
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Commission]') AND type IN ('U'))
	DROP TABLE [dbo].[Commission]
GO

CREATE TABLE [dbo].[Commission] (
  [CommissionId] int  IDENTITY(1,1) NOT NULL,
  [Percent] float(53)  NULL,
  [Date] nvarchar(53) COLLATE SQL_Latin1_General_CP850_BIN  NULL,
  [Time] nvarchar(53) COLLATE SQL_Latin1_General_CP850_BIN  NULL,
  [UserId] int  NULL,
  [Delete] tinyint  NULL,
  [UserUpdate] int  NULL
)
GO

ALTER TABLE [dbo].[Commission] SET (LOCK_ESCALATION = AUTO)
GO


-- ----------------------------
-- Records of Commission
-- ----------------------------
SET IDENTITY_INSERT [dbo].[Commission] ON
GO

INSERT INTO [dbo].[Commission] ([CommissionId], [Percent], [Date], [Time], [UserId], [Delete], [UserUpdate]) VALUES (N'33', N'20', N'2021-04-02', N'02:28:12', N'1', N'1', N'1')
GO

INSERT INTO [dbo].[Commission] ([CommissionId], [Percent], [Date], [Time], [UserId], [Delete], [UserUpdate]) VALUES (N'34', N'10', N'2021-03-23', N'10:18:20', N'2', N'1', N'1')
GO

INSERT INTO [dbo].[Commission] ([CommissionId], [Percent], [Date], [Time], [UserId], [Delete], [UserUpdate]) VALUES (N'35', N'10', N'2021-03-23', N'10:18:20', N'11', N'1', N'1')
GO

INSERT INTO [dbo].[Commission] ([CommissionId], [Percent], [Date], [Time], [UserId], [Delete], [UserUpdate]) VALUES (N'36', N'10', N'2021-03-23', N'10:18:20', N'12', N'1', N'1')
GO

INSERT INTO [dbo].[Commission] ([CommissionId], [Percent], [Date], [Time], [UserId], [Delete], [UserUpdate]) VALUES (N'37', N'10', N'2021-03-24', N'10:51:03', N'15', N'1', N'1')
GO

INSERT INTO [dbo].[Commission] ([CommissionId], [Percent], [Date], [Time], [UserId], [Delete], [UserUpdate]) VALUES (N'38', N'10', N'2021-03-23', N'10:18:20', N'13', N'1', N'12')
GO

INSERT INTO [dbo].[Commission] ([CommissionId], [Percent], [Date], [Time], [UserId], [Delete], [UserUpdate]) VALUES (N'39', N'10', N'2021-03-23', N'10:18:20', N'14', N'1', N'12')
GO

INSERT INTO [dbo].[Commission] ([CommissionId], [Percent], [Date], [Time], [UserId], [Delete], [UserUpdate]) VALUES (N'40', N'10', N'2021-03-23', N'10:18:20', N'16', N'1', N'12')
GO

INSERT INTO [dbo].[Commission] ([CommissionId], [Percent], [Date], [Time], [UserId], [Delete], [UserUpdate]) VALUES (N'41', N'30', N'2021-04-02', N'05:36:36', N'17', N'1', N'1')
GO

SET IDENTITY_INSERT [dbo].[Commission] OFF
GO


-- ----------------------------
-- Table structure for Config
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Config]') AND type IN ('U'))
	DROP TABLE [dbo].[Config]
GO

CREATE TABLE [dbo].[Config] (
  [id] int  IDENTITY(1,1) NOT NULL,
  [key] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [value] nvarchar(max) COLLATE SQL_Latin1_General_CP850_BIN  NULL
)
GO

ALTER TABLE [dbo].[Config] SET (LOCK_ESCALATION = AUTO)
GO


-- ----------------------------
-- Records of Config
-- ----------------------------
SET IDENTITY_INSERT [dbo].[Config] ON
GO

INSERT INTO [dbo].[Config] ([id], [key], [value]) VALUES (N'1', N'create', N'{''message'',''Created successfully.''} នឹង')
GO

INSERT INTO [dbo].[Config] ([id], [key], [value]) VALUES (N'2', N'delete', N'{''message'',''Deleted successfully.''}')
GO

INSERT INTO [dbo].[Config] ([id], [key], [value]) VALUES (N'3', N'address', N'ផ្ទះលេខ 147 ផ្លូវលេខ​ 217, សង្កាត់​ដង្កោ, ខណ្ឌដង្កោ, រាជធានីភ្នំពេញ')
GO

INSERT INTO [dbo].[Config] ([id], [key], [value]) VALUES (N'4', N'phone', N'023 232 888, 092 900 991, 069 866 636, 077772656')
GO

INSERT INTO [dbo].[Config] ([id], [key], [value]) VALUES (N'5', N'noted1', N'ចំណាំ : ប្រសិនបើអតិថិជនបាត់សំលៀកបំពាក់ក្រុមហ៊ុននឺងសង១ទ្វេ ១០ នៃតំលៃបោកអ៊ុត ។ ប្រសិនបើអតិថិជនមិនបានមកយកសំលៀកបំពាក់ក្នុងរយះពេល១ខែទុកជាអសាបង់ ។')
GO

INSERT INTO [dbo].[Config] ([id], [key], [value]) VALUES (N'6', N'noted', N'ចំណាំ:ប្រសិនបាត់សម្លៀកបំពាក់ អតិថិជនក្រុមហ៊ុននឹងសង ១×១០ នៃតម្លៃនោះ  ។ ​​ប្រសិនអតិថិជនមិនបានមកយកសម្លៀកបំពាក់ក្នុងរយះពេល១ខែទុកជាអសាបង់ ។')
GO

INSERT INTO [dbo].[Config] ([id], [key], [value]) VALUES (N'7', N'title', N'បោកគក់ Online')
GO

INSERT INTO [dbo].[Config] ([id], [key], [value]) VALUES (N'8', N'currency', N'4200')
GO

SET IDENTITY_INSERT [dbo].[Config] OFF
GO


-- ----------------------------
-- Table structure for Currency
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Currency]') AND type IN ('U'))
	DROP TABLE [dbo].[Currency]
GO

CREATE TABLE [dbo].[Currency] (
  [Id] int  IDENTITY(1,1) NOT NULL,
  [Name] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Rate] float(53)  NULL,
  [Date] nvarchar(55) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[Currency] SET (LOCK_ESCALATION = AUTO)
GO


-- ----------------------------
-- Records of Currency
-- ----------------------------
SET IDENTITY_INSERT [dbo].[Currency] ON
GO

INSERT INTO [dbo].[Currency] ([Id], [Name], [Rate], [Date]) VALUES (N'1', N'Dollar', N'4100', NULL)
GO

SET IDENTITY_INSERT [dbo].[Currency] OFF
GO


-- ----------------------------
-- Table structure for Customer
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Customer]') AND type IN ('U'))
	DROP TABLE [dbo].[Customer]
GO

CREATE TABLE [dbo].[Customer] (
  [CustomerId] int  IDENTITY(1,1) NOT NULL,
  [Name] nvarchar(255) COLLATE SQL_Latin1_General_CP850_BIN  NULL,
  [Phone] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Noted] nvarchar(max) COLLATE SQL_Latin1_General_CP850_BIN  NULL,
  [Date] nvarchar(55) COLLATE SQL_Latin1_General_CP850_BIN  NULL,
  [Delete] tinyint DEFAULT ((1)) NULL,
  [Type] varchar(255) COLLATE SQL_Latin1_General_CP850_BIN  NULL
)
GO

ALTER TABLE [dbo].[Customer] SET (LOCK_ESCALATION = AUTO)
GO


-- ----------------------------
-- Records of Customer
-- ----------------------------
SET IDENTITY_INSERT [dbo].[Customer] ON
GO

INSERT INTO [dbo].[Customer] ([CustomerId], [Name], [Phone], [Noted], [Date], [Delete], [Type]) VALUES (N'1', N'Other ', N'010111122', N'New', N'2020-12-12', N'1', N'Whole Price')
GO

INSERT INTO [dbo].[Customer] ([CustomerId], [Name], [Phone], [Noted], [Date], [Delete], [Type]) VALUES (N'2', N'POV kh', N'01212323234', N'New', N'2020-12-12', N'1', N'Unit Price')
GO

INSERT INTO [dbo].[Customer] ([CustomerId], [Name], [Phone], [Noted], [Date], [Delete], [Type]) VALUES (N'3', N'POV Pro', N'0222456544', N'New', N'2020-12-12', N'1', N'Unit Price')
GO

INSERT INTO [dbo].[Customer] ([CustomerId], [Name], [Phone], [Noted], [Date], [Delete], [Type]) VALUES (N'7', N'Mak Somaly', N'095678177', N'234', N'2020-12-12', N'1', N'Unit Price')
GO

INSERT INTO [dbo].[Customer] ([CustomerId], [Name], [Phone], [Noted], [Date], [Delete], [Type]) VALUES (N'8', N'Chinda Ou', N'015616222', N'42432', N'2020-12-12', N'1', N'Unit Price')
GO

INSERT INTO [dbo].[Customer] ([CustomerId], [Name], [Phone], [Noted], [Date], [Delete], [Type]) VALUES (N'9', N'Srey nin Kaong', N'069566695', N'234', N'2020-12-12', N'1', N'Unit Price')
GO

INSERT INTO [dbo].[Customer] ([CustomerId], [Name], [Phone], [Noted], [Date], [Delete], [Type]) VALUES (N'10', N'Sem Pisal', N'087528074', N'1234', N'2020-12-12', N'1', N'Unit Price')
GO

INSERT INTO [dbo].[Customer] ([CustomerId], [Name], [Phone], [Noted], [Date], [Delete], [Type]) VALUES (N'11', N'Say Leakena', N'0964336666', N'234', N'2020-12-12', N'1', N'Unit Price')
GO

INSERT INTO [dbo].[Customer] ([CustomerId], [Name], [Phone], [Noted], [Date], [Delete], [Type]) VALUES (N'13', N'Narin', N'098794127', N'345', N'2020-12-12', N'1', N'Unit Price')
GO

INSERT INTO [dbo].[Customer] ([CustomerId], [Name], [Phone], [Noted], [Date], [Delete], [Type]) VALUES (N'15', N'Bunnary Kim', N'010961916', N'45', N'2020-12-12', N'1', N'Unit Price')
GO

INSERT INTO [dbo].[Customer] ([CustomerId], [Name], [Phone], [Noted], [Date], [Delete], [Type]) VALUES (N'16', N'Nop Maneth Maneth', N'010434458', N'222', N'2020-12-12', N'1', N'Unit Price')
GO

INSERT INTO [dbo].[Customer] ([CustomerId], [Name], [Phone], [Noted], [Date], [Delete], [Type]) VALUES (N'17', N'Sor Ran', N'011846779', N'13243', N'2020-12-12', N'0', N'Unit Price')
GO

INSERT INTO [dbo].[Customer] ([CustomerId], [Name], [Phone], [Noted], [Date], [Delete], [Type]) VALUES (N'18', N'Sully Single', N'098332356', N'34534324', N'2020-12-12', N'1', N'Unit Price')
GO

INSERT INTO [dbo].[Customer] ([CustomerId], [Name], [Phone], [Noted], [Date], [Delete], [Type]) VALUES (N'19', N'Phearom Seng', N'016633374', N'Noted', N'2020-12-12', N'1', N'Unit Price')
GO

INSERT INTO [dbo].[Customer] ([CustomerId], [Name], [Phone], [Noted], [Date], [Delete], [Type]) VALUES (N'20', N'kao Sokly', N'0715042244', N'234', N'2020-12-12', N'1', N'Unit Price')
GO

INSERT INTO [dbo].[Customer] ([CustomerId], [Name], [Phone], [Noted], [Date], [Delete], [Type]) VALUES (N'21', N'Srey Chnas', N'092854688', N'234', N'2020-12-12', N'1', N'Unit Price')
GO

INSERT INTO [dbo].[Customer] ([CustomerId], [Name], [Phone], [Noted], [Date], [Delete], [Type]) VALUES (N'22', N'KL', N'098252527', N'234', N'2020-12-12', N'1', N'Unit Price')
GO

INSERT INTO [dbo].[Customer] ([CustomerId], [Name], [Phone], [Noted], [Date], [Delete], [Type]) VALUES (N'23', N'Sereida Srey', N'068494194', N'df', N'2020-12-12', N'1', N'Unit Price')
GO

INSERT INTO [dbo].[Customer] ([CustomerId], [Name], [Phone], [Noted], [Date], [Delete], [Type]) VALUES (N'24', N'Socheata Lach', N'0968431005', N'Na', N'2020-12-12', N'1', N'Unit Price')
GO

INSERT INTO [dbo].[Customer] ([CustomerId], [Name], [Phone], [Noted], [Date], [Delete], [Type]) VALUES (N'25', N'Sivng Eng Bou', N'010781270', N'bbbb', N'2020-12-12', N'1', N'Unit Price')
GO

INSERT INTO [dbo].[Customer] ([CustomerId], [Name], [Phone], [Noted], [Date], [Delete], [Type]) VALUES (N'26', N'Sokchea Nguon', N'095678177', N'234', N'2020-12-12', N'1', N'Unit Price')
GO

INSERT INTO [dbo].[Customer] ([CustomerId], [Name], [Phone], [Noted], [Date], [Delete], [Type]) VALUES (N'27', N'Nouen Thary', N'093952445', N'Noted', N'2020-12-12', N'1', N'Unit Price')
GO

INSERT INTO [dbo].[Customer] ([CustomerId], [Name], [Phone], [Noted], [Date], [Delete], [Type]) VALUES (N'28', N'MrThary', N'0999992222', N'Thary', N'2020-12-12', N'1', N'Unit Price')
GO

INSERT INTO [dbo].[Customer] ([CustomerId], [Name], [Phone], [Noted], [Date], [Delete], [Type]) VALUES (N'29', N'Chan', N'099888877', N'New', N'2020-12-12', N'1', N'Unit Price')
GO

INSERT INTO [dbo].[Customer] ([CustomerId], [Name], [Phone], [Noted], [Date], [Delete], [Type]) VALUES (N'30', N'Jonh Sina', N'099888888', N'New Customer', N'2020-12-12', N'1', N'Unit Price')
GO

INSERT INTO [dbo].[Customer] ([CustomerId], [Name], [Phone], [Noted], [Date], [Delete], [Type]) VALUES (N'31', N'Tep Bunthet', N'093247311', N'New Customer', N'2020-12-12', N'1', N'Unit Price')
GO

INSERT INTO [dbo].[Customer] ([CustomerId], [Name], [Phone], [Noted], [Date], [Delete], [Type]) VALUES (N'32', N'Eno', N'088777766', N'Noted???', N'2020-12-12', N'1', N'Unit Price')
GO

INSERT INTO [dbo].[Customer] ([CustomerId], [Name], [Phone], [Noted], [Date], [Delete], [Type]) VALUES (N'33', N'Hongsor', N'069866636', N'washing kangkor', N'2020-12-12', N'1', N'Whole Price')
GO

INSERT INTO [dbo].[Customer] ([CustomerId], [Name], [Phone], [Noted], [Date], [Delete], [Type]) VALUES (N'40', N'ថារី', N'012931273', N'តាមព័ត៌មានបឋម ។', N'2020-12-12', N'1', N'VIP')
GO

INSERT INTO [dbo].[Customer] ([CustomerId], [Name], [Phone], [Noted], [Date], [Delete], [Type]) VALUES (N'41', N'ថារីល', N'012931273345', NULL, N'2020-12-12', N'0', N'Unit Price')
GO

INSERT INTO [dbo].[Customer] ([CustomerId], [Name], [Phone], [Noted], [Date], [Delete], [Type]) VALUES (N'42', N'កំប្លេ', N'02394237423', N'Noted', N'2020-12-12', N'0', N'Unit Price')
GO

INSERT INTO [dbo].[Customer] ([CustomerId], [Name], [Phone], [Noted], [Date], [Delete], [Type]) VALUES (N'43', N'នីតាា', N'02384762384', N'Noted', N'2020-12-12', N'0', N'Unit Price')
GO

INSERT INTO [dbo].[Customer] ([CustomerId], [Name], [Phone], [Noted], [Date], [Delete], [Type]) VALUES (N'44', N'នីត', N'02349234', N'234', N'2020-12-12', N'0', N'Unit Price')
GO

INSERT INTO [dbo].[Customer] ([CustomerId], [Name], [Phone], [Noted], [Date], [Delete], [Type]) VALUES (N'45', N'នឿន​ថារី ', N'0213423479234', N'123', N'2020-12-12', N'0', N'Unit Price')
GO

INSERT INTO [dbo].[Customer] ([CustomerId], [Name], [Phone], [Noted], [Date], [Delete], [Type]) VALUES (N'46', N'សិ', N'092462934875', N'តាមព័ត៌មានបឋម បុរសជាអ្នកជំងឺមានបញ្ហារលាកសួតធ្ងន់ធ្ងរ បណ្តាលឱ្យជំងឺធ្វើទុក្ខធ្ងន់ ដែលក្រុមគ្រូពេទ្យព្យាយាមអស់ពីលទ្ធភាពដើម្បីជួយសង្គ្រោះ ប៉ុន្តែដោយអ្នកជំងឺមានសភាពធ្ងន់ធ្ងរខ្លាំង ទើបមិនអាចសង្គ្រោះបាន ។ ក្រុមគ្រូពេទ្យ បានប្រើអស់នូវបច្ចេកវិទ្យា និងជួយសង្គ្រោះរយៈពេលប្រមាណ១០ម៉ោង នៅក្នុងបន្ទប់សង្គ្រោះបន្ទាន់ ។ ជាអកុសលមិនអាចជួយសង្គ្រោះបាន និងទទួលមរណភាពនាព្រឹកថ្ងៃទី ២២ ខែមីនា ២០២១ នេះតែម្តង។ បើតាមប្រភពបានបញ្ជាក់ថា បុរសវ័យចំណាស់រូបនេះ ត្រូវបានរកឃើញថា ឆ្លងជំងឺកូវីដ១៩ កាលពីយប់ថ្ងៃទី ២១ មីនា ២០២១ នេះ ។', N'2020-12-12', N'0', N'Unit Price')
GO

INSERT INTO [dbo].[Customer] ([CustomerId], [Name], [Phone], [Noted], [Date], [Delete], [Type]) VALUES (N'47', N'NIta', N'077778866', N'New Customer', N'2020-12-12', N'1', N'VIP')
GO

INSERT INTO [dbo].[Customer] ([CustomerId], [Name], [Phone], [Noted], [Date], [Delete], [Type]) VALUES (N'48', N'Gong', N'09423423423', N'Noted', N'2021-03-24', N'1', N'VIP')
GO

INSERT INTO [dbo].[Customer] ([CustomerId], [Name], [Phone], [Noted], [Date], [Delete], [Type]) VALUES (N'49', N'Clothes', N'0184724332', N'nn', N'2021-03-24', N'1', N'Whole Price')
GO

INSERT INTO [dbo].[Customer] ([CustomerId], [Name], [Phone], [Noted], [Date], [Delete], [Type]) VALUES (N'50', N'Long2', N'03333', N'123123', N'2021-03-24', N'1', N'VIP')
GO

INSERT INTO [dbo].[Customer] ([CustomerId], [Name], [Phone], [Noted], [Date], [Delete], [Type]) VALUES (N'51', N'NouenThary', N'02222', N'Noyer', N'2021-03-25', N'1', N'Whole Price')
GO

INSERT INTO [dbo].[Customer] ([CustomerId], [Name], [Phone], [Noted], [Date], [Delete], [Type]) VALUES (N'52', N'Dara', N'01111', NULL, N'2021-03-25', N'1', N'Unit Price')
GO

INSERT INTO [dbo].[Customer] ([CustomerId], [Name], [Phone], [Noted], [Date], [Delete], [Type]) VALUES (N'53', N'សីហា', N'3', NULL, N'2021-03-26', N'1', N'Unit Price')
GO

INSERT INTO [dbo].[Customer] ([CustomerId], [Name], [Phone], [Noted], [Date], [Delete], [Type]) VALUES (N'54', N'និតា', N'2', NULL, N'2021-03-26', N'1', N'Whole Price')
GO

INSERT INTO [dbo].[Customer] ([CustomerId], [Name], [Phone], [Noted], [Date], [Delete], [Type]) VALUES (N'55', N'សី', N'1', NULL, N'2021-03-26', N'1', N'VIP')
GO

INSERT INTO [dbo].[Customer] ([CustomerId], [Name], [Phone], [Noted], [Date], [Delete], [Type]) VALUES (N'56', N'PPHone', N'029342', NULL, N'2021-04-01', N'1', N'Unit Price')
GO

INSERT INTO [dbo].[Customer] ([CustomerId], [Name], [Phone], [Noted], [Date], [Delete], [Type]) VALUES (N'1056', N'LonhKh3', N'8888888', N'KHmer', N'2021-04-03', N'1', N'VIP')
GO

INSERT INTO [dbo].[Customer] ([CustomerId], [Name], [Phone], [Noted], [Date], [Delete], [Type]) VALUES (N'1057', N'MrTharyKher', N'023947293', N'df', N'2021-04-03', N'1', N'Unit Price')
GO

INSERT INTO [dbo].[Customer] ([CustomerId], [Name], [Phone], [Noted], [Date], [Delete], [Type]) VALUES (N'1058', N'KHMER24', N'099976348', N'NOted', NULL, N'1', N'Unit Price')
GO

INSERT INTO [dbo].[Customer] ([CustomerId], [Name], [Phone], [Noted], [Date], [Delete], [Type]) VALUES (N'1059', N'KHMER24', N'099976348', N'NOted', N'2021-04-03', N'1', N'Unit Price')
GO

INSERT INTO [dbo].[Customer] ([CustomerId], [Name], [Phone], [Noted], [Date], [Delete], [Type]) VALUES (N'1060', N'KHMER24', N'099976348', N'NOted', N'2021-04-03', N'1', N'Unit Price')
GO

INSERT INTO [dbo].[Customer] ([CustomerId], [Name], [Phone], [Noted], [Date], [Delete], [Type]) VALUES (N'1061', N'KHMER23', N'23479234', N'345', N'2021-04-03', N'1', N'Unit Price')
GO

INSERT INTO [dbo].[Customer] ([CustomerId], [Name], [Phone], [Noted], [Date], [Delete], [Type]) VALUES (N'1062', N'NouenTharys', N'934234', N'123', N'2021-04-03', N'1', N'Unit Price')
GO

INSERT INTO [dbo].[Customer] ([CustomerId], [Name], [Phone], [Noted], [Date], [Delete], [Type]) VALUES (N'1063', N'????d', N'4523534523234', N'234', N'2021-04-03', N'1', N'Unit Price')
GO

INSERT INTO [dbo].[Customer] ([CustomerId], [Name], [Phone], [Noted], [Date], [Delete], [Type]) VALUES (N'1064', N'23423', N'234234', N'234', N'2021-04-03', N'1', N'Unit Price')
GO

INSERT INTO [dbo].[Customer] ([CustomerId], [Name], [Phone], [Noted], [Date], [Delete], [Type]) VALUES (N'1065', N'Clothes2', N'3332434', N'234', N'2021-04-03', N'1', N'Unit Price')
GO

INSERT INTO [dbo].[Customer] ([CustomerId], [Name], [Phone], [Noted], [Date], [Delete], [Type]) VALUES (N'1066', N'Clothes234', N'3123', N'123123', N'2021-04-03', N'1', N'Whole Price')
GO

INSERT INTO [dbo].[Customer] ([CustomerId], [Name], [Phone], [Noted], [Date], [Delete], [Type]) VALUES (N'1067', N'TharyKK', N'023946239', N'Our grid s234234', N'2021-04-03', N'1', N'VIP')
GO

INSERT INTO [dbo].[Customer] ([CustomerId], [Name], [Phone], [Noted], [Date], [Delete], [Type]) VALUES (N'1068', N'Dara0014', N'0999432543544', N'Noted4', N'2021-04-04', N'1', N'Unit Price')
GO

SET IDENTITY_INSERT [dbo].[Customer] OFF
GO


-- ----------------------------
-- Table structure for Invoice
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Invoice]') AND type IN ('U'))
	DROP TABLE [dbo].[Invoice]
GO

CREATE TABLE [dbo].[Invoice] (
  [InvoiceId] int  IDENTITY(1,1) NOT NULL,
  [Delete] tinyint DEFAULT ((1)) NULL,
  [EndDate] nvarchar(55) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Status] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [UserId] int  NULL,
  [Total] float(53) DEFAULT ((0)) NULL,
  [StartDate] nvarchar(55) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [CustomerId] int  NULL
)
GO

ALTER TABLE [dbo].[Invoice] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of Invoice
-- ----------------------------
SET IDENTITY_INSERT [dbo].[Invoice] ON
GO

INSERT INTO [dbo].[Invoice] ([InvoiceId], [Delete], [EndDate], [Status], [UserId], [Total], [StartDate], [CustomerId]) VALUES (N'4', N'1', N'2021-04-04', N'Paid', N'1', N'10000', N'2021-04-04', N'2')
GO

INSERT INTO [dbo].[Invoice] ([InvoiceId], [Delete], [EndDate], [Status], [UserId], [Total], [StartDate], [CustomerId]) VALUES (N'5', N'1', N'2021-03-19', N'Paid', N'1', N'3500', N'2021-03-18', N'27')
GO

INSERT INTO [dbo].[Invoice] ([InvoiceId], [Delete], [EndDate], [Status], [UserId], [Total], [StartDate], [CustomerId]) VALUES (N'6', N'1', N'2021-03-18', N'Paid', N'1', N'13000', N'2021-03-18', N'30')
GO

INSERT INTO [dbo].[Invoice] ([InvoiceId], [Delete], [EndDate], [Status], [UserId], [Total], [StartDate], [CustomerId]) VALUES (N'7', N'1', N'2021-03-19', N'Paid', N'1', N'10000', N'2021-03-19', N'31')
GO

INSERT INTO [dbo].[Invoice] ([InvoiceId], [Delete], [EndDate], [Status], [UserId], [Total], [StartDate], [CustomerId]) VALUES (N'8', N'1', N'2021-03-19', N'Paid', N'1', N'15000', N'2021-03-19', N'32')
GO

INSERT INTO [dbo].[Invoice] ([InvoiceId], [Delete], [EndDate], [Status], [UserId], [Total], [StartDate], [CustomerId]) VALUES (N'9', N'1', N'2021-03-19', N'Paid', N'1', N'15500', N'2021-03-19', N'27')
GO

INSERT INTO [dbo].[Invoice] ([InvoiceId], [Delete], [EndDate], [Status], [UserId], [Total], [StartDate], [CustomerId]) VALUES (N'10', N'1', N'2021-03-19', N'Paid', N'1', N'8000', N'2021-03-19', N'13')
GO

INSERT INTO [dbo].[Invoice] ([InvoiceId], [Delete], [EndDate], [Status], [UserId], [Total], [StartDate], [CustomerId]) VALUES (N'11', N'1', N'2021-03-19', N'Paid', N'1', N'11500', N'2021-03-19', N'1')
GO

INSERT INTO [dbo].[Invoice] ([InvoiceId], [Delete], [EndDate], [Status], [UserId], [Total], [StartDate], [CustomerId]) VALUES (N'12', N'1', N'2021-03-19', N'Paid', N'1', N'116000', N'2021-03-19', N'7')
GO

INSERT INTO [dbo].[Invoice] ([InvoiceId], [Delete], [EndDate], [Status], [UserId], [Total], [StartDate], [CustomerId]) VALUES (N'13', N'1', N'2021-03-19', N'Paid', N'1', N'2000', N'2021-03-19', N'7')
GO

INSERT INTO [dbo].[Invoice] ([InvoiceId], [Delete], [EndDate], [Status], [UserId], [Total], [StartDate], [CustomerId]) VALUES (N'14', N'1', N'2021-03-19', N'Paid', N'1', N'1500', N'2021-03-19', N'7')
GO

INSERT INTO [dbo].[Invoice] ([InvoiceId], [Delete], [EndDate], [Status], [UserId], [Total], [StartDate], [CustomerId]) VALUES (N'15', N'1', N'2021-03-22', N'Paid', N'12', N'1500', N'2021-03-19', N'1')
GO

INSERT INTO [dbo].[Invoice] ([InvoiceId], [Delete], [EndDate], [Status], [UserId], [Total], [StartDate], [CustomerId]) VALUES (N'17', N'1', N'2021-03-22', N'Paid', N'12', N'11500', N'2021-03-19', N'1')
GO

INSERT INTO [dbo].[Invoice] ([InvoiceId], [Delete], [EndDate], [Status], [UserId], [Total], [StartDate], [CustomerId]) VALUES (N'18', N'1', N'2021-03-22', N'Paid', N'12', N'117000', N'2021-03-19', N'1')
GO

INSERT INTO [dbo].[Invoice] ([InvoiceId], [Delete], [EndDate], [Status], [UserId], [Total], [StartDate], [CustomerId]) VALUES (N'19', N'1', N'2021-03-19', N'Paid', N'13', N'1000', N'2021-03-19', N'1')
GO

INSERT INTO [dbo].[Invoice] ([InvoiceId], [Delete], [EndDate], [Status], [UserId], [Total], [StartDate], [CustomerId]) VALUES (N'20', N'1', NULL, N'Pending', N'12', N'0', N'2021-03-19', NULL)
GO

INSERT INTO [dbo].[Invoice] ([InvoiceId], [Delete], [EndDate], [Status], [UserId], [Total], [StartDate], [CustomerId]) VALUES (N'21', N'1', NULL, N'Pending', N'12', N'0', N'2021-03-19', NULL)
GO

INSERT INTO [dbo].[Invoice] ([InvoiceId], [Delete], [EndDate], [Status], [UserId], [Total], [StartDate], [CustomerId]) VALUES (N'22', N'1', NULL, N'Pending', N'12', N'0', N'2021-03-19', NULL)
GO

INSERT INTO [dbo].[Invoice] ([InvoiceId], [Delete], [EndDate], [Status], [UserId], [Total], [StartDate], [CustomerId]) VALUES (N'23', N'1', NULL, N'Pending', N'12', N'0', N'2021-03-19', NULL)
GO

INSERT INTO [dbo].[Invoice] ([InvoiceId], [Delete], [EndDate], [Status], [UserId], [Total], [StartDate], [CustomerId]) VALUES (N'24', N'1', NULL, N'Pending', N'12', N'0', N'2021-03-19', NULL)
GO

INSERT INTO [dbo].[Invoice] ([InvoiceId], [Delete], [EndDate], [Status], [UserId], [Total], [StartDate], [CustomerId]) VALUES (N'25', N'1', N'2021-03-22', N'Paid', N'12', N'13000', N'2021-03-19', N'27')
GO

INSERT INTO [dbo].[Invoice] ([InvoiceId], [Delete], [EndDate], [Status], [UserId], [Total], [StartDate], [CustomerId]) VALUES (N'26', N'1', NULL, N'Pending', N'12', N'0', N'2021-03-20', NULL)
GO

INSERT INTO [dbo].[Invoice] ([InvoiceId], [Delete], [EndDate], [Status], [UserId], [Total], [StartDate], [CustomerId]) VALUES (N'27', N'1', N'2021-03-21', N'Paid', N'12', N'12000', N'2021-03-21', N'30')
GO

INSERT INTO [dbo].[Invoice] ([InvoiceId], [Delete], [EndDate], [Status], [UserId], [Total], [StartDate], [CustomerId]) VALUES (N'28', N'1', NULL, N'Pending', N'12', N'0', N'2021-03-22', NULL)
GO

INSERT INTO [dbo].[Invoice] ([InvoiceId], [Delete], [EndDate], [Status], [UserId], [Total], [StartDate], [CustomerId]) VALUES (N'29', N'1', NULL, N'Pending', N'12', N'0', N'2021-03-22', NULL)
GO

INSERT INTO [dbo].[Invoice] ([InvoiceId], [Delete], [EndDate], [Status], [UserId], [Total], [StartDate], [CustomerId]) VALUES (N'30', N'1', N'2021-03-22', N'Paid', N'12', N'60000', N'2021-03-22', N'40')
GO

INSERT INTO [dbo].[Invoice] ([InvoiceId], [Delete], [EndDate], [Status], [UserId], [Total], [StartDate], [CustomerId]) VALUES (N'31', N'1', NULL, N'Pending', N'12', N'0', N'2021-03-22', NULL)
GO

INSERT INTO [dbo].[Invoice] ([InvoiceId], [Delete], [EndDate], [Status], [UserId], [Total], [StartDate], [CustomerId]) VALUES (N'32', N'1', NULL, N'Pending', N'12', N'0', N'2021-03-22', NULL)
GO

INSERT INTO [dbo].[Invoice] ([InvoiceId], [Delete], [EndDate], [Status], [UserId], [Total], [StartDate], [CustomerId]) VALUES (N'33', N'1', N'2021-03-22', N'Paid', N'12', N'117500', N'2021-03-22', N'7')
GO

INSERT INTO [dbo].[Invoice] ([InvoiceId], [Delete], [EndDate], [Status], [UserId], [Total], [StartDate], [CustomerId]) VALUES (N'34', N'1', N'2021-03-22', N'Paid', N'1', N'134500', N'2021-03-22', N'8')
GO

INSERT INTO [dbo].[Invoice] ([InvoiceId], [Delete], [EndDate], [Status], [UserId], [Total], [StartDate], [CustomerId]) VALUES (N'35', N'1', NULL, N'Pending', N'12', N'0', N'2021-03-22', NULL)
GO

INSERT INTO [dbo].[Invoice] ([InvoiceId], [Delete], [EndDate], [Status], [UserId], [Total], [StartDate], [CustomerId]) VALUES (N'36', N'1', N'2021-03-22', N'Paid', N'12', N'30000', N'2021-03-22', N'13')
GO

INSERT INTO [dbo].[Invoice] ([InvoiceId], [Delete], [EndDate], [Status], [UserId], [Total], [StartDate], [CustomerId]) VALUES (N'37', N'1', N'2021-03-24', N'Paid', N'1', N'12500', N'2021-03-24', N'47')
GO

INSERT INTO [dbo].[Invoice] ([InvoiceId], [Delete], [EndDate], [Status], [UserId], [Total], [StartDate], [CustomerId]) VALUES (N'38', N'1', NULL, N'Pending', N'17', N'0', N'2021-03-24', NULL)
GO

INSERT INTO [dbo].[Invoice] ([InvoiceId], [Delete], [EndDate], [Status], [UserId], [Total], [StartDate], [CustomerId]) VALUES (N'39', N'1', NULL, N'Pending', N'1', N'0', N'2021-03-26', NULL)
GO

INSERT INTO [dbo].[Invoice] ([InvoiceId], [Delete], [EndDate], [Status], [UserId], [Total], [StartDate], [CustomerId]) VALUES (N'40', N'1', NULL, N'Pending', N'1', N'0', N'2021-03-26', NULL)
GO

INSERT INTO [dbo].[Invoice] ([InvoiceId], [Delete], [EndDate], [Status], [UserId], [Total], [StartDate], [CustomerId]) VALUES (N'41', N'1', NULL, N'Pending', N'1', N'0', N'2021-03-26', NULL)
GO

INSERT INTO [dbo].[Invoice] ([InvoiceId], [Delete], [EndDate], [Status], [UserId], [Total], [StartDate], [CustomerId]) VALUES (N'42', N'1', NULL, N'Pending', N'1', N'0', N'2021-03-26', NULL)
GO

INSERT INTO [dbo].[Invoice] ([InvoiceId], [Delete], [EndDate], [Status], [UserId], [Total], [StartDate], [CustomerId]) VALUES (N'43', N'1', NULL, N'Pending', N'1', N'0', N'2021-03-26', NULL)
GO

INSERT INTO [dbo].[Invoice] ([InvoiceId], [Delete], [EndDate], [Status], [UserId], [Total], [StartDate], [CustomerId]) VALUES (N'44', N'1', NULL, N'Pending', N'1', N'0', N'2021-03-26', NULL)
GO

INSERT INTO [dbo].[Invoice] ([InvoiceId], [Delete], [EndDate], [Status], [UserId], [Total], [StartDate], [CustomerId]) VALUES (N'45', N'1', NULL, N'Pending', N'1', N'0', N'2021-03-26', NULL)
GO

INSERT INTO [dbo].[Invoice] ([InvoiceId], [Delete], [EndDate], [Status], [UserId], [Total], [StartDate], [CustomerId]) VALUES (N'46', N'1', NULL, N'Pending', N'1', N'0', N'2021-03-26', NULL)
GO

INSERT INTO [dbo].[Invoice] ([InvoiceId], [Delete], [EndDate], [Status], [UserId], [Total], [StartDate], [CustomerId]) VALUES (N'47', N'1', NULL, N'Pending', N'1', N'0', N'2021-03-26', NULL)
GO

INSERT INTO [dbo].[Invoice] ([InvoiceId], [Delete], [EndDate], [Status], [UserId], [Total], [StartDate], [CustomerId]) VALUES (N'48', N'1', NULL, N'Pending', N'1', N'0', N'2021-03-26', NULL)
GO

INSERT INTO [dbo].[Invoice] ([InvoiceId], [Delete], [EndDate], [Status], [UserId], [Total], [StartDate], [CustomerId]) VALUES (N'49', N'1', NULL, N'Pending', N'1', N'0', N'2021-03-26', NULL)
GO

INSERT INTO [dbo].[Invoice] ([InvoiceId], [Delete], [EndDate], [Status], [UserId], [Total], [StartDate], [CustomerId]) VALUES (N'50', N'1', NULL, N'Pending', N'1', N'0', N'2021-03-26', NULL)
GO

INSERT INTO [dbo].[Invoice] ([InvoiceId], [Delete], [EndDate], [Status], [UserId], [Total], [StartDate], [CustomerId]) VALUES (N'51', N'1', NULL, N'Pending', N'1', N'0', N'2021-03-26', NULL)
GO

INSERT INTO [dbo].[Invoice] ([InvoiceId], [Delete], [EndDate], [Status], [UserId], [Total], [StartDate], [CustomerId]) VALUES (N'52', N'1', NULL, N'Pending', N'1', N'0', N'2021-03-26', NULL)
GO

INSERT INTO [dbo].[Invoice] ([InvoiceId], [Delete], [EndDate], [Status], [UserId], [Total], [StartDate], [CustomerId]) VALUES (N'53', N'1', NULL, N'Pending', N'1', N'0', N'2021-03-26', NULL)
GO

INSERT INTO [dbo].[Invoice] ([InvoiceId], [Delete], [EndDate], [Status], [UserId], [Total], [StartDate], [CustomerId]) VALUES (N'54', N'1', NULL, N'Pending', N'1', N'0', N'2021-03-26', NULL)
GO

INSERT INTO [dbo].[Invoice] ([InvoiceId], [Delete], [EndDate], [Status], [UserId], [Total], [StartDate], [CustomerId]) VALUES (N'55', N'1', NULL, N'Pending', N'1', N'0', N'2021-03-26', NULL)
GO

INSERT INTO [dbo].[Invoice] ([InvoiceId], [Delete], [EndDate], [Status], [UserId], [Total], [StartDate], [CustomerId]) VALUES (N'56', N'1', NULL, N'Pending', N'1', N'0', N'2021-03-26', NULL)
GO

INSERT INTO [dbo].[Invoice] ([InvoiceId], [Delete], [EndDate], [Status], [UserId], [Total], [StartDate], [CustomerId]) VALUES (N'57', N'1', NULL, N'Pending', N'1', N'0', N'2021-03-26', NULL)
GO

INSERT INTO [dbo].[Invoice] ([InvoiceId], [Delete], [EndDate], [Status], [UserId], [Total], [StartDate], [CustomerId]) VALUES (N'58', N'1', NULL, N'Pending', N'1', N'0', N'2021-03-26', NULL)
GO

INSERT INTO [dbo].[Invoice] ([InvoiceId], [Delete], [EndDate], [Status], [UserId], [Total], [StartDate], [CustomerId]) VALUES (N'59', N'1', NULL, N'Pending', N'1', N'0', N'2021-03-26', NULL)
GO

INSERT INTO [dbo].[Invoice] ([InvoiceId], [Delete], [EndDate], [Status], [UserId], [Total], [StartDate], [CustomerId]) VALUES (N'60', N'1', NULL, N'Pending', N'1', N'0', N'2021-03-26', NULL)
GO

INSERT INTO [dbo].[Invoice] ([InvoiceId], [Delete], [EndDate], [Status], [UserId], [Total], [StartDate], [CustomerId]) VALUES (N'61', N'1', NULL, N'Pending', N'1', N'0', N'2021-03-26', NULL)
GO

INSERT INTO [dbo].[Invoice] ([InvoiceId], [Delete], [EndDate], [Status], [UserId], [Total], [StartDate], [CustomerId]) VALUES (N'62', N'1', NULL, N'Pending', N'1', N'0', N'2021-03-26', NULL)
GO

INSERT INTO [dbo].[Invoice] ([InvoiceId], [Delete], [EndDate], [Status], [UserId], [Total], [StartDate], [CustomerId]) VALUES (N'63', N'1', NULL, N'Pending', N'1', N'0', N'2021-03-26', NULL)
GO

INSERT INTO [dbo].[Invoice] ([InvoiceId], [Delete], [EndDate], [Status], [UserId], [Total], [StartDate], [CustomerId]) VALUES (N'64', N'1', NULL, N'Pending', N'1', N'0', N'2021-03-26', NULL)
GO

INSERT INTO [dbo].[Invoice] ([InvoiceId], [Delete], [EndDate], [Status], [UserId], [Total], [StartDate], [CustomerId]) VALUES (N'65', N'1', NULL, N'Pending', N'1', N'0', N'2021-03-26', NULL)
GO

INSERT INTO [dbo].[Invoice] ([InvoiceId], [Delete], [EndDate], [Status], [UserId], [Total], [StartDate], [CustomerId]) VALUES (N'66', N'1', NULL, N'Pending', N'1', N'0', N'2021-03-26', NULL)
GO

INSERT INTO [dbo].[Invoice] ([InvoiceId], [Delete], [EndDate], [Status], [UserId], [Total], [StartDate], [CustomerId]) VALUES (N'67', N'1', NULL, N'Pending', N'1', N'0', N'2021-03-26', NULL)
GO

INSERT INTO [dbo].[Invoice] ([InvoiceId], [Delete], [EndDate], [Status], [UserId], [Total], [StartDate], [CustomerId]) VALUES (N'68', N'1', NULL, N'Pending', N'1', N'0', N'2021-03-26', NULL)
GO

INSERT INTO [dbo].[Invoice] ([InvoiceId], [Delete], [EndDate], [Status], [UserId], [Total], [StartDate], [CustomerId]) VALUES (N'69', N'1', NULL, N'Pending', N'1', N'0', N'2021-03-26', NULL)
GO

INSERT INTO [dbo].[Invoice] ([InvoiceId], [Delete], [EndDate], [Status], [UserId], [Total], [StartDate], [CustomerId]) VALUES (N'70', N'1', NULL, N'Pending', N'1', N'0', N'2021-03-26', NULL)
GO

INSERT INTO [dbo].[Invoice] ([InvoiceId], [Delete], [EndDate], [Status], [UserId], [Total], [StartDate], [CustomerId]) VALUES (N'71', N'1', NULL, N'Pending', N'1', N'0', N'2021-03-26', NULL)
GO

INSERT INTO [dbo].[Invoice] ([InvoiceId], [Delete], [EndDate], [Status], [UserId], [Total], [StartDate], [CustomerId]) VALUES (N'72', N'1', NULL, N'Pending', N'1', N'0', N'2021-03-26', NULL)
GO

INSERT INTO [dbo].[Invoice] ([InvoiceId], [Delete], [EndDate], [Status], [UserId], [Total], [StartDate], [CustomerId]) VALUES (N'73', N'1', NULL, N'Pending', N'1', N'0', N'2021-03-26', NULL)
GO

INSERT INTO [dbo].[Invoice] ([InvoiceId], [Delete], [EndDate], [Status], [UserId], [Total], [StartDate], [CustomerId]) VALUES (N'74', N'1', NULL, N'Pending', N'1', N'0', N'2021-03-26', NULL)
GO

INSERT INTO [dbo].[Invoice] ([InvoiceId], [Delete], [EndDate], [Status], [UserId], [Total], [StartDate], [CustomerId]) VALUES (N'75', N'1', NULL, N'Pending', N'1', N'0', N'2021-03-26', NULL)
GO

INSERT INTO [dbo].[Invoice] ([InvoiceId], [Delete], [EndDate], [Status], [UserId], [Total], [StartDate], [CustomerId]) VALUES (N'76', N'1', NULL, N'Pending', N'1', N'0', N'2021-03-26', NULL)
GO

INSERT INTO [dbo].[Invoice] ([InvoiceId], [Delete], [EndDate], [Status], [UserId], [Total], [StartDate], [CustomerId]) VALUES (N'77', N'1', NULL, N'Pending', N'1', N'0', N'2021-03-26', NULL)
GO

INSERT INTO [dbo].[Invoice] ([InvoiceId], [Delete], [EndDate], [Status], [UserId], [Total], [StartDate], [CustomerId]) VALUES (N'78', N'1', NULL, N'Pending', N'1', N'0', N'2021-03-26', NULL)
GO

INSERT INTO [dbo].[Invoice] ([InvoiceId], [Delete], [EndDate], [Status], [UserId], [Total], [StartDate], [CustomerId]) VALUES (N'79', N'1', NULL, N'Pending', N'1', N'0', N'2021-03-26', NULL)
GO

INSERT INTO [dbo].[Invoice] ([InvoiceId], [Delete], [EndDate], [Status], [UserId], [Total], [StartDate], [CustomerId]) VALUES (N'80', N'1', NULL, N'Pending', N'1', N'0', N'2021-03-26', NULL)
GO

INSERT INTO [dbo].[Invoice] ([InvoiceId], [Delete], [EndDate], [Status], [UserId], [Total], [StartDate], [CustomerId]) VALUES (N'81', N'1', NULL, N'Pending', N'1', N'0', N'2021-03-26', NULL)
GO

INSERT INTO [dbo].[Invoice] ([InvoiceId], [Delete], [EndDate], [Status], [UserId], [Total], [StartDate], [CustomerId]) VALUES (N'82', N'1', NULL, N'Pending', N'1', N'0', N'2021-03-26', NULL)
GO

INSERT INTO [dbo].[Invoice] ([InvoiceId], [Delete], [EndDate], [Status], [UserId], [Total], [StartDate], [CustomerId]) VALUES (N'83', N'1', NULL, N'Pending', N'1', N'0', N'2021-03-26', NULL)
GO

INSERT INTO [dbo].[Invoice] ([InvoiceId], [Delete], [EndDate], [Status], [UserId], [Total], [StartDate], [CustomerId]) VALUES (N'84', N'1', NULL, N'Pending', N'1', N'0', N'2021-03-26', NULL)
GO

INSERT INTO [dbo].[Invoice] ([InvoiceId], [Delete], [EndDate], [Status], [UserId], [Total], [StartDate], [CustomerId]) VALUES (N'85', N'1', NULL, N'Pending', N'1', N'0', N'2021-03-26', NULL)
GO

INSERT INTO [dbo].[Invoice] ([InvoiceId], [Delete], [EndDate], [Status], [UserId], [Total], [StartDate], [CustomerId]) VALUES (N'86', N'1', NULL, N'Pending', N'1', N'0', N'2021-03-26', NULL)
GO

INSERT INTO [dbo].[Invoice] ([InvoiceId], [Delete], [EndDate], [Status], [UserId], [Total], [StartDate], [CustomerId]) VALUES (N'87', N'1', NULL, N'Pending', N'1', N'0', N'2021-03-26', NULL)
GO

INSERT INTO [dbo].[Invoice] ([InvoiceId], [Delete], [EndDate], [Status], [UserId], [Total], [StartDate], [CustomerId]) VALUES (N'88', N'1', NULL, N'Pending', N'1', N'0', N'2021-03-26', NULL)
GO

INSERT INTO [dbo].[Invoice] ([InvoiceId], [Delete], [EndDate], [Status], [UserId], [Total], [StartDate], [CustomerId]) VALUES (N'89', N'1', NULL, N'Pending', N'1', N'0', N'2021-03-26', NULL)
GO

INSERT INTO [dbo].[Invoice] ([InvoiceId], [Delete], [EndDate], [Status], [UserId], [Total], [StartDate], [CustomerId]) VALUES (N'90', N'1', NULL, N'Pending', N'1', N'0', N'2021-03-26', NULL)
GO

INSERT INTO [dbo].[Invoice] ([InvoiceId], [Delete], [EndDate], [Status], [UserId], [Total], [StartDate], [CustomerId]) VALUES (N'91', N'1', NULL, N'Pending', N'1', N'0', N'2021-03-26', NULL)
GO

INSERT INTO [dbo].[Invoice] ([InvoiceId], [Delete], [EndDate], [Status], [UserId], [Total], [StartDate], [CustomerId]) VALUES (N'92', N'1', NULL, N'Pending', N'1', N'0', N'2021-03-26', NULL)
GO

INSERT INTO [dbo].[Invoice] ([InvoiceId], [Delete], [EndDate], [Status], [UserId], [Total], [StartDate], [CustomerId]) VALUES (N'93', N'1', NULL, N'Pending', N'1', N'0', N'2021-03-26', NULL)
GO

INSERT INTO [dbo].[Invoice] ([InvoiceId], [Delete], [EndDate], [Status], [UserId], [Total], [StartDate], [CustomerId]) VALUES (N'94', N'1', N'2021-03-26', N'Paid', N'1', N'7500', N'2021-03-26', N'51')
GO

INSERT INTO [dbo].[Invoice] ([InvoiceId], [Delete], [EndDate], [Status], [UserId], [Total], [StartDate], [CustomerId]) VALUES (N'95', N'1', N'2021-03-26', N'Paid', N'1', N'15000', N'2021-03-26', N'49')
GO

INSERT INTO [dbo].[Invoice] ([InvoiceId], [Delete], [EndDate], [Status], [UserId], [Total], [StartDate], [CustomerId]) VALUES (N'96', N'1', N'2021-03-26', N'Paid', N'1', N'17500', N'2021-03-26', N'49')
GO

INSERT INTO [dbo].[Invoice] ([InvoiceId], [Delete], [EndDate], [Status], [UserId], [Total], [StartDate], [CustomerId]) VALUES (N'97', N'1', N'2021-03-26', N'Paid', N'1', N'25000', N'2021-03-26', N'48')
GO

INSERT INTO [dbo].[Invoice] ([InvoiceId], [Delete], [EndDate], [Status], [UserId], [Total], [StartDate], [CustomerId]) VALUES (N'98', N'1', N'2021-03-26', N'Paid', N'1', N'3000', N'2021-03-26', N'52')
GO

INSERT INTO [dbo].[Invoice] ([InvoiceId], [Delete], [EndDate], [Status], [UserId], [Total], [StartDate], [CustomerId]) VALUES (N'99', N'1', N'2021-03-26', N'Paid', N'1', N'6000', N'2021-03-26', N'51')
GO

INSERT INTO [dbo].[Invoice] ([InvoiceId], [Delete], [EndDate], [Status], [UserId], [Total], [StartDate], [CustomerId]) VALUES (N'100', N'1', N'2021-03-26', N'Paid', N'1', N'7000', N'2021-03-26', N'51')
GO

INSERT INTO [dbo].[Invoice] ([InvoiceId], [Delete], [EndDate], [Status], [UserId], [Total], [StartDate], [CustomerId]) VALUES (N'101', N'1', N'2021-03-26', N'Paid', N'1', N'15000', N'2021-03-26', N'50')
GO

INSERT INTO [dbo].[Invoice] ([InvoiceId], [Delete], [EndDate], [Status], [UserId], [Total], [StartDate], [CustomerId]) VALUES (N'102', N'1', N'2021-03-26', N'Paid', N'1', N'23000', N'2021-03-26', N'51')
GO

INSERT INTO [dbo].[Invoice] ([InvoiceId], [Delete], [EndDate], [Status], [UserId], [Total], [StartDate], [CustomerId]) VALUES (N'103', N'1', N'2021-03-26', N'Paid', N'1', N'10000', N'2021-03-26', N'52')
GO

INSERT INTO [dbo].[Invoice] ([InvoiceId], [Delete], [EndDate], [Status], [UserId], [Total], [StartDate], [CustomerId]) VALUES (N'104', N'1', N'2021-03-26', N'Paid', N'1', N'20000', N'2021-03-26', N'51')
GO

INSERT INTO [dbo].[Invoice] ([InvoiceId], [Delete], [EndDate], [Status], [UserId], [Total], [StartDate], [CustomerId]) VALUES (N'105', N'1', NULL, N'Pending', N'1', N'0', N'2021-03-26', NULL)
GO

INSERT INTO [dbo].[Invoice] ([InvoiceId], [Delete], [EndDate], [Status], [UserId], [Total], [StartDate], [CustomerId]) VALUES (N'106', N'1', N'2021-03-26', N'Paid', N'1', N'28000', N'2021-03-26', N'55')
GO

INSERT INTO [dbo].[Invoice] ([InvoiceId], [Delete], [EndDate], [Status], [UserId], [Total], [StartDate], [CustomerId]) VALUES (N'107', N'1', N'2021-03-26', N'Paid', N'1', N'10000', N'2021-03-26', N'54')
GO

INSERT INTO [dbo].[Invoice] ([InvoiceId], [Delete], [EndDate], [Status], [UserId], [Total], [StartDate], [CustomerId]) VALUES (N'108', N'1', N'2021-03-26', N'Paid', N'1', N'3500', N'2021-03-26', N'53')
GO

INSERT INTO [dbo].[Invoice] ([InvoiceId], [Delete], [EndDate], [Status], [UserId], [Total], [StartDate], [CustomerId]) VALUES (N'109', N'1', NULL, N'Pending', N'1', N'0', N'2021-04-02', NULL)
GO

INSERT INTO [dbo].[Invoice] ([InvoiceId], [Delete], [EndDate], [Status], [UserId], [Total], [StartDate], [CustomerId]) VALUES (N'110', NULL, N'2021-03-26', N'Pending', N'1', N'0', N'', N'53')
GO

INSERT INTO [dbo].[Invoice] ([InvoiceId], [Delete], [EndDate], [Status], [UserId], [Total], [StartDate], [CustomerId]) VALUES (N'111', N'1', NULL, N'Pending', N'1', N'0', N'2021-04-02', N'20')
GO

INSERT INTO [dbo].[Invoice] ([InvoiceId], [Delete], [EndDate], [Status], [UserId], [Total], [StartDate], [CustomerId]) VALUES (N'112', N'1', NULL, N'Pending', N'1', N'0', N'2021-04-02', N'21')
GO

INSERT INTO [dbo].[Invoice] ([InvoiceId], [Delete], [EndDate], [Status], [UserId], [Total], [StartDate], [CustomerId]) VALUES (N'113', N'1', NULL, N'Pending', N'1', N'0', N'2021-04-02', N'1')
GO

INSERT INTO [dbo].[Invoice] ([InvoiceId], [Delete], [EndDate], [Status], [UserId], [Total], [StartDate], [CustomerId]) VALUES (N'114', N'1', NULL, N'Pending', N'1', N'0', N'2021-04-02', NULL)
GO

INSERT INTO [dbo].[Invoice] ([InvoiceId], [Delete], [EndDate], [Status], [UserId], [Total], [StartDate], [CustomerId]) VALUES (N'115', N'1', NULL, N'Pending', N'1', N'0', N'2021-04-02', N'1')
GO

INSERT INTO [dbo].[Invoice] ([InvoiceId], [Delete], [EndDate], [Status], [UserId], [Total], [StartDate], [CustomerId]) VALUES (N'116', N'1', NULL, N'Pending', N'1', N'0', N'2021-04-02', N'1')
GO

INSERT INTO [dbo].[Invoice] ([InvoiceId], [Delete], [EndDate], [Status], [UserId], [Total], [StartDate], [CustomerId]) VALUES (N'117', N'1', NULL, N'Pending', N'1', N'0', N'2021-04-02', N'2')
GO

INSERT INTO [dbo].[Invoice] ([InvoiceId], [Delete], [EndDate], [Status], [UserId], [Total], [StartDate], [CustomerId]) VALUES (N'118', N'1', NULL, N'Pending', N'1', N'0', N'2021-04-02', NULL)
GO

INSERT INTO [dbo].[Invoice] ([InvoiceId], [Delete], [EndDate], [Status], [UserId], [Total], [StartDate], [CustomerId]) VALUES (N'119', N'1', NULL, N'Pending', N'1', N'0', N'2021-04-02', N'55')
GO

INSERT INTO [dbo].[Invoice] ([InvoiceId], [Delete], [EndDate], [Status], [UserId], [Total], [StartDate], [CustomerId]) VALUES (N'120', N'1', NULL, N'Pending', N'1', N'0', N'2021-04-02', NULL)
GO

INSERT INTO [dbo].[Invoice] ([InvoiceId], [Delete], [EndDate], [Status], [UserId], [Total], [StartDate], [CustomerId]) VALUES (N'121', N'1', NULL, N'Pending', N'1', N'0', N'2021-04-02', N'54')
GO

INSERT INTO [dbo].[Invoice] ([InvoiceId], [Delete], [EndDate], [Status], [UserId], [Total], [StartDate], [CustomerId]) VALUES (N'122', N'1', NULL, N'Pending', N'1', N'0', N'2021-04-02', NULL)
GO

INSERT INTO [dbo].[Invoice] ([InvoiceId], [Delete], [EndDate], [Status], [UserId], [Total], [StartDate], [CustomerId]) VALUES (N'123', N'1', NULL, N'Pending', N'1', N'0', N'2021-04-02', NULL)
GO

INSERT INTO [dbo].[Invoice] ([InvoiceId], [Delete], [EndDate], [Status], [UserId], [Total], [StartDate], [CustomerId]) VALUES (N'124', N'1', NULL, N'Pending', N'1', N'0', N'2021-04-02', N'55')
GO

INSERT INTO [dbo].[Invoice] ([InvoiceId], [Delete], [EndDate], [Status], [UserId], [Total], [StartDate], [CustomerId]) VALUES (N'125', N'1', NULL, N'Pending', N'1', N'0', N'2021-04-02', NULL)
GO

INSERT INTO [dbo].[Invoice] ([InvoiceId], [Delete], [EndDate], [Status], [UserId], [Total], [StartDate], [CustomerId]) VALUES (N'126', N'1', NULL, N'Pending', N'1', N'0', N'2021-04-02', N'54')
GO

INSERT INTO [dbo].[Invoice] ([InvoiceId], [Delete], [EndDate], [Status], [UserId], [Total], [StartDate], [CustomerId]) VALUES (N'127', N'1', NULL, N'Pending', N'1', N'0', N'2021-04-02', N'2')
GO

INSERT INTO [dbo].[Invoice] ([InvoiceId], [Delete], [EndDate], [Status], [UserId], [Total], [StartDate], [CustomerId]) VALUES (N'128', N'1', NULL, N'Pending', N'1', N'0', N'2021-04-02', N'2')
GO

INSERT INTO [dbo].[Invoice] ([InvoiceId], [Delete], [EndDate], [Status], [UserId], [Total], [StartDate], [CustomerId]) VALUES (N'129', N'1', NULL, N'Pending', N'1', N'0', N'2021-04-02', N'1')
GO

INSERT INTO [dbo].[Invoice] ([InvoiceId], [Delete], [EndDate], [Status], [UserId], [Total], [StartDate], [CustomerId]) VALUES (N'130', N'1', NULL, N'Pending', N'1', N'0', N'2021-04-02', N'53')
GO

INSERT INTO [dbo].[Invoice] ([InvoiceId], [Delete], [EndDate], [Status], [UserId], [Total], [StartDate], [CustomerId]) VALUES (N'131', N'1', NULL, N'Pending', N'1', N'0', N'2021-04-02', N'1')
GO

INSERT INTO [dbo].[Invoice] ([InvoiceId], [Delete], [EndDate], [Status], [UserId], [Total], [StartDate], [CustomerId]) VALUES (N'132', N'1', NULL, N'Pending', N'1', N'0', N'2021-04-02', N'11')
GO

INSERT INTO [dbo].[Invoice] ([InvoiceId], [Delete], [EndDate], [Status], [UserId], [Total], [StartDate], [CustomerId]) VALUES (N'133', N'1', NULL, N'Pending', N'1', N'0', N'2021-04-02', N'1')
GO

INSERT INTO [dbo].[Invoice] ([InvoiceId], [Delete], [EndDate], [Status], [UserId], [Total], [StartDate], [CustomerId]) VALUES (N'134', N'1', NULL, N'Pending', N'1', N'0', N'2021-04-02', N'1')
GO

INSERT INTO [dbo].[Invoice] ([InvoiceId], [Delete], [EndDate], [Status], [UserId], [Total], [StartDate], [CustomerId]) VALUES (N'136', N'1', NULL, N'Pending', N'1', N'0', N'2021-04-02', N'1')
GO

INSERT INTO [dbo].[Invoice] ([InvoiceId], [Delete], [EndDate], [Status], [UserId], [Total], [StartDate], [CustomerId]) VALUES (N'137', N'1', NULL, N'Pending', N'1', N'0', N'2021-04-02', N'1')
GO

INSERT INTO [dbo].[Invoice] ([InvoiceId], [Delete], [EndDate], [Status], [UserId], [Total], [StartDate], [CustomerId]) VALUES (N'138', N'1', NULL, N'Pending', N'1', N'0', N'2021-04-02', N'1')
GO

SET IDENTITY_INSERT [dbo].[Invoice] OFF
GO


-- ----------------------------
-- Table structure for Laundary
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Laundary]') AND type IN ('U'))
	DROP TABLE [dbo].[Laundary]
GO

CREATE TABLE [dbo].[Laundary] (
  [LaundryId] int  IDENTITY(1,1) NOT NULL,
  [Name] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Weight] float(53)  NULL,
  [CategoryId] int  NULL,
  [CustomerId] int  NULL,
  [Status] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Date] nvarchar(55) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Amount] float(53)  NULL,
  [QrCode] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [InvoiceId] int  NULL,
  [Delete] tinyint DEFAULT ((1)) NULL,
  [UserId] int  NULL,
  [Qty] int  NULL,
  [PercentCommission] float(53)  NULL,
  [Commission] float(53)  NULL,
  [Type] varchar(255) COLLATE SQL_Latin1_General_CP850_BIN  NULL,
  [Time] varchar(255) COLLATE SQL_Latin1_General_CP850_BIN  NULL
)
GO

ALTER TABLE [dbo].[Laundary] SET (LOCK_ESCALATION = AUTO)
GO


-- ----------------------------
-- Records of Laundary
-- ----------------------------
SET IDENTITY_INSERT [dbo].[Laundary] ON
GO

INSERT INTO [dbo].[Laundary] ([LaundryId], [Name], [Weight], [CategoryId], [CustomerId], [Status], [Date], [Amount], [QrCode], [InvoiceId], [Delete], [UserId], [Qty], [PercentCommission], [Commission], [Type], [Time]) VALUES (N'4', NULL, N'5', N'1', N'2', N'Complete', N'2021-03-18', N'5000', NULL, N'4', N'1', N'1', N'10', NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[Laundary] ([LaundryId], [Name], [Weight], [CategoryId], [CustomerId], [Status], [Date], [Amount], [QrCode], [InvoiceId], [Delete], [UserId], [Qty], [PercentCommission], [Commission], [Type], [Time]) VALUES (N'5', NULL, N'5', N'2', N'2', N'Complete', N'2021-03-18', N'5000', NULL, N'4', N'1', N'1', N'100', NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[Laundary] ([LaundryId], [Name], [Weight], [CategoryId], [CustomerId], [Status], [Date], [Amount], [QrCode], [InvoiceId], [Delete], [UserId], [Qty], [PercentCommission], [Commission], [Type], [Time]) VALUES (N'6', NULL, N'10', N'1', N'27', N'Pending', N'2021-03-18', N'1500', NULL, N'5', N'1', N'1', N'3', NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[Laundary] ([LaundryId], [Name], [Weight], [CategoryId], [CustomerId], [Status], [Date], [Amount], [QrCode], [InvoiceId], [Delete], [UserId], [Qty], [PercentCommission], [Commission], [Type], [Time]) VALUES (N'7', NULL, N'2', N'2', N'27', N'Complete', N'2021-03-18', N'2000', NULL, N'5', N'1', N'1', N'100', NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[Laundary] ([LaundryId], [Name], [Weight], [CategoryId], [CustomerId], [Status], [Date], [Amount], [QrCode], [InvoiceId], [Delete], [UserId], [Qty], [PercentCommission], [Commission], [Type], [Time]) VALUES (N'8', NULL, N'5', N'1', N'30', N'Complete', N'2021-03-18', N'3000', NULL, N'6', N'1', N'1', N'6', NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[Laundary] ([LaundryId], [Name], [Weight], [CategoryId], [CustomerId], [Status], [Date], [Amount], [QrCode], [InvoiceId], [Delete], [UserId], [Qty], [PercentCommission], [Commission], [Type], [Time]) VALUES (N'9', NULL, N'10', N'2', N'30', N'Complete', N'2021-03-18', N'10000', NULL, N'6', N'1', N'1', N'100', NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[Laundary] ([LaundryId], [Name], [Weight], [CategoryId], [CustomerId], [Status], [Date], [Amount], [QrCode], [InvoiceId], [Delete], [UserId], [Qty], [PercentCommission], [Commission], [Type], [Time]) VALUES (N'10', NULL, N'5', N'1', N'31', N'Complete', N'2021-03-19', N'10000', NULL, N'7', N'1', N'1', N'20', NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[Laundary] ([LaundryId], [Name], [Weight], [CategoryId], [CustomerId], [Status], [Date], [Amount], [QrCode], [InvoiceId], [Delete], [UserId], [Qty], [PercentCommission], [Commission], [Type], [Time]) VALUES (N'11', NULL, N'5', N'1', N'32', N'Pending', N'2021-03-19', N'3000', NULL, N'8', N'1', N'1', N'6', NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[Laundary] ([LaundryId], [Name], [Weight], [CategoryId], [CustomerId], [Status], [Date], [Amount], [QrCode], [InvoiceId], [Delete], [UserId], [Qty], [PercentCommission], [Commission], [Type], [Time]) VALUES (N'12', NULL, N'12', N'2', N'32', N'Complete', N'2021-03-19', N'12000', NULL, N'8', N'1', N'1', N'2', NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[Laundary] ([LaundryId], [Name], [Weight], [CategoryId], [CustomerId], [Status], [Date], [Amount], [QrCode], [InvoiceId], [Delete], [UserId], [Qty], [PercentCommission], [Commission], [Type], [Time]) VALUES (N'13', NULL, N'6', N'1', N'27', N'Complete', N'2021-03-19', N'3500', NULL, N'9', N'1', N'1', N'7', NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[Laundary] ([LaundryId], [Name], [Weight], [CategoryId], [CustomerId], [Status], [Date], [Amount], [QrCode], [InvoiceId], [Delete], [UserId], [Qty], [PercentCommission], [Commission], [Type], [Time]) VALUES (N'14', NULL, N'12', N'2', N'27', N'Complete', N'2021-03-19', N'12000', NULL, N'9', N'1', N'1', N'3', NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[Laundary] ([LaundryId], [Name], [Weight], [CategoryId], [CustomerId], [Status], [Date], [Amount], [QrCode], [InvoiceId], [Delete], [UserId], [Qty], [PercentCommission], [Commission], [Type], [Time]) VALUES (N'15', NULL, N'10', N'1', N'13', N'Complete', N'2021-03-19', N'6500', NULL, N'10', N'1', N'1', N'13', NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[Laundary] ([LaundryId], [Name], [Weight], [CategoryId], [CustomerId], [Status], [Date], [Amount], [QrCode], [InvoiceId], [Delete], [UserId], [Qty], [PercentCommission], [Commission], [Type], [Time]) VALUES (N'16', NULL, N'2', N'1', N'13', N'Complete', N'2021-03-19', N'1500', NULL, N'10', N'1', N'1', N'3', NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[Laundary] ([LaundryId], [Name], [Weight], [CategoryId], [CustomerId], [Status], [Date], [Amount], [QrCode], [InvoiceId], [Delete], [UserId], [Qty], [PercentCommission], [Commission], [Type], [Time]) VALUES (N'17', NULL, N'23', N'1', N'1', N'Complete', N'2021-03-19', N'11500', NULL, N'11', N'1', N'1', N'23', NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[Laundary] ([LaundryId], [Name], [Weight], [CategoryId], [CustomerId], [Status], [Date], [Amount], [QrCode], [InvoiceId], [Delete], [UserId], [Qty], [PercentCommission], [Commission], [Type], [Time]) VALUES (N'18', NULL, N'234', N'1', N'7', N'Complete', N'2021-03-19', N'116000', NULL, N'12', N'1', N'12', N'232', NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[Laundary] ([LaundryId], [Name], [Weight], [CategoryId], [CustomerId], [Status], [Date], [Amount], [QrCode], [InvoiceId], [Delete], [UserId], [Qty], [PercentCommission], [Commission], [Type], [Time]) VALUES (N'19', NULL, N'4', N'1', N'7', N'Complete', N'2021-03-19', N'2000', NULL, N'13', N'1', N'1', N'4', NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[Laundary] ([LaundryId], [Name], [Weight], [CategoryId], [CustomerId], [Status], [Date], [Amount], [QrCode], [InvoiceId], [Delete], [UserId], [Qty], [PercentCommission], [Commission], [Type], [Time]) VALUES (N'20', NULL, N'234', N'1', N'7', N'Complete', N'2021-03-19', N'1500', NULL, N'14', N'1', N'13', N'3', NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[Laundary] ([LaundryId], [Name], [Weight], [CategoryId], [CustomerId], [Status], [Date], [Amount], [QrCode], [InvoiceId], [Delete], [UserId], [Qty], [PercentCommission], [Commission], [Type], [Time]) VALUES (N'21', NULL, N'33', N'1', N'1', N'Complete', N'2021-03-19', N'1500', NULL, N'15', N'1', N'12', N'3', NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[Laundary] ([LaundryId], [Name], [Weight], [CategoryId], [CustomerId], [Status], [Date], [Amount], [QrCode], [InvoiceId], [Delete], [UserId], [Qty], [PercentCommission], [Commission], [Type], [Time]) VALUES (N'22', NULL, N'234', N'1', N'1', N'Complete', N'2021-03-19', N'11500', NULL, N'17', N'1', N'12', N'23', NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[Laundary] ([LaundryId], [Name], [Weight], [CategoryId], [CustomerId], [Status], [Date], [Amount], [QrCode], [InvoiceId], [Delete], [UserId], [Qty], [PercentCommission], [Commission], [Type], [Time]) VALUES (N'23', NULL, N'234', N'1', N'1', N'Complete', N'2021-03-19', N'117000', NULL, N'18', N'1', N'12', N'234', NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[Laundary] ([LaundryId], [Name], [Weight], [CategoryId], [CustomerId], [Status], [Date], [Amount], [QrCode], [InvoiceId], [Delete], [UserId], [Qty], [PercentCommission], [Commission], [Type], [Time]) VALUES (N'24', NULL, N'2', N'1', N'1', N'Complete', N'2021-03-19', N'1000', NULL, N'19', N'1', N'13', N'2', NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[Laundary] ([LaundryId], [Name], [Weight], [CategoryId], [CustomerId], [Status], [Date], [Amount], [QrCode], [InvoiceId], [Delete], [UserId], [Qty], [PercentCommission], [Commission], [Type], [Time]) VALUES (N'25', NULL, N'5', N'1', N'27', N'Pending', N'2021-03-19', N'3000', NULL, N'20', N'1', N'12', N'6', NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[Laundary] ([LaundryId], [Name], [Weight], [CategoryId], [CustomerId], [Status], [Date], [Amount], [QrCode], [InvoiceId], [Delete], [UserId], [Qty], [PercentCommission], [Commission], [Type], [Time]) VALUES (N'26', NULL, N'10', N'2', N'27', N'Done', N'2021-03-19', N'10000', NULL, N'21', N'1', N'12', N'100', NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[Laundary] ([LaundryId], [Name], [Weight], [CategoryId], [CustomerId], [Status], [Date], [Amount], [QrCode], [InvoiceId], [Delete], [UserId], [Qty], [PercentCommission], [Commission], [Type], [Time]) VALUES (N'27', NULL, N'23', N'1', N'30', N'Pending', N'2021-03-19', N'11500', NULL, N'22', N'1', N'12', N'23', NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[Laundary] ([LaundryId], [Name], [Weight], [CategoryId], [CustomerId], [Status], [Date], [Amount], [QrCode], [InvoiceId], [Delete], [UserId], [Qty], [PercentCommission], [Commission], [Type], [Time]) VALUES (N'28', NULL, N'23', N'2', N'30', N'Done', N'2021-03-19', N'23000', NULL, N'23', N'1', N'12', N'23', NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[Laundary] ([LaundryId], [Name], [Weight], [CategoryId], [CustomerId], [Status], [Date], [Amount], [QrCode], [InvoiceId], [Delete], [UserId], [Qty], [PercentCommission], [Commission], [Type], [Time]) VALUES (N'29', NULL, N'23', N'1', N'2', N'Complete', N'2021-03-19', N'11500', NULL, N'24', N'1', N'12', N'23', NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[Laundary] ([LaundryId], [Name], [Weight], [CategoryId], [CustomerId], [Status], [Date], [Amount], [QrCode], [InvoiceId], [Delete], [UserId], [Qty], [PercentCommission], [Commission], [Type], [Time]) VALUES (N'30', NULL, N'23', N'2', N'2', N'Complete', N'2021-03-19', N'23000', NULL, N'24', N'1', N'12', N'23', NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[Laundary] ([LaundryId], [Name], [Weight], [CategoryId], [CustomerId], [Status], [Date], [Amount], [QrCode], [InvoiceId], [Delete], [UserId], [Qty], [PercentCommission], [Commission], [Type], [Time]) VALUES (N'31', NULL, N'5', N'1', N'27', N'Complete', N'2021-03-19', N'3000', NULL, N'25', N'1', N'12', N'6', NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[Laundary] ([LaundryId], [Name], [Weight], [CategoryId], [CustomerId], [Status], [Date], [Amount], [QrCode], [InvoiceId], [Delete], [UserId], [Qty], [PercentCommission], [Commission], [Type], [Time]) VALUES (N'32', NULL, N'10', N'2', N'27', N'Complete', N'2021-03-19', N'10000', NULL, N'25', N'1', N'12', N'10', NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[Laundary] ([LaundryId], [Name], [Weight], [CategoryId], [CustomerId], [Status], [Date], [Amount], [QrCode], [InvoiceId], [Delete], [UserId], [Qty], [PercentCommission], [Commission], [Type], [Time]) VALUES (N'33', NULL, N'1', N'1', N'27', N'Complete', N'2021-03-20', N'3000', NULL, N'26', N'1', N'12', N'6', NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[Laundary] ([LaundryId], [Name], [Weight], [CategoryId], [CustomerId], [Status], [Date], [Amount], [QrCode], [InvoiceId], [Delete], [UserId], [Qty], [PercentCommission], [Commission], [Type], [Time]) VALUES (N'34', NULL, N'5', N'2', N'27', N'Complete', N'2021-03-20', N'5000', NULL, N'26', N'1', N'12', N'2', NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[Laundary] ([LaundryId], [Name], [Weight], [CategoryId], [CustomerId], [Status], [Date], [Amount], [QrCode], [InvoiceId], [Delete], [UserId], [Qty], [PercentCommission], [Commission], [Type], [Time]) VALUES (N'35', NULL, N'12', N'1', N'30', N'Complete', N'2021-03-21', N'6000', NULL, N'27', N'1', N'12', N'12', NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[Laundary] ([LaundryId], [Name], [Weight], [CategoryId], [CustomerId], [Status], [Date], [Amount], [QrCode], [InvoiceId], [Delete], [UserId], [Qty], [PercentCommission], [Commission], [Type], [Time]) VALUES (N'36', NULL, N'12', N'1', N'30', N'Complete', N'2021-03-21', N'6000', NULL, N'27', N'1', N'12', N'12', NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[Laundary] ([LaundryId], [Name], [Weight], [CategoryId], [CustomerId], [Status], [Date], [Amount], [QrCode], [InvoiceId], [Delete], [UserId], [Qty], [PercentCommission], [Commission], [Type], [Time]) VALUES (N'37', NULL, N'5', N'1', N'33', N'Reject', N'2021-03-22', N'5000', NULL, N'28', N'0', N'12', N'10', NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[Laundary] ([LaundryId], [Name], [Weight], [CategoryId], [CustomerId], [Status], [Date], [Amount], [QrCode], [InvoiceId], [Delete], [UserId], [Qty], [PercentCommission], [Commission], [Type], [Time]) VALUES (N'38', NULL, N'5', N'1', N'33', N'Complete', N'2021-03-22', N'5000', NULL, N'29', N'1', N'12', N'10', NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[Laundary] ([LaundryId], [Name], [Weight], [CategoryId], [CustomerId], [Status], [Date], [Amount], [QrCode], [InvoiceId], [Delete], [UserId], [Qty], [PercentCommission], [Commission], [Type], [Time]) VALUES (N'39', NULL, N'10', N'1', N'40', N'Complete', N'2021-03-22', N'50000', NULL, N'30', N'1', N'12', N'100', NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[Laundary] ([LaundryId], [Name], [Weight], [CategoryId], [CustomerId], [Status], [Date], [Amount], [QrCode], [InvoiceId], [Delete], [UserId], [Qty], [PercentCommission], [Commission], [Type], [Time]) VALUES (N'40', NULL, N'10', N'2', N'40', N'Complete', N'2021-03-22', N'10000', NULL, N'30', N'1', N'12', N'30', NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[Laundary] ([LaundryId], [Name], [Weight], [CategoryId], [CustomerId], [Status], [Date], [Amount], [QrCode], [InvoiceId], [Delete], [UserId], [Qty], [PercentCommission], [Commission], [Type], [Time]) VALUES (N'41', NULL, N'5', N'1', N'31', N'Done', N'2021-03-22', N'5500', NULL, N'31', N'1', N'12', N'11', NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[Laundary] ([LaundryId], [Name], [Weight], [CategoryId], [CustomerId], [Status], [Date], [Amount], [QrCode], [InvoiceId], [Delete], [UserId], [Qty], [PercentCommission], [Commission], [Type], [Time]) VALUES (N'42', NULL, N'10', N'2', N'31', N'Done', N'2021-03-22', N'10000', NULL, N'31', N'1', N'12', N'11', NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[Laundary] ([LaundryId], [Name], [Weight], [CategoryId], [CustomerId], [Status], [Date], [Amount], [QrCode], [InvoiceId], [Delete], [UserId], [Qty], [PercentCommission], [Commission], [Type], [Time]) VALUES (N'43', NULL, N'1', N'1', N'2', N'Done', N'2021-03-22', N'500', NULL, N'32', N'1', N'12', N'1', NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[Laundary] ([LaundryId], [Name], [Weight], [CategoryId], [CustomerId], [Status], [Date], [Amount], [QrCode], [InvoiceId], [Delete], [UserId], [Qty], [PercentCommission], [Commission], [Type], [Time]) VALUES (N'44', NULL, N'12', N'1', N'2', N'Done', N'2021-03-22', N'6000', NULL, N'32', N'1', N'12', N'12', NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[Laundary] ([LaundryId], [Name], [Weight], [CategoryId], [CustomerId], [Status], [Date], [Amount], [QrCode], [InvoiceId], [Delete], [UserId], [Qty], [PercentCommission], [Commission], [Type], [Time]) VALUES (N'45', NULL, N'11', N'1', N'7', N'Complete', N'2021-03-22', N'5500', NULL, N'33', N'1', N'12', N'11', NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[Laundary] ([LaundryId], [Name], [Weight], [CategoryId], [CustomerId], [Status], [Date], [Amount], [QrCode], [InvoiceId], [Delete], [UserId], [Qty], [PercentCommission], [Commission], [Type], [Time]) VALUES (N'46', NULL, N'112', N'2', N'7', N'Complete', N'2021-03-22', N'112000', NULL, N'33', N'1', N'12', N'132', NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[Laundary] ([LaundryId], [Name], [Weight], [CategoryId], [CustomerId], [Status], [Date], [Amount], [QrCode], [InvoiceId], [Delete], [UserId], [Qty], [PercentCommission], [Commission], [Type], [Time]) VALUES (N'47', NULL, N'23', N'1', N'8', N'Complete', N'2021-03-22', N'11500', NULL, N'34', N'1', N'1', N'23', NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[Laundary] ([LaundryId], [Name], [Weight], [CategoryId], [CustomerId], [Status], [Date], [Amount], [QrCode], [InvoiceId], [Delete], [UserId], [Qty], [PercentCommission], [Commission], [Type], [Time]) VALUES (N'48', NULL, N'123', N'2', N'8', N'Complete', N'2021-03-22', N'123000', NULL, N'34', N'1', N'1', N'123', NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[Laundary] ([LaundryId], [Name], [Weight], [CategoryId], [CustomerId], [Status], [Date], [Amount], [QrCode], [InvoiceId], [Delete], [UserId], [Qty], [PercentCommission], [Commission], [Type], [Time]) VALUES (N'49', NULL, N'10', N'1', N'40', N'Pending', N'2021-03-22', N'5000', NULL, N'35', N'1', N'12', N'10', NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[Laundary] ([LaundryId], [Name], [Weight], [CategoryId], [CustomerId], [Status], [Date], [Amount], [QrCode], [InvoiceId], [Delete], [UserId], [Qty], [PercentCommission], [Commission], [Type], [Time]) VALUES (N'50', NULL, N'10', N'2', N'40', N'Pending', N'2021-03-22', N'10000', NULL, N'35', N'1', N'12', N'10', NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[Laundary] ([LaundryId], [Name], [Weight], [CategoryId], [CustomerId], [Status], [Date], [Amount], [QrCode], [InvoiceId], [Delete], [UserId], [Qty], [PercentCommission], [Commission], [Type], [Time]) VALUES (N'51', NULL, N'20', N'1', N'13', N'Complete', N'2021-03-22', N'10000', NULL, N'36', N'1', N'12', N'20', NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[Laundary] ([LaundryId], [Name], [Weight], [CategoryId], [CustomerId], [Status], [Date], [Amount], [QrCode], [InvoiceId], [Delete], [UserId], [Qty], [PercentCommission], [Commission], [Type], [Time]) VALUES (N'52', NULL, N'20', N'2', N'13', N'Complete', N'2021-03-22', N'20000', NULL, N'36', N'1', N'12', N'20', NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[Laundary] ([LaundryId], [Name], [Weight], [CategoryId], [CustomerId], [Status], [Date], [Amount], [QrCode], [InvoiceId], [Delete], [UserId], [Qty], [PercentCommission], [Commission], [Type], [Time]) VALUES (N'53', NULL, N'5', N'1', N'47', N'Complete', N'2021-03-24', N'2500', NULL, N'37', N'1', N'1', N'5', NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[Laundary] ([LaundryId], [Name], [Weight], [CategoryId], [CustomerId], [Status], [Date], [Amount], [QrCode], [InvoiceId], [Delete], [UserId], [Qty], [PercentCommission], [Commission], [Type], [Time]) VALUES (N'54', NULL, N'10', N'2', N'47', N'Complete', N'2021-03-24', N'10000', NULL, N'37', N'1', N'1', N'20', NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[Laundary] ([LaundryId], [Name], [Weight], [CategoryId], [CustomerId], [Status], [Date], [Amount], [QrCode], [InvoiceId], [Delete], [UserId], [Qty], [PercentCommission], [Commission], [Type], [Time]) VALUES (N'55', NULL, N'11', N'1', N'7', N'Processing', N'2021-03-24', N'5500', NULL, N'38', N'1', N'17', N'11', NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[Laundary] ([LaundryId], [Name], [Weight], [CategoryId], [CustomerId], [Status], [Date], [Amount], [QrCode], [InvoiceId], [Delete], [UserId], [Qty], [PercentCommission], [Commission], [Type], [Time]) VALUES (N'56', NULL, N'1', N'2', N'7', N'Done', N'2021-03-24', N'1000', NULL, N'38', N'1', N'17', N'111', NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[Laundary] ([LaundryId], [Name], [Weight], [CategoryId], [CustomerId], [Status], [Date], [Amount], [QrCode], [InvoiceId], [Delete], [UserId], [Qty], [PercentCommission], [Commission], [Type], [Time]) VALUES (N'57', NULL, N'3', N'1', N'1', N'Pending', N'2021-03-26', N'1500', NULL, N'87', N'1', N'1', N'3', NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[Laundary] ([LaundryId], [Name], [Weight], [CategoryId], [CustomerId], [Status], [Date], [Amount], [QrCode], [InvoiceId], [Delete], [UserId], [Qty], [PercentCommission], [Commission], [Type], [Time]) VALUES (N'58', NULL, N'3', N'1', N'49', N'Pending', N'2021-03-26', N'4500', NULL, N'88', N'1', N'1', N'3', NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[Laundary] ([LaundryId], [Name], [Weight], [CategoryId], [CustomerId], [Status], [Date], [Amount], [QrCode], [InvoiceId], [Delete], [UserId], [Qty], [PercentCommission], [Commission], [Type], [Time]) VALUES (N'59', NULL, N'3', N'1', N'49', N'Pending', N'2021-03-26', N'4500', NULL, N'89', N'1', N'1', N'3', NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[Laundary] ([LaundryId], [Name], [Weight], [CategoryId], [CustomerId], [Status], [Date], [Amount], [QrCode], [InvoiceId], [Delete], [UserId], [Qty], [PercentCommission], [Commission], [Type], [Time]) VALUES (N'60', NULL, N'2', N'1', N'48', N'Pending', N'2021-03-26', N'4000', NULL, N'90', N'1', N'1', N'2', NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[Laundary] ([LaundryId], [Name], [Weight], [CategoryId], [CustomerId], [Status], [Date], [Amount], [QrCode], [InvoiceId], [Delete], [UserId], [Qty], [PercentCommission], [Commission], [Type], [Time]) VALUES (N'61', NULL, N'2', N'1', N'48', N'Pending', N'2021-03-26', N'4000', NULL, N'91', N'1', N'1', N'2', NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[Laundary] ([LaundryId], [Name], [Weight], [CategoryId], [CustomerId], [Status], [Date], [Amount], [QrCode], [InvoiceId], [Delete], [UserId], [Qty], [PercentCommission], [Commission], [Type], [Time]) VALUES (N'62', NULL, N'2', N'1', N'33', N'Pending', N'2021-03-26', N'3000', NULL, N'92', N'1', N'1', N'2', NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[Laundary] ([LaundryId], [Name], [Weight], [CategoryId], [CustomerId], [Status], [Date], [Amount], [QrCode], [InvoiceId], [Delete], [UserId], [Qty], [PercentCommission], [Commission], [Type], [Time]) VALUES (N'63', NULL, N'5', N'1', N'51', N'Processing', N'2021-03-26', N'2500', NULL, N'93', N'1', N'1', N'5', NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[Laundary] ([LaundryId], [Name], [Weight], [CategoryId], [CustomerId], [Status], [Date], [Amount], [QrCode], [InvoiceId], [Delete], [UserId], [Qty], [PercentCommission], [Commission], [Type], [Time]) VALUES (N'64', NULL, N'5', N'1', N'51', N'Complete', N'2021-03-26', N'2500', NULL, N'94', N'1', N'1', N'5', NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[Laundary] ([LaundryId], [Name], [Weight], [CategoryId], [CustomerId], [Status], [Date], [Amount], [QrCode], [InvoiceId], [Delete], [UserId], [Qty], [PercentCommission], [Commission], [Type], [Time]) VALUES (N'65', NULL, N'5', N'2', N'51', N'Complete', N'2021-03-26', N'5000', NULL, N'94', N'1', N'1', N'5', NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[Laundary] ([LaundryId], [Name], [Weight], [CategoryId], [CustomerId], [Status], [Date], [Amount], [QrCode], [InvoiceId], [Delete], [UserId], [Qty], [PercentCommission], [Commission], [Type], [Time]) VALUES (N'66', NULL, N'5', N'1', N'49', N'Complete', N'2021-03-26', N'7500', NULL, N'95', N'1', N'1', N'5', NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[Laundary] ([LaundryId], [Name], [Weight], [CategoryId], [CustomerId], [Status], [Date], [Amount], [QrCode], [InvoiceId], [Delete], [UserId], [Qty], [PercentCommission], [Commission], [Type], [Time]) VALUES (N'67', NULL, N'5', N'1', N'49', N'Complete', N'2021-03-26', N'7500', NULL, N'95', N'1', N'1', N'5', NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[Laundary] ([LaundryId], [Name], [Weight], [CategoryId], [CustomerId], [Status], [Date], [Amount], [QrCode], [InvoiceId], [Delete], [UserId], [Qty], [PercentCommission], [Commission], [Type], [Time]) VALUES (N'68', NULL, N'5', N'1', N'49', N'Complete', N'2021-03-26', N'7500', NULL, N'96', N'1', N'1', N'5', NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[Laundary] ([LaundryId], [Name], [Weight], [CategoryId], [CustomerId], [Status], [Date], [Amount], [QrCode], [InvoiceId], [Delete], [UserId], [Qty], [PercentCommission], [Commission], [Type], [Time]) VALUES (N'69', NULL, N'5', N'2', N'49', N'Complete', N'2021-03-26', N'10000', NULL, N'96', N'1', N'1', N'5', NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[Laundary] ([LaundryId], [Name], [Weight], [CategoryId], [CustomerId], [Status], [Date], [Amount], [QrCode], [InvoiceId], [Delete], [UserId], [Qty], [PercentCommission], [Commission], [Type], [Time]) VALUES (N'70', NULL, N'5', N'1', N'48', N'Complete', N'2021-03-26', N'10000', NULL, N'97', N'1', N'1', N'5', NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[Laundary] ([LaundryId], [Name], [Weight], [CategoryId], [CustomerId], [Status], [Date], [Amount], [QrCode], [InvoiceId], [Delete], [UserId], [Qty], [PercentCommission], [Commission], [Type], [Time]) VALUES (N'71', NULL, N'5', N'2', N'48', N'Complete', N'2021-03-26', N'15000', NULL, N'97', N'1', N'1', N'5', NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[Laundary] ([LaundryId], [Name], [Weight], [CategoryId], [CustomerId], [Status], [Date], [Amount], [QrCode], [InvoiceId], [Delete], [UserId], [Qty], [PercentCommission], [Commission], [Type], [Time]) VALUES (N'72', NULL, N'2', N'1', N'52', N'Complete', N'2021-03-26', N'1000', NULL, N'98', N'1', N'1', N'2', NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[Laundary] ([LaundryId], [Name], [Weight], [CategoryId], [CustomerId], [Status], [Date], [Amount], [QrCode], [InvoiceId], [Delete], [UserId], [Qty], [PercentCommission], [Commission], [Type], [Time]) VALUES (N'73', NULL, N'2', N'2', N'52', N'Complete', N'2021-03-26', N'2000', NULL, N'98', N'1', N'1', N'2', NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[Laundary] ([LaundryId], [Name], [Weight], [CategoryId], [CustomerId], [Status], [Date], [Amount], [QrCode], [InvoiceId], [Delete], [UserId], [Qty], [PercentCommission], [Commission], [Type], [Time]) VALUES (N'74', NULL, N'2', N'1', N'51', N'Complete', N'2021-03-26', N'3000', NULL, N'99', N'1', N'1', N'2', NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[Laundary] ([LaundryId], [Name], [Weight], [CategoryId], [CustomerId], [Status], [Date], [Amount], [QrCode], [InvoiceId], [Delete], [UserId], [Qty], [PercentCommission], [Commission], [Type], [Time]) VALUES (N'75', NULL, N'2', N'1', N'51', N'Complete', N'2021-03-26', N'3000', NULL, N'99', N'1', N'1', N'2', NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[Laundary] ([LaundryId], [Name], [Weight], [CategoryId], [CustomerId], [Status], [Date], [Amount], [QrCode], [InvoiceId], [Delete], [UserId], [Qty], [PercentCommission], [Commission], [Type], [Time]) VALUES (N'76', NULL, N'2', N'1', N'51', N'Complete', N'2021-03-26', N'3000', NULL, N'100', N'1', N'1', N'2', NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[Laundary] ([LaundryId], [Name], [Weight], [CategoryId], [CustomerId], [Status], [Date], [Amount], [QrCode], [InvoiceId], [Delete], [UserId], [Qty], [PercentCommission], [Commission], [Type], [Time]) VALUES (N'77', NULL, N'2', N'2', N'51', N'Complete', N'2021-03-26', N'4000', NULL, N'100', N'1', N'1', N'2', NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[Laundary] ([LaundryId], [Name], [Weight], [CategoryId], [CustomerId], [Status], [Date], [Amount], [QrCode], [InvoiceId], [Delete], [UserId], [Qty], [PercentCommission], [Commission], [Type], [Time]) VALUES (N'78', NULL, N'3', N'2', N'50', N'Complete', N'2021-03-26', N'9000', NULL, N'101', N'1', N'1', N'2', NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[Laundary] ([LaundryId], [Name], [Weight], [CategoryId], [CustomerId], [Status], [Date], [Amount], [QrCode], [InvoiceId], [Delete], [UserId], [Qty], [PercentCommission], [Commission], [Type], [Time]) VALUES (N'79', NULL, N'2', N'2', N'50', N'Complete', N'2021-03-26', N'6000', NULL, N'101', N'1', N'1', N'2', NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[Laundary] ([LaundryId], [Name], [Weight], [CategoryId], [CustomerId], [Status], [Date], [Amount], [QrCode], [InvoiceId], [Delete], [UserId], [Qty], [PercentCommission], [Commission], [Type], [Time]) VALUES (N'80', NULL, N'10', N'1', N'51', N'Complete', N'2021-03-26', N'15000', NULL, N'102', N'1', N'1', N'10', NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[Laundary] ([LaundryId], [Name], [Weight], [CategoryId], [CustomerId], [Status], [Date], [Amount], [QrCode], [InvoiceId], [Delete], [UserId], [Qty], [PercentCommission], [Commission], [Type], [Time]) VALUES (N'81', NULL, N'4', N'2', N'51', N'Complete', N'2021-03-26', N'8000', NULL, N'102', N'1', N'1', N'7', NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[Laundary] ([LaundryId], [Name], [Weight], [CategoryId], [CustomerId], [Status], [Date], [Amount], [QrCode], [InvoiceId], [Delete], [UserId], [Qty], [PercentCommission], [Commission], [Type], [Time]) VALUES (N'82', NULL, N'5', N'2', N'52', N'Complete', N'2021-03-26', N'5000', NULL, N'103', N'1', N'1', N'5', NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[Laundary] ([LaundryId], [Name], [Weight], [CategoryId], [CustomerId], [Status], [Date], [Amount], [QrCode], [InvoiceId], [Delete], [UserId], [Qty], [PercentCommission], [Commission], [Type], [Time]) VALUES (N'83', NULL, N'5', N'2', N'52', N'Complete', N'2021-03-26', N'5000', NULL, N'103', N'1', N'1', N'5', NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[Laundary] ([LaundryId], [Name], [Weight], [CategoryId], [CustomerId], [Status], [Date], [Amount], [QrCode], [InvoiceId], [Delete], [UserId], [Qty], [PercentCommission], [Commission], [Type], [Time]) VALUES (N'84', NULL, N'10', N'2', N'51', N'Complete', N'2021-03-26', N'20000', NULL, N'104', N'1', N'1', N'10', NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[Laundary] ([LaundryId], [Name], [Weight], [CategoryId], [CustomerId], [Status], [Date], [Amount], [QrCode], [InvoiceId], [Delete], [UserId], [Qty], [PercentCommission], [Commission], [Type], [Time]) VALUES (N'85', NULL, N'5', N'2', N'51', N'Reject', N'2021-03-26', N'10000', NULL, N'104', N'0', N'1', N'5', NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[Laundary] ([LaundryId], [Name], [Weight], [CategoryId], [CustomerId], [Status], [Date], [Amount], [QrCode], [InvoiceId], [Delete], [UserId], [Qty], [PercentCommission], [Commission], [Type], [Time]) VALUES (N'86', NULL, N'5', N'1', N'50', N'Reject', N'2021-03-26', N'10000', NULL, N'105', N'0', N'1', N'5', NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[Laundary] ([LaundryId], [Name], [Weight], [CategoryId], [CustomerId], [Status], [Date], [Amount], [QrCode], [InvoiceId], [Delete], [UserId], [Qty], [PercentCommission], [Commission], [Type], [Time]) VALUES (N'87', NULL, N'5', N'2', N'50', N'Reject', N'2021-03-26', N'15000', NULL, N'105', N'0', N'1', N'5', NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[Laundary] ([LaundryId], [Name], [Weight], [CategoryId], [CustomerId], [Status], [Date], [Amount], [QrCode], [InvoiceId], [Delete], [UserId], [Qty], [PercentCommission], [Commission], [Type], [Time]) VALUES (N'88', NULL, N'6', N'2', N'55', N'Complete', N'2021-03-26', N'18000', NULL, N'106', N'1', N'1', N'6', NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[Laundary] ([LaundryId], [Name], [Weight], [CategoryId], [CustomerId], [Status], [Date], [Amount], [QrCode], [InvoiceId], [Delete], [UserId], [Qty], [PercentCommission], [Commission], [Type], [Time]) VALUES (N'89', NULL, N'5', N'1', N'55', N'Complete', N'2021-03-26', N'10000', NULL, N'106', N'1', N'1', N'5', NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[Laundary] ([LaundryId], [Name], [Weight], [CategoryId], [CustomerId], [Status], [Date], [Amount], [QrCode], [InvoiceId], [Delete], [UserId], [Qty], [PercentCommission], [Commission], [Type], [Time]) VALUES (N'90', NULL, N'3', N'2', N'54', N'Complete', N'2021-03-26', N'6000', NULL, N'107', N'1', N'1', N'5', NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[Laundary] ([LaundryId], [Name], [Weight], [CategoryId], [CustomerId], [Status], [Date], [Amount], [QrCode], [InvoiceId], [Delete], [UserId], [Qty], [PercentCommission], [Commission], [Type], [Time]) VALUES (N'91', NULL, N'2', N'2', N'54', N'Complete', N'2021-03-26', N'4000', NULL, N'107', N'1', N'1', N'5', NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[Laundary] ([LaundryId], [Name], [Weight], [CategoryId], [CustomerId], [Status], [Date], [Amount], [QrCode], [InvoiceId], [Delete], [UserId], [Qty], [PercentCommission], [Commission], [Type], [Time]) VALUES (N'92', NULL, N'2', N'2', N'53', N'Complete', N'2021-03-26', N'2000', NULL, N'108', N'1', N'1', N'2', NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[Laundary] ([LaundryId], [Name], [Weight], [CategoryId], [CustomerId], [Status], [Date], [Amount], [QrCode], [InvoiceId], [Delete], [UserId], [Qty], [PercentCommission], [Commission], [Type], [Time]) VALUES (N'93', NULL, N'8', N'1', N'53', N'Complete', N'2021-03-26', N'1500', NULL, N'108', N'1', N'1', N'3', NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[Laundary] ([LaundryId], [Name], [Weight], [CategoryId], [CustomerId], [Status], [Date], [Amount], [QrCode], [InvoiceId], [Delete], [UserId], [Qty], [PercentCommission], [Commission], [Type], [Time]) VALUES (N'94', NULL, N'10', N'1', N'1', N'Pending', N'2021-04-02', N'5000', NULL, N'109', N'1', N'1', N'10', N'99', N'4950', NULL, NULL)
GO

INSERT INTO [dbo].[Laundary] ([LaundryId], [Name], [Weight], [CategoryId], [CustomerId], [Status], [Date], [Amount], [QrCode], [InvoiceId], [Delete], [UserId], [Qty], [PercentCommission], [Commission], [Type], [Time]) VALUES (N'95', NULL, N'10', N'2', N'1', N'Pending', N'2021-04-02', N'10000', NULL, N'109', N'1', N'1', N'10', N'99', N'9900', NULL, NULL)
GO

INSERT INTO [dbo].[Laundary] ([LaundryId], [Name], [Weight], [CategoryId], [CustomerId], [Status], [Date], [Amount], [QrCode], [InvoiceId], [Delete], [UserId], [Qty], [PercentCommission], [Commission], [Type], [Time]) VALUES (N'96', NULL, N'10', N'1', N'1', N'Pending', N'2021-04-02', N'5000', NULL, N'114', N'1', N'1', N'10', N'99', N'4950', NULL, NULL)
GO

INSERT INTO [dbo].[Laundary] ([LaundryId], [Name], [Weight], [CategoryId], [CustomerId], [Status], [Date], [Amount], [QrCode], [InvoiceId], [Delete], [UserId], [Qty], [PercentCommission], [Commission], [Type], [Time]) VALUES (N'97', NULL, N'20', N'2', N'1', N'Pending', N'2021-04-02', N'20000', NULL, N'114', N'1', N'1', N'20', N'99', N'19800', NULL, NULL)
GO

INSERT INTO [dbo].[Laundary] ([LaundryId], [Name], [Weight], [CategoryId], [CustomerId], [Status], [Date], [Amount], [QrCode], [InvoiceId], [Delete], [UserId], [Qty], [PercentCommission], [Commission], [Type], [Time]) VALUES (N'98', NULL, N'10', N'1', N'1', N'Pending', N'2021-04-02', N'5000', NULL, N'116', N'1', N'1', N'10', N'99', N'4950', NULL, NULL)
GO

INSERT INTO [dbo].[Laundary] ([LaundryId], [Name], [Weight], [CategoryId], [CustomerId], [Status], [Date], [Amount], [QrCode], [InvoiceId], [Delete], [UserId], [Qty], [PercentCommission], [Commission], [Type], [Time]) VALUES (N'99', NULL, N'20', N'2', N'1', N'Pending', N'2021-04-02', N'20000', NULL, N'116', N'1', N'1', N'20', N'99', N'19800', NULL, NULL)
GO

INSERT INTO [dbo].[Laundary] ([LaundryId], [Name], [Weight], [CategoryId], [CustomerId], [Status], [Date], [Amount], [QrCode], [InvoiceId], [Delete], [UserId], [Qty], [PercentCommission], [Commission], [Type], [Time]) VALUES (N'101', NULL, N'10', N'1', N'1', NULL, N'2021-04-02', N'0', NULL, N'116', N'1', N'1', N'10', N'99', N'0', N'Free', NULL)
GO

INSERT INTO [dbo].[Laundary] ([LaundryId], [Name], [Weight], [CategoryId], [CustomerId], [Status], [Date], [Amount], [QrCode], [InvoiceId], [Delete], [UserId], [Qty], [PercentCommission], [Commission], [Type], [Time]) VALUES (N'102', NULL, N'10', N'1', N'1', NULL, N'2021-04-02', N'5000', NULL, N'116', N'1', N'1', N'10', N'99', N'4950', N'Free', NULL)
GO

INSERT INTO [dbo].[Laundary] ([LaundryId], [Name], [Weight], [CategoryId], [CustomerId], [Status], [Date], [Amount], [QrCode], [InvoiceId], [Delete], [UserId], [Qty], [PercentCommission], [Commission], [Type], [Time]) VALUES (N'103', NULL, N'10', N'1', N'1', NULL, N'2021-04-02', N'5000', NULL, N'116', N'1', N'1', N'10', N'99', N'4950', N'Free', NULL)
GO

INSERT INTO [dbo].[Laundary] ([LaundryId], [Name], [Weight], [CategoryId], [CustomerId], [Status], [Date], [Amount], [QrCode], [InvoiceId], [Delete], [UserId], [Qty], [PercentCommission], [Commission], [Type], [Time]) VALUES (N'104', NULL, N'10', N'1', N'1', NULL, N'2021-04-02', N'5000', NULL, N'116', N'1', N'1', N'10', N'99', N'4950', N'Free', NULL)
GO

INSERT INTO [dbo].[Laundary] ([LaundryId], [Name], [Weight], [CategoryId], [CustomerId], [Status], [Date], [Amount], [QrCode], [InvoiceId], [Delete], [UserId], [Qty], [PercentCommission], [Commission], [Type], [Time]) VALUES (N'105', NULL, N'10', N'2', N'1', NULL, N'2021-04-02', N'10000', NULL, N'116', N'1', N'1', N'10', N'20', N'2000', N'Free', NULL)
GO

INSERT INTO [dbo].[Laundary] ([LaundryId], [Name], [Weight], [CategoryId], [CustomerId], [Status], [Date], [Amount], [QrCode], [InvoiceId], [Delete], [UserId], [Qty], [PercentCommission], [Commission], [Type], [Time]) VALUES (N'106', NULL, N'10', N'2', N'1', NULL, N'2021-04-02', N'10000', NULL, N'116', N'1', N'1', N'10', N'20', N'2000', N'Paid', NULL)
GO

INSERT INTO [dbo].[Laundary] ([LaundryId], [Name], [Weight], [CategoryId], [CustomerId], [Status], [Date], [Amount], [QrCode], [InvoiceId], [Delete], [UserId], [Qty], [PercentCommission], [Commission], [Type], [Time]) VALUES (N'107', NULL, N'10', N'2', N'1', NULL, N'2021-04-02', N'20000', NULL, N'116', N'1', N'1', N'10', N'20', N'4000', N'Paid', NULL)
GO

INSERT INTO [dbo].[Laundary] ([LaundryId], [Name], [Weight], [CategoryId], [CustomerId], [Status], [Date], [Amount], [QrCode], [InvoiceId], [Delete], [UserId], [Qty], [PercentCommission], [Commission], [Type], [Time]) VALUES (N'108', NULL, N'10', N'2', N'1', N'Pending', N'2021-04-02', N'20000', NULL, N'116', N'1', N'1', N'10', N'20', N'4000', N'Paid', NULL)
GO

INSERT INTO [dbo].[Laundary] ([LaundryId], [Name], [Weight], [CategoryId], [CustomerId], [Status], [Date], [Amount], [QrCode], [InvoiceId], [Delete], [UserId], [Qty], [PercentCommission], [Commission], [Type], [Time]) VALUES (N'109', NULL, N'10', N'2', N'1', N'Pending', N'2021-04-02', N'20000', NULL, N'116', N'1', N'1', N'10', N'20', N'4000', N'Paid', NULL)
GO

INSERT INTO [dbo].[Laundary] ([LaundryId], [Name], [Weight], [CategoryId], [CustomerId], [Status], [Date], [Amount], [QrCode], [InvoiceId], [Delete], [UserId], [Qty], [PercentCommission], [Commission], [Type], [Time]) VALUES (N'110', NULL, N'10', N'1', N'1', N'Pending', N'2021-04-02', N'15000', NULL, N'116', N'1', N'1', N'10', N'20', N'3000', N'Paid', NULL)
GO

INSERT INTO [dbo].[Laundary] ([LaundryId], [Name], [Weight], [CategoryId], [CustomerId], [Status], [Date], [Amount], [QrCode], [InvoiceId], [Delete], [UserId], [Qty], [PercentCommission], [Commission], [Type], [Time]) VALUES (N'111', NULL, N'10', N'1', N'1', N'Pending', N'2021-04-02', N'15000', NULL, N'116', N'1', N'1', N'10', N'20', N'3000', N'Paid', N'03-59-33')
GO

INSERT INTO [dbo].[Laundary] ([LaundryId], [Name], [Weight], [CategoryId], [CustomerId], [Status], [Date], [Amount], [QrCode], [InvoiceId], [Delete], [UserId], [Qty], [PercentCommission], [Commission], [Type], [Time]) VALUES (N'112', NULL, N'10', N'1', N'1', N'Pending', N'2021-04-02', N'15000', NULL, N'116', N'1', N'1', N'10', N'20', N'3000', N'Paid', N'03:59:59')
GO

INSERT INTO [dbo].[Laundary] ([LaundryId], [Name], [Weight], [CategoryId], [CustomerId], [Status], [Date], [Amount], [QrCode], [InvoiceId], [Delete], [UserId], [Qty], [PercentCommission], [Commission], [Type], [Time]) VALUES (N'113', NULL, N'10', N'1', N'1', N'Pending', N'2021-04-02', N'15000', NULL, N'116', N'1', N'1', N'10', N'20', N'3000', N'Paid', N'04:01:01')
GO

INSERT INTO [dbo].[Laundary] ([LaundryId], [Name], [Weight], [CategoryId], [CustomerId], [Status], [Date], [Amount], [QrCode], [InvoiceId], [Delete], [UserId], [Qty], [PercentCommission], [Commission], [Type], [Time]) VALUES (N'114', NULL, N'10', N'1', N'2', N'Pending', N'2021-04-02', N'5000', NULL, N'117', N'1', N'1', N'10', N'20', N'1000', N'Paid', N'04:08:58')
GO

INSERT INTO [dbo].[Laundary] ([LaundryId], [Name], [Weight], [CategoryId], [CustomerId], [Status], [Date], [Amount], [QrCode], [InvoiceId], [Delete], [UserId], [Qty], [PercentCommission], [Commission], [Type], [Time]) VALUES (N'115', NULL, N'10', N'2', N'2', N'Pending', N'2021-04-02', N'10000', NULL, N'117', N'1', N'1', N'10', N'20', N'2000', N'Paid', N'04:08:58')
GO

INSERT INTO [dbo].[Laundary] ([LaundryId], [Name], [Weight], [CategoryId], [CustomerId], [Status], [Date], [Amount], [QrCode], [InvoiceId], [Delete], [UserId], [Qty], [PercentCommission], [Commission], [Type], [Time]) VALUES (N'116', NULL, N'10', N'1', N'55', N'Pending', N'2021-04-02', N'20000', NULL, N'119', N'1', N'1', N'10', N'20', N'4000', N'Paid', N'04:11:30')
GO

INSERT INTO [dbo].[Laundary] ([LaundryId], [Name], [Weight], [CategoryId], [CustomerId], [Status], [Date], [Amount], [QrCode], [InvoiceId], [Delete], [UserId], [Qty], [PercentCommission], [Commission], [Type], [Time]) VALUES (N'117', NULL, N'10', N'2', N'55', N'Pending', N'2021-04-02', N'30000', NULL, N'119', N'1', N'1', N'10', N'20', N'6000', N'Paid', N'04:11:30')
GO

INSERT INTO [dbo].[Laundary] ([LaundryId], [Name], [Weight], [CategoryId], [CustomerId], [Status], [Date], [Amount], [QrCode], [InvoiceId], [Delete], [UserId], [Qty], [PercentCommission], [Commission], [Type], [Time]) VALUES (N'118', NULL, N'10', N'1', N'54', N'Pending', N'2021-04-02', N'15000', NULL, N'121', N'1', N'1', N'10', N'20', N'3000', N'Paid', N'04:12:29')
GO

INSERT INTO [dbo].[Laundary] ([LaundryId], [Name], [Weight], [CategoryId], [CustomerId], [Status], [Date], [Amount], [QrCode], [InvoiceId], [Delete], [UserId], [Qty], [PercentCommission], [Commission], [Type], [Time]) VALUES (N'119', NULL, N'10', N'2', N'54', N'Pending', N'2021-04-02', N'20000', NULL, N'121', N'1', N'1', N'10', N'20', N'4000', N'Paid', N'04:12:29')
GO

INSERT INTO [dbo].[Laundary] ([LaundryId], [Name], [Weight], [CategoryId], [CustomerId], [Status], [Date], [Amount], [QrCode], [InvoiceId], [Delete], [UserId], [Qty], [PercentCommission], [Commission], [Type], [Time]) VALUES (N'120', NULL, N'10', N'1', N'53', N'Pending', N'2021-04-02', N'5000', NULL, N'110', N'1', N'1', N'10', N'20', N'1000', N'Paid', N'04:15:55')
GO

INSERT INTO [dbo].[Laundary] ([LaundryId], [Name], [Weight], [CategoryId], [CustomerId], [Status], [Date], [Amount], [QrCode], [InvoiceId], [Delete], [UserId], [Qty], [PercentCommission], [Commission], [Type], [Time]) VALUES (N'121', NULL, N'10', N'2', N'53', N'Pending', N'2021-04-02', N'10000', NULL, N'110', N'1', N'1', N'10', N'20', N'2000', N'Paid', N'04:15:55')
GO

INSERT INTO [dbo].[Laundary] ([LaundryId], [Name], [Weight], [CategoryId], [CustomerId], [Status], [Date], [Amount], [QrCode], [InvoiceId], [Delete], [UserId], [Qty], [PercentCommission], [Commission], [Type], [Time]) VALUES (N'122', NULL, N'10', N'1', N'55', N'Pending', N'2021-04-02', N'20000', NULL, N'125', N'1', N'1', N'10', N'20', N'4000', N'Paid', N'04:18:43')
GO

INSERT INTO [dbo].[Laundary] ([LaundryId], [Name], [Weight], [CategoryId], [CustomerId], [Status], [Date], [Amount], [QrCode], [InvoiceId], [Delete], [UserId], [Qty], [PercentCommission], [Commission], [Type], [Time]) VALUES (N'123', NULL, N'10', N'2', N'55', N'Pending', N'2021-04-02', N'30000', NULL, N'125', N'1', N'1', N'10', N'20', N'6000', N'Paid', N'04:18:43')
GO

INSERT INTO [dbo].[Laundary] ([LaundryId], [Name], [Weight], [CategoryId], [CustomerId], [Status], [Date], [Amount], [QrCode], [InvoiceId], [Delete], [UserId], [Qty], [PercentCommission], [Commission], [Type], [Time]) VALUES (N'124', NULL, N'10', N'1', N'54', N'Pending', N'2021-04-02', N'15000', NULL, N'126', N'1', N'1', N'10', N'20', N'3000', N'Paid', N'04:20:01')
GO

INSERT INTO [dbo].[Laundary] ([LaundryId], [Name], [Weight], [CategoryId], [CustomerId], [Status], [Date], [Amount], [QrCode], [InvoiceId], [Delete], [UserId], [Qty], [PercentCommission], [Commission], [Type], [Time]) VALUES (N'125', NULL, N'10', N'2', N'54', N'Pending', N'2021-04-02', N'20000', NULL, N'126', N'1', N'1', N'10', N'20', N'4000', N'Paid', N'04:20:01')
GO

INSERT INTO [dbo].[Laundary] ([LaundryId], [Name], [Weight], [CategoryId], [CustomerId], [Status], [Date], [Amount], [QrCode], [InvoiceId], [Delete], [UserId], [Qty], [PercentCommission], [Commission], [Type], [Time]) VALUES (N'126', NULL, N'10', N'1', N'2', N'Pending', N'2021-04-02', N'5000', NULL, N'127', N'1', N'1', N'10', N'20', N'1000', N'Paid', N'04:25:32')
GO

INSERT INTO [dbo].[Laundary] ([LaundryId], [Name], [Weight], [CategoryId], [CustomerId], [Status], [Date], [Amount], [QrCode], [InvoiceId], [Delete], [UserId], [Qty], [PercentCommission], [Commission], [Type], [Time]) VALUES (N'127', NULL, N'10', N'1', N'2', N'Pending', N'2021-04-02', N'5000', NULL, N'127', N'1', N'1', N'10', N'20', N'1000', N'Paid', N'04:25:32')
GO

INSERT INTO [dbo].[Laundary] ([LaundryId], [Name], [Weight], [CategoryId], [CustomerId], [Status], [Date], [Amount], [QrCode], [InvoiceId], [Delete], [UserId], [Qty], [PercentCommission], [Commission], [Type], [Time]) VALUES (N'128', NULL, N'10', N'1', N'2', N'Pending', N'2021-04-02', N'5000', NULL, N'128', N'1', N'1', N'10', N'20', N'1000', N'Paid', N'04:25:32')
GO

INSERT INTO [dbo].[Laundary] ([LaundryId], [Name], [Weight], [CategoryId], [CustomerId], [Status], [Date], [Amount], [QrCode], [InvoiceId], [Delete], [UserId], [Qty], [PercentCommission], [Commission], [Type], [Time]) VALUES (N'129', NULL, N'10', N'1', N'2', N'Pending', N'2021-04-02', N'5000', NULL, N'128', N'1', N'1', N'10', N'20', N'1000', N'Paid', N'04:25:32')
GO

INSERT INTO [dbo].[Laundary] ([LaundryId], [Name], [Weight], [CategoryId], [CustomerId], [Status], [Date], [Amount], [QrCode], [InvoiceId], [Delete], [UserId], [Qty], [PercentCommission], [Commission], [Type], [Time]) VALUES (N'130', NULL, N'10', N'1', N'1', N'Pending', N'2021-04-02', N'15000', NULL, N'129', N'1', N'1', N'10', N'20', N'3000', N'Paid', N'04:25:59')
GO

INSERT INTO [dbo].[Laundary] ([LaundryId], [Name], [Weight], [CategoryId], [CustomerId], [Status], [Date], [Amount], [QrCode], [InvoiceId], [Delete], [UserId], [Qty], [PercentCommission], [Commission], [Type], [Time]) VALUES (N'131', NULL, N'10', N'2', N'1', N'Pending', N'2021-04-02', N'20000', NULL, N'129', N'1', N'1', N'10', N'20', N'4000', N'Paid', N'04:25:59')
GO

INSERT INTO [dbo].[Laundary] ([LaundryId], [Name], [Weight], [CategoryId], [CustomerId], [Status], [Date], [Amount], [QrCode], [InvoiceId], [Delete], [UserId], [Qty], [PercentCommission], [Commission], [Type], [Time]) VALUES (N'132', NULL, N'10', N'1', N'53', N'Pending', N'2021-04-02', N'5000', NULL, N'130', N'1', N'1', N'10', N'20', N'1000', N'Paid', N'04:28:22')
GO

INSERT INTO [dbo].[Laundary] ([LaundryId], [Name], [Weight], [CategoryId], [CustomerId], [Status], [Date], [Amount], [QrCode], [InvoiceId], [Delete], [UserId], [Qty], [PercentCommission], [Commission], [Type], [Time]) VALUES (N'133', NULL, N'10', N'2', N'53', N'Pending', N'2021-04-02', N'10000', NULL, N'130', N'1', N'1', N'10', N'20', N'2000', N'Paid', N'04:28:22')
GO

INSERT INTO [dbo].[Laundary] ([LaundryId], [Name], [Weight], [CategoryId], [CustomerId], [Status], [Date], [Amount], [QrCode], [InvoiceId], [Delete], [UserId], [Qty], [PercentCommission], [Commission], [Type], [Time]) VALUES (N'134', NULL, N'12', N'1', N'1', N'Pending', N'2021-04-02', N'18000', NULL, N'131', N'1', N'1', N'12', N'20', N'3600', N'', N'04:31:09')
GO

INSERT INTO [dbo].[Laundary] ([LaundryId], [Name], [Weight], [CategoryId], [CustomerId], [Status], [Date], [Amount], [QrCode], [InvoiceId], [Delete], [UserId], [Qty], [PercentCommission], [Commission], [Type], [Time]) VALUES (N'135', NULL, N'1', N'2', N'1', N'Pending', N'2021-04-02', N'2000', NULL, N'131', N'1', N'1', N'1', N'20', N'400', N'', N'04:31:09')
GO

INSERT INTO [dbo].[Laundary] ([LaundryId], [Name], [Weight], [CategoryId], [CustomerId], [Status], [Date], [Amount], [QrCode], [InvoiceId], [Delete], [UserId], [Qty], [PercentCommission], [Commission], [Type], [Time]) VALUES (N'136', NULL, N'12', N'1', N'11', N'Pending', N'2021-04-02', N'6000', NULL, N'132', N'1', N'1', N'12', N'20', N'1200', N'', N'04:32:56')
GO

INSERT INTO [dbo].[Laundary] ([LaundryId], [Name], [Weight], [CategoryId], [CustomerId], [Status], [Date], [Amount], [QrCode], [InvoiceId], [Delete], [UserId], [Qty], [PercentCommission], [Commission], [Type], [Time]) VALUES (N'137', NULL, N'1', N'2', N'11', N'Pending', N'2021-04-02', N'1000', NULL, N'132', N'1', N'1', N'1', N'20', N'200', N'', N'04:32:56')
GO

INSERT INTO [dbo].[Laundary] ([LaundryId], [Name], [Weight], [CategoryId], [CustomerId], [Status], [Date], [Amount], [QrCode], [InvoiceId], [Delete], [UserId], [Qty], [PercentCommission], [Commission], [Type], [Time]) VALUES (N'138', NULL, N'12', N'1', N'1', N'Pending', N'2021-04-02', N'18000', NULL, N'133', N'1', N'1', N'12', N'20', N'3600', N'Free', N'04:34:15')
GO

INSERT INTO [dbo].[Laundary] ([LaundryId], [Name], [Weight], [CategoryId], [CustomerId], [Status], [Date], [Amount], [QrCode], [InvoiceId], [Delete], [UserId], [Qty], [PercentCommission], [Commission], [Type], [Time]) VALUES (N'139', NULL, N'1', N'2', N'1', N'Pending', N'2021-04-02', N'2000', NULL, N'133', N'1', N'1', N'1', N'20', N'400', N'Paid', N'04:34:15')
GO

INSERT INTO [dbo].[Laundary] ([LaundryId], [Name], [Weight], [CategoryId], [CustomerId], [Status], [Date], [Amount], [QrCode], [InvoiceId], [Delete], [UserId], [Qty], [PercentCommission], [Commission], [Type], [Time]) VALUES (N'140', NULL, N'23', N'1', N'1', N'Pending', N'2021-04-02', N'34500', NULL, N'134', N'1', N'1', N'23', N'20', N'6900', N'Free', N'04:36:01')
GO

INSERT INTO [dbo].[Laundary] ([LaundryId], [Name], [Weight], [CategoryId], [CustomerId], [Status], [Date], [Amount], [QrCode], [InvoiceId], [Delete], [UserId], [Qty], [PercentCommission], [Commission], [Type], [Time]) VALUES (N'141', NULL, N'23', N'2', N'1', N'Pending', N'2021-04-02', N'46000', NULL, N'134', N'1', N'1', N'123', N'20', N'9200', N'Free', N'04:36:01')
GO

INSERT INTO [dbo].[Laundary] ([LaundryId], [Name], [Weight], [CategoryId], [CustomerId], [Status], [Date], [Amount], [QrCode], [InvoiceId], [Delete], [UserId], [Qty], [PercentCommission], [Commission], [Type], [Time]) VALUES (N'142', NULL, N'12', N'1', N'1', N'Pending', N'2021-04-02', N'18000', NULL, N'136', N'1', N'1', N'12', N'20', N'3600', N'Paid', N'05:30:47')
GO

INSERT INTO [dbo].[Laundary] ([LaundryId], [Name], [Weight], [CategoryId], [CustomerId], [Status], [Date], [Amount], [QrCode], [InvoiceId], [Delete], [UserId], [Qty], [PercentCommission], [Commission], [Type], [Time]) VALUES (N'143', NULL, N'12', N'2', N'1', N'Pending', N'2021-04-02', N'0', NULL, N'136', N'1', N'1', N'12', N'20', N'0', N'Free', N'05:30:47')
GO

INSERT INTO [dbo].[Laundary] ([LaundryId], [Name], [Weight], [CategoryId], [CustomerId], [Status], [Date], [Amount], [QrCode], [InvoiceId], [Delete], [UserId], [Qty], [PercentCommission], [Commission], [Type], [Time]) VALUES (N'144', NULL, N'11', N'1', N'1', N'Pending', N'2021-04-02', N'16500', NULL, N'137', N'1', N'1', N'11', N'20', N'3300', N'Paid', N'05:31:33')
GO

INSERT INTO [dbo].[Laundary] ([LaundryId], [Name], [Weight], [CategoryId], [CustomerId], [Status], [Date], [Amount], [QrCode], [InvoiceId], [Delete], [UserId], [Qty], [PercentCommission], [Commission], [Type], [Time]) VALUES (N'145', NULL, N'1', N'2', N'1', N'Pending', N'2021-04-02', N'0', NULL, N'137', N'1', N'1', N'1', N'20', N'0', N'Free', N'05:31:33')
GO

INSERT INTO [dbo].[Laundary] ([LaundryId], [Name], [Weight], [CategoryId], [CustomerId], [Status], [Date], [Amount], [QrCode], [InvoiceId], [Delete], [UserId], [Qty], [PercentCommission], [Commission], [Type], [Time]) VALUES (N'146', NULL, N'11', N'1', N'1', N'Pending', N'2021-04-02', N'16500', NULL, N'138', N'1', N'1', N'11', N'20', N'3300', N'Paid', N'05:33:00')
GO

INSERT INTO [dbo].[Laundary] ([LaundryId], [Name], [Weight], [CategoryId], [CustomerId], [Status], [Date], [Amount], [QrCode], [InvoiceId], [Delete], [UserId], [Qty], [PercentCommission], [Commission], [Type], [Time]) VALUES (N'147', NULL, N'11', N'2', N'1', N'Pending', N'2021-04-02', N'0', NULL, N'138', N'1', N'1', N'11', N'20', N'0', N'Free', N'05:33:00')
GO

SET IDENTITY_INSERT [dbo].[Laundary] OFF
GO


-- ----------------------------
-- Table structure for Receipt
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Receipt]') AND type IN ('U'))
	DROP TABLE [dbo].[Receipt]
GO

CREATE TABLE [dbo].[Receipt] (
  [ReceiptId] int  IDENTITY(1,1) NOT NULL,
  [Date] varchar(53) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Time] varchar(53) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [InvoiceId] int  NULL,
  [UserId] int  NULL
)
GO

ALTER TABLE [dbo].[Receipt] SET (LOCK_ESCALATION = AUTO)
GO


-- ----------------------------
-- Records of Receipt
-- ----------------------------
SET IDENTITY_INSERT [dbo].[Receipt] ON
GO

INSERT INTO [dbo].[Receipt] ([ReceiptId], [Date], [Time], [InvoiceId], [UserId]) VALUES (N'1', NULL, NULL, N'1', N'1')
GO

INSERT INTO [dbo].[Receipt] ([ReceiptId], [Date], [Time], [InvoiceId], [UserId]) VALUES (N'2', N'2021-03-21', N'10-17-12', N'1', N'1')
GO

INSERT INTO [dbo].[Receipt] ([ReceiptId], [Date], [Time], [InvoiceId], [UserId]) VALUES (N'3', N'2021-03-21', N'10-17-25', N'1', N'1')
GO

INSERT INTO [dbo].[Receipt] ([ReceiptId], [Date], [Time], [InvoiceId], [UserId]) VALUES (N'4', N'2021-03-21', N'10-17-34', N'1', N'1')
GO

INSERT INTO [dbo].[Receipt] ([ReceiptId], [Date], [Time], [InvoiceId], [UserId]) VALUES (N'5', N'2021-03-21', N'10-17-39', N'1', N'1')
GO

INSERT INTO [dbo].[Receipt] ([ReceiptId], [Date], [Time], [InvoiceId], [UserId]) VALUES (N'6', N'2021-03-21', N'10-17-44', N'1', N'1')
GO

INSERT INTO [dbo].[Receipt] ([ReceiptId], [Date], [Time], [InvoiceId], [UserId]) VALUES (N'7', N'2021-03-21', N'10-17-59', N'1', N'1')
GO

INSERT INTO [dbo].[Receipt] ([ReceiptId], [Date], [Time], [InvoiceId], [UserId]) VALUES (N'8', N'2021-03-21', N'10-18-11', N'1', N'1')
GO

INSERT INTO [dbo].[Receipt] ([ReceiptId], [Date], [Time], [InvoiceId], [UserId]) VALUES (N'9', N'2021-03-21', N'10-18-13', N'1', N'1')
GO

INSERT INTO [dbo].[Receipt] ([ReceiptId], [Date], [Time], [InvoiceId], [UserId]) VALUES (N'10', N'2021-03-21', N'10-18-15', N'1', N'1')
GO

INSERT INTO [dbo].[Receipt] ([ReceiptId], [Date], [Time], [InvoiceId], [UserId]) VALUES (N'11', N'2021-03-21', N'10-20-26', N'4', N'12')
GO

INSERT INTO [dbo].[Receipt] ([ReceiptId], [Date], [Time], [InvoiceId], [UserId]) VALUES (N'12', N'2021-03-21', N'10-20-45', N'6', N'12')
GO

INSERT INTO [dbo].[Receipt] ([ReceiptId], [Date], [Time], [InvoiceId], [UserId]) VALUES (N'13', N'2021-03-21', N'10-20-59', N'14', N'12')
GO

INSERT INTO [dbo].[Receipt] ([ReceiptId], [Date], [Time], [InvoiceId], [UserId]) VALUES (N'14', N'2021-03-21', N'10-21-48', N'11', N'12')
GO

INSERT INTO [dbo].[Receipt] ([ReceiptId], [Date], [Time], [InvoiceId], [UserId]) VALUES (N'15', N'2021-03-21', N'10-23-59', N'27', N'12')
GO

INSERT INTO [dbo].[Receipt] ([ReceiptId], [Date], [Time], [InvoiceId], [UserId]) VALUES (N'16', N'2021-03-22', N'09-39-32', N'27', N'12')
GO

INSERT INTO [dbo].[Receipt] ([ReceiptId], [Date], [Time], [InvoiceId], [UserId]) VALUES (N'17', N'2021-03-22', N'09-40-21', N'27', N'12')
GO

INSERT INTO [dbo].[Receipt] ([ReceiptId], [Date], [Time], [InvoiceId], [UserId]) VALUES (N'18', N'2021-03-22', N'09-40-57', N'27', N'12')
GO

INSERT INTO [dbo].[Receipt] ([ReceiptId], [Date], [Time], [InvoiceId], [UserId]) VALUES (N'19', N'2021-03-22', N'09-42-22', N'27', N'12')
GO

INSERT INTO [dbo].[Receipt] ([ReceiptId], [Date], [Time], [InvoiceId], [UserId]) VALUES (N'20', N'2021-03-22', N'09-42-37', N'27', N'12')
GO

INSERT INTO [dbo].[Receipt] ([ReceiptId], [Date], [Time], [InvoiceId], [UserId]) VALUES (N'21', N'2021-03-22', N'09-42-51', N'11', N'12')
GO

INSERT INTO [dbo].[Receipt] ([ReceiptId], [Date], [Time], [InvoiceId], [UserId]) VALUES (N'22', N'2021-03-22', N'09-43-32', N'27', N'1')
GO

INSERT INTO [dbo].[Receipt] ([ReceiptId], [Date], [Time], [InvoiceId], [UserId]) VALUES (N'23', N'2021-03-22', N'09-44-05', N'27', N'1')
GO

INSERT INTO [dbo].[Receipt] ([ReceiptId], [Date], [Time], [InvoiceId], [UserId]) VALUES (N'24', N'2021-03-22', N'09-44-19', N'27', N'12')
GO

INSERT INTO [dbo].[Receipt] ([ReceiptId], [Date], [Time], [InvoiceId], [UserId]) VALUES (N'25', N'2021-03-22', N'10-19-35', N'29', N'12')
GO

INSERT INTO [dbo].[Receipt] ([ReceiptId], [Date], [Time], [InvoiceId], [UserId]) VALUES (N'26', N'2021-03-22', N'12-42-13', N'30', N'12')
GO

INSERT INTO [dbo].[Receipt] ([ReceiptId], [Date], [Time], [InvoiceId], [UserId]) VALUES (N'27', N'2021-03-22', N'12-42-28', N'30', N'12')
GO

INSERT INTO [dbo].[Receipt] ([ReceiptId], [Date], [Time], [InvoiceId], [UserId]) VALUES (N'28', N'2021-03-22', N'12-42-36', N'14', N'12')
GO

INSERT INTO [dbo].[Receipt] ([ReceiptId], [Date], [Time], [InvoiceId], [UserId]) VALUES (N'29', N'2021-03-22', N'01-22-41', N'34', N'1')
GO

INSERT INTO [dbo].[Receipt] ([ReceiptId], [Date], [Time], [InvoiceId], [UserId]) VALUES (N'30', N'2021-03-22', N'01-36-28', N'34', N'12')
GO

INSERT INTO [dbo].[Receipt] ([ReceiptId], [Date], [Time], [InvoiceId], [UserId]) VALUES (N'31', N'2021-03-22', N'01-38-08', N'34', N'1')
GO

INSERT INTO [dbo].[Receipt] ([ReceiptId], [Date], [Time], [InvoiceId], [UserId]) VALUES (N'32', N'2021-03-22', N'01-38-51', N'34', N'12')
GO

INSERT INTO [dbo].[Receipt] ([ReceiptId], [Date], [Time], [InvoiceId], [UserId]) VALUES (N'33', N'2021-03-22', N'02-02-26', N'34', N'12')
GO

INSERT INTO [dbo].[Receipt] ([ReceiptId], [Date], [Time], [InvoiceId], [UserId]) VALUES (N'34', N'2021-03-22', N'02-05-11', N'34', N'12')
GO

INSERT INTO [dbo].[Receipt] ([ReceiptId], [Date], [Time], [InvoiceId], [UserId]) VALUES (N'35', N'2021-03-22', N'02-06-05', N'34', N'1')
GO

INSERT INTO [dbo].[Receipt] ([ReceiptId], [Date], [Time], [InvoiceId], [UserId]) VALUES (N'36', N'2021-03-22', N'02-08-00', N'34', N'1')
GO

INSERT INTO [dbo].[Receipt] ([ReceiptId], [Date], [Time], [InvoiceId], [UserId]) VALUES (N'37', N'2021-03-22', N'02-13-27', N'35', N'12')
GO

INSERT INTO [dbo].[Receipt] ([ReceiptId], [Date], [Time], [InvoiceId], [UserId]) VALUES (N'38', N'2021-03-22', N'02-19-24', N'35', N'1')
GO

INSERT INTO [dbo].[Receipt] ([ReceiptId], [Date], [Time], [InvoiceId], [UserId]) VALUES (N'39', N'2021-03-22', N'02-20-50', N'35', N'1')
GO

INSERT INTO [dbo].[Receipt] ([ReceiptId], [Date], [Time], [InvoiceId], [UserId]) VALUES (N'40', N'2021-03-22', N'02-21-01', N'34', N'1')
GO

INSERT INTO [dbo].[Receipt] ([ReceiptId], [Date], [Time], [InvoiceId], [UserId]) VALUES (N'41', N'2021-03-22', N'02-25-06', N'35', N'1')
GO

INSERT INTO [dbo].[Receipt] ([ReceiptId], [Date], [Time], [InvoiceId], [UserId]) VALUES (N'42', N'2021-03-22', N'02-25-15', N'34', N'1')
GO

INSERT INTO [dbo].[Receipt] ([ReceiptId], [Date], [Time], [InvoiceId], [UserId]) VALUES (N'43', N'2021-03-22', N'02-25-21', N'32', N'1')
GO

INSERT INTO [dbo].[Receipt] ([ReceiptId], [Date], [Time], [InvoiceId], [UserId]) VALUES (N'44', N'2021-03-22', N'02-25-28', N'24', N'1')
GO

INSERT INTO [dbo].[Receipt] ([ReceiptId], [Date], [Time], [InvoiceId], [UserId]) VALUES (N'45', N'2021-03-22', N'02-25-34', N'21', N'1')
GO

INSERT INTO [dbo].[Receipt] ([ReceiptId], [Date], [Time], [InvoiceId], [UserId]) VALUES (N'46', N'2021-03-22', N'02-25-39', N'7', N'1')
GO

INSERT INTO [dbo].[Receipt] ([ReceiptId], [Date], [Time], [InvoiceId], [UserId]) VALUES (N'47', N'2021-03-22', N'02-26-15', N'35', N'12')
GO

INSERT INTO [dbo].[Receipt] ([ReceiptId], [Date], [Time], [InvoiceId], [UserId]) VALUES (N'48', N'2021-03-22', N'02-26-38', N'36', N'12')
GO

INSERT INTO [dbo].[Receipt] ([ReceiptId], [Date], [Time], [InvoiceId], [UserId]) VALUES (N'49', N'2021-03-22', N'02-26-52', N'35', N'12')
GO

INSERT INTO [dbo].[Receipt] ([ReceiptId], [Date], [Time], [InvoiceId], [UserId]) VALUES (N'50', N'2021-03-22', N'02-26-54', N'36', N'12')
GO

INSERT INTO [dbo].[Receipt] ([ReceiptId], [Date], [Time], [InvoiceId], [UserId]) VALUES (N'51', N'2021-03-22', N'09-42-29', N'5', N'12')
GO

INSERT INTO [dbo].[Receipt] ([ReceiptId], [Date], [Time], [InvoiceId], [UserId]) VALUES (N'52', N'2021-03-23', N'10-07-03', N'36', N'1')
GO

INSERT INTO [dbo].[Receipt] ([ReceiptId], [Date], [Time], [InvoiceId], [UserId]) VALUES (N'53', N'2021-03-23', N'10-17-58', N'26', N'1')
GO

INSERT INTO [dbo].[Receipt] ([ReceiptId], [Date], [Time], [InvoiceId], [UserId]) VALUES (N'54', N'2021-03-23', N'10-35-54', N'26', N'1')
GO

INSERT INTO [dbo].[Receipt] ([ReceiptId], [Date], [Time], [InvoiceId], [UserId]) VALUES (N'55', N'2021-03-23', N'01-37-36', N'36', N'1')
GO

INSERT INTO [dbo].[Receipt] ([ReceiptId], [Date], [Time], [InvoiceId], [UserId]) VALUES (N'56', N'2021-03-23', N'01-37-40', N'36', N'1')
GO

INSERT INTO [dbo].[Receipt] ([ReceiptId], [Date], [Time], [InvoiceId], [UserId]) VALUES (N'57', N'2021-03-23', N'01-37-48', N'36', N'1')
GO

INSERT INTO [dbo].[Receipt] ([ReceiptId], [Date], [Time], [InvoiceId], [UserId]) VALUES (N'58', N'2021-03-23', N'01-38-13', N'36', N'1')
GO

INSERT INTO [dbo].[Receipt] ([ReceiptId], [Date], [Time], [InvoiceId], [UserId]) VALUES (N'59', N'2021-03-23', N'01-42-18', N'36', N'1')
GO

INSERT INTO [dbo].[Receipt] ([ReceiptId], [Date], [Time], [InvoiceId], [UserId]) VALUES (N'60', N'2021-03-24', N'06-55-42', N'37', N'1')
GO

INSERT INTO [dbo].[Receipt] ([ReceiptId], [Date], [Time], [InvoiceId], [UserId]) VALUES (N'61', N'2021-03-24', N'07-29-20', N'38', N'17')
GO

INSERT INTO [dbo].[Receipt] ([ReceiptId], [Date], [Time], [InvoiceId], [UserId]) VALUES (N'62', N'2021-03-24', N'07-29-59', N'38', N'17')
GO

INSERT INTO [dbo].[Receipt] ([ReceiptId], [Date], [Time], [InvoiceId], [UserId]) VALUES (N'63', N'2021-03-24', N'07-30-54', N'36', N'12')
GO

INSERT INTO [dbo].[Receipt] ([ReceiptId], [Date], [Time], [InvoiceId], [UserId]) VALUES (N'64', N'2021-03-24', N'07-31-19', N'38', N'1')
GO

INSERT INTO [dbo].[Receipt] ([ReceiptId], [Date], [Time], [InvoiceId], [UserId]) VALUES (N'65', N'2021-03-24', N'10-55-41', N'38', N'1')
GO

INSERT INTO [dbo].[Receipt] ([ReceiptId], [Date], [Time], [InvoiceId], [UserId]) VALUES (N'66', N'2021-03-26', N'07-41-14', N'89', N'1')
GO

INSERT INTO [dbo].[Receipt] ([ReceiptId], [Date], [Time], [InvoiceId], [UserId]) VALUES (N'67', N'2021-03-26', N'07-45-13', N'92', N'1')
GO

INSERT INTO [dbo].[Receipt] ([ReceiptId], [Date], [Time], [InvoiceId], [UserId]) VALUES (N'68', N'2021-03-26', N'09-18-02', N'102', N'1')
GO

INSERT INTO [dbo].[Receipt] ([ReceiptId], [Date], [Time], [InvoiceId], [UserId]) VALUES (N'69', N'2021-03-26', N'09:22:31', N'102', N'1')
GO

INSERT INTO [dbo].[Receipt] ([ReceiptId], [Date], [Time], [InvoiceId], [UserId]) VALUES (N'70', N'2021-03-26', N'09:51:33', N'101', N'1')
GO

INSERT INTO [dbo].[Receipt] ([ReceiptId], [Date], [Time], [InvoiceId], [UserId]) VALUES (N'71', N'2021-03-26', N'09:52:28', N'103', N'1')
GO

INSERT INTO [dbo].[Receipt] ([ReceiptId], [Date], [Time], [InvoiceId], [UserId]) VALUES (N'72', N'2021-03-26', N'09:52:55', N'104', N'1')
GO

INSERT INTO [dbo].[Receipt] ([ReceiptId], [Date], [Time], [InvoiceId], [UserId]) VALUES (N'73', N'2021-03-26', N'09:53:44', N'105', N'1')
GO

INSERT INTO [dbo].[Receipt] ([ReceiptId], [Date], [Time], [InvoiceId], [UserId]) VALUES (N'74', N'2021-03-26', N'09:54:30', N'105', N'1')
GO

INSERT INTO [dbo].[Receipt] ([ReceiptId], [Date], [Time], [InvoiceId], [UserId]) VALUES (N'75', N'2021-03-26', N'09:55:53', N'104', N'1')
GO

INSERT INTO [dbo].[Receipt] ([ReceiptId], [Date], [Time], [InvoiceId], [UserId]) VALUES (N'76', N'2021-03-26', N'09:56:58', N'105', N'1')
GO

INSERT INTO [dbo].[Receipt] ([ReceiptId], [Date], [Time], [InvoiceId], [UserId]) VALUES (N'77', N'2021-03-26', N'09:58:51', N'105', N'1')
GO

INSERT INTO [dbo].[Receipt] ([ReceiptId], [Date], [Time], [InvoiceId], [UserId]) VALUES (N'78', N'2021-03-26', N'09:59:12', N'104', N'1')
GO

INSERT INTO [dbo].[Receipt] ([ReceiptId], [Date], [Time], [InvoiceId], [UserId]) VALUES (N'79', N'2021-03-26', N'10:00:11', N'96', N'1')
GO

INSERT INTO [dbo].[Receipt] ([ReceiptId], [Date], [Time], [InvoiceId], [UserId]) VALUES (N'80', N'2021-03-26', N'10:00:22', N'4', N'1')
GO

INSERT INTO [dbo].[Receipt] ([ReceiptId], [Date], [Time], [InvoiceId], [UserId]) VALUES (N'81', N'2021-03-26', N'10:01:56', N'105', N'1')
GO

INSERT INTO [dbo].[Receipt] ([ReceiptId], [Date], [Time], [InvoiceId], [UserId]) VALUES (N'82', N'2021-03-26', N'10:02:13', N'104', N'1')
GO

INSERT INTO [dbo].[Receipt] ([ReceiptId], [Date], [Time], [InvoiceId], [UserId]) VALUES (N'83', N'2021-03-26', N'10:03:39', N'101', N'1')
GO

INSERT INTO [dbo].[Receipt] ([ReceiptId], [Date], [Time], [InvoiceId], [UserId]) VALUES (N'84', N'2021-03-26', N'10:32:48', N'104', N'1')
GO

INSERT INTO [dbo].[Receipt] ([ReceiptId], [Date], [Time], [InvoiceId], [UserId]) VALUES (N'85', N'2021-03-26', N'10:44:40', N'102', N'1')
GO

INSERT INTO [dbo].[Receipt] ([ReceiptId], [Date], [Time], [InvoiceId], [UserId]) VALUES (N'86', N'2021-03-26', N'10:55:14', N'106', N'1')
GO

INSERT INTO [dbo].[Receipt] ([ReceiptId], [Date], [Time], [InvoiceId], [UserId]) VALUES (N'87', N'2021-03-26', N'10:56:17', N'106', N'1')
GO

INSERT INTO [dbo].[Receipt] ([ReceiptId], [Date], [Time], [InvoiceId], [UserId]) VALUES (N'88', N'2021-04-01', N'08:48:14', N'108', N'1')
GO

INSERT INTO [dbo].[Receipt] ([ReceiptId], [Date], [Time], [InvoiceId], [UserId]) VALUES (N'89', N'2021-04-01', N'08:48:24', N'108', N'1')
GO

INSERT INTO [dbo].[Receipt] ([ReceiptId], [Date], [Time], [InvoiceId], [UserId]) VALUES (N'90', N'2021-04-01', N'09:45:51', N'108', N'1')
GO

INSERT INTO [dbo].[Receipt] ([ReceiptId], [Date], [Time], [InvoiceId], [UserId]) VALUES (N'1088', N'2021-04-02', N'04:38:49', N'134', N'1')
GO

SET IDENTITY_INSERT [dbo].[Receipt] OFF
GO


-- ----------------------------
-- Table structure for Role
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Role]') AND type IN ('U'))
	DROP TABLE [dbo].[Role]
GO

CREATE TABLE [dbo].[Role] (
  [RoleId] int  IDENTITY(1,1) NOT NULL,
  [Role] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Delete] tinyint DEFAULT ((1)) NULL
)
GO

ALTER TABLE [dbo].[Role] SET (LOCK_ESCALATION = AUTO)
GO


-- ----------------------------
-- Records of Role
-- ----------------------------
SET IDENTITY_INSERT [dbo].[Role] ON
GO

INSERT INTO [dbo].[Role] ([RoleId], [Role], [Delete]) VALUES (N'1', N'Admin', N'1')
GO

INSERT INTO [dbo].[Role] ([RoleId], [Role], [Delete]) VALUES (N'2', N'Sale', N'1')
GO

INSERT INTO [dbo].[Role] ([RoleId], [Role], [Delete]) VALUES (N'3', N'Delivery', N'1')
GO

INSERT INTO [dbo].[Role] ([RoleId], [Role], [Delete]) VALUES (N'4', N'Cashier', N'1')
GO

INSERT INTO [dbo].[Role] ([RoleId], [Role], [Delete]) VALUES (N'5', NULL, NULL)
GO

SET IDENTITY_INSERT [dbo].[Role] OFF
GO


-- ----------------------------
-- Table structure for Tracker
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Tracker]') AND type IN ('U'))
	DROP TABLE [dbo].[Tracker]
GO

CREATE TABLE [dbo].[Tracker] (
  [id] int  IDENTITY(1,1) NOT NULL,
  [country] varchar(255) COLLATE SQL_Latin1_General_CP850_BIN  NULL,
  [ip] varchar(255) COLLATE SQL_Latin1_General_CP850_BIN  NULL,
  [location] varchar(255) COLLATE SQL_Latin1_General_CP850_BIN  NULL,
  [Date] varchar(55) COLLATE SQL_Latin1_General_CP850_BIN  NULL,
  [Time] varchar(55) COLLATE SQL_Latin1_General_CP850_BIN  NULL
)
GO

ALTER TABLE [dbo].[Tracker] SET (LOCK_ESCALATION = AUTO)
GO


-- ----------------------------
-- Records of Tracker
-- ----------------------------
SET IDENTITY_INSERT [dbo].[Tracker] ON
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'1', N'Cambodia', N'203.189.154.244', N'KH', N'2021-03-22', N'10:28:35')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'2', N'Cambodia', N'203.189.154.244', N'KH', N'2021-03-22', N'10:28:40')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'3', N'Cambodia', N'203.189.154.244', N'KH', N'2021-03-22', N'10:28:48')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'4', N'Cambodia', N'203.189.154.244', N'KH', N'2021-03-22', N'22:29:21 PM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'5', N'Cambodia', N'203.189.154.244', N'KH', N'2021-03-22', N'22:30:11 PM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'6', N'Cambodia', N'203.189.154.244', N'KH', N'2021-03-23', N'08:28:23 AM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'7', N'Cambodia', N'203.189.154.244', N'KH', N'2021-03-23', N'10:06:56 AM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'8', N'Cambodia', N'203.189.154.244', N'KH', N'2021-03-23', N'10:35:09 AM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'9', N'Cambodia', N'203.189.154.244', N'KH', N'2021-03-23', N'10:43:04 AM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'10', N'Cambodia', N'203.189.154.244', N'KH', N'2021-03-23', N'11:03:53 AM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'11', N'Cambodia', N'203.189.154.244', N'KH', N'2021-03-23', N'11:03:56 AM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'12', N'Cambodia', N'203.189.154.244', N'KH', N'2021-03-23', N'13:15:18 PM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'13', N'Cambodia', N'203.189.154.244', N'KH', N'2021-03-23', N'13:18:49 PM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'14', N'Cambodia', N'203.189.154.244', N'KH', N'2021-03-23', N'13:18:54 PM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'15', N'Cambodia', N'203.189.154.244', N'KH', N'2021-03-23', N'13:34:07 PM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'16', N'Cambodia', N'203.189.154.244', N'KH', N'2021-03-23', N'13:39:48 PM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'17', N'Cambodia', N'203.189.154.244', N'KH', N'2021-03-23', N'13:40:55 PM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'18', N'Cambodia', N'203.189.154.244', N'KH', N'2021-03-23', N'13:41:35 PM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'19', N'Cambodia', N'203.189.154.244', N'KH', N'2021-03-23', N'13:41:37 PM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'20', N'Cambodia', N'203.189.154.244', N'KH', N'2021-03-23', N'13:41:42 PM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'21', N'Cambodia', N'203.189.154.244', N'KH', N'2021-03-23', N'13:41:46 PM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'22', N'Cambodia', N'203.189.154.244', N'KH', N'2021-03-23', N'13:42:58 PM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'23', N'Cambodia', N'203.189.154.244', N'KH', N'2021-03-23', N'13:46:00 PM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'24', N'Cambodia', N'203.189.154.244', N'KH', N'2021-03-23', N'13:47:09 PM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'25', N'Cambodia', N'203.189.154.244', N'KH', N'2021-03-23', N'20:24:55 PM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'26', N'Cambodia', N'203.189.154.244', N'KH', N'2021-03-23', N'22:08:27 PM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'27', N'Cambodia', N'203.189.154.244', N'KH', N'2021-03-23', N'22:09:10 PM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'28', N'Cambodia', N'203.189.154.244', N'KH', N'2021-03-23', N'22:10:55 PM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'29', N'Cambodia', N'203.189.154.244', N'KH', N'2021-03-23', N'22:11:27 PM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'30', N'Cambodia', N'203.189.154.244', N'KH', N'2021-03-23', N'22:12:26 PM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'31', N'Cambodia', N'203.189.154.244', N'KH', N'2021-03-23', N'22:12:35 PM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'32', N'Cambodia', N'203.189.154.244', N'KH', N'2021-03-23', N'22:14:14 PM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'33', N'Cambodia', N'203.189.154.244', N'KH', N'2021-03-23', N'22:15:36 PM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'34', N'Cambodia', N'203.189.154.244', N'KH', N'2021-03-23', N'22:18:36 PM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'35', N'Cambodia', N'203.189.154.244', N'KH', N'2021-03-24', N'06:48:55 AM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'36', N'Cambodia', N'203.189.154.244', N'KH', N'2021-03-24', N'06:50:18 AM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'37', N'Cambodia', N'203.189.154.244', N'KH', N'2021-03-24', N'06:51:56 AM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'38', N'Cambodia', N'203.189.154.244', N'KH', N'2021-03-24', N'07:15:59 AM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'39', N'Cambodia', N'203.189.154.244', N'KH', N'2021-03-24', N'07:16:24 AM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'40', N'Cambodia', N'203.189.154.244', N'KH', N'2021-03-24', N'07:16:40 AM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'41', N'Cambodia', N'203.189.154.244', N'KH', N'2021-03-24', N'07:16:50 AM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'42', N'Cambodia', N'203.189.154.244', N'KH', N'2021-03-24', N'07:16:55 AM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'43', N'Cambodia', N'203.189.154.244', N'KH', N'2021-03-24', N'07:17:20 AM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'44', N'Cambodia', N'203.189.154.244', N'KH', N'2021-03-24', N'07:18:21 AM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'45', N'Cambodia', N'203.189.154.244', N'KH', N'2021-03-24', N'07:25:34 AM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'46', N'Cambodia', N'203.189.154.244', N'KH', N'2021-03-24', N'07:26:37 AM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'47', N'Cambodia', N'203.189.154.244', N'KH', N'2021-03-24', N'07:26:59 AM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'48', N'Cambodia', N'203.189.154.244', N'KH', N'2021-03-24', N'07:27:28 AM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'49', N'Cambodia', N'203.189.154.244', N'KH', N'2021-03-24', N'07:30:16 AM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'50', N'Cambodia', N'203.189.154.244', N'KH', N'2021-03-24', N'07:30:40 AM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'51', N'Cambodia', N'203.189.154.244', N'KH', N'2021-03-24', N'07:31:01 AM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'52', N'Cambodia', N'203.189.154.244', N'KH', N'2021-03-24', N'07:31:29 AM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'53', N'Cambodia', N'203.189.154.244', N'KH', N'2021-03-24', N'07:31:31 AM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'54', N'Cambodia', N'203.189.154.244', N'KH', N'2021-03-24', N'07:31:32 AM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'55', N'Cambodia', N'203.189.154.244', N'KH', N'2021-03-24', N'07:32:33 AM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'56', N'Cambodia', N'203.189.154.244', N'KH', N'2021-03-24', N'07:39:44 AM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'57', N'Cambodia', N'203.189.154.244', N'KH', N'2021-03-24', N'07:40:05 AM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'58', N'Cambodia', N'203.189.154.244', N'KH', N'2021-03-24', N'07:40:09 AM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'59', N'Cambodia', N'203.189.154.244', N'KH', N'2021-03-24', N'07:45:50 AM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'60', N'Cambodia', N'203.189.154.244', N'KH', N'2021-03-24', N'07:45:56 AM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'61', N'Cambodia', N'203.189.154.244', N'KH', N'2021-03-24', N'07:52:02 AM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'62', N'Cambodia', N'203.189.154.244', N'KH', N'2021-03-24', N'22:08:11 PM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'63', N'Cambodia', N'203.189.154.244', N'KH', N'2021-03-24', N'22:08:38 PM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'64', N'Cambodia', N'203.189.154.244', N'KH', N'2021-03-24', N'22:08:42 PM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'65', N'Cambodia', N'203.189.154.244', N'KH', N'2021-03-24', N'22:53:01 PM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'66', N'Cambodia', N'203.189.154.244', N'KH', N'2021-03-24', N'22:53:05 PM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'67', N'Cambodia', N'203.189.154.244', N'KH', N'2021-03-25', N'07:55:37 AM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'68', N'Cambodia', N'203.189.154.244', N'KH', N'2021-03-25', N'07:56:03 AM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'69', N'Cambodia', N'203.189.154.244', N'KH', N'2021-03-25', N'08:04:28 AM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'70', N'Cambodia', N'203.189.154.244', N'KH', N'2021-03-25', N'08:04:34 AM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'71', N'Cambodia', N'203.189.154.244', N'KH', N'2021-03-25', N'09:05:54 AM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'72', N'Cambodia', N'203.189.154.244', N'KH', N'2021-03-25', N'09:27:11 AM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'73', N'Cambodia', N'203.189.154.244', N'KH', N'2021-03-25', N'11:52:05 AM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'74', N'Cambodia', N'203.189.154.244', N'KH', N'2021-03-25', N'11:52:55 AM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'75', N'Cambodia', N'203.189.154.244', N'KH', N'2021-03-25', N'12:52:55 PM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'76', N'Cambodia', N'203.189.154.244', N'KH', N'2021-03-25', N'12:58:14 PM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'77', N'Cambodia', N'203.189.154.244', N'KH', N'2021-03-25', N'12:58:22 PM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'78', N'Cambodia', N'203.189.154.244', N'KH', N'2021-03-25', N'12:58:22 PM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'79', N'Cambodia', N'203.189.154.244', N'KH', N'2021-03-25', N'12:58:24 PM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'80', N'Cambodia', N'203.189.154.244', N'KH', N'2021-03-25', N'12:58:25 PM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'81', N'Cambodia', N'203.189.154.244', N'KH', N'2021-03-25', N'12:58:26 PM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'82', N'Cambodia', N'203.189.154.244', N'KH', N'2021-03-25', N'12:58:57 PM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'83', N'Cambodia', N'203.189.154.244', N'KH', N'2021-03-25', N'12:59:07 PM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'84', N'Cambodia', N'203.189.154.244', N'KH', N'2021-03-25', N'12:59:25 PM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'85', N'Cambodia', N'203.189.154.244', N'KH', N'2021-03-25', N'12:59:46 PM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'86', N'Cambodia', N'203.189.154.244', N'KH', N'2021-03-25', N'13:00:06 PM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'87', N'Cambodia', N'203.189.154.244', N'KH', N'2021-03-25', N'13:00:06 PM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'88', N'Cambodia', N'203.189.154.244', N'KH', N'2021-03-25', N'13:00:08 PM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'89', N'Cambodia', N'203.189.154.244', N'KH', N'2021-03-25', N'13:05:28 PM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'90', N'Cambodia', N'203.189.154.244', N'KH', N'2021-03-26', N'07:12:00 AM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'91', N'Cambodia', N'203.189.154.244', N'KH', N'2021-03-26', N'10:51:15 AM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'92', N'Cambodia', N'203.189.154.244', N'KH', N'2021-03-26', N'11:56:49 AM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'93', N'Cambodia', N'203.189.154.244', N'KH', N'2021-03-26', N'12:03:42 PM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'94', N'Cambodia', N'203.189.154.244', N'KH', N'2021-03-26', N'12:05:37 PM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'95', N'Cambodia', N'203.189.154.244', N'KH', N'2021-03-26', N'12:05:41 PM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'96', N'Cambodia', N'203.189.154.244', N'KH', N'2021-03-26', N'12:55:10 PM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'97', N'Cambodia', N'203.189.154.244', N'KH', N'2021-03-26', N'15:08:25 PM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'98', N'Cambodia', N'203.189.154.244', N'KH', N'2021-03-26', N'15:08:31 PM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'99', N'Cambodia', N'203.189.154.244', N'KH', N'2021-03-28', N'07:53:56 AM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'100', N'Cambodia', N'203.189.154.244', N'KH', N'2021-03-28', N'08:04:47 AM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'101', N'Cambodia', N'203.189.154.244', N'KH', N'2021-03-28', N'08:06:24 AM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'102', N'Cambodia', N'203.189.154.244', N'KH', N'2021-03-28', N'08:06:26 AM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'103', N'Cambodia', N'203.189.154.244', N'KH', N'2021-03-28', N'08:45:59 AM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'104', N'Cambodia', N'203.189.154.244', N'KH', N'2021-03-28', N'08:46:17 AM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'105', N'Cambodia', N'203.189.154.244', N'KH', N'2021-03-28', N'08:47:02 AM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'106', N'Cambodia', N'203.189.154.244', N'KH', N'2021-03-28', N'08:47:07 AM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'107', N'Cambodia', N'203.189.154.244', N'KH', N'2021-03-28', N'08:47:09 AM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'108', N'Cambodia', N'203.189.154.244', N'KH', N'2021-03-28', N'08:47:21 AM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'109', N'Cambodia', N'203.189.154.244', N'KH', N'2021-03-28', N'08:48:14 AM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'110', N'Cambodia', N'203.189.154.244', N'KH', N'2021-03-28', N'09:06:34 AM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'111', N'Cambodia', N'203.189.154.244', N'KH', N'2021-03-28', N'09:09:36 AM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'112', N'Cambodia', N'203.189.154.244', N'KH', N'2021-03-28', N'09:20:51 AM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'113', N'Cambodia', N'203.189.154.244', N'KH', N'2021-03-29', N'13:57:48 PM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'114', N'Cambodia', N'203.189.154.244', N'KH', N'2021-03-29', N'16:55:50 PM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'115', N'Cambodia', N'203.189.154.244', N'KH', N'2021-03-29', N'16:56:12 PM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'116', N'Cambodia', N'203.189.154.244', N'KH', N'2021-03-29', N'16:56:18 PM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'117', N'Cambodia', N'203.189.154.244', N'KH', N'2021-03-29', N'21:01:25 PM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'118', N'Cambodia', N'203.189.154.244', N'KH', N'2021-03-29', N'21:01:31 PM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'119', N'Cambodia', N'203.189.154.244', N'KH', N'2021-03-29', N'21:11:09 PM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'120', N'Cambodia', N'203.189.154.244', N'KH', N'2021-03-29', N'21:11:16 PM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'121', N'Cambodia', N'203.189.154.244', N'KH', N'2021-03-29', N'21:11:19 PM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'122', N'Cambodia', N'203.189.154.244', N'KH', N'2021-03-29', N'21:47:28 PM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'123', N'Cambodia', N'203.189.154.244', N'KH', N'2021-03-30', N'06:59:14 AM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'124', N'Cambodia', N'203.189.154.244', N'KH', N'2021-03-31', N'07:15:54 AM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'125', N'Cambodia', N'203.189.154.244', N'KH', N'2021-03-31', N'07:18:36 AM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'126', N'Cambodia', N'203.189.154.244', N'KH', N'2021-03-31', N'10:08:05 AM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'127', N'Cambodia', N'203.189.154.244', N'KH', N'2021-03-31', N'10:08:12 AM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'128', N'Cambodia', N'203.189.154.244', N'KH', N'2021-03-31', N'10:16:15 AM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'129', N'Cambodia', N'203.189.154.244', N'KH', N'2021-03-31', N'10:16:26 AM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'130', N'Cambodia', N'203.189.154.244', N'KH', N'2021-03-31', N'12:01:45 PM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'131', N'Cambodia', N'203.189.154.244', N'KH', N'2021-03-31', N'17:13:38 PM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'132', N'Cambodia', N'203.189.154.244', N'KH', N'2021-03-31', N'21:05:31 PM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'133', N'Cambodia', N'203.189.154.244', N'KH', N'2021-04-01', N'07:01:39 AM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'134', N'Cambodia', N'203.189.154.244', N'KH', N'2021-04-01', N'08:46:10 AM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'135', N'Cambodia', N'203.189.154.244', N'KH', N'2021-04-01', N'08:46:14 AM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'136', N'Cambodia', N'203.189.154.244', N'KH', N'2021-04-01', N'08:46:18 AM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'137', N'Cambodia', N'203.189.154.244', N'KH', N'2021-04-01', N'10:00:11 AM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'138', N'Cambodia', N'203.189.154.244', N'KH', N'2021-04-01', N'10:32:57 AM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'139', N'Cambodia', N'203.189.154.244', N'KH', N'2021-04-01', N'13:02:51 PM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'140', N'Cambodia', N'203.189.154.244', N'KH', N'2021-04-01', N'13:06:11 PM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'141', N'Cambodia', N'203.189.154.244', N'KH', N'2021-04-01', N'13:08:02 PM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'142', N'Cambodia', N'203.189.154.244', N'KH', N'2021-04-01', N'13:08:04 PM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'143', N'Cambodia', N'203.189.154.244', N'KH', N'2021-04-01', N'15:41:17 PM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'144', N'Cambodia', N'203.189.154.244', N'KH', N'2021-04-01', N'16:12:47 PM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'145', N'Cambodia', N'203.189.154.244', N'KH', N'2021-04-01', N'17:24:52 PM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'146', N'Cambodia', N'203.189.154.244', N'KH', N'2021-04-01', N'17:40:39 PM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'147', N'Cambodia', N'203.189.154.244', N'KH', N'2021-04-01', N'19:05:52 PM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'148', N'Cambodia', N'203.189.154.244', N'KH', N'2021-04-02', N'08:43:04 AM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'1124', N'Cambodia', N'203.189.154.244', N'KH', N'2021-04-02', N'13:10:36 PM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'1125', N'Cambodia', N'203.189.154.244', N'KH', N'2021-04-02', N'13:55:35 PM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'1126', N'Cambodia', N'203.189.154.244', N'KH', N'2021-04-02', N'17:10:09 PM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'1127', N'Cambodia', N'203.189.154.244', N'KH', N'2021-04-02', N'19:41:45 PM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'1128', N'Cambodia', N'203.189.154.244', N'KH', N'2021-04-03', N'07:46:04 AM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'1129', N'Cambodia', N'203.189.154.244', N'KH', N'2021-04-03', N'08:08:03 AM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'1130', N'Cambodia', N'203.189.154.244', N'KH', N'2021-04-03', N'08:08:24 AM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'1131', N'Cambodia', N'203.189.154.244', N'KH', N'2021-04-03', N'08:10:34 AM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'1132', N'Cambodia', N'203.189.154.244', N'KH', N'2021-04-03', N'08:11:23 AM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'1133', N'Cambodia', N'203.189.154.244', N'KH', N'2021-04-03', N'08:46:14 AM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'1134', N'Cambodia', N'203.189.154.244', N'KH', N'2021-04-03', N'08:46:21 AM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'1135', N'Cambodia', N'203.189.154.244', N'KH', N'2021-04-03', N'08:46:31 AM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'1136', N'Cambodia', N'203.189.154.244', N'KH', N'2021-04-03', N'08:47:00 AM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'1137', N'Cambodia', N'203.189.154.244', N'KH', N'2021-04-03', N'08:47:34 AM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'1138', N'Cambodia', N'203.189.154.244', N'KH', N'2021-04-03', N'08:47:46 AM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'1139', N'Cambodia', N'203.189.154.244', N'KH', N'2021-04-03', N'08:48:11 AM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'1140', N'Cambodia', N'203.189.154.244', N'KH', N'2021-04-03', N'08:48:53 AM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'1141', N'Cambodia', N'203.189.154.244', N'KH', N'2021-04-03', N'21:19:35 PM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'1142', N'Cambodia', N'203.189.154.244', N'KH', N'2021-04-03', N'21:22:07 PM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'1143', N'Cambodia', N'203.189.154.244', N'KH', N'2021-04-03', N'21:22:23 PM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'1144', N'Cambodia', N'203.189.154.244', N'KH', N'2021-04-03', N'21:33:04 PM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'1145', N'Cambodia', N'203.189.154.244', N'KH', N'2021-04-03', N'21:37:10 PM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'1146', N'Cambodia', N'203.189.154.244', N'KH', N'2021-04-03', N'21:37:56 PM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'1147', N'Cambodia', N'203.189.154.244', N'KH', N'2021-04-03', N'21:42:18 PM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'1148', N'Cambodia', N'203.189.154.244', N'KH', N'2021-04-03', N'21:50:42 PM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'1149', N'Cambodia', N'203.189.154.244', N'KH', N'2021-04-03', N'21:53:39 PM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'1150', N'Cambodia', N'203.189.154.244', N'KH', N'2021-04-03', N'21:56:12 PM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'1151', N'Cambodia', N'203.189.154.244', N'KH', N'2021-04-03', N'22:03:53 PM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'1152', N'Cambodia', N'203.189.154.244', N'KH', N'2021-04-03', N'22:06:37 PM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'1153', N'Cambodia', N'203.189.154.244', N'KH', N'2021-04-03', N'22:06:58 PM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'1154', N'Cambodia', N'203.189.154.244', N'KH', N'2021-04-03', N'22:07:02 PM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'1155', N'Cambodia', N'203.189.154.244', N'KH', N'2021-04-03', N'22:08:18 PM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'1156', N'Cambodia', N'203.189.154.244', N'KH', N'2021-04-03', N'22:09:41 PM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'1157', N'Cambodia', N'203.189.154.244', N'KH', N'2021-04-03', N'22:12:35 PM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'1158', N'Cambodia', N'203.189.154.244', N'KH', N'2021-04-03', N'22:20:13 PM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'1159', N'Cambodia', N'203.189.154.244', N'KH', N'2021-04-03', N'22:20:40 PM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'1160', N'Cambodia', N'203.189.154.244', N'KH', N'2021-04-04', N'09:45:46 AM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'1161', N'Cambodia', N'203.189.154.244', N'KH', N'2021-04-04', N'09:49:08 AM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'1162', N'Cambodia', N'203.189.154.244', N'KH', N'2021-04-04', N'09:56:12 AM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'1163', N'Cambodia', N'203.189.154.244', N'KH', N'2021-04-04', N'10:01:08 AM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'1164', N'Cambodia', N'203.189.154.244', N'KH', N'2021-04-04', N'10:52:20 AM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'1165', N'Cambodia', N'203.189.154.244', N'KH', N'2021-04-04', N'11:26:02 AM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'1166', N'Cambodia', N'203.189.154.244', N'KH', N'2021-04-04', N'11:58:45 AM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'1167', N'Cambodia', N'203.189.154.244', N'KH', N'2021-04-04', N'12:53:15 PM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'1168', N'Cambodia', N'203.189.154.244', N'KH', N'2021-04-04', N'12:57:17 PM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'1169', N'Cambodia', N'203.189.154.244', N'KH', N'2021-04-04', N'13:00:29 PM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'1170', N'Cambodia', N'203.189.154.244', N'KH', N'2021-04-04', N'13:00:38 PM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'1171', N'Cambodia', N'203.189.154.244', N'KH', N'2021-04-04', N'13:05:09 PM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'1172', N'Cambodia', N'203.189.154.244', N'KH', N'2021-04-04', N'13:09:14 PM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'1173', N'Cambodia', N'203.189.154.244', N'KH', N'2021-04-04', N'13:15:22 PM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'1174', N'Cambodia', N'203.189.154.244', N'KH', N'2021-04-04', N'13:16:55 PM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'1175', N'Cambodia', N'203.189.154.244', N'KH', N'2021-04-04', N'13:18:11 PM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'1176', N'Cambodia', N'203.189.154.244', N'KH', N'2021-04-04', N'13:19:55 PM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'1177', N'Cambodia', N'203.189.154.244', N'KH', N'2021-04-04', N'13:22:19 PM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'1178', N'Cambodia', N'203.189.154.244', N'KH', N'2021-04-04', N'13:28:36 PM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'1179', N'Cambodia', N'203.189.154.244', N'KH', N'2021-04-04', N'13:31:55 PM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'1180', N'Cambodia', N'203.189.154.244', N'KH', N'2021-04-04', N'13:35:17 PM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'1181', N'Cambodia', N'203.189.154.244', N'KH', N'2021-04-04', N'14:30:57 PM +07')
GO

SET IDENTITY_INSERT [dbo].[Tracker] OFF
GO


-- ----------------------------
-- Table structure for User
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[User]') AND type IN ('U'))
	DROP TABLE [dbo].[User]
GO

CREATE TABLE [dbo].[User] (
  [UserId] int  IDENTITY(1,1) NOT NULL,
  [Name] nvarchar(255) COLLATE SQL_Latin1_General_CP850_BIN  NULL,
  [Username] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Password] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Status] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Photo] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Phone] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [IP] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Address] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Delete] tinyint DEFAULT ((1)) NULL,
  [RoleId] int  NULL,
  [Gender] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[User] SET (LOCK_ESCALATION = AUTO)
GO


-- ----------------------------
-- Records of User
-- ----------------------------
SET IDENTITY_INSERT [dbo].[User] ON
GO

INSERT INTO [dbo].[User] ([UserId], [Name], [Username], [Password], [Status], [Photo], [Phone], [IP], [Address], [Delete], [RoleId], [Gender]) VALUES (N'1', N'NouenThary', N'thary', N'698d51a19d8a121ce581499d7b701668', N'Enable', N'2021_04_01_11_02_48.png', N'09998877', NULL, N'PP', N'1', N'1', N'Male')
GO

INSERT INTO [dbo].[User] ([UserId], [Name], [Username], [Password], [Status], [Photo], [Phone], [IP], [Address], [Delete], [RoleId], [Gender]) VALUES (N'2', N'ChanLong', N'long', N'25d55ad283aa400af464c76d713c07ad', N'Enable', NULL, N'09988766', NULL, N'PP', N'1', N'3', N'Male')
GO

INSERT INTO [dbo].[User] ([UserId], [Name], [Username], [Password], [Status], [Photo], [Phone], [IP], [Address], [Delete], [RoleId], [Gender]) VALUES (N'11', N'Vita', N'vita', N'09d68704be7ddb9f3553478bcc985231', N'Enable', NULL, N'012333344', N'localhost', N'PP', N'1', N'2', N'Male')
GO

INSERT INTO [dbo].[User] ([UserId], [Name], [Username], [Password], [Status], [Photo], [Phone], [IP], [Address], [Delete], [RoleId], [Gender]) VALUES (N'12', N'root', N'root', N'63a9f0ea7bb98050796b649e85481845', N'Enable', N'2021_03_22_09_48_26.png', N'012333344', N'localhost', N'PP', N'1', N'2', N'Male')
GO

INSERT INTO [dbo].[User] ([UserId], [Name], [Username], [Password], [Status], [Photo], [Phone], [IP], [Address], [Delete], [RoleId], [Gender]) VALUES (N'13', N'Jonh', N'jonh', N'81dc9bdb52d04dc20036dbd8313ed055', N'Enable', NULL, N'012333344', N'localhost', N'PP', N'1', N'2', N'Male')
GO

INSERT INTO [dbo].[User] ([UserId], [Name], [Username], [Password], [Status], [Photo], [Phone], [IP], [Address], [Delete], [RoleId], [Gender]) VALUES (N'14', N'Long', N'long', N'698d51a19d8a121ce581499d7b701668', N'Enable', N'2021_03_22_05_15_47.jpg', N'012333344', N'localhost', N'PP', N'1', N'2', N'Male')
GO

INSERT INTO [dbo].[User] ([UserId], [Name], [Username], [Password], [Status], [Photo], [Phone], [IP], [Address], [Delete], [RoleId], [Gender]) VALUES (N'15', N'me', N'me', N'ab86a1e1ef70dff97959067b723c5c24', N'Enable', N'No.jpg', N'012333344', N'localhost', N'PP', N'1', N'2', N'Male')
GO

INSERT INTO [dbo].[User] ([UserId], [Name], [Username], [Password], [Status], [Photo], [Phone], [IP], [Address], [Delete], [RoleId], [Gender]) VALUES (N'16', N'Hong', N'hong', N'88163c52fdb7520d2da5295dcb52bff0', N'Enable', N'No.jpg', N'', N'localhost', N'PP', N'1', N'2', N'Male')
GO

INSERT INTO [dbo].[User] ([UserId], [Name], [Username], [Password], [Status], [Photo], [Phone], [IP], [Address], [Delete], [RoleId], [Gender]) VALUES (N'17', N'Sey', N'sey', N'698d51a19d8a121ce581499d7b701668', N'Enable', N'No.jpg', N'', N'localhost', N'PP', N'1', N'2', N'Male')
GO

SET IDENTITY_INSERT [dbo].[User] OFF
GO


-- ----------------------------
-- procedure structure for GetCategory
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[GetCategory]') AND type IN ('FN', 'FS', 'FT', 'IF', 'TF'))
	DROP PROCEDURE[dbo].[GetCategory]
GO

CREATE PROCEDURE [dbo].[GetCategory]
AS
BEGIN
	SELECT CategoryId, Name, Price,'thary' as 'Thary' FROM Category;
END
GO


-- ----------------------------
-- procedure structure for GetAllCommission
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[GetAllCommission]') AND type IN ('FN', 'FS', 'FT', 'IF', 'TF'))
	DROP PROCEDURE[dbo].[GetAllCommission]
GO

CREATE PROCEDURE [dbo].[GetAllCommission]
@UserId INT
AS
BEGIN
	IF @UserId = '' SET @UserId = NULL
	
	SELECT * 
	FROM Commission 
	WHERE [Delete] = 1
	AND (@UserId IS NULL OR UserId = @UserId)
END
GO


-- ----------------------------
-- procedure structure for AddOrder
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[AddOrder]') AND type IN ('FN', 'FS', 'FT', 'IF', 'TF'))
	DROP PROCEDURE[dbo].[AddOrder]
GO

CREATE PROCEDURE [dbo].[AddOrder]
	@CustomerId INT,
	@ServiceId INT,
	@Weight FLOAT,
	@Qty INT,
	@UserId INT,
	@Type VARCHAR(255)	
AS
BEGIN
		-- invoice
		DECLARE @InvoiceId INT
		SET @InvoiceId = (
			SELECT MAX(InvoiceId) FROM Invoice WHERE UserId = @UserId
		);
		-- commission
		DECLARE @Commission FLOAT
		SET @Commission = (
			SELECT isnull([Percent], 0 ) FROM Commission WHERE UserId = @UserId
		);
		-- customer
		DECLARE @CustomerType VARCHAR(255)
		SET @CustomerType = (
				SELECT Type FROM Customer WHERE CustomerId = @CustomerId
		);
		-- service
		DECLARE @Service FLOAT
			IF @CustomerType = 'Unit Price'
				SET @Service = (
					SELECT Price FROM Category WHERE CategoryId = @ServiceId
				)
			Else IF @CustomerType = 'Whole Price'
				SET @Service = (
					SELECT Whole FROM Category WHERE CategoryId = @ServiceId
				)
			ELSE IF @CustomerType = 'VIP'
				SET @Service = (
					SELECT VIP FROM Category WHERE CategoryId = @ServiceId
				)
				
		-- Amount	
		DECLARE @Amount FLOAT	
		IF @ServiceId = 1
			SET @Amount  = @Service * @Qty
		ELSE IF @ServiceId = 2
			SET @Amount = @Service * @Weight
	
		DECLARE @SumCommission FLOAT		
		IF @Commission > 0
			SET @SumCommission = @Amount * (@Commission / 100)
		ELSE 
			SET @SumCommission = 0
		
		
	 INSERT INTO Laundary(CustomerId, CategoryId, Weight, Qty, Amount,InvoiceId, UserId, PercentCommission, Commission, Type, [Date], [Time] ,Status)
	 VALUES(@CustomerId, @ServiceId, @Weight, @Qty, @Amount,@InvoiceId, @UserId, @Commission , @SumCommission, @Type, FORMAT ( GETDATE( ), 'yyyy-MM-dd', 'en-us' ),FORMAT ( GETDATE( ), 'hh:mm:ss', 'en-us' ), 'Pending')
	 
	 UPDATE [Laundary] SET [Amount] = 0, [Commission] = 0 WHERE [InvoiceId] = @InvoiceId AND Type = 'Free'
END
GO


-- ----------------------------
-- procedure structure for AddInvoice
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[AddInvoice]') AND type IN ('FN', 'FS', 'FT', 'IF', 'TF'))
	DROP PROCEDURE[dbo].[AddInvoice]
GO

CREATE PROCEDURE [dbo].[AddInvoice]
	@UserId INT,
	@CustomerId INT
AS
BEGIN
	INSERT INTO 
	Invoice([Status],[UserId],[StartDate],[CustomerId])
	VALUES('Pending', @UserId,FORMAT ( GETDATE( ), 'yyyy-MM-dd', 'en-us' ),@CustomerId)	
END
GO


-- ----------------------------
-- procedure structure for UpdateOrderById
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[UpdateOrderById]') AND type IN ('FN', 'FS', 'FT', 'IF', 'TF'))
	DROP PROCEDURE[dbo].[UpdateOrderById]
GO

CREATE PROCEDURE [dbo].[UpdateOrderById]
	@OrderId INT,
	@CategoryId INT,
	@Weight FLOAT,
	@Qty FLOAT,
	@Type VARCHAR(255)
AS
BEGIN
	Select * FROM Laundary;
END
GO


-- ----------------------------
-- procedure structure for GetAllCustomers
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[GetAllCustomers]') AND type IN ('FN', 'FS', 'FT', 'IF', 'TF'))
	DROP PROCEDURE[dbo].[GetAllCustomers]
GO

CREATE PROCEDURE [dbo].[GetAllCustomers]
	@Name VARCHAR(255),
	@Phone VARCHAR(255),
	@Type VARCHAR(255)
AS
BEGIN
	IF @Name = '' SET @Name = NULL
	IF @Phone = '' SET @Phone = NULL
	IF @Type = '' SET @Type = NULL	
	SELECT *  From Customer
	WHERE 1=1
	AND [Delete] > 0
	AND(@Name IS NULL OR Name = @Name)
	AND(@Phone IS NULL OR Phone = @Phone)
	AND(@Type IS NULL OR Type = @Type)
	ORDER BY 1 DESC
END
GO


-- ----------------------------
-- procedure structure for AddCustomer
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[AddCustomer]') AND type IN ('FN', 'FS', 'FT', 'IF', 'TF'))
	DROP PROCEDURE[dbo].[AddCustomer]
GO

CREATE PROCEDURE [dbo].[AddCustomer]
@Name VARCHAR(255),
@Phone VARCHAR(255),
@Type VARCHAR(255),
@Noted VARCHAR(255)
AS
BEGIN
	INSERT INTO Customer(Name, Phone, Type, Noted, [Date])
	VALUES(@Name, @Phone, @Type, @Noted, FORMAT ( GETDATE( ), 'yyyy-MM-dd', 'en-us' ))
END
GO


-- ----------------------------
-- procedure structure for GetAllReports
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[GetAllReports]') AND type IN ('FN', 'FS', 'FT', 'IF', 'TF'))
	DROP PROCEDURE[dbo].[GetAllReports]
GO

CREATE PROCEDURE [dbo].[GetAllReports]
	@Customer VARCHAR(255),
	@Type VARCHAR(255),
	@Seller VARCHAR(255),
	@Date VARCHAR(255),
	@InvoiceId INT,
	@Report VARCHAR(255)
AS
BEGIN
	IF @Customer = '' SET @Customer = NULL
	IF @Type = '' SET @Type = NULL
	IF @Seller = '' SET @Seller = NULL
	IF @Date = '' SET @Date = NULL
	IF @InvoiceId = '' SET @InvoiceId = NULL
	IF @Report = '' SET @Report = NULL
	
	SELECT 
			Invoice.InvoiceId,
			Invoice.StartDate,
			Invoice.EndDate,
			Invoice.Status,
			Invoice.Total,
			Customer.Name,
			Customer.Phone,
			Customer.Type,	
			(SELECT Username FROM [User] WHERE UserId = Invoice.UserId ) 'Seller'
		FROM Invoice
		INNER JOIN Customer 
		ON Invoice.CustomerId = Customer.CustomerId
		WHERE 1=1
		AND( @Customer IS NULL OR Customer.Name LIKE '%' + @Customer + '%')
		AND( @Type IS NULL OR LOWER(Customer.Type) LIKE LOWER('%' + @Type + '%'))
		AND( @Seller IS NULL OR Invoice.UserId = @Seller)
		AND( @Date IS NULL OR Invoice.StartDate <= @Date) 
		AND( @InvoiceId IS NULL OR Invoice.InvoiceId = @InvoiceId)
		AND Invoice.Status = 'Paid'
		AND Invoice.[Delete] > 0
		AND( @Report IS NULL OR Invoice.StartDate = @Report)
		
		ORDER BY 1 DESC
END
GO


-- ----------------------------
-- Auto increment value for Category
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[Category]', RESEED, 1007)
GO


-- ----------------------------
-- Primary Key structure for table Category
-- ----------------------------
ALTER TABLE [dbo].[Category] ADD CONSTRAINT [PK__Categori__19093A0B2C1BC136] PRIMARY KEY CLUSTERED ([CategoryId])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for Commission
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[Commission]', RESEED, 41)
GO


-- ----------------------------
-- Primary Key structure for table Commission
-- ----------------------------
ALTER TABLE [dbo].[Commission] ADD CONSTRAINT [PK__Commissi__6C2C8F0CB721D2CF] PRIMARY KEY CLUSTERED ([CommissionId])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for Config
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[Config]', RESEED, 8)
GO


-- ----------------------------
-- Primary Key structure for table Config
-- ----------------------------
ALTER TABLE [dbo].[Config] ADD CONSTRAINT [PK__Config__3213E83FCA2A5F37] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for Currency
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[Currency]', RESEED, 1)
GO


-- ----------------------------
-- Primary Key structure for table Currency
-- ----------------------------
ALTER TABLE [dbo].[Currency] ADD CONSTRAINT [PK__Currency__3214EC07155D57E0] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for Customer
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[Customer]', RESEED, 1068)
GO


-- ----------------------------
-- Primary Key structure for table Customer
-- ----------------------------
ALTER TABLE [dbo].[Customer] ADD CONSTRAINT [PK__Customer__A4AE64D8DAC48858] PRIMARY KEY CLUSTERED ([CustomerId])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for Invoice
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[Invoice]', RESEED, 138)
GO


-- ----------------------------
-- Primary Key structure for table Invoice
-- ----------------------------
ALTER TABLE [dbo].[Invoice] ADD CONSTRAINT [PK__Invoice__D796AAB50D75DCEE] PRIMARY KEY CLUSTERED ([InvoiceId])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for Laundary
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[Laundary]', RESEED, 147)
GO


-- ----------------------------
-- Primary Key structure for table Laundary
-- ----------------------------
ALTER TABLE [dbo].[Laundary] ADD CONSTRAINT [PK__Laundary__E207BE76C0DBF066] PRIMARY KEY CLUSTERED ([LaundryId])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for Receipt
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[Receipt]', RESEED, 1088)
GO


-- ----------------------------
-- Primary Key structure for table Receipt
-- ----------------------------
ALTER TABLE [dbo].[Receipt] ADD CONSTRAINT [PK__Receipt__CC08C4202BE9ED5A] PRIMARY KEY CLUSTERED ([ReceiptId])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for Role
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[Role]', RESEED, 5)
GO


-- ----------------------------
-- Primary Key structure for table Role
-- ----------------------------
ALTER TABLE [dbo].[Role] ADD CONSTRAINT [PK__Role__8AFACE1A096E2338] PRIMARY KEY CLUSTERED ([RoleId])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for Tracker
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[Tracker]', RESEED, 1181)
GO


-- ----------------------------
-- Primary Key structure for table Tracker
-- ----------------------------
ALTER TABLE [dbo].[Tracker] ADD CONSTRAINT [PK__Tracker__3213E83F24BB91E6] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for User
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[User]', RESEED, 17)
GO


-- ----------------------------
-- Primary Key structure for table User
-- ----------------------------
ALTER TABLE [dbo].[User] ADD CONSTRAINT [PK__User__1788CC4CF8797F24] PRIMARY KEY CLUSTERED ([UserId])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Foreign Keys structure for table Commission
-- ----------------------------
ALTER TABLE [dbo].[Commission] ADD CONSTRAINT [FK__Commissio__UserI__3B75D760] FOREIGN KEY ([UserId]) REFERENCES [dbo].[User] ([UserId]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table Invoice
-- ----------------------------
ALTER TABLE [dbo].[Invoice] ADD CONSTRAINT [FK__Invoice__UserId__48CFD27E] FOREIGN KEY ([UserId]) REFERENCES [dbo].[User] ([UserId]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table Laundary
-- ----------------------------
ALTER TABLE [dbo].[Laundary] ADD CONSTRAINT [FK__Laundary__Catego__21B6055D] FOREIGN KEY ([CategoryId]) REFERENCES [dbo].[Category] ([CategoryId]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[Laundary] ADD CONSTRAINT [FK__Laundary__Custom__22AA2996] FOREIGN KEY ([CustomerId]) REFERENCES [dbo].[Customer] ([CustomerId]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[Laundary] ADD CONSTRAINT [FK__Laundary__Invoic__276EDEB3] FOREIGN KEY ([InvoiceId]) REFERENCES [dbo].[Invoice] ([InvoiceId]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[Laundary] ADD CONSTRAINT [FK__Laundary__UserId__34C8D9D1] FOREIGN KEY ([UserId]) REFERENCES [dbo].[User] ([UserId]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table User
-- ----------------------------
ALTER TABLE [dbo].[User] ADD CONSTRAINT [FK__User__RoleId__32E0915F] FOREIGN KEY ([RoleId]) REFERENCES [dbo].[Role] ([RoleId]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

