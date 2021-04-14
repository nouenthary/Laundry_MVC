/*
 Navicat Premium Data Transfer

 Source Server         : SV
 Source Server Type    : SQL Server
 Source Server Version : 11002100
 Source Host           : 192.168.1.252:1433
 Source Catalog        : Laundry_DB
 Source Schema         : dbo

 Target Server Type    : SQL Server
 Target Server Version : 11002100
 File Encoding         : 65001

 Date: 26/03/2021 10:47:17
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
  [Image] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[Category] SET (LOCK_ESCALATION = AUTO)
GO


-- ----------------------------
-- Records of Category
-- ----------------------------
SET IDENTITY_INSERT [dbo].[Category] ON
GO

INSERT INTO [dbo].[Category] ([CategoryId], [Name], [Price], [Delete], [Image]) VALUES (N'1', N'បោកអ៊ុត', N'500', N'1', N'Service_1600846032.png')
GO

INSERT INTO [dbo].[Category] ([CategoryId], [Name], [Price], [Delete], [Image]) VALUES (N'2', N'បោក(អត់អ៊ុត)', N'1000', N'1', N'Service_1600845986.png')
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

INSERT INTO [dbo].[Commission] ([CommissionId], [Percent], [Date], [Time], [UserId], [Delete], [UserUpdate]) VALUES (N'1', N'20', N'2021-03-24', N'07:06:24', N'1', N'1', N'1')
GO

INSERT INTO [dbo].[Commission] ([CommissionId], [Percent], [Date], [Time], [UserId], [Delete], [UserUpdate]) VALUES (N'2', N'20', N'2021-03-24', N'07:06:24', N'12', N'1', N'1')
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

INSERT INTO [dbo].[Config] ([id], [key], [value]) VALUES (N'1', N'create', N'{''message'',''Created successfully.''}')
GO

INSERT INTO [dbo].[Config] ([id], [key], [value]) VALUES (N'2', N'delete', N'{''message'',''Deleted successfully.''}')
GO

INSERT INTO [dbo].[Config] ([id], [key], [value]) VALUES (N'3', N'address', N'ផ្ទះលេខ 147 ផ្លូវលេខ​ 217, សង្កាត់​ដង្កោរ, ខណ្ឌដង្កោរ, រាជធានីភ្នំពេញ')
GO

INSERT INTO [dbo].[Config] ([id], [key], [value]) VALUES (N'4', N'phone', N'023 232 888, 092 900 991, 069 866 636')
GO

INSERT INTO [dbo].[Config] ([id], [key], [value]) VALUES (N'5', N'noted1', N'ចំណាំ : ប្រសិនបើអតិថិជនបាត់សំលៀកបំពាក់ក្រុមហ៊ុននឺងសង១ទ្វេ ១០ នៃតំលៃបោកអ៊ុត ។ ប្រសិនបើអតិថិជនមិនបានមកយកសំលៀកបំពាក់ក្នុងរយះពេល១ខែទុកជាអសាបង់ ។')
GO

INSERT INTO [dbo].[Config] ([id], [key], [value]) VALUES (N'6', N'noted', N'ចំណាំ:ប្រសិនបាត់សម្លៀកបំពាក់ អតិថិជនក្រុមហ៊ុននឹងសង ១×១០ នៃតម្លៃនោះ  ។ ​​ប្រសិនអតិថិជនមិនបានមកយកសម្លៀកបំពាក់ក្នុងរយះពេល១ខែទុកជាអសាបង់ ។')
GO

INSERT INTO [dbo].[Config] ([id], [key], [value]) VALUES (N'7', N'title', N'បោកគក់ Online')
GO

INSERT INTO [dbo].[Config] ([id], [key], [value]) VALUES (N'8', N'currency', N'4100')
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
  [Date] date  NULL,
  [Delete] tinyint DEFAULT ((1)) NULL
)
GO

ALTER TABLE [dbo].[Customer] SET (LOCK_ESCALATION = AUTO)
GO


-- ----------------------------
-- Records of Customer
-- ----------------------------
SET IDENTITY_INSERT [dbo].[Customer] ON
GO

INSERT INTO [dbo].[Customer] ([CustomerId], [Name], [Phone], [Noted], [Date], [Delete]) VALUES (N'2', N'NouenThary', N'077772566', N'New', N'2021-03-23', N'1')
GO

INSERT INTO [dbo].[Customer] ([CustomerId], [Name], [Phone], [Noted], [Date], [Delete]) VALUES (N'3', N'Sokly', N'012967799', NULL, N'2021-03-23', N'1')
GO

INSERT INTO [dbo].[Customer] ([CustomerId], [Name], [Phone], [Noted], [Date], [Delete]) VALUES (N'4', N'ចែណា', N'012266680', NULL, N'2021-03-23', N'1')
GO

INSERT INTO [dbo].[Customer] ([CustomerId], [Name], [Phone], [Noted], [Date], [Delete]) VALUES (N'5', N'Makara ', N'0962191316', NULL, N'2021-03-23', N'1')
GO

INSERT INTO [dbo].[Customer] ([CustomerId], [Name], [Phone], [Noted], [Date], [Delete]) VALUES (N'6', N'Dany Duong', N'093224474', NULL, N'2021-03-23', N'1')
GO

INSERT INTO [dbo].[Customer] ([CustomerId], [Name], [Phone], [Noted], [Date], [Delete]) VALUES (N'7', N'bros lik', N'093817929', NULL, N'2021-03-23', N'1')
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

INSERT INTO [dbo].[Invoice] ([InvoiceId], [Delete], [EndDate], [Status], [UserId], [Total], [StartDate], [CustomerId]) VALUES (N'3', N'1', NULL, N'Pending', N'19', N'0', N'2021-03-23', NULL)
GO

INSERT INTO [dbo].[Invoice] ([InvoiceId], [Delete], [EndDate], [Status], [UserId], [Total], [StartDate], [CustomerId]) VALUES (N'4', N'1', NULL, N'Pending', N'19', N'0', N'2021-03-23', NULL)
GO

INSERT INTO [dbo].[Invoice] ([InvoiceId], [Delete], [EndDate], [Status], [UserId], [Total], [StartDate], [CustomerId]) VALUES (N'5', N'1', NULL, N'Pending', N'19', N'0', N'2021-03-23', NULL)
GO

INSERT INTO [dbo].[Invoice] ([InvoiceId], [Delete], [EndDate], [Status], [UserId], [Total], [StartDate], [CustomerId]) VALUES (N'6', N'1', NULL, N'Pending', N'19', N'0', N'2021-03-24', NULL)
GO

INSERT INTO [dbo].[Invoice] ([InvoiceId], [Delete], [EndDate], [Status], [UserId], [Total], [StartDate], [CustomerId]) VALUES (N'7', N'1', NULL, N'Pending', N'19', N'0', N'2021-03-26', NULL)
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
  [Qty] int  NULL
)
GO

ALTER TABLE [dbo].[Laundary] SET (LOCK_ESCALATION = AUTO)
GO


-- ----------------------------
-- Records of Laundary
-- ----------------------------
SET IDENTITY_INSERT [dbo].[Laundary] ON
GO

INSERT INTO [dbo].[Laundary] ([LaundryId], [Name], [Weight], [CategoryId], [CustomerId], [Status], [Date], [Amount], [QrCode], [InvoiceId], [Delete], [UserId], [Qty]) VALUES (N'4', NULL, N'3', N'1', N'3', N'Pending', N'2021-03-23', N'4500', NULL, N'3', N'1', N'19', N'9')
GO

INSERT INTO [dbo].[Laundary] ([LaundryId], [Name], [Weight], [CategoryId], [CustomerId], [Status], [Date], [Amount], [QrCode], [InvoiceId], [Delete], [UserId], [Qty]) VALUES (N'5', NULL, N'3', N'1', N'4', N'Pending', N'2021-03-23', N'9000', NULL, N'4', N'1', N'19', N'18')
GO

INSERT INTO [dbo].[Laundary] ([LaundryId], [Name], [Weight], [CategoryId], [CustomerId], [Status], [Date], [Amount], [QrCode], [InvoiceId], [Delete], [UserId], [Qty]) VALUES (N'6', NULL, N'7', N'2', N'5', N'Pending', N'2021-03-23', N'7000', NULL, N'5', N'1', N'19', N'23')
GO

INSERT INTO [dbo].[Laundary] ([LaundryId], [Name], [Weight], [CategoryId], [CustomerId], [Status], [Date], [Amount], [QrCode], [InvoiceId], [Delete], [UserId], [Qty]) VALUES (N'7', NULL, N'14', N'1', N'6', N'Pending', N'2021-03-24', N'25000', NULL, N'6', N'1', N'19', N'50')
GO

INSERT INTO [dbo].[Laundary] ([LaundryId], [Name], [Weight], [CategoryId], [CustomerId], [Status], [Date], [Amount], [QrCode], [InvoiceId], [Delete], [UserId], [Qty]) VALUES (N'8', NULL, N'13.5', N'1', N'6', N'Pending', N'2021-03-26', N'15000', NULL, N'7', N'1', N'19', N'30')
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

INSERT INTO [dbo].[Receipt] ([ReceiptId], [Date], [Time], [InvoiceId], [UserId]) VALUES (N'1', N'2021-03-23', N'07-49-14', N'2', N'1')
GO

INSERT INTO [dbo].[Receipt] ([ReceiptId], [Date], [Time], [InvoiceId], [UserId]) VALUES (N'2', N'2021-03-23', N'03-29-43', N'5', N'19')
GO

INSERT INTO [dbo].[Receipt] ([ReceiptId], [Date], [Time], [InvoiceId], [UserId]) VALUES (N'3', N'2021-03-23', N'03-30-21', N'4', N'19')
GO

INSERT INTO [dbo].[Receipt] ([ReceiptId], [Date], [Time], [InvoiceId], [UserId]) VALUES (N'4', N'2021-03-23', N'03-30-40', N'3', N'19')
GO

INSERT INTO [dbo].[Receipt] ([ReceiptId], [Date], [Time], [InvoiceId], [UserId]) VALUES (N'5', N'2021-03-23', N'03-42-11', N'5', N'12')
GO

INSERT INTO [dbo].[Receipt] ([ReceiptId], [Date], [Time], [InvoiceId], [UserId]) VALUES (N'6', N'2021-03-23', N'03-43-05', N'5', N'12')
GO

INSERT INTO [dbo].[Receipt] ([ReceiptId], [Date], [Time], [InvoiceId], [UserId]) VALUES (N'7', N'2021-03-23', N'03-44-07', N'5', N'12')
GO

INSERT INTO [dbo].[Receipt] ([ReceiptId], [Date], [Time], [InvoiceId], [UserId]) VALUES (N'8', N'2021-03-23', N'03-46-24', N'5', N'12')
GO

INSERT INTO [dbo].[Receipt] ([ReceiptId], [Date], [Time], [InvoiceId], [UserId]) VALUES (N'9', N'2021-03-23', N'03-47-19', N'3', N'12')
GO

INSERT INTO [dbo].[Receipt] ([ReceiptId], [Date], [Time], [InvoiceId], [UserId]) VALUES (N'10', N'2021-03-24', N'07-35-58', N'5', N'1')
GO

INSERT INTO [dbo].[Receipt] ([ReceiptId], [Date], [Time], [InvoiceId], [UserId]) VALUES (N'11', N'2021-03-24', N'10-39-33', N'6', N'19')
GO

INSERT INTO [dbo].[Receipt] ([ReceiptId], [Date], [Time], [InvoiceId], [UserId]) VALUES (N'12', N'2021-03-26', N'09-08-59', N'7', N'19')
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

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'1', N'Cambodia', N'203.189.154.244', N'KH', N'2021-03-23', N'07:45:47 AM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'2', N'Cambodia', N'203.189.154.244', N'KH', N'2021-03-23', N'07:53:12 AM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'3', N'Cambodia', N'203.189.154.244', N'KH', N'2021-03-23', N'07:53:27 AM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'4', N'Cambodia', N'203.189.154.244', N'KH', N'2021-03-23', N'07:53:47 AM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'5', N'Cambodia', N'203.189.154.244', N'KH', N'2021-03-23', N'09:59:34 AM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'6', N'Cambodia', N'203.189.154.244', N'KH', N'2021-03-23', N'10:34:42 AM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'7', N'Cambodia', N'203.189.154.244', N'KH', N'2021-03-23', N'10:43:53 AM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'8', N'Cambodia', N'203.189.154.244', N'KH', N'2021-03-23', N'10:44:13 AM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'9', N'Cambodia', N'203.189.154.244', N'KH', N'2021-03-23', N'10:57:12 AM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'10', N'Cambodia', N'203.189.154.244', N'KH', N'2021-03-23', N'10:58:01 AM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'11', N'Cambodia', N'203.189.154.244', N'KH', N'2021-03-23', N'10:58:50 AM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'12', N'Cambodia', N'203.189.154.244', N'KH', N'2021-03-23', N'10:59:34 AM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'13', N'Cambodia', N'203.189.154.244', N'KH', N'2021-03-23', N'10:59:51 AM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'14', N'Cambodia', N'203.189.154.244', N'KH', N'2021-03-23', N'11:00:03 AM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'15', N'Cambodia', N'203.189.154.244', N'KH', N'2021-03-23', N'11:00:17 AM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'16', N'Cambodia', N'203.189.154.244', N'KH', N'2021-03-23', N'11:00:22 AM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'17', N'Cambodia', N'203.189.154.244', N'KH', N'2021-03-23', N'11:00:26 AM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'18', N'Cambodia', N'203.189.154.244', N'KH', N'2021-03-23', N'11:00:26 AM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'19', N'Cambodia', N'203.189.154.244', N'KH', N'2021-03-23', N'11:00:27 AM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'20', N'Cambodia', N'203.189.154.244', N'KH', N'2021-03-23', N'11:00:27 AM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'21', N'Cambodia', N'203.189.154.244', N'KH', N'2021-03-23', N'11:00:28 AM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'22', N'Cambodia', N'203.189.154.244', N'KH', N'2021-03-23', N'11:00:28 AM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'23', N'Cambodia', N'203.189.154.244', N'KH', N'2021-03-23', N'11:00:29 AM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'24', N'Cambodia', N'203.189.154.244', N'KH', N'2021-03-23', N'11:00:29 AM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'25', N'Cambodia', N'203.189.154.244', N'KH', N'2021-03-23', N'11:00:29 AM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'26', N'Cambodia', N'203.189.154.244', N'KH', N'2021-03-23', N'11:00:30 AM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'27', N'Cambodia', N'203.189.154.244', N'KH', N'2021-03-23', N'11:00:34 AM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'28', N'Cambodia', N'203.189.154.244', N'KH', N'2021-03-23', N'11:01:06 AM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'29', N'Cambodia', N'43.230.195.180', N'KH', N'2021-03-23', N'12:58:59 PM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'30', N'Cambodia', N'203.189.154.244', N'KH', N'2021-03-23', N'13:04:33 PM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'31', N'Cambodia', N'203.189.154.244', N'KH', N'2021-03-23', N'13:04:37 PM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'32', N'Cambodia', N'203.189.154.244', N'KH', N'2021-03-23', N'13:25:05 PM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'33', N'Cambodia', N'203.189.154.244', N'KH', N'2021-03-23', N'13:27:15 PM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'34', N'Cambodia', N'203.189.154.244', N'KH', N'2021-03-23', N'15:14:36 PM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'35', N'Cambodia', N'203.189.154.244', N'KH', N'2021-03-23', N'15:20:43 PM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'36', N'Cambodia', N'203.189.154.244', N'KH', N'2021-03-23', N'15:32:11 PM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'37', N'Cambodia', N'203.189.154.244', N'KH', N'2021-03-23', N'15:43:58 PM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'38', N'Cambodia', N'203.189.154.244', N'KH', N'2021-03-23', N'15:47:10 PM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'39', N'Cambodia', N'203.189.154.244', N'KH', N'2021-03-23', N'15:48:54 PM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'40', N'Cambodia', N'203.189.154.244', N'KH', N'2021-03-23', N'18:02:11 PM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'41', N'Cambodia', N'203.189.154.244', N'KH', N'2021-03-23', N'18:04:44 PM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'42', N'Cambodia', N'203.189.154.244', N'KH', N'2021-03-23', N'18:11:33 PM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'43', N'Cambodia', N'175.100.6.225', N'KH', N'2021-03-23', N'18:12:34 PM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'44', N'Cambodia', N'117.20.113.111', N'KH', N'2021-03-23', N'18:22:39 PM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'45', N'Cambodia', N'117.20.113.111', N'KH', N'2021-03-23', N'18:22:52 PM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'46', N'Cambodia', N'117.20.113.111', N'KH', N'2021-03-23', N'18:22:56 PM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'47', N'Cambodia', N'117.20.113.111', N'KH', N'2021-03-23', N'18:23:00 PM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'48', N'Cambodia', N'117.20.113.111', N'KH', N'2021-03-23', N'18:23:06 PM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'49', N'Cambodia', N'117.20.113.111', N'KH', N'2021-03-23', N'18:23:36 PM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'50', N'Cambodia', N'117.20.113.111', N'KH', N'2021-03-23', N'18:23:43 PM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'51', N'Cambodia', N'203.189.154.244', N'KH', N'2021-03-23', N'18:48:24 PM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'52', N'Cambodia', N'203.189.154.244', N'KH', N'2021-03-23', N'19:33:17 PM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'53', N'Cambodia', N'117.20.115.81', N'KH', N'2021-03-23', N'20:08:49 PM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'54', N'Cambodia', N'117.20.115.81', N'KH', N'2021-03-23', N'20:09:40 PM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'55', N'Cambodia', N'117.20.115.81', N'KH', N'2021-03-23', N'20:10:00 PM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'56', N'Cambodia', N'117.20.115.58', N'KH', N'2021-03-23', N'20:22:53 PM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'57', N'Cambodia', N'117.20.115.58', N'KH', N'2021-03-23', N'20:23:14 PM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'58', N'Cambodia', N'203.189.154.244', N'KH', N'2021-03-23', N'22:59:50 PM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'59', N'Cambodia', N'203.189.154.244', N'KH', N'2021-03-24', N'07:05:45 AM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'60', N'Cambodia', N'203.189.154.244', N'KH', N'2021-03-24', N'07:07:30 AM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'61', N'Cambodia', N'203.189.154.244', N'KH', N'2021-03-24', N'07:35:45 AM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'62', N'Cambodia', N'203.189.154.244', N'KH', N'2021-03-24', N'07:36:45 AM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'63', N'Cambodia', N'203.189.154.244', N'KH', N'2021-03-24', N'07:38:23 AM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'64', N'Cambodia', N'203.189.154.244', N'KH', N'2021-03-24', N'07:45:44 AM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'65', N'Cambodia', N'203.189.154.244', N'KH', N'2021-03-24', N'10:29:55 AM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'66', N'Cambodia', N'203.189.154.244', N'KH', N'2021-03-24', N'10:43:32 AM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'67', N'Cambodia', N'175.100.20.249', N'KH', N'2021-03-24', N'12:00:30 PM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'68', N'Cambodia', N'175.100.20.249', N'KH', N'2021-03-24', N'12:00:40 PM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'69', N'Cambodia', N'175.100.20.249', N'KH', N'2021-03-24', N'12:00:51 PM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'70', N'Cambodia', N'175.100.20.249', N'KH', N'2021-03-24', N'12:00:59 PM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'71', N'Cambodia', N'175.100.20.249', N'KH', N'2021-03-24', N'12:01:27 PM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'72', N'Cambodia', N'175.100.20.249', N'KH', N'2021-03-24', N'12:01:36 PM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'73', N'Cambodia', N'175.100.20.249', N'KH', N'2021-03-24', N'12:07:15 PM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'74', N'Cambodia', N'117.20.116.169', N'KH', N'2021-03-24', N'12:07:30 PM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'75', N'Cambodia', N'117.20.116.169', N'KH', N'2021-03-24', N'12:08:04 PM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'76', N'Cambodia', N'203.189.154.244', N'KH', N'2021-03-24', N'13:25:00 PM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'77', N'Cambodia', N'203.189.154.244', N'KH', N'2021-03-24', N'14:32:59 PM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'78', N'Cambodia', N'117.20.116.169', N'KH', N'2021-03-24', N'14:53:13 PM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'79', N'Cambodia', N'117.20.116.169', N'KH', N'2021-03-24', N'14:53:39 PM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'80', N'Cambodia', N'203.189.154.244', N'KH', N'2021-03-24', N'18:23:03 PM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'81', N'Cambodia', N'203.189.154.244', N'KH', N'2021-03-24', N'22:52:30 PM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'82', N'Cambodia', N'203.189.154.244', N'KH', N'2021-03-24', N'22:54:18 PM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'83', N'Cambodia', N'203.189.154.244', N'KH', N'2021-03-25', N'07:54:21 AM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'84', N'Cambodia', N'203.189.154.244', N'KH', N'2021-03-25', N'12:56:34 PM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'85', N'Cambodia', N'103.23.133.55', N'KH', N'2021-03-25', N'21:18:35 PM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'86', N'Cambodia', N'203.144.74.69', N'KH', N'2021-03-25', N'22:45:52 PM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'87', N'Cambodia', N'203.144.74.69', N'KH', N'2021-03-25', N'22:46:08 PM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'88', N'Cambodia', N'103.23.133.55', N'KH', N'2021-03-26', N'00:01:57 AM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'89', N'Cambodia', N'103.23.133.55', N'KH', N'2021-03-26', N'00:02:10 AM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'90', N'Cambodia', N'103.23.133.55', N'KH', N'2021-03-26', N'00:02:23 AM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'91', N'Cambodia', N'203.189.154.244', N'KH', N'2021-03-26', N'06:23:20 AM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'92', N'Cambodia', N'203.189.154.244', N'KH', N'2021-03-26', N'06:24:14 AM +07')
GO

INSERT INTO [dbo].[Tracker] ([id], [country], [ip], [location], [Date], [Time]) VALUES (N'93', N'Cambodia', N'203.189.154.244', N'KH', N'2021-03-26', N'09:06:50 AM +07')
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

INSERT INTO [dbo].[User] ([UserId], [Name], [Username], [Password], [Status], [Photo], [Phone], [IP], [Address], [Delete], [RoleId], [Gender]) VALUES (N'1', N'NouenThary', N'thary', N'3b712de48137572f3849aabd5666a4e3', N'Enable', N'2021_03_24_07_36_42.png', N'09998877', NULL, N'PP', N'1', N'1', N'Male')
GO

INSERT INTO [dbo].[User] ([UserId], [Name], [Username], [Password], [Status], [Photo], [Phone], [IP], [Address], [Delete], [RoleId], [Gender]) VALUES (N'12', N'root', N'root', N'3b712de48137572f3849aabd5666a4e3', N'Enable', N'2021_03_24_07_37_25.png', N'012333344', N'localhost', N'PP', N'1', N'2', N'Male')
GO

INSERT INTO [dbo].[User] ([UserId], [Name], [Username], [Password], [Status], [Photo], [Phone], [IP], [Address], [Delete], [RoleId], [Gender]) VALUES (N'15', N'Sout voin Lida', N'lida', N'4c4a113535cfb09e6b9697f9407d7898', N'Enable', N'No.jpg', N'012333344', N'localhost', N'PP', N'1', N'2', N'Male')
GO

INSERT INTO [dbo].[User] ([UserId], [Name], [Username], [Password], [Status], [Photo], [Phone], [IP], [Address], [Delete], [RoleId], [Gender]) VALUES (N'16', N'SEM LADY', N'laly', N'83f1b33de82da0f1965bfb4cfe8cdf46', N'Enable', N'No.jpg', N'012333344', N'localhost', N'PP', N'1', N'2', N'Male')
GO

INSERT INTO [dbo].[User] ([UserId], [Name], [Username], [Password], [Status], [Photo], [Phone], [IP], [Address], [Delete], [RoleId], [Gender]) VALUES (N'17', N'Em somealea', N'mealea', N'f28d6439cdd2e90038ead10497bd3af0', N'Enable', N'No.jpg', N'012333344', N'localhost', N'PP', N'1', N'2', N'Male')
GO

INSERT INTO [dbo].[User] ([UserId], [Name], [Username], [Password], [Status], [Photo], [Phone], [IP], [Address], [Delete], [RoleId], [Gender]) VALUES (N'18', N'EN SOCHEAT', N'socheat', N'd6725450b516ce31e4eb656d981bc63c', N'Enable', N'No.jpg', N'012333344', N'localhost', N'PP', N'1', N'2', N'Male')
GO

INSERT INTO [dbo].[User] ([UserId], [Name], [Username], [Password], [Status], [Photo], [Phone], [IP], [Address], [Delete], [RoleId], [Gender]) VALUES (N'19', N'Bormey', N'bormey', N'0192023a7bbd73250516f069df18b500', N'Enable', N'No.jpg', N'012333344', N'localhost', N'PP', N'1', N'2', N'Male')
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
-- Auto increment value for Category
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[Category]', RESEED, 3)
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
DBCC CHECKIDENT ('[dbo].[Commission]', RESEED, 2)
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
DBCC CHECKIDENT ('[dbo].[Customer]', RESEED, 7)
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
DBCC CHECKIDENT ('[dbo].[Invoice]', RESEED, 7)
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
DBCC CHECKIDENT ('[dbo].[Laundary]', RESEED, 8)
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
DBCC CHECKIDENT ('[dbo].[Receipt]', RESEED, 12)
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
DBCC CHECKIDENT ('[dbo].[Role]', RESEED, 4)
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
DBCC CHECKIDENT ('[dbo].[Tracker]', RESEED, 93)
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
DBCC CHECKIDENT ('[dbo].[User]', RESEED, 19)
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
ALTER TABLE [dbo].[Commission] ADD CONSTRAINT [FK__Commissio__UserI__32E0915F] FOREIGN KEY ([UserId]) REFERENCES [dbo].[User] ([UserId]) ON DELETE NO ACTION ON UPDATE NO ACTION
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

