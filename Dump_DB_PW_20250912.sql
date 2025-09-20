/****** Object:  Table [dbo].[Biglietto]    Script Date: 13/07/2025 15:35:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Biglietto](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[IdViaggio] [bigint] NOT NULL,
	[CodiceBiglietto] [varchar](50) NOT NULL,
	[IdOrariTratte] [bigint] NOT NULL,
	[NumeroPosto] [varchar](20) NOT NULL,
 CONSTRAINT [PK_Biglietto] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cliente]    Script Date: 13/07/2025 15:35:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cliente](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[DataInserimento] [datetime] NOT NULL,
	[CodiceFiscale] [varchar](20) NULL,
	[Nome] [varchar](250) NOT NULL,
	[Cognome] [varchar](250) NOT NULL,
	[Email] [varchar](250) NOT NULL,
	[Telefono] [varchar](20) NULL,
	[DataNascita] [date] NULL,
	[CittaResidenza] [varchar](150) NULL,
	[NazioneResidenza] [varchar](50) NULL,
	[IndirizzoResidenza] [varchar](250) NULL,
 CONSTRAINT [PK_Clienti_1] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrariTratte]    Script Date: 13/07/2025 15:35:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrariTratte](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[IdTratta] [bigint] NOT NULL,
	[DataPartenza] [datetime] NOT NULL,
	[DataArrivo] [datetime] NOT NULL,
	[Prezzo] [decimal](18, 2) NOT NULL,
 CONSTRAINT [PK_OrariTratte] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MezzoTrasporto]    Script Date: 13/07/2025 15:35:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MezzoTrasporto](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Descrizione] [varchar](50) NULL,
 CONSTRAINT [PK_TipoTratta] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tratta]    Script Date: 13/07/2025 15:35:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tratta](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[IdMezzoTrasporto] [bigint] NOT NULL,
	[CittaPartenza] [varchar](250) NOT NULL,
	[CittaArrivo] [varchar](250) NOT NULL,
	[IndirizzoPartenza] [varchar](250) NOT NULL,
	[IndirizzoArrivo] [varchar](250) NOT NULL,
 CONSTRAINT [PK_Tratta] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Viaggio]    Script Date: 13/07/2025 15:35:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Viaggio](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[IdCliente] [bigint] NOT NULL,
	[CodiceViaggio] [varchar](50) NOT NULL,
	[DataPrenotazione] [datetime] NOT NULL,
 CONSTRAINT [PK_Viaggio] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Biglietto] ON 

INSERT [dbo].[Biglietto] ([Id], [IdViaggio], [CodiceBiglietto], [IdOrariTratte], [NumeroPosto]) VALUES (1, 3, N'C56EC451-439C-4346-94F0-D734D4568868', 1, N'10A')
INSERT [dbo].[Biglietto] ([Id], [IdViaggio], [CodiceBiglietto], [IdOrariTratte], [NumeroPosto]) VALUES (2, 3, N'345F1FB0-B161-4901-A1F5-62014A563DB4', 2, N'10A')
INSERT [dbo].[Biglietto] ([Id], [IdViaggio], [CodiceBiglietto], [IdOrariTratte], [NumeroPosto]) VALUES (5, 3, N'308f31dc-f1c9-46f2-b959-d3bd35ba3d59', 3, N'22')
INSERT [dbo].[Biglietto] ([Id], [IdViaggio], [CodiceBiglietto], [IdOrariTratte], [NumeroPosto]) VALUES (25, 3, N'308f31dc-f1c9-46f2-b959-d3bd35ba3d59', 3, N'22')
INSERT [dbo].[Biglietto] ([Id], [IdViaggio], [CodiceBiglietto], [IdOrariTratte], [NumeroPosto]) VALUES (43, 44, N'78B462CC-18C9-41FA-AAFB-772D894427E5', 4, N'12S')
INSERT [dbo].[Biglietto] ([Id], [IdViaggio], [CodiceBiglietto], [IdOrariTratte], [NumeroPosto]) VALUES (44, 44, N'BE54E205-5814-4200-BA35-C43FAE9E76CB', 45, N'26C')
INSERT [dbo].[Biglietto] ([Id], [IdViaggio], [CodiceBiglietto], [IdOrariTratte], [NumeroPosto]) VALUES (45, 45, N'D790C596-EB3A-4ABC-9291-D09DB30994EB', 49, N'ND')
INSERT [dbo].[Biglietto] ([Id], [IdViaggio], [CodiceBiglietto], [IdOrariTratte], [NumeroPosto]) VALUES (46, 48, N'43B96F67-A5BB-4AA2-8714-B35CEB8983D9', 51, N'14')
INSERT [dbo].[Biglietto] ([Id], [IdViaggio], [CodiceBiglietto], [IdOrariTratte], [NumeroPosto]) VALUES (47, 49, N'64EB2B05-0EB8-4DD2-BA9E-ADF5B4921EBA', 54, N'12F')
INSERT [dbo].[Biglietto] ([Id], [IdViaggio], [CodiceBiglietto], [IdOrariTratte], [NumeroPosto]) VALUES (48, 50, N'D157B032-843A-4667-B8CC-69E9CEEF1A91', 52, N'32')
INSERT [dbo].[Biglietto] ([Id], [IdViaggio], [CodiceBiglietto], [IdOrariTratte], [NumeroPosto]) VALUES (49, 51, N'3C6A2EFF-0F39-4804-BD89-9F2FA75747A7', 59, N'17D')
INSERT [dbo].[Biglietto] ([Id], [IdViaggio], [CodiceBiglietto], [IdOrariTratte], [NumeroPosto]) VALUES (50, 52, N'620D6F6D-B52D-477E-B743-0D9BB970E875', 63, N'20A')
INSERT [dbo].[Biglietto] ([Id], [IdViaggio], [CodiceBiglietto], [IdOrariTratte], [NumeroPosto]) VALUES (51, 52, N'7EFA9B68-D690-4D73-8695-5D31C96E2A27', 78, N'36B')
SET IDENTITY_INSERT [dbo].[Biglietto] OFF
GO
SET IDENTITY_INSERT [dbo].[Cliente] ON 

INSERT [dbo].[Cliente] ([Id], [DataInserimento], [CodiceFiscale], [Nome], [Cognome], [Email], [Telefono], [DataNascita], [CittaResidenza], [NazioneResidenza], [IndirizzoResidenza]) VALUES (1, CAST(N'2025-06-21T08:57:20.660' AS DateTime), NULL, N'Andrea', N'Rossi', N'arossi@gmailx.com', N'+39333XX8899', CAST(N'2003-05-03' AS Date), N'Roma', N'Italia', N'Via del Corso 40')
INSERT [dbo].[Cliente] ([Id], [DataInserimento], [CodiceFiscale], [Nome], [Cognome], [Email], [Telefono], [DataNascita], [CittaResidenza], [NazioneResidenza], [IndirizzoResidenza]) VALUES (2, CAST(N'2024-10-15T00:00:00.000' AS DateTime), N'1f6432a7e3c14611', N'Matteo', N'Gallo', N'user1@example.com', N'+39333XX8899', CAST(N'1987-03-14' AS Date), N'Napoli', N'Italia', N'Via UojYQHVyVX 25')
INSERT [dbo].[Cliente] ([Id], [DataInserimento], [CodiceFiscale], [Nome], [Cognome], [Email], [Telefono], [DataNascita], [CittaResidenza], [NazioneResidenza], [IndirizzoResidenza]) VALUES (3, CAST(N'2023-09-29T00:00:00.000' AS DateTime), N'd41b748ea0004239', N'Marco', N'Bianchi', N'user2@example.com', N'+39333XX8899', CAST(N'1994-10-11' AS Date), N'Napoli', N'Italia', N'Via SCHBpZflUp 38')
INSERT [dbo].[Cliente] ([Id], [DataInserimento], [CodiceFiscale], [Nome], [Cognome], [Email], [Telefono], [DataNascita], [CittaResidenza], [NazioneResidenza], [IndirizzoResidenza]) VALUES (4, CAST(N'2024-11-14T00:00:00.000' AS DateTime), N'5f267131c9cc486b', N'Matteo', N'Ferrari', N'user3@example.com', N'+39333XX8899', CAST(N'1983-06-22' AS Date), N'Napoli', N'Italia', N'Via HWycxkrGkO 67')
INSERT [dbo].[Cliente] ([Id], [DataInserimento], [CodiceFiscale], [Nome], [Cognome], [Email], [Telefono], [DataNascita], [CittaResidenza], [NazioneResidenza], [IndirizzoResidenza]) VALUES (5, CAST(N'2024-03-02T00:00:00.000' AS DateTime), N'ae43c0c081924160', N'Chiara', N'Romano', N'user4@example.com', N'+39333XX8899', CAST(N'1992-03-14' AS Date), N'Bologna', N'Italia', N'Via ZmoEjnJmQE 26')
INSERT [dbo].[Cliente] ([Id], [DataInserimento], [CodiceFiscale], [Nome], [Cognome], [Email], [Telefono], [DataNascita], [CittaResidenza], [NazioneResidenza], [IndirizzoResidenza]) VALUES (6, CAST(N'2024-01-08T00:00:00.000' AS DateTime), N'd338698df37942f9', N'Marco', N'Russo', N'user5@example.com', N'+39333XX8899', CAST(N'1996-06-22' AS Date), N'Firenze', N'Italia', N'Via VVcJTVNgVd 24')
INSERT [dbo].[Cliente] ([Id], [DataInserimento], [CodiceFiscale], [Nome], [Cognome], [Email], [Telefono], [DataNascita], [CittaResidenza], [NazioneResidenza], [IndirizzoResidenza]) VALUES (7, CAST(N'2023-03-10T00:00:00.000' AS DateTime), N'8036cdd681104095', N'Francesca', N'Costa', N'user6@example.com', N'+39333XX8899', CAST(N'1968-05-03' AS Date), N'Torino', N'Italia', N'Via lxQrgbcoEw 40')
INSERT [dbo].[Cliente] ([Id], [DataInserimento], [CodiceFiscale], [Nome], [Cognome], [Email], [Telefono], [DataNascita], [CittaResidenza], [NazioneResidenza], [IndirizzoResidenza]) VALUES (8, CAST(N'2024-09-22T00:00:00.000' AS DateTime), N'f78a3caab1844928', N'Alessandro', N'Ferrari', N'user7@example.com', N'+39333XX8899', CAST(N'1968-07-15' AS Date), N'Genova', N'Italia', N'Via pxwlzjvhSk 47')
INSERT [dbo].[Cliente] ([Id], [DataInserimento], [CodiceFiscale], [Nome], [Cognome], [Email], [Telefono], [DataNascita], [CittaResidenza], [NazioneResidenza], [IndirizzoResidenza]) VALUES (9, CAST(N'2023-10-26T00:00:00.000' AS DateTime), N'034d338d29e54085', N'Giulia', N'Rossi', N'user8@example.com', N'+39333XX8899', CAST(N'1983-12-02' AS Date), N'Bologna', N'Italia', N'Via xiWpCiymCP 61')
INSERT [dbo].[Cliente] ([Id], [DataInserimento], [CodiceFiscale], [Nome], [Cognome], [Email], [Telefono], [DataNascita], [CittaResidenza], [NazioneResidenza], [IndirizzoResidenza]) VALUES (10, CAST(N'2024-12-13T00:00:00.000' AS DateTime), N'466da65607a94cc2', N'Luca', N'Gallo', N'user9@example.com', N'+39333XX8899', CAST(N'1976-12-18' AS Date), N'Napoli', N'Italia', N'Via rOaslcPGuf 80')
INSERT [dbo].[Cliente] ([Id], [DataInserimento], [CodiceFiscale], [Nome], [Cognome], [Email], [Telefono], [DataNascita], [CittaResidenza], [NazioneResidenza], [IndirizzoResidenza]) VALUES (11, CAST(N'2024-04-17T00:00:00.000' AS DateTime), N'5449269af9cf467b', N'Alessandro', N'Gallo', N'user10@example.com', N'+39333XX8899', CAST(N'1988-08-03' AS Date), N'Roma', N'Italia', N'Via MuJYCORwIi 84')
INSERT [dbo].[Cliente] ([Id], [DataInserimento], [CodiceFiscale], [Nome], [Cognome], [Email], [Telefono], [DataNascita], [CittaResidenza], [NazioneResidenza], [IndirizzoResidenza]) VALUES (12, CAST(N'2024-08-16T00:00:00.000' AS DateTime), N'9a92db1deff64c55', N'Sara', N'Gallo', N'user11@example.com', N'+39333XX8899', CAST(N'1996-08-07' AS Date), N'Firenze', N'Italia', N'Via SASaBzZqdm 52')
INSERT [dbo].[Cliente] ([Id], [DataInserimento], [CodiceFiscale], [Nome], [Cognome], [Email], [Telefono], [DataNascita], [CittaResidenza], [NazioneResidenza], [IndirizzoResidenza]) VALUES (13, CAST(N'2024-04-09T00:00:00.000' AS DateTime), N'8169f67f52244461', N'Chiara', N'Russo', N'user12@example.com', N'+39333XX8899', CAST(N'1967-05-04' AS Date), N'Palermo', N'Italia', N'Via STwGKuxMcp 34')
INSERT [dbo].[Cliente] ([Id], [DataInserimento], [CodiceFiscale], [Nome], [Cognome], [Email], [Telefono], [DataNascita], [CittaResidenza], [NazioneResidenza], [IndirizzoResidenza]) VALUES (14, CAST(N'2024-01-15T00:00:00.000' AS DateTime), N'4911ca651e2c41ab', N'Chiara', N'Rossi', N'user13@example.com', N'+39333XX8899', CAST(N'1960-01-11' AS Date), N'Genova', N'Italia', N'Via QiDsiGSTzx 17')
INSERT [dbo].[Cliente] ([Id], [DataInserimento], [CodiceFiscale], [Nome], [Cognome], [Email], [Telefono], [DataNascita], [CittaResidenza], [NazioneResidenza], [IndirizzoResidenza]) VALUES (15, CAST(N'2023-01-13T00:00:00.000' AS DateTime), N'3729bae8c82f4d0a', N'Marco', N'Esposito', N'user14@example.com', N'+39333XX8899', CAST(N'1985-11-18' AS Date), N'Palermo', N'Italia', N'Via SYdEwqBQiM 60')
INSERT [dbo].[Cliente] ([Id], [DataInserimento], [CodiceFiscale], [Nome], [Cognome], [Email], [Telefono], [DataNascita], [CittaResidenza], [NazioneResidenza], [IndirizzoResidenza]) VALUES (16, CAST(N'2023-06-13T00:00:00.000' AS DateTime), N'0ee114973c424f42', N'Marco', N'Rossi', N'user15@example.com', N'+39333XX8899', CAST(N'1993-05-21' AS Date), N'Roma', N'Italia', N'Via xhPIggrfKS 3')
INSERT [dbo].[Cliente] ([Id], [DataInserimento], [CodiceFiscale], [Nome], [Cognome], [Email], [Telefono], [DataNascita], [CittaResidenza], [NazioneResidenza], [IndirizzoResidenza]) VALUES (17, CAST(N'2023-06-12T00:00:00.000' AS DateTime), N'922a19a34ab1496f', N'Alessandro', N'Romano', N'user16@example.com', N'+39333XX8899', CAST(N'2004-08-20' AS Date), N'Torino', N'Italia', N'Via EXJkjASrMI 98')
INSERT [dbo].[Cliente] ([Id], [DataInserimento], [CodiceFiscale], [Nome], [Cognome], [Email], [Telefono], [DataNascita], [CittaResidenza], [NazioneResidenza], [IndirizzoResidenza]) VALUES (18, CAST(N'2023-12-22T00:00:00.000' AS DateTime), N'f0b57f86321e4c81', N'Luca', N'Gallo', N'user17@example.com', N'+39333XX8899', CAST(N'1960-11-19' AS Date), N'Napoli', N'Italia', N'Via vsBeWlECqV 42')
INSERT [dbo].[Cliente] ([Id], [DataInserimento], [CodiceFiscale], [Nome], [Cognome], [Email], [Telefono], [DataNascita], [CittaResidenza], [NazioneResidenza], [IndirizzoResidenza]) VALUES (19, CAST(N'2024-06-03T00:00:00.000' AS DateTime), N'ad31aaaaa7ca458e', N'Matteo', N'Esposito', N'user18@example.com', N'+39333XX8899', CAST(N'1966-09-26' AS Date), N'Palermo', N'Italia', N'Via AOaFVeHvqr 89')
INSERT [dbo].[Cliente] ([Id], [DataInserimento], [CodiceFiscale], [Nome], [Cognome], [Email], [Telefono], [DataNascita], [CittaResidenza], [NazioneResidenza], [IndirizzoResidenza]) VALUES (20, CAST(N'2023-02-25T00:00:00.000' AS DateTime), N'01d687c21b3d4360', N'Marco', N'Romano', N'user19@example.com', N'+39333XX8899', CAST(N'1981-09-02' AS Date), N'Napoli', N'Italia', N'Via UKEWGCeqaP 32')
INSERT [dbo].[Cliente] ([Id], [DataInserimento], [CodiceFiscale], [Nome], [Cognome], [Email], [Telefono], [DataNascita], [CittaResidenza], [NazioneResidenza], [IndirizzoResidenza]) VALUES (21, CAST(N'2024-07-31T00:00:00.000' AS DateTime), N'57765ef9f0ff48c6', N'Chiara', N'Bianchi', N'user20@example.com', N'+39333XX8899', CAST(N'1992-09-16' AS Date), N'Bologna', N'Italia', N'Via MYinPfZmbf 13')
SET IDENTITY_INSERT [dbo].[Cliente] OFF
GO
SET IDENTITY_INSERT [dbo].[OrariTratte] ON 

INSERT [dbo].[OrariTratte] ([Id], [IdTratta], [DataPartenza], [DataArrivo], [Prezzo]) VALUES (1, 1, CAST(N'2025-07-06T09:49:27.007' AS DateTime), CAST(N'2025-07-06T11:19:27.007' AS DateTime), CAST(32.20 AS Decimal(18, 2)))
INSERT [dbo].[OrariTratte] ([Id], [IdTratta], [DataPartenza], [DataArrivo], [Prezzo]) VALUES (2, 2, CAST(N'2025-07-06T14:49:59.230' AS DateTime), CAST(N'2025-07-07T08:49:59.230' AS DateTime), CAST(124.00 AS Decimal(18, 2)))
INSERT [dbo].[OrariTratte] ([Id], [IdTratta], [DataPartenza], [DataArrivo], [Prezzo]) VALUES (3, 1, CAST(N'2025-07-11T05:54:33.283' AS DateTime), CAST(N'2025-07-11T23:54:33.283' AS DateTime), CAST(430.00 AS Decimal(18, 2)))
INSERT [dbo].[OrariTratte] ([Id], [IdTratta], [DataPartenza], [DataArrivo], [Prezzo]) VALUES (4, 3, CAST(N'2025-07-11T06:01:05.237' AS DateTime), CAST(N'2025-07-11T10:01:05.237' AS DateTime), CAST(75.00 AS Decimal(18, 2)))
INSERT [dbo].[OrariTratte] ([Id], [IdTratta], [DataPartenza], [DataArrivo], [Prezzo]) VALUES (5, 1, CAST(N'2025-07-19T10:16:00.000' AS DateTime), CAST(N'2025-07-19T12:16:00.000' AS DateTime), CAST(114.88 AS Decimal(18, 2)))
INSERT [dbo].[OrariTratte] ([Id], [IdTratta], [DataPartenza], [DataArrivo], [Prezzo]) VALUES (6, 2, CAST(N'2025-02-24T05:38:08.000' AS DateTime), CAST(N'2025-02-24T06:38:08.000' AS DateTime), CAST(105.14 AS Decimal(18, 2)))
INSERT [dbo].[OrariTratte] ([Id], [IdTratta], [DataPartenza], [DataArrivo], [Prezzo]) VALUES (7, 3, CAST(N'2025-01-01T03:45:17.000' AS DateTime), CAST(N'2025-01-01T07:45:17.000' AS DateTime), CAST(73.95 AS Decimal(18, 2)))
INSERT [dbo].[OrariTratte] ([Id], [IdTratta], [DataPartenza], [DataArrivo], [Prezzo]) VALUES (25, 1, CAST(N'2025-07-19T10:16:00.000' AS DateTime), CAST(N'2025-07-19T12:16:00.000' AS DateTime), CAST(114.88 AS Decimal(18, 2)))
INSERT [dbo].[OrariTratte] ([Id], [IdTratta], [DataPartenza], [DataArrivo], [Prezzo]) VALUES (26, 2, CAST(N'2025-02-24T05:38:08.000' AS DateTime), CAST(N'2025-02-24T06:38:08.000' AS DateTime), CAST(105.14 AS Decimal(18, 2)))
INSERT [dbo].[OrariTratte] ([Id], [IdTratta], [DataPartenza], [DataArrivo], [Prezzo]) VALUES (27, 3, CAST(N'2025-01-01T03:45:17.000' AS DateTime), CAST(N'2025-01-01T07:45:17.000' AS DateTime), CAST(73.95 AS Decimal(18, 2)))
INSERT [dbo].[OrariTratte] ([Id], [IdTratta], [DataPartenza], [DataArrivo], [Prezzo]) VALUES (45, 24, CAST(N'2025-07-13T07:07:50.263' AS DateTime), CAST(N'2025-07-15T07:07:50.263' AS DateTime), CAST(35.00 AS Decimal(18, 2)))
INSERT [dbo].[OrariTratte] ([Id], [IdTratta], [DataPartenza], [DataArrivo], [Prezzo]) VALUES (46, 24, CAST(N'2025-07-16T07:07:50.270' AS DateTime), CAST(N'2025-07-18T07:07:50.270' AS DateTime), CAST(29.00 AS Decimal(18, 2)))
INSERT [dbo].[OrariTratte] ([Id], [IdTratta], [DataPartenza], [DataArrivo], [Prezzo]) VALUES (47, 25, CAST(N'2025-07-13T07:11:50.657' AS DateTime), CAST(N'2025-07-15T07:11:50.657' AS DateTime), CAST(17.50 AS Decimal(18, 2)))
INSERT [dbo].[OrariTratte] ([Id], [IdTratta], [DataPartenza], [DataArrivo], [Prezzo]) VALUES (48, 25, CAST(N'2025-07-13T07:11:50.657' AS DateTime), CAST(N'2025-07-15T07:11:50.657' AS DateTime), CAST(16.00 AS Decimal(18, 2)))
INSERT [dbo].[OrariTratte] ([Id], [IdTratta], [DataPartenza], [DataArrivo], [Prezzo]) VALUES (49, 26, CAST(N'2025-07-14T07:12:41.287' AS DateTime), CAST(N'2025-07-14T07:38:41.287' AS DateTime), CAST(2.00 AS Decimal(18, 2)))
INSERT [dbo].[OrariTratte] ([Id], [IdTratta], [DataPartenza], [DataArrivo], [Prezzo]) VALUES (50, 26, CAST(N'2025-07-15T07:12:41.287' AS DateTime), CAST(N'2025-07-15T07:38:41.287' AS DateTime), CAST(2.00 AS Decimal(18, 2)))
INSERT [dbo].[OrariTratte] ([Id], [IdTratta], [DataPartenza], [DataArrivo], [Prezzo]) VALUES (51, 27, CAST(N'2025-08-02T07:13:20.913' AS DateTime), CAST(N'2025-08-02T10:03:20.913' AS DateTime), CAST(20.00 AS Decimal(18, 2)))
INSERT [dbo].[OrariTratte] ([Id], [IdTratta], [DataPartenza], [DataArrivo], [Prezzo]) VALUES (52, 27, CAST(N'2025-08-06T07:13:20.913' AS DateTime), CAST(N'2025-08-06T10:03:20.913' AS DateTime), CAST(17.00 AS Decimal(18, 2)))
INSERT [dbo].[OrariTratte] ([Id], [IdTratta], [DataPartenza], [DataArrivo], [Prezzo]) VALUES (53, 28, CAST(N'2025-07-30T07:14:43.067' AS DateTime), CAST(N'2025-07-30T21:14:43.067' AS DateTime), CAST(130.00 AS Decimal(18, 2)))
INSERT [dbo].[OrariTratte] ([Id], [IdTratta], [DataPartenza], [DataArrivo], [Prezzo]) VALUES (54, 28, CAST(N'2025-08-01T07:14:43.067' AS DateTime), CAST(N'2025-08-01T21:14:43.067' AS DateTime), CAST(130.00 AS Decimal(18, 2)))
INSERT [dbo].[OrariTratte] ([Id], [IdTratta], [DataPartenza], [DataArrivo], [Prezzo]) VALUES (55, 29, CAST(N'2025-07-24T07:15:10.470' AS DateTime), CAST(N'2025-07-24T09:15:10.470' AS DateTime), CAST(70.00 AS Decimal(18, 2)))
INSERT [dbo].[OrariTratte] ([Id], [IdTratta], [DataPartenza], [DataArrivo], [Prezzo]) VALUES (56, 29, CAST(N'2025-07-25T07:15:10.470' AS DateTime), CAST(N'2025-07-25T09:15:10.470' AS DateTime), CAST(112.00 AS Decimal(18, 2)))
INSERT [dbo].[OrariTratte] ([Id], [IdTratta], [DataPartenza], [DataArrivo], [Prezzo]) VALUES (57, 30, CAST(N'2025-07-17T07:15:39.177' AS DateTime), CAST(N'2025-07-17T10:15:39.177' AS DateTime), CAST(150.00 AS Decimal(18, 2)))
INSERT [dbo].[OrariTratte] ([Id], [IdTratta], [DataPartenza], [DataArrivo], [Prezzo]) VALUES (58, 30, CAST(N'2025-07-18T07:15:39.177' AS DateTime), CAST(N'2025-07-18T10:15:39.177' AS DateTime), CAST(210.00 AS Decimal(18, 2)))
INSERT [dbo].[OrariTratte] ([Id], [IdTratta], [DataPartenza], [DataArrivo], [Prezzo]) VALUES (59, 31, CAST(N'2025-07-17T07:16:20.190' AS DateTime), CAST(N'2025-07-17T09:16:20.190' AS DateTime), CAST(7.00 AS Decimal(18, 2)))
INSERT [dbo].[OrariTratte] ([Id], [IdTratta], [DataPartenza], [DataArrivo], [Prezzo]) VALUES (60, 31, CAST(N'2025-07-18T07:16:20.190' AS DateTime), CAST(N'2025-07-18T09:16:20.190' AS DateTime), CAST(7.00 AS Decimal(18, 2)))
INSERT [dbo].[OrariTratte] ([Id], [IdTratta], [DataPartenza], [DataArrivo], [Prezzo]) VALUES (61, 32, CAST(N'2025-07-22T07:16:43.140' AS DateTime), CAST(N'2025-07-22T09:16:43.140' AS DateTime), CAST(15.00 AS Decimal(18, 2)))
INSERT [dbo].[OrariTratte] ([Id], [IdTratta], [DataPartenza], [DataArrivo], [Prezzo]) VALUES (62, 32, CAST(N'2025-07-25T07:16:43.140' AS DateTime), CAST(N'2025-07-25T09:16:43.140' AS DateTime), CAST(15.00 AS Decimal(18, 2)))
INSERT [dbo].[OrariTratte] ([Id], [IdTratta], [DataPartenza], [DataArrivo], [Prezzo]) VALUES (63, 33, CAST(N'2025-07-22T07:17:08.633' AS DateTime), CAST(N'2025-07-22T21:17:08.633' AS DateTime), CAST(110.00 AS Decimal(18, 2)))
INSERT [dbo].[OrariTratte] ([Id], [IdTratta], [DataPartenza], [DataArrivo], [Prezzo]) VALUES (64, 33, CAST(N'2025-07-25T07:17:08.633' AS DateTime), CAST(N'2025-07-25T21:17:08.633' AS DateTime), CAST(138.00 AS Decimal(18, 2)))
INSERT [dbo].[OrariTratte] ([Id], [IdTratta], [DataPartenza], [DataArrivo], [Prezzo]) VALUES (65, 34, CAST(N'2025-07-21T07:17:32.470' AS DateTime), CAST(N'2025-07-21T08:17:32.470' AS DateTime), CAST(2.00 AS Decimal(18, 2)))
INSERT [dbo].[OrariTratte] ([Id], [IdTratta], [DataPartenza], [DataArrivo], [Prezzo]) VALUES (66, 34, CAST(N'2025-07-22T07:17:32.470' AS DateTime), CAST(N'2025-07-22T08:17:32.470' AS DateTime), CAST(2.00 AS Decimal(18, 2)))
INSERT [dbo].[OrariTratte] ([Id], [IdTratta], [DataPartenza], [DataArrivo], [Prezzo]) VALUES (67, 35, CAST(N'2025-07-21T07:17:54.960' AS DateTime), CAST(N'2025-07-21T08:17:54.960' AS DateTime), CAST(214.00 AS Decimal(18, 2)))
INSERT [dbo].[OrariTratte] ([Id], [IdTratta], [DataPartenza], [DataArrivo], [Prezzo]) VALUES (68, 35, CAST(N'2025-07-22T07:17:54.960' AS DateTime), CAST(N'2025-07-22T08:17:54.960' AS DateTime), CAST(200.00 AS Decimal(18, 2)))
INSERT [dbo].[OrariTratte] ([Id], [IdTratta], [DataPartenza], [DataArrivo], [Prezzo]) VALUES (69, 36, CAST(N'2025-07-19T07:18:15.097' AS DateTime), CAST(N'2025-07-19T08:18:15.097' AS DateTime), CAST(3.00 AS Decimal(18, 2)))
INSERT [dbo].[OrariTratte] ([Id], [IdTratta], [DataPartenza], [DataArrivo], [Prezzo]) VALUES (70, 36, CAST(N'2025-07-20T07:18:15.097' AS DateTime), CAST(N'2025-07-20T08:18:15.097' AS DateTime), CAST(3.50 AS Decimal(18, 2)))
INSERT [dbo].[OrariTratte] ([Id], [IdTratta], [DataPartenza], [DataArrivo], [Prezzo]) VALUES (71, 37, CAST(N'2025-07-22T07:18:44.573' AS DateTime), CAST(N'2025-07-22T09:18:44.573' AS DateTime), CAST(98.00 AS Decimal(18, 2)))
INSERT [dbo].[OrariTratte] ([Id], [IdTratta], [DataPartenza], [DataArrivo], [Prezzo]) VALUES (72, 37, CAST(N'2025-07-26T07:18:44.573' AS DateTime), CAST(N'2025-07-26T09:18:44.573' AS DateTime), CAST(94.00 AS Decimal(18, 2)))
INSERT [dbo].[OrariTratte] ([Id], [IdTratta], [DataPartenza], [DataArrivo], [Prezzo]) VALUES (73, 38, CAST(N'2025-07-22T07:19:10.823' AS DateTime), CAST(N'2025-07-22T08:19:10.823' AS DateTime), CAST(68.00 AS Decimal(18, 2)))
INSERT [dbo].[OrariTratte] ([Id], [IdTratta], [DataPartenza], [DataArrivo], [Prezzo]) VALUES (74, 38, CAST(N'2025-07-26T07:19:10.823' AS DateTime), CAST(N'2025-07-26T08:19:10.823' AS DateTime), CAST(91.00 AS Decimal(18, 2)))
INSERT [dbo].[OrariTratte] ([Id], [IdTratta], [DataPartenza], [DataArrivo], [Prezzo]) VALUES (75, 39, CAST(N'2025-07-17T07:19:41.343' AS DateTime), CAST(N'2025-07-17T18:19:41.343' AS DateTime), CAST(90.00 AS Decimal(18, 2)))
INSERT [dbo].[OrariTratte] ([Id], [IdTratta], [DataPartenza], [DataArrivo], [Prezzo]) VALUES (76, 39, CAST(N'2025-07-23T07:19:41.343' AS DateTime), CAST(N'2025-07-23T18:19:41.343' AS DateTime), CAST(90.00 AS Decimal(18, 2)))
INSERT [dbo].[OrariTratte] ([Id], [IdTratta], [DataPartenza], [DataArrivo], [Prezzo]) VALUES (77, 40, CAST(N'2025-07-17T07:20:00.563' AS DateTime), CAST(N'2025-07-17T08:20:00.563' AS DateTime), CAST(15.00 AS Decimal(18, 2)))
INSERT [dbo].[OrariTratte] ([Id], [IdTratta], [DataPartenza], [DataArrivo], [Prezzo]) VALUES (78, 40, CAST(N'2025-07-23T07:20:00.563' AS DateTime), CAST(N'2025-07-23T08:20:00.563' AS DateTime), CAST(15.00 AS Decimal(18, 2)))
INSERT [dbo].[OrariTratte] ([Id], [IdTratta], [DataPartenza], [DataArrivo], [Prezzo]) VALUES (79, 41, CAST(N'2025-07-20T07:20:19.847' AS DateTime), CAST(N'2025-07-20T17:20:19.847' AS DateTime), CAST(150.00 AS Decimal(18, 2)))
INSERT [dbo].[OrariTratte] ([Id], [IdTratta], [DataPartenza], [DataArrivo], [Prezzo]) VALUES (80, 41, CAST(N'2025-07-23T07:20:19.847' AS DateTime), CAST(N'2025-07-23T17:20:19.847' AS DateTime), CAST(150.00 AS Decimal(18, 2)))
INSERT [dbo].[OrariTratte] ([Id], [IdTratta], [DataPartenza], [DataArrivo], [Prezzo]) VALUES (81, 42, CAST(N'2025-07-20T07:20:35.923' AS DateTime), CAST(N'2025-07-20T09:20:35.923' AS DateTime), CAST(160.00 AS Decimal(18, 2)))
INSERT [dbo].[OrariTratte] ([Id], [IdTratta], [DataPartenza], [DataArrivo], [Prezzo]) VALUES (82, 42, CAST(N'2025-07-23T07:20:35.923' AS DateTime), CAST(N'2025-07-23T09:20:35.923' AS DateTime), CAST(150.00 AS Decimal(18, 2)))
INSERT [dbo].[OrariTratte] ([Id], [IdTratta], [DataPartenza], [DataArrivo], [Prezzo]) VALUES (83, 43, CAST(N'2025-07-18T07:21:00.660' AS DateTime), CAST(N'2025-07-18T12:21:00.660' AS DateTime), CAST(25.00 AS Decimal(18, 2)))
INSERT [dbo].[OrariTratte] ([Id], [IdTratta], [DataPartenza], [DataArrivo], [Prezzo]) VALUES (84, 43, CAST(N'2025-07-26T07:21:00.660' AS DateTime), CAST(N'2025-07-26T12:21:00.660' AS DateTime), CAST(25.00 AS Decimal(18, 2)))
SET IDENTITY_INSERT [dbo].[OrariTratte] OFF
GO
SET IDENTITY_INSERT [dbo].[MezzoTrasporto] ON 

INSERT [dbo].[MezzoTrasporto] ([Id], [Descrizione]) VALUES (1, N'Treno')
INSERT [dbo].[MezzoTrasporto] ([Id], [Descrizione]) VALUES (2, N'Pullman')
INSERT [dbo].[MezzoTrasporto] ([Id], [Descrizione]) VALUES (3, N'Aereo')
INSERT [dbo].[MezzoTrasporto] ([Id], [Descrizione]) VALUES (4, N'Auto')
INSERT [dbo].[MezzoTrasporto] ([Id], [Descrizione]) VALUES (5, N'Taxi')
INSERT [dbo].[MezzoTrasporto] ([Id], [Descrizione]) VALUES (6, N'Metro')
INSERT [dbo].[MezzoTrasporto] ([Id], [Descrizione]) VALUES (7, N'Traghetto')
SET IDENTITY_INSERT [dbo].[MezzoTrasporto] OFF
GO
SET IDENTITY_INSERT [dbo].[Tratta] ON 

INSERT [dbo].[Tratta] ([Id], [IdMezzoTrasporto], [CittaPartenza], [CittaArrivo], [IndirizzoPartenza], [IndirizzoArrivo]) VALUES (1, 1, N'Roma', N'Civitavecchia', N'Piazzale Stazione Termini 1', N'Molo 1')
INSERT [dbo].[Tratta] ([Id], [IdMezzoTrasporto], [CittaPartenza], [CittaArrivo], [IndirizzoPartenza], [IndirizzoArrivo]) VALUES (2, 7, N'Civitavecchia', N'Cagliari', N'Molo 1', N'Molo 7')
INSERT [dbo].[Tratta] ([Id], [IdMezzoTrasporto], [CittaPartenza], [CittaArrivo], [IndirizzoPartenza], [IndirizzoArrivo]) VALUES (3, 1, N'Roma', N'Milano', N'Piazza dei Cinquecento', N'Piazzale stazione centrale')
INSERT [dbo].[Tratta] ([Id], [IdMezzoTrasporto], [CittaPartenza], [CittaArrivo], [IndirizzoPartenza], [IndirizzoArrivo]) VALUES (24, 3, N'Milano', N'Torino', N'Corso Magenta 25', N'Viale Emanuele Filiberto 33')
INSERT [dbo].[Tratta] ([Id], [IdMezzoTrasporto], [CittaPartenza], [CittaArrivo], [IndirizzoPartenza], [IndirizzoArrivo]) VALUES (25, 1, N'Roma', N'Firenze', N'Via XX Settembre 29', N'Piazza Caravaggio 92')
INSERT [dbo].[Tratta] ([Id], [IdMezzoTrasporto], [CittaPartenza], [CittaArrivo], [IndirizzoPartenza], [IndirizzoArrivo]) VALUES (26, 1, N'Firenze', N'Firenze', N'Piazza Caravaggio 92', N'Piazza Biffi 84')
INSERT [dbo].[Tratta] ([Id], [IdMezzoTrasporto], [CittaPartenza], [CittaArrivo], [IndirizzoPartenza], [IndirizzoArrivo]) VALUES (27, 2, N'Roma', N'Napoli', N'Via XX Settembre 29', N'Via Chiaia 90')
INSERT [dbo].[Tratta] ([Id], [IdMezzoTrasporto], [CittaPartenza], [CittaArrivo], [IndirizzoPartenza], [IndirizzoArrivo]) VALUES (28, 1, N'Palermo', N'Torino', N'Piazza Zama 189', N'Via Castello 12')
INSERT [dbo].[Tratta] ([Id], [IdMezzoTrasporto], [CittaPartenza], [CittaArrivo], [IndirizzoPartenza], [IndirizzoArrivo]) VALUES (29, 3, N'Roma', N'Napoli', N'Piazzale Stazione Termini', N'Via Donati 969')
INSERT [dbo].[Tratta] ([Id], [IdMezzoTrasporto], [CittaPartenza], [CittaArrivo], [IndirizzoPartenza], [IndirizzoArrivo]) VALUES (30, 3, N'Milano', N'Firenze', N'Corso Magenta 25', N'Via Ludovisi 2')
INSERT [dbo].[Tratta] ([Id], [IdMezzoTrasporto], [CittaPartenza], [CittaArrivo], [IndirizzoPartenza], [IndirizzoArrivo]) VALUES (31, 1, N'Milano', N'Torino', N'Piazzale Asia 23', N'Via Castello 12')
INSERT [dbo].[Tratta] ([Id], [IdMezzoTrasporto], [CittaPartenza], [CittaArrivo], [IndirizzoPartenza], [IndirizzoArrivo]) VALUES (32, 1, N'Genova', N'Torino', N'Largo Doria 88', N'Via Castello 12')
INSERT [dbo].[Tratta] ([Id], [IdMezzoTrasporto], [CittaPartenza], [CittaArrivo], [IndirizzoPartenza], [IndirizzoArrivo]) VALUES (33, 1, N'Palermo', N'Torino', N'Via Roma 82', N'Via Castello 12')
INSERT [dbo].[Tratta] ([Id], [IdMezzoTrasporto], [CittaPartenza], [CittaArrivo], [IndirizzoPartenza], [IndirizzoArrivo]) VALUES (34, 2, N'Firenze', N'Firenze', N'Via Gigli 357', N'Via Antonelli 78')
INSERT [dbo].[Tratta] ([Id], [IdMezzoTrasporto], [CittaPartenza], [CittaArrivo], [IndirizzoPartenza], [IndirizzoArrivo]) VALUES (35, 3, N'Bologna', N'Firenze', N'Piazza Zamorani', N'Via Gigli 357')
INSERT [dbo].[Tratta] ([Id], [IdMezzoTrasporto], [CittaPartenza], [CittaArrivo], [IndirizzoPartenza], [IndirizzoArrivo]) VALUES (36, 1, N'Torino', N'Torino', N'Via Castello 12', N'Via Roma 88')
INSERT [dbo].[Tratta] ([Id], [IdMezzoTrasporto], [CittaPartenza], [CittaArrivo], [IndirizzoPartenza], [IndirizzoArrivo]) VALUES (37, 3, N'Genova', N'Napoli', N'Corso Varese 39', N'Via Montini 92')
INSERT [dbo].[Tratta] ([Id], [IdMezzoTrasporto], [CittaPartenza], [CittaArrivo], [IndirizzoPartenza], [IndirizzoArrivo]) VALUES (38, 3, N'Roma', N'Napoli', N'Via Giolitti 71', N'Via Chiaia 11')
INSERT [dbo].[Tratta] ([Id], [IdMezzoTrasporto], [CittaPartenza], [CittaArrivo], [IndirizzoPartenza], [IndirizzoArrivo]) VALUES (39, 1, N'Genova', N'Palermo', N'Largo Doria 88', N'Via Roma 82')
INSERT [dbo].[Tratta] ([Id], [IdMezzoTrasporto], [CittaPartenza], [CittaArrivo], [IndirizzoPartenza], [IndirizzoArrivo]) VALUES (40, 1, N'Torino', N'Genova', N'Via Agnelli 23', N'Largo Doria 88')
INSERT [dbo].[Tratta] ([Id], [IdMezzoTrasporto], [CittaPartenza], [CittaArrivo], [IndirizzoPartenza], [IndirizzoArrivo]) VALUES (41, 1, N'Palermo', N'Milano', N'Via Roma 82', N'Corso Buenos Aires 30')
INSERT [dbo].[Tratta] ([Id], [IdMezzoTrasporto], [CittaPartenza], [CittaArrivo], [IndirizzoPartenza], [IndirizzoArrivo]) VALUES (42, 3, N'Bologna', N'Palermo', N'Corso Vittorio Emanuele 12', N'Via Roma 82')
INSERT [dbo].[Tratta] ([Id], [IdMezzoTrasporto], [CittaPartenza], [CittaArrivo], [IndirizzoPartenza], [IndirizzoArrivo]) VALUES (43, 2, N'Roma', N'Bologna', N'Via Giolitti 64', N'Via Giorgi 77')
SET IDENTITY_INSERT [dbo].[Tratta] OFF
GO
SET IDENTITY_INSERT [dbo].[Viaggio] ON 

INSERT [dbo].[Viaggio] ([Id], [IdCliente], [CodiceViaggio], [DataPrenotazione]) VALUES (3, 1, N'488B3192-99EF-42C4-B76E-100EA6EE4E00', CAST(N'2025-07-06T09:28:39.767' AS DateTime))
INSERT [dbo].[Viaggio] ([Id], [IdCliente], [CodiceViaggio], [DataPrenotazione]) VALUES (44, 1, N'f9f174bf-1d62-49a1-b690-eae9e564dce7', CAST(N'2025-07-03T14:55:00.000' AS DateTime))
INSERT [dbo].[Viaggio] ([Id], [IdCliente], [CodiceViaggio], [DataPrenotazione]) VALUES (45, 2, N'ec5c0001-3d2a-437f-8c82-9f33f0fdbfaa', CAST(N'2025-07-23T17:26:00.000' AS DateTime))
INSERT [dbo].[Viaggio] ([Id], [IdCliente], [CodiceViaggio], [DataPrenotazione]) VALUES (48, 5, N'90ddaf2b-8c89-41fa-9efa-2bf844db979b', CAST(N'2025-07-01T13:48:00.000' AS DateTime))
INSERT [dbo].[Viaggio] ([Id], [IdCliente], [CodiceViaggio], [DataPrenotazione]) VALUES (49, 5, N'cd7b4aa6-18f1-42c2-a5f7-713ca03000ef', CAST(N'2025-07-29T18:13:00.000' AS DateTime))
INSERT [dbo].[Viaggio] ([Id], [IdCliente], [CodiceViaggio], [DataPrenotazione]) VALUES (50, 7, N'590abcc5-3874-4301-9030-96b595b9bf01', CAST(N'2025-07-22T22:05:00.000' AS DateTime))
INSERT [dbo].[Viaggio] ([Id], [IdCliente], [CodiceViaggio], [DataPrenotazione]) VALUES (51, 8, N'fd6df718-b298-42d6-88eb-429effe2b786', CAST(N'2025-07-12T21:55:00.000' AS DateTime))
INSERT [dbo].[Viaggio] ([Id], [IdCliente], [CodiceViaggio], [DataPrenotazione]) VALUES (52, 9, N'8915a692-18a0-406a-818f-da7c74b81b52', CAST(N'2025-07-11T09:40:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[Viaggio] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_UQ_EMAIL]    Script Date: 13/07/2025 15:35:30 ******/
ALTER TABLE [dbo].[Cliente] ADD  CONSTRAINT [IX_UQ_EMAIL] UNIQUE NONCLUSTERED 
(
	[Email] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Cliente] ADD  CONSTRAINT [DF_Clienti_DataInserimento]  DEFAULT (getdate()) FOR [DataInserimento]
GO
ALTER TABLE [dbo].[Biglietto]  WITH CHECK ADD  CONSTRAINT [FK_Biglietto_OrariTratte] FOREIGN KEY([IdOrariTratte])
REFERENCES [dbo].[OrariTratte] ([Id])
GO
ALTER TABLE [dbo].[Biglietto] CHECK CONSTRAINT [FK_Biglietto_OrariTratte]
GO
ALTER TABLE [dbo].[Biglietto]  WITH CHECK ADD  CONSTRAINT [FK_Biglietto_Viaggio] FOREIGN KEY([IdViaggio])
REFERENCES [dbo].[Viaggio] ([Id])
GO
ALTER TABLE [dbo].[Biglietto] CHECK CONSTRAINT [FK_Biglietto_Viaggio]
GO
ALTER TABLE [dbo].[OrariTratte]  WITH CHECK ADD  CONSTRAINT [FK_OrariTratte_Tratta] FOREIGN KEY([IdTratta])
REFERENCES [dbo].[Tratta] ([Id])
GO
ALTER TABLE [dbo].[OrariTratte] CHECK CONSTRAINT [FK_OrariTratte_Tratta]
GO
ALTER TABLE [dbo].[Tratta]  WITH CHECK ADD  CONSTRAINT [FK_Tratta_MezzoTrasporto] FOREIGN KEY([IdMezzoTrasporto])
REFERENCES [dbo].[MezzoTrasporto] ([Id])
GO
ALTER TABLE [dbo].[Tratta] CHECK CONSTRAINT [FK_Tratta_MezzoTrasporto]
GO
ALTER TABLE [dbo].[Viaggio]  WITH CHECK ADD  CONSTRAINT [FK_Viaggio_Cliente] FOREIGN KEY([IdCliente])
REFERENCES [dbo].[Cliente] ([Id])
GO
ALTER TABLE [dbo].[Viaggio] CHECK CONSTRAINT [FK_Viaggio_Cliente]
GO


