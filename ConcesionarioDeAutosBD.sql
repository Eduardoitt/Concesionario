USE [ConsecionarioDeAutos]
GO
/****** Object:  Table [dbo].[Anio]    Script Date: 14/06/2020 11:34:00 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Anio](
	[IdAnio] [int] IDENTITY(1,1) NOT NULL,
	[Anio] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdAnio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Auto_Adiccionales]    Script Date: 14/06/2020 11:34:01 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Auto_Adiccionales](
	[IdAuto_Adic] [int] IDENTITY(1,1) NOT NULL,
	[IdAutos] [int] NOT NULL,
	[IdColor] [int] NOT NULL,
	[IdPerformance] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdAuto_Adic] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AutoExistencia]    Script Date: 14/06/2020 11:34:01 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AutoExistencia](
	[IdAutoExistencia] [int] IDENTITY(1,1) NOT NULL,
	[Cantidad] [int] NULL,
	[IdAutos] [int] NULL,
	[IdModelo] [int] NULL,
	[Fecha] [date] NULL,
	[IdSucursal] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdAutoExistencia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Autos]    Script Date: 14/06/2020 11:34:01 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Autos](
	[IdAutos] [int] IDENTITY(1,1) NOT NULL,
	[Marca] [varchar](25) NULL,
	[IdColor] [int] NULL,
	[IdModelo] [int] NULL,
	[IdAnio] [int] NULL,
	[Precio] [decimal](14, 4) NULL,
PRIMARY KEY CLUSTERED 
(
	[IdAutos] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Aval]    Script Date: 14/06/2020 11:34:01 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Aval](
	[IdAval] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NULL,
	[ApP] [varchar](30) NULL,
	[ApM] [varchar](30) NULL,
	[Telefono] [varchar](13) NULL,
PRIMARY KEY CLUSTERED 
(
	[IdAval] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BitacoraDePago]    Script Date: 14/06/2020 11:34:01 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BitacoraDePago](
	[id_Bitacora] [int] IDENTITY(1,1) NOT NULL,
	[FechaDePago] [date] NULL,
	[Abono] [decimal](14, 2) NULL,
	[PagoMinimo] [decimal](14, 2) NULL,
	[IdVentaAuto] [int] NULL,
	[Restante] [decimal](14, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_Bitacora] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cliente]    Script Date: 14/06/2020 11:34:01 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cliente](
	[IdCliente] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NULL,
	[ApP] [varchar](30) NULL,
	[ApM] [varchar](30) NULL,
	[Edad] [int] NULL,
	[FechaDeNacimiento] [date] NULL,
	[Sexo] [int] NULL,
	[RFC] [varchar](13) NULL,
	[Direccion] [varchar](50) NULL,
	[CP] [int] NULL,
	[Telefono] [varchar](13) NULL,
	[TelefonoCasa] [varchar](13) NULL,
	[Correo] [varchar](50) NULL,
	[IdAval] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdCliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Color]    Script Date: 14/06/2020 11:34:01 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Color](
	[IdColor] [int] IDENTITY(1,1) NOT NULL,
	[Color] [varchar](20) NULL,
	[Precio] [decimal](14, 4) NULL,
PRIMARY KEY CLUSTERED 
(
	[IdColor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Consecionario]    Script Date: 14/06/2020 11:34:01 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Consecionario](
	[IdConsecionario] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[IdConsecionario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DatosFinanciamiento]    Script Date: 14/06/2020 11:34:01 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DatosFinanciamiento](
	[IdDatosFinanciamiento] [int] IDENTITY(1,1) NOT NULL,
	[NombreEnTC] [varchar](100) NULL,
	[NoTarjetaC] [varchar](18) NULL,
	[IdMesExpiracion] [int] NULL,
	[IdFechaExpiracion] [int] NULL,
	[CVV] [varchar](3) NULL,
	[CPFacturacion] [int] NULL,
	[FechaPago] [date] NULL,
	[PrimerPago] [decimal](14, 2) NULL,
	[IdCliente] [int] NULL,
	[IdTiempoDePago] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdDatosFinanciamiento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DB_Errors]    Script Date: 14/06/2020 11:34:01 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DB_Errors](
	[ErrorID] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [varchar](100) NULL,
	[ErrorNumber] [int] NULL,
	[ErrorState] [int] NULL,
	[ErrorSeverity] [int] NULL,
	[ErrorLine] [int] NULL,
	[ErrorProcedure] [varchar](max) NULL,
	[ErrorMessage] [varchar](max) NULL,
	[ErrorDateTime] [smalldatetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[ErrorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Empleado]    Script Date: 14/06/2020 11:34:01 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Empleado](
	[IdEmpleado] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NULL,
	[ApP] [varchar](30) NULL,
	[ApM] [varchar](30) NULL,
	[Telefono] [varchar](13) NULL,
	[Correo] [varchar](50) NULL,
	[RFC] [varchar](13) NULL,
	[IdTipoEmpleado] [int] NULL,
	[IdUsuarioLogin] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdEmpleado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EmpleadoSucursal]    Script Date: 14/06/2020 11:34:01 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmpleadoSucursal](
	[IdEmpleadoSucursal] [int] IDENTITY(1,1) NOT NULL,
	[IdSucursal] [int] NOT NULL,
	[IdEmpleado] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdEmpleadoSucursal] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FechaExpiracion]    Script Date: 14/06/2020 11:34:01 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FechaExpiracion](
	[IdFechaExpiracion] [int] IDENTITY(1,1) NOT NULL,
	[FechaExpiracion] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdFechaExpiracion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MesExpiracion]    Script Date: 14/06/2020 11:34:01 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MesExpiracion](
	[IdMesExpiracion] [int] IDENTITY(1,1) NOT NULL,
	[MesExpiracion] [varchar](2) NULL,
PRIMARY KEY CLUSTERED 
(
	[IdMesExpiracion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Modelo]    Script Date: 14/06/2020 11:34:01 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Modelo](
	[IdModelo] [int] IDENTITY(1,1) NOT NULL,
	[Modelo] [varchar](25) NULL,
PRIMARY KEY CLUSTERED 
(
	[IdModelo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Partes]    Script Date: 14/06/2020 11:34:01 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Partes](
	[IdPartes] [int] IDENTITY(1,1) NOT NULL,
	[NumeroDeParte] [varchar](16) NULL,
PRIMARY KEY CLUSTERED 
(
	[IdPartes] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PartesInventario]    Script Date: 14/06/2020 11:34:01 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PartesInventario](
	[IdPartesInventario] [int] IDENTITY(1,1) NOT NULL,
	[IdPartes] [int] NULL,
	[Cantidad] [int] NULL,
	[IdSucursal] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdPartesInventario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PartesPrecio]    Script Date: 14/06/2020 11:34:01 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PartesPrecio](
	[IdPartesPrecio] [int] IDENTITY(1,1) NOT NULL,
	[Precio] [decimal](15, 4) NULL,
PRIMARY KEY CLUSTERED 
(
	[IdPartesPrecio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PartesPrecioBitacora]    Script Date: 14/06/2020 11:34:01 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PartesPrecioBitacora](
	[IdPartesPrecioBitacora] [int] IDENTITY(1,1) NOT NULL,
	[IdPartes] [int] NOT NULL,
	[IdPartesPrecio] [int] NOT NULL,
	[Fecha] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdPartesPrecioBitacora] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Performance]    Script Date: 14/06/2020 11:34:01 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Performance](
	[IdPerformance] [int] IDENTITY(1,1) NOT NULL,
	[Performance] [varchar](60) NULL,
	[Precio] [decimal](14, 4) NULL,
PRIMARY KEY CLUSTERED 
(
	[IdPerformance] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sexo]    Script Date: 14/06/2020 11:34:01 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sexo](
	[IdSexo] [int] IDENTITY(1,1) NOT NULL,
	[Sexo] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[IdSexo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sucursal]    Script Date: 14/06/2020 11:34:01 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sucursal](
	[IdSucursal] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NULL,
	[Direccion] [varchar](100) NULL,
	[CP] [int] NULL,
	[IdConsecionario] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdSucursal] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TiempoDePago]    Script Date: 14/06/2020 11:34:01 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TiempoDePago](
	[IdTiempoDePago] [int] IDENTITY(1,1) NOT NULL,
	[TiempoDePago] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[IdTiempoDePago] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipoEmpleado]    Script Date: 14/06/2020 11:34:01 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoEmpleado](
	[IdTipoEmpleado] [int] IDENTITY(1,1) NOT NULL,
	[TipoEmpleado] [varchar](25) NULL,
PRIMARY KEY CLUSTERED 
(
	[IdTipoEmpleado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UsuarioLogin]    Script Date: 14/06/2020 11:34:01 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UsuarioLogin](
	[IdUsuarioLogin] [int] IDENTITY(1,1) NOT NULL,
	[Usuario] [varchar](150) NULL,
	[Contra] [varbinary](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[IdUsuarioLogin] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Vendido]    Script Date: 14/06/2020 11:34:01 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vendido](
	[IdVendido] [int] IDENTITY(1,1) NOT NULL,
	[Vendido] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[IdVendido] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VentaAuto]    Script Date: 14/06/2020 11:34:01 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VentaAuto](
	[IdVentaAuto] [int] IDENTITY(1,1) NOT NULL,
	[IdEmpleado] [int] NULL,
	[IdAutos] [int] NOT NULL,
	[IdAuto_Adic] [int] NOT NULL,
	[IdCliente] [int] NOT NULL,
	[IdSucursal] [int] NOT NULL,
	[Fecha] [date] NULL,
	[IdVendido] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdVentaAuto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VentaParte]    Script Date: 14/06/2020 11:34:01 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VentaParte](
	[IdVentaParte] [int] IDENTITY(1,1) NOT NULL,
	[IdEmpleado] [int] NOT NULL,
	[IdCliente] [int] NOT NULL,
	[IdSucursal] [int] NOT NULL,
	[Fecha] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdVentaParte] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ZonaHoraria]    Script Date: 14/06/2020 11:34:01 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ZonaHoraria](
	[IdZonaHoraria] [int] IDENTITY(1,1) NOT NULL,
	[Zona] [varchar](100) NULL,
	[Estado_] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdZonaHoraria] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Anio] ON 

INSERT [dbo].[Anio] ([IdAnio], [Anio]) VALUES (1, 2019)
INSERT [dbo].[Anio] ([IdAnio], [Anio]) VALUES (2, 2020)
INSERT [dbo].[Anio] ([IdAnio], [Anio]) VALUES (3, 2021)
SET IDENTITY_INSERT [dbo].[Anio] OFF
SET IDENTITY_INSERT [dbo].[Auto_Adiccionales] ON 

INSERT [dbo].[Auto_Adiccionales] ([IdAuto_Adic], [IdAutos], [IdColor], [IdPerformance]) VALUES (6, 15, 1, 1)
INSERT [dbo].[Auto_Adiccionales] ([IdAuto_Adic], [IdAutos], [IdColor], [IdPerformance]) VALUES (17, 14, 1, 1)
INSERT [dbo].[Auto_Adiccionales] ([IdAuto_Adic], [IdAutos], [IdColor], [IdPerformance]) VALUES (18, 14, 1, 1)
INSERT [dbo].[Auto_Adiccionales] ([IdAuto_Adic], [IdAutos], [IdColor], [IdPerformance]) VALUES (19, 14, 1, 1)
INSERT [dbo].[Auto_Adiccionales] ([IdAuto_Adic], [IdAutos], [IdColor], [IdPerformance]) VALUES (20, 14, 1, 1)
INSERT [dbo].[Auto_Adiccionales] ([IdAuto_Adic], [IdAutos], [IdColor], [IdPerformance]) VALUES (21, 15, 3, 2)
INSERT [dbo].[Auto_Adiccionales] ([IdAuto_Adic], [IdAutos], [IdColor], [IdPerformance]) VALUES (22, 14, 1, 1)
INSERT [dbo].[Auto_Adiccionales] ([IdAuto_Adic], [IdAutos], [IdColor], [IdPerformance]) VALUES (23, 15, 3, 2)
INSERT [dbo].[Auto_Adiccionales] ([IdAuto_Adic], [IdAutos], [IdColor], [IdPerformance]) VALUES (24, 15, 2, 2)
INSERT [dbo].[Auto_Adiccionales] ([IdAuto_Adic], [IdAutos], [IdColor], [IdPerformance]) VALUES (25, 14, 1, 1)
INSERT [dbo].[Auto_Adiccionales] ([IdAuto_Adic], [IdAutos], [IdColor], [IdPerformance]) VALUES (26, 14, 1, 1)
INSERT [dbo].[Auto_Adiccionales] ([IdAuto_Adic], [IdAutos], [IdColor], [IdPerformance]) VALUES (27, 14, 1, 1)
INSERT [dbo].[Auto_Adiccionales] ([IdAuto_Adic], [IdAutos], [IdColor], [IdPerformance]) VALUES (28, 15, 5, 4)
INSERT [dbo].[Auto_Adiccionales] ([IdAuto_Adic], [IdAutos], [IdColor], [IdPerformance]) VALUES (29, 15, 5, 4)
INSERT [dbo].[Auto_Adiccionales] ([IdAuto_Adic], [IdAutos], [IdColor], [IdPerformance]) VALUES (30, 18, 1, 1)
INSERT [dbo].[Auto_Adiccionales] ([IdAuto_Adic], [IdAutos], [IdColor], [IdPerformance]) VALUES (31, 18, 1, 1)
INSERT [dbo].[Auto_Adiccionales] ([IdAuto_Adic], [IdAutos], [IdColor], [IdPerformance]) VALUES (32, 15, 2, 4)
INSERT [dbo].[Auto_Adiccionales] ([IdAuto_Adic], [IdAutos], [IdColor], [IdPerformance]) VALUES (33, 15, 2, 4)
INSERT [dbo].[Auto_Adiccionales] ([IdAuto_Adic], [IdAutos], [IdColor], [IdPerformance]) VALUES (34, 15, 3, 3)
INSERT [dbo].[Auto_Adiccionales] ([IdAuto_Adic], [IdAutos], [IdColor], [IdPerformance]) VALUES (35, 15, 3, 3)
INSERT [dbo].[Auto_Adiccionales] ([IdAuto_Adic], [IdAutos], [IdColor], [IdPerformance]) VALUES (36, 14, 1, 1)
INSERT [dbo].[Auto_Adiccionales] ([IdAuto_Adic], [IdAutos], [IdColor], [IdPerformance]) VALUES (37, 14, 1, 1)
INSERT [dbo].[Auto_Adiccionales] ([IdAuto_Adic], [IdAutos], [IdColor], [IdPerformance]) VALUES (38, 14, 1, 1)
INSERT [dbo].[Auto_Adiccionales] ([IdAuto_Adic], [IdAutos], [IdColor], [IdPerformance]) VALUES (39, 14, 1, 1)
INSERT [dbo].[Auto_Adiccionales] ([IdAuto_Adic], [IdAutos], [IdColor], [IdPerformance]) VALUES (40, 14, 1, 1)
INSERT [dbo].[Auto_Adiccionales] ([IdAuto_Adic], [IdAutos], [IdColor], [IdPerformance]) VALUES (41, 14, 1, 1)
INSERT [dbo].[Auto_Adiccionales] ([IdAuto_Adic], [IdAutos], [IdColor], [IdPerformance]) VALUES (42, 14, 1, 1)
INSERT [dbo].[Auto_Adiccionales] ([IdAuto_Adic], [IdAutos], [IdColor], [IdPerformance]) VALUES (43, 14, 4, 2)
INSERT [dbo].[Auto_Adiccionales] ([IdAuto_Adic], [IdAutos], [IdColor], [IdPerformance]) VALUES (44, 14, 1, 1)
SET IDENTITY_INSERT [dbo].[Auto_Adiccionales] OFF
SET IDENTITY_INSERT [dbo].[AutoExistencia] ON 

INSERT [dbo].[AutoExistencia] ([IdAutoExistencia], [Cantidad], [IdAutos], [IdModelo], [Fecha], [IdSucursal]) VALUES (1, 484, 14, 1, CAST(N'2020-06-12' AS Date), 4)
INSERT [dbo].[AutoExistencia] ([IdAutoExistencia], [Cantidad], [IdAutos], [IdModelo], [Fecha], [IdSucursal]) VALUES (2, 493, 15, 1, CAST(N'2020-06-12' AS Date), 4)
INSERT [dbo].[AutoExistencia] ([IdAutoExistencia], [Cantidad], [IdAutos], [IdModelo], [Fecha], [IdSucursal]) VALUES (3, 500, 16, 2, CAST(N'2020-06-12' AS Date), 4)
INSERT [dbo].[AutoExistencia] ([IdAutoExistencia], [Cantidad], [IdAutos], [IdModelo], [Fecha], [IdSucursal]) VALUES (4, 500, 17, 2, CAST(N'2020-06-12' AS Date), 4)
INSERT [dbo].[AutoExistencia] ([IdAutoExistencia], [Cantidad], [IdAutos], [IdModelo], [Fecha], [IdSucursal]) VALUES (5, 499, 18, 3, CAST(N'2020-06-12' AS Date), 4)
INSERT [dbo].[AutoExistencia] ([IdAutoExistencia], [Cantidad], [IdAutos], [IdModelo], [Fecha], [IdSucursal]) VALUES (6, 500, 19, 3, CAST(N'2020-06-12' AS Date), 4)
INSERT [dbo].[AutoExistencia] ([IdAutoExistencia], [Cantidad], [IdAutos], [IdModelo], [Fecha], [IdSucursal]) VALUES (7, 500, 20, 4, CAST(N'2020-06-12' AS Date), 4)
INSERT [dbo].[AutoExistencia] ([IdAutoExistencia], [Cantidad], [IdAutos], [IdModelo], [Fecha], [IdSucursal]) VALUES (8, 500, 21, 4, CAST(N'2020-06-12' AS Date), 4)
INSERT [dbo].[AutoExistencia] ([IdAutoExistencia], [Cantidad], [IdAutos], [IdModelo], [Fecha], [IdSucursal]) VALUES (9, 600, 14, 1, CAST(N'2020-06-12' AS Date), 5)
INSERT [dbo].[AutoExistencia] ([IdAutoExistencia], [Cantidad], [IdAutos], [IdModelo], [Fecha], [IdSucursal]) VALUES (10, 600, 15, 1, CAST(N'2020-06-12' AS Date), 5)
INSERT [dbo].[AutoExistencia] ([IdAutoExistencia], [Cantidad], [IdAutos], [IdModelo], [Fecha], [IdSucursal]) VALUES (11, 600, 16, 2, CAST(N'2020-06-12' AS Date), 5)
INSERT [dbo].[AutoExistencia] ([IdAutoExistencia], [Cantidad], [IdAutos], [IdModelo], [Fecha], [IdSucursal]) VALUES (12, 600, 17, 2, CAST(N'2020-06-12' AS Date), 5)
INSERT [dbo].[AutoExistencia] ([IdAutoExistencia], [Cantidad], [IdAutos], [IdModelo], [Fecha], [IdSucursal]) VALUES (13, 400, 18, 3, CAST(N'2020-06-12' AS Date), 5)
INSERT [dbo].[AutoExistencia] ([IdAutoExistencia], [Cantidad], [IdAutos], [IdModelo], [Fecha], [IdSucursal]) VALUES (14, 500, 19, 3, CAST(N'2020-06-12' AS Date), 5)
INSERT [dbo].[AutoExistencia] ([IdAutoExistencia], [Cantidad], [IdAutos], [IdModelo], [Fecha], [IdSucursal]) VALUES (15, 100, 20, 4, CAST(N'2020-06-12' AS Date), 5)
INSERT [dbo].[AutoExistencia] ([IdAutoExistencia], [Cantidad], [IdAutos], [IdModelo], [Fecha], [IdSucursal]) VALUES (16, 700, 21, 4, CAST(N'2020-06-12' AS Date), 5)
INSERT [dbo].[AutoExistencia] ([IdAutoExistencia], [Cantidad], [IdAutos], [IdModelo], [Fecha], [IdSucursal]) VALUES (17, 900, 14, 1, CAST(N'2020-06-12' AS Date), 6)
INSERT [dbo].[AutoExistencia] ([IdAutoExistencia], [Cantidad], [IdAutos], [IdModelo], [Fecha], [IdSucursal]) VALUES (18, 700, 15, 1, CAST(N'2020-06-12' AS Date), 6)
INSERT [dbo].[AutoExistencia] ([IdAutoExistencia], [Cantidad], [IdAutos], [IdModelo], [Fecha], [IdSucursal]) VALUES (19, 600, 16, 2, CAST(N'2020-06-12' AS Date), 6)
INSERT [dbo].[AutoExistencia] ([IdAutoExistencia], [Cantidad], [IdAutos], [IdModelo], [Fecha], [IdSucursal]) VALUES (20, 800, 17, 2, CAST(N'2020-06-12' AS Date), 6)
INSERT [dbo].[AutoExistencia] ([IdAutoExistencia], [Cantidad], [IdAutos], [IdModelo], [Fecha], [IdSucursal]) VALUES (21, 400, 18, 3, CAST(N'2020-06-12' AS Date), 6)
INSERT [dbo].[AutoExistencia] ([IdAutoExistencia], [Cantidad], [IdAutos], [IdModelo], [Fecha], [IdSucursal]) VALUES (22, 500, 19, 3, CAST(N'2020-06-12' AS Date), 6)
INSERT [dbo].[AutoExistencia] ([IdAutoExistencia], [Cantidad], [IdAutos], [IdModelo], [Fecha], [IdSucursal]) VALUES (23, 100, 20, 4, CAST(N'2020-06-12' AS Date), 6)
INSERT [dbo].[AutoExistencia] ([IdAutoExistencia], [Cantidad], [IdAutos], [IdModelo], [Fecha], [IdSucursal]) VALUES (24, 700, 21, 4, CAST(N'2020-06-12' AS Date), 6)
INSERT [dbo].[AutoExistencia] ([IdAutoExistencia], [Cantidad], [IdAutos], [IdModelo], [Fecha], [IdSucursal]) VALUES (25, 50, 22, 5, CAST(N'2020-06-14' AS Date), 4)
SET IDENTITY_INSERT [dbo].[AutoExistencia] OFF
SET IDENTITY_INSERT [dbo].[Autos] ON 

INSERT [dbo].[Autos] ([IdAutos], [Marca], [IdColor], [IdModelo], [IdAnio], [Precio]) VALUES (14, N'Tesla', 1, 1, 2, CAST(349900.0000 AS Decimal(14, 4)))
INSERT [dbo].[Autos] ([IdAutos], [Marca], [IdColor], [IdModelo], [IdAnio], [Precio]) VALUES (15, N'Tesla', 1, 1, 3, CAST(359900.0000 AS Decimal(14, 4)))
INSERT [dbo].[Autos] ([IdAutos], [Marca], [IdColor], [IdModelo], [IdAnio], [Precio]) VALUES (16, N'Tesla', 1, 2, 2, CAST(2349900.0000 AS Decimal(14, 4)))
INSERT [dbo].[Autos] ([IdAutos], [Marca], [IdColor], [IdModelo], [IdAnio], [Precio]) VALUES (17, N'Tesla', 1, 2, 3, CAST(2449900.0000 AS Decimal(14, 4)))
INSERT [dbo].[Autos] ([IdAutos], [Marca], [IdColor], [IdModelo], [IdAnio], [Precio]) VALUES (18, N'Tesla', 1, 3, 2, CAST(1929900.0000 AS Decimal(14, 4)))
INSERT [dbo].[Autos] ([IdAutos], [Marca], [IdColor], [IdModelo], [IdAnio], [Precio]) VALUES (19, N'Tesla', 1, 3, 3, CAST(2029900.0000 AS Decimal(14, 4)))
INSERT [dbo].[Autos] ([IdAutos], [Marca], [IdColor], [IdModelo], [IdAnio], [Precio]) VALUES (20, N'Tesla', 1, 4, 2, CAST(1134246.9600 AS Decimal(14, 4)))
INSERT [dbo].[Autos] ([IdAutos], [Marca], [IdColor], [IdModelo], [IdAnio], [Precio]) VALUES (21, N'Tesla', 1, 4, 3, CAST(1134246.9600 AS Decimal(14, 4)))
INSERT [dbo].[Autos] ([IdAutos], [Marca], [IdColor], [IdModelo], [IdAnio], [Precio]) VALUES (22, N'Tesla', 1, 5, 2, CAST(820800.0000 AS Decimal(14, 4)))
SET IDENTITY_INSERT [dbo].[Autos] OFF
SET IDENTITY_INSERT [dbo].[Aval] ON 

INSERT [dbo].[Aval] ([IdAval], [Nombre], [ApP], [ApM], [Telefono]) VALUES (1, N'Jesus Eduardo', N'Escobedo', N'Diaz', N'6642414460')
INSERT [dbo].[Aval] ([IdAval], [Nombre], [ApP], [ApM], [Telefono]) VALUES (2, N'Jesus Eduardo', N'Escobedo', N'Diaz', N'6642414460')
INSERT [dbo].[Aval] ([IdAval], [Nombre], [ApP], [ApM], [Telefono]) VALUES (3, N'wdw', N'asd', N'cz', N'6642414460')
INSERT [dbo].[Aval] ([IdAval], [Nombre], [ApP], [ApM], [Telefono]) VALUES (4, N'wdw', N'asd', N'cz', N'6642414460')
INSERT [dbo].[Aval] ([IdAval], [Nombre], [ApP], [ApM], [Telefono]) VALUES (5, N'hg', N'kh', N'iu', N'6642414460')
INSERT [dbo].[Aval] ([IdAval], [Nombre], [ApP], [ApM], [Telefono]) VALUES (6, N'hg', N'kh', N'iu', N'6642414460')
INSERT [dbo].[Aval] ([IdAval], [Nombre], [ApP], [ApM], [Telefono]) VALUES (7, N'hola', N'hola', N'hola', N'01800')
INSERT [dbo].[Aval] ([IdAval], [Nombre], [ApP], [ApM], [Telefono]) VALUES (8, N'w', N'w', N'w', N'6642414460')
INSERT [dbo].[Aval] ([IdAval], [Nombre], [ApP], [ApM], [Telefono]) VALUES (9, N'w', N'w', N'w', N'6642414460')
INSERT [dbo].[Aval] ([IdAval], [Nombre], [ApP], [ApM], [Telefono]) VALUES (10, N'aval', N'es', N'sc', N'6642414460')
INSERT [dbo].[Aval] ([IdAval], [Nombre], [ApP], [ApM], [Telefono]) VALUES (11, N'aval', N'Escobedo', N'w', N'6642414460')
INSERT [dbo].[Aval] ([IdAval], [Nombre], [ApP], [ApM], [Telefono]) VALUES (12, N'Karen Nohemi', N'Morales', N'Galindo', N'6642414460')
INSERT [dbo].[Aval] ([IdAval], [Nombre], [ApP], [ApM], [Telefono]) VALUES (13, N'Karen Nohemi', N'Galindo', N'Escobedo', N'6642414460')
SET IDENTITY_INSERT [dbo].[Aval] OFF
SET IDENTITY_INSERT [dbo].[BitacoraDePago] ON 

INSERT [dbo].[BitacoraDePago] ([id_Bitacora], [FechaDePago], [Abono], [PagoMinimo], [IdVentaAuto], [Restante]) VALUES (27, CAST(N'2020-06-12' AS Date), CAST(136461.00 AS Decimal(14, 2)), CAST(12635.28 AS Decimal(14, 2)), 14, CAST(442234.72 AS Decimal(14, 2)))
INSERT [dbo].[BitacoraDePago] ([id_Bitacora], [FechaDePago], [Abono], [PagoMinimo], [IdVentaAuto], [Restante]) VALUES (28, CAST(N'2020-07-12' AS Date), CAST(12635.28 AS Decimal(14, 2)), CAST(12635.28 AS Decimal(14, 2)), 14, CAST(429599.44 AS Decimal(14, 2)))
INSERT [dbo].[BitacoraDePago] ([id_Bitacora], [FechaDePago], [Abono], [PagoMinimo], [IdVentaAuto], [Restante]) VALUES (29, CAST(N'2020-06-12' AS Date), CAST(162607.50 AS Decimal(14, 2)), CAST(9033.75 AS Decimal(14, 2)), 15, CAST(532991.25 AS Decimal(14, 2)))
INSERT [dbo].[BitacoraDePago] ([id_Bitacora], [FechaDePago], [Abono], [PagoMinimo], [IdVentaAuto], [Restante]) VALUES (30, CAST(N'2020-07-12' AS Date), CAST(9033.75 AS Decimal(14, 2)), CAST(9033.75 AS Decimal(14, 2)), 15, CAST(523957.50 AS Decimal(14, 2)))
INSERT [dbo].[BitacoraDePago] ([id_Bitacora], [FechaDePago], [Abono], [PagoMinimo], [IdVentaAuto], [Restante]) VALUES (31, CAST(N'2020-06-12' AS Date), CAST(136461.00 AS Decimal(14, 2)), CAST(12635.28 AS Decimal(14, 2)), 16, CAST(442234.72 AS Decimal(14, 2)))
INSERT [dbo].[BitacoraDePago] ([id_Bitacora], [FechaDePago], [Abono], [PagoMinimo], [IdVentaAuto], [Restante]) VALUES (32, CAST(N'2020-07-12' AS Date), CAST(0.00 AS Decimal(14, 2)), CAST(12635.28 AS Decimal(14, 2)), 16, NULL)
INSERT [dbo].[BitacoraDePago] ([id_Bitacora], [FechaDePago], [Abono], [PagoMinimo], [IdVentaAuto], [Restante]) VALUES (33, CAST(N'2020-06-12' AS Date), CAST(162607.50 AS Decimal(14, 2)), CAST(9033.75 AS Decimal(14, 2)), 17, CAST(532991.25 AS Decimal(14, 2)))
INSERT [dbo].[BitacoraDePago] ([id_Bitacora], [FechaDePago], [Abono], [PagoMinimo], [IdVentaAuto], [Restante]) VALUES (34, CAST(N'2020-07-12' AS Date), CAST(0.00 AS Decimal(14, 2)), CAST(9033.75 AS Decimal(14, 2)), 17, NULL)
INSERT [dbo].[BitacoraDePago] ([id_Bitacora], [FechaDePago], [Abono], [PagoMinimo], [IdVentaAuto], [Restante]) VALUES (35, CAST(N'2020-06-12' AS Date), CAST(171355.50 AS Decimal(14, 2)), CAST(9519.75 AS Decimal(14, 2)), 18, CAST(561665.25 AS Decimal(14, 2)))
INSERT [dbo].[BitacoraDePago] ([id_Bitacora], [FechaDePago], [Abono], [PagoMinimo], [IdVentaAuto], [Restante]) VALUES (36, CAST(N'2020-07-12' AS Date), CAST(0.00 AS Decimal(14, 2)), CAST(9519.75 AS Decimal(14, 2)), 18, NULL)
INSERT [dbo].[BitacoraDePago] ([id_Bitacora], [FechaDePago], [Abono], [PagoMinimo], [IdVentaAuto], [Restante]) VALUES (37, CAST(N'2020-06-12' AS Date), CAST(141709.50 AS Decimal(14, 2)), CAST(7872.75 AS Decimal(14, 2)), 19, CAST(464492.25 AS Decimal(14, 2)))
INSERT [dbo].[BitacoraDePago] ([id_Bitacora], [FechaDePago], [Abono], [PagoMinimo], [IdVentaAuto], [Restante]) VALUES (38, CAST(N'2020-07-12' AS Date), CAST(0.00 AS Decimal(14, 2)), CAST(7872.75 AS Decimal(14, 2)), 19, NULL)
INSERT [dbo].[BitacoraDePago] ([id_Bitacora], [FechaDePago], [Abono], [PagoMinimo], [IdVentaAuto], [Restante]) VALUES (39, CAST(N'2020-06-12' AS Date), CAST(141709.50 AS Decimal(14, 2)), CAST(7872.75 AS Decimal(14, 2)), 20, CAST(464492.25 AS Decimal(14, 2)))
INSERT [dbo].[BitacoraDePago] ([id_Bitacora], [FechaDePago], [Abono], [PagoMinimo], [IdVentaAuto], [Restante]) VALUES (40, CAST(N'2020-07-12' AS Date), CAST(0.00 AS Decimal(14, 2)), CAST(7872.75 AS Decimal(14, 2)), 20, NULL)
INSERT [dbo].[BitacoraDePago] ([id_Bitacora], [FechaDePago], [Abono], [PagoMinimo], [IdVentaAuto], [Restante]) VALUES (41, CAST(N'2020-06-12' AS Date), CAST(141709.50 AS Decimal(14, 2)), CAST(7872.75 AS Decimal(14, 2)), 21, CAST(464492.25 AS Decimal(14, 2)))
INSERT [dbo].[BitacoraDePago] ([id_Bitacora], [FechaDePago], [Abono], [PagoMinimo], [IdVentaAuto], [Restante]) VALUES (42, CAST(N'2020-07-12' AS Date), CAST(0.00 AS Decimal(14, 2)), CAST(7872.75 AS Decimal(14, 2)), 21, NULL)
INSERT [dbo].[BitacoraDePago] ([id_Bitacora], [FechaDePago], [Abono], [PagoMinimo], [IdVentaAuto], [Restante]) VALUES (43, CAST(N'2020-06-13' AS Date), CAST(170707.50 AS Decimal(14, 2)), CAST(9483.75 AS Decimal(14, 2)), 22, CAST(559541.25 AS Decimal(14, 2)))
INSERT [dbo].[BitacoraDePago] ([id_Bitacora], [FechaDePago], [Abono], [PagoMinimo], [IdVentaAuto], [Restante]) VALUES (44, CAST(N'2020-07-13' AS Date), CAST(0.00 AS Decimal(14, 2)), CAST(9483.75 AS Decimal(14, 2)), 22, NULL)
INSERT [dbo].[BitacoraDePago] ([id_Bitacora], [FechaDePago], [Abono], [PagoMinimo], [IdVentaAuto], [Restante]) VALUES (45, CAST(N'2020-06-13' AS Date), CAST(170707.50 AS Decimal(14, 2)), CAST(9483.75 AS Decimal(14, 2)), 23, CAST(559541.25 AS Decimal(14, 2)))
INSERT [dbo].[BitacoraDePago] ([id_Bitacora], [FechaDePago], [Abono], [PagoMinimo], [IdVentaAuto], [Restante]) VALUES (46, CAST(N'2020-07-13' AS Date), CAST(0.00 AS Decimal(14, 2)), CAST(9483.75 AS Decimal(14, 2)), 23, NULL)
INSERT [dbo].[BitacoraDePago] ([id_Bitacora], [FechaDePago], [Abono], [PagoMinimo], [IdVentaAuto], [Restante]) VALUES (47, CAST(N'2020-06-13' AS Date), CAST(752661.00 AS Decimal(14, 2)), CAST(69690.83 AS Decimal(14, 2)), 25, CAST(2439179.17 AS Decimal(14, 2)))
INSERT [dbo].[BitacoraDePago] ([id_Bitacora], [FechaDePago], [Abono], [PagoMinimo], [IdVentaAuto], [Restante]) VALUES (48, CAST(N'2020-06-13' AS Date), CAST(752661.00 AS Decimal(14, 2)), CAST(69690.83 AS Decimal(14, 2)), 24, CAST(2439179.17 AS Decimal(14, 2)))
INSERT [dbo].[BitacoraDePago] ([id_Bitacora], [FechaDePago], [Abono], [PagoMinimo], [IdVentaAuto], [Restante]) VALUES (49, CAST(N'2020-07-13' AS Date), CAST(0.00 AS Decimal(14, 2)), CAST(69690.83 AS Decimal(14, 2)), 25, NULL)
INSERT [dbo].[BitacoraDePago] ([id_Bitacora], [FechaDePago], [Abono], [PagoMinimo], [IdVentaAuto], [Restante]) VALUES (50, CAST(N'2020-07-13' AS Date), CAST(0.00 AS Decimal(14, 2)), CAST(69690.83 AS Decimal(14, 2)), 24, NULL)
INSERT [dbo].[BitacoraDePago] ([id_Bitacora], [FechaDePago], [Abono], [PagoMinimo], [IdVentaAuto], [Restante]) VALUES (51, CAST(N'2020-06-13' AS Date), CAST(179455.50 AS Decimal(14, 2)), CAST(9969.75 AS Decimal(14, 2)), 26, CAST(588215.25 AS Decimal(14, 2)))
INSERT [dbo].[BitacoraDePago] ([id_Bitacora], [FechaDePago], [Abono], [PagoMinimo], [IdVentaAuto], [Restante]) VALUES (52, CAST(N'2020-06-13' AS Date), CAST(179455.50 AS Decimal(14, 2)), CAST(9969.75 AS Decimal(14, 2)), 27, CAST(588215.25 AS Decimal(14, 2)))
INSERT [dbo].[BitacoraDePago] ([id_Bitacora], [FechaDePago], [Abono], [PagoMinimo], [IdVentaAuto], [Restante]) VALUES (53, CAST(N'2020-07-13' AS Date), CAST(0.00 AS Decimal(14, 2)), CAST(9969.75 AS Decimal(14, 2)), 26, NULL)
INSERT [dbo].[BitacoraDePago] ([id_Bitacora], [FechaDePago], [Abono], [PagoMinimo], [IdVentaAuto], [Restante]) VALUES (54, CAST(N'2020-07-13' AS Date), CAST(0.00 AS Decimal(14, 2)), CAST(9969.75 AS Decimal(14, 2)), 27, NULL)
INSERT [dbo].[BitacoraDePago] ([id_Bitacora], [FechaDePago], [Abono], [PagoMinimo], [IdVentaAuto], [Restante]) VALUES (55, CAST(N'2020-06-13' AS Date), CAST(172830.00 AS Decimal(14, 2)), CAST(6858.33 AS Decimal(14, 2)), 28, CAST(569241.67 AS Decimal(14, 2)))
INSERT [dbo].[BitacoraDePago] ([id_Bitacora], [FechaDePago], [Abono], [PagoMinimo], [IdVentaAuto], [Restante]) VALUES (56, CAST(N'2020-06-13' AS Date), CAST(172830.00 AS Decimal(14, 2)), CAST(6858.33 AS Decimal(14, 2)), 29, CAST(569241.67 AS Decimal(14, 2)))
INSERT [dbo].[BitacoraDePago] ([id_Bitacora], [FechaDePago], [Abono], [PagoMinimo], [IdVentaAuto], [Restante]) VALUES (57, CAST(N'2020-07-13' AS Date), CAST(0.00 AS Decimal(14, 2)), CAST(6858.33 AS Decimal(14, 2)), 28, NULL)
INSERT [dbo].[BitacoraDePago] ([id_Bitacora], [FechaDePago], [Abono], [PagoMinimo], [IdVentaAuto], [Restante]) VALUES (58, CAST(N'2020-07-13' AS Date), CAST(0.00 AS Decimal(14, 2)), CAST(6858.33 AS Decimal(14, 2)), 29, NULL)
INSERT [dbo].[BitacoraDePago] ([id_Bitacora], [FechaDePago], [Abono], [PagoMinimo], [IdVentaAuto], [Restante]) VALUES (59, CAST(N'2020-06-13' AS Date), CAST(141709.50 AS Decimal(14, 2)), CAST(7872.75 AS Decimal(14, 2)), 30, CAST(464492.25 AS Decimal(14, 2)))
INSERT [dbo].[BitacoraDePago] ([id_Bitacora], [FechaDePago], [Abono], [PagoMinimo], [IdVentaAuto], [Restante]) VALUES (60, CAST(N'2020-07-13' AS Date), CAST(0.00 AS Decimal(14, 2)), CAST(7872.75 AS Decimal(14, 2)), 30, NULL)
INSERT [dbo].[BitacoraDePago] ([id_Bitacora], [FechaDePago], [Abono], [PagoMinimo], [IdVentaAuto], [Restante]) VALUES (61, CAST(N'2020-06-13' AS Date), CAST(141709.50 AS Decimal(14, 2)), CAST(7872.75 AS Decimal(14, 2)), 31, CAST(464492.25 AS Decimal(14, 2)))
INSERT [dbo].[BitacoraDePago] ([id_Bitacora], [FechaDePago], [Abono], [PagoMinimo], [IdVentaAuto], [Restante]) VALUES (62, CAST(N'2020-07-13' AS Date), CAST(0.00 AS Decimal(14, 2)), CAST(7872.75 AS Decimal(14, 2)), 31, NULL)
INSERT [dbo].[BitacoraDePago] ([id_Bitacora], [FechaDePago], [Abono], [PagoMinimo], [IdVentaAuto], [Restante]) VALUES (63, CAST(N'2020-06-13' AS Date), CAST(136461.00 AS Decimal(14, 2)), CAST(12635.28 AS Decimal(14, 2)), 32, CAST(442234.72 AS Decimal(14, 2)))
INSERT [dbo].[BitacoraDePago] ([id_Bitacora], [FechaDePago], [Abono], [PagoMinimo], [IdVentaAuto], [Restante]) VALUES (64, CAST(N'2020-07-13' AS Date), CAST(0.00 AS Decimal(14, 2)), CAST(12635.28 AS Decimal(14, 2)), 32, NULL)
INSERT [dbo].[BitacoraDePago] ([id_Bitacora], [FechaDePago], [Abono], [PagoMinimo], [IdVentaAuto], [Restante]) VALUES (65, CAST(N'2020-06-13' AS Date), CAST(141709.50 AS Decimal(14, 2)), CAST(7872.75 AS Decimal(14, 2)), 33, CAST(464492.25 AS Decimal(14, 2)))
INSERT [dbo].[BitacoraDePago] ([id_Bitacora], [FechaDePago], [Abono], [PagoMinimo], [IdVentaAuto], [Restante]) VALUES (66, CAST(N'2020-06-13' AS Date), CAST(141709.50 AS Decimal(14, 2)), CAST(7872.75 AS Decimal(14, 2)), 34, CAST(464492.25 AS Decimal(14, 2)))
INSERT [dbo].[BitacoraDePago] ([id_Bitacora], [FechaDePago], [Abono], [PagoMinimo], [IdVentaAuto], [Restante]) VALUES (67, CAST(N'2020-07-13' AS Date), CAST(0.00 AS Decimal(14, 2)), CAST(7872.75 AS Decimal(14, 2)), 34, NULL)
INSERT [dbo].[BitacoraDePago] ([id_Bitacora], [FechaDePago], [Abono], [PagoMinimo], [IdVentaAuto], [Restante]) VALUES (68, CAST(N'2020-07-13' AS Date), CAST(0.00 AS Decimal(14, 2)), CAST(7872.75 AS Decimal(14, 2)), 33, NULL)
INSERT [dbo].[BitacoraDePago] ([id_Bitacora], [FechaDePago], [Abono], [PagoMinimo], [IdVentaAuto], [Restante]) VALUES (69, CAST(N'2020-06-13' AS Date), CAST(141709.50 AS Decimal(14, 2)), CAST(7872.75 AS Decimal(14, 2)), 35, CAST(464492.25 AS Decimal(14, 2)))
INSERT [dbo].[BitacoraDePago] ([id_Bitacora], [FechaDePago], [Abono], [PagoMinimo], [IdVentaAuto], [Restante]) VALUES (70, CAST(N'2020-07-13' AS Date), CAST(0.00 AS Decimal(14, 2)), CAST(7872.75 AS Decimal(14, 2)), 35, NULL)
INSERT [dbo].[BitacoraDePago] ([id_Bitacora], [FechaDePago], [Abono], [PagoMinimo], [IdVentaAuto], [Restante]) VALUES (71, CAST(N'2020-06-13' AS Date), CAST(146958.00 AS Decimal(14, 2)), CAST(5831.67 AS Decimal(14, 2)), 36, CAST(484028.33 AS Decimal(14, 2)))
INSERT [dbo].[BitacoraDePago] ([id_Bitacora], [FechaDePago], [Abono], [PagoMinimo], [IdVentaAuto], [Restante]) VALUES (72, CAST(N'2020-07-13' AS Date), CAST(0.00 AS Decimal(14, 2)), CAST(5831.67 AS Decimal(14, 2)), 36, NULL)
INSERT [dbo].[BitacoraDePago] ([id_Bitacora], [FechaDePago], [Abono], [PagoMinimo], [IdVentaAuto], [Restante]) VALUES (73, CAST(N'2020-06-14' AS Date), CAST(158557.50 AS Decimal(14, 2)), CAST(8808.75 AS Decimal(14, 2)), 37, CAST(519716.25 AS Decimal(14, 2)))
INSERT [dbo].[BitacoraDePago] ([id_Bitacora], [FechaDePago], [Abono], [PagoMinimo], [IdVentaAuto], [Restante]) VALUES (74, CAST(N'2020-07-14' AS Date), CAST(0.00 AS Decimal(14, 2)), CAST(8808.75 AS Decimal(14, 2)), 37, NULL)
INSERT [dbo].[BitacoraDePago] ([id_Bitacora], [FechaDePago], [Abono], [PagoMinimo], [IdVentaAuto], [Restante]) VALUES (75, CAST(N'2020-06-14' AS Date), CAST(141709.50 AS Decimal(14, 2)), CAST(7872.75 AS Decimal(14, 2)), 38, CAST(464492.25 AS Decimal(14, 2)))
INSERT [dbo].[BitacoraDePago] ([id_Bitacora], [FechaDePago], [Abono], [PagoMinimo], [IdVentaAuto], [Restante]) VALUES (76, CAST(N'2020-07-14' AS Date), CAST(0.00 AS Decimal(14, 2)), CAST(7872.75 AS Decimal(14, 2)), 38, NULL)
SET IDENTITY_INSERT [dbo].[BitacoraDePago] OFF
SET IDENTITY_INSERT [dbo].[Cliente] ON 

INSERT [dbo].[Cliente] ([IdCliente], [Nombre], [ApP], [ApM], [Edad], [FechaDeNacimiento], [Sexo], [RFC], [Direccion], [CP], [Telefono], [TelefonoCasa], [Correo], [IdAval]) VALUES (1, N'Jesús Eduardo', N'Escobedo', N'Diaz', 23, CAST(N'1996-10-15' AS Date), 1, N'EODJ9615NQ1', N'Insurgentes', 22278, N'6641234567', N'6641234567', N'elcorreo@gmail.com', NULL)
INSERT [dbo].[Cliente] ([IdCliente], [Nombre], [ApP], [ApM], [Edad], [FechaDeNacimiento], [Sexo], [RFC], [Direccion], [CP], [Telefono], [TelefonoCasa], [Correo], [IdAval]) VALUES (2, N'ang', N's', N's', 1, CAST(N'2020-06-10' AS Date), 1, N's', N'Zona Rio', 22222, N'6641234567', N'6641234567', N'elcorreo@gmail.com', NULL)
INSERT [dbo].[Cliente] ([IdCliente], [Nombre], [ApP], [ApM], [Edad], [FechaDeNacimiento], [Sexo], [RFC], [Direccion], [CP], [Telefono], [TelefonoCasa], [Correo], [IdAval]) VALUES (3, N'ang', N's', N's', 1, CAST(N'2020-06-10' AS Date), 1, N's', N'Zona Rio', 22222, N'6641234567', N'6641234567', N'elcorreo@gmail.com', NULL)
INSERT [dbo].[Cliente] ([IdCliente], [Nombre], [ApP], [ApM], [Edad], [FechaDeNacimiento], [Sexo], [RFC], [Direccion], [CP], [Telefono], [TelefonoCasa], [Correo], [IdAval]) VALUES (4, N'ang', N'e', N'e', 12, CAST(N'2020-06-10' AS Date), 1, N'ds', N'Zona Rio', 22222, N'6641234567', N'6641234567', N'elcorreo@gmail.com', NULL)
INSERT [dbo].[Cliente] ([IdCliente], [Nombre], [ApP], [ApM], [Edad], [FechaDeNacimiento], [Sexo], [RFC], [Direccion], [CP], [Telefono], [TelefonoCasa], [Correo], [IdAval]) VALUES (5, N'Gamaliel', N'Escobedo', N'Diaz', 18, CAST(N'2020-06-11' AS Date), 1, N'dsfsd', N'Zona Rio', 22222, N'6641234567', N'6641234567', N'elcorreo@gmail.com', NULL)
INSERT [dbo].[Cliente] ([IdCliente], [Nombre], [ApP], [ApM], [Edad], [FechaDeNacimiento], [Sexo], [RFC], [Direccion], [CP], [Telefono], [TelefonoCasa], [Correo], [IdAval]) VALUES (6, N'Gamaliel', N'Escobedo', N'Diaz', 7, CAST(N'2020-06-12' AS Date), 1, N'jjhkj', N'Zona Rio', 22222, N'6641234567', N'6641234567', N'elcorreo@gmail.com', NULL)
INSERT [dbo].[Cliente] ([IdCliente], [Nombre], [ApP], [ApM], [Edad], [FechaDeNacimiento], [Sexo], [RFC], [Direccion], [CP], [Telefono], [TelefonoCasa], [Correo], [IdAval]) VALUES (17, N'eduardo', N'escobedo', N'diaz', 23, CAST(N'2020-06-12' AS Date), 1, N'sdfs', N'laurel', 22253, N'6642414460', N'6642414460', N'sdfsd@', NULL)
INSERT [dbo].[Cliente] ([IdCliente], [Nombre], [ApP], [ApM], [Edad], [FechaDeNacimiento], [Sexo], [RFC], [Direccion], [CP], [Telefono], [TelefonoCasa], [Correo], [IdAval]) VALUES (18, N'eduardo', N'escobedo', N'diaz', 23, CAST(N'2020-06-12' AS Date), 1, N'sdfs', N'laurel', 22253, N'6642414460', N'6642414460', N'sdfsd@', NULL)
INSERT [dbo].[Cliente] ([IdCliente], [Nombre], [ApP], [ApM], [Edad], [FechaDeNacimiento], [Sexo], [RFC], [Direccion], [CP], [Telefono], [TelefonoCasa], [Correo], [IdAval]) VALUES (19, N'eduardo', N'escobedo', N'diaz', 23, CAST(N'2020-06-12' AS Date), 1, N'sdfs', N'laurel', 22253, N'6642414460', N'6642414460', N'sdfsd@', NULL)
INSERT [dbo].[Cliente] ([IdCliente], [Nombre], [ApP], [ApM], [Edad], [FechaDeNacimiento], [Sexo], [RFC], [Direccion], [CP], [Telefono], [TelefonoCasa], [Correo], [IdAval]) VALUES (20, N'eduardo', N'escobedo', N'diaz', 23, CAST(N'2020-06-12' AS Date), 1, N'sdfs', N'laurel', 22253, N'6642414460', N'6642414460', N'sdfsd@', NULL)
INSERT [dbo].[Cliente] ([IdCliente], [Nombre], [ApP], [ApM], [Edad], [FechaDeNacimiento], [Sexo], [RFC], [Direccion], [CP], [Telefono], [TelefonoCasa], [Correo], [IdAval]) VALUES (21, N'Jesús Eduardo', N'Escobedo', N'Diaz', 23, CAST(N'1996-10-15' AS Date), 1, N'EODJ9615NQ1', N'Zona Rio', 22222, N'6641234567', N'6641234567', N'jesus.escobedo16@tectijuana.edu.mx', NULL)
INSERT [dbo].[Cliente] ([IdCliente], [Nombre], [ApP], [ApM], [Edad], [FechaDeNacimiento], [Sexo], [RFC], [Direccion], [CP], [Telefono], [TelefonoCasa], [Correo], [IdAval]) VALUES (22, N'karen', N'Morales', N'Escobedo', 23, CAST(N'2020-06-12' AS Date), 1, N'sdfs', N'laurel', 22253, N'6642414460', N'6642414460', N'sdfsd@', NULL)
INSERT [dbo].[Cliente] ([IdCliente], [Nombre], [ApP], [ApM], [Edad], [FechaDeNacimiento], [Sexo], [RFC], [Direccion], [CP], [Telefono], [TelefonoCasa], [Correo], [IdAval]) VALUES (23, N'Karen Nohemi', N'Morales', N'Galindo', 22, CAST(N'1997-09-11' AS Date), 2, N'MOGK961019AJ', N'Calle Rio Lerma #12640', 22190, N'6642008983', N'9696200', N'Karen.morales16@tectijuana.edu.mx', NULL)
INSERT [dbo].[Cliente] ([IdCliente], [Nombre], [ApP], [ApM], [Edad], [FechaDeNacimiento], [Sexo], [RFC], [Direccion], [CP], [Telefono], [TelefonoCasa], [Correo], [IdAval]) VALUES (24, N'Fany', N'Escobedo', N'Diaz', 16, CAST(N'2004-01-05' AS Date), 2, N'EODJ9615NQ1', N'Zona Rio', 22222, N'6641234567', N'6641234567', N'elcorreo@gmail.com', NULL)
INSERT [dbo].[Cliente] ([IdCliente], [Nombre], [ApP], [ApM], [Edad], [FechaDeNacimiento], [Sexo], [RFC], [Direccion], [CP], [Telefono], [TelefonoCasa], [Correo], [IdAval]) VALUES (25, N'faf', N'fdgf', N'hfhg', 14, CAST(N'2019-05-09' AS Date), 1, N'bhjnkm', N'el luarel', 22253, N'6641234567', N'6641234567', N'ghhg@gmail.com', NULL)
INSERT [dbo].[Cliente] ([IdCliente], [Nombre], [ApP], [ApM], [Edad], [FechaDeNacimiento], [Sexo], [RFC], [Direccion], [CP], [Telefono], [TelefonoCasa], [Correo], [IdAval]) VALUES (26, N'ang', N'Escobedo', N'Diaz', 12, CAST(N'2020-06-19' AS Date), 1, N'EODJ9615NQ1', N'Zona Rio', 22222, N'6641234567', N'6641234567', N'jesus.escobedo16@tectijuana.edu.mx', NULL)
INSERT [dbo].[Cliente] ([IdCliente], [Nombre], [ApP], [ApM], [Edad], [FechaDeNacimiento], [Sexo], [RFC], [Direccion], [CP], [Telefono], [TelefonoCasa], [Correo], [IdAval]) VALUES (27, N'Angel', N'Escobedo', N'Diaz', 23, CAST(N'1996-10-15' AS Date), 1, NULL, N'Zona Rio', 22222, N'6641234567', N'6641234567', N'jesus.escobedo16@tectijuana.edu.mx', NULL)
INSERT [dbo].[Cliente] ([IdCliente], [Nombre], [ApP], [ApM], [Edad], [FechaDeNacimiento], [Sexo], [RFC], [Direccion], [CP], [Telefono], [TelefonoCasa], [Correo], [IdAval]) VALUES (28, N'Angel', N'Escobedo', N'Galindo', 1, CAST(N'2019-06-13' AS Date), 1, N'EODJ9615NQ1', N'Zona Rio', 22222, N'6641234567', N'6641234567', N'jesus.escobedo16@tectijuana.edu.mx', NULL)
INSERT [dbo].[Cliente] ([IdCliente], [Nombre], [ApP], [ApM], [Edad], [FechaDeNacimiento], [Sexo], [RFC], [Direccion], [CP], [Telefono], [TelefonoCasa], [Correo], [IdAval]) VALUES (29, N'Angel', N'Escobedo', N'Galindo', 1, CAST(N'2019-06-13' AS Date), 1, N'EODJ9615NQ1', N'Zona Rio', 22222, N'6641234567', N'6641234567', N'jesus.escobedo16@tectijuana.edu.mx', NULL)
INSERT [dbo].[Cliente] ([IdCliente], [Nombre], [ApP], [ApM], [Edad], [FechaDeNacimiento], [Sexo], [RFC], [Direccion], [CP], [Telefono], [TelefonoCasa], [Correo], [IdAval]) VALUES (30, NULL, NULL, NULL, 23, CAST(N'2020-06-13' AS Date), 1, NULL, N'Zona Rio', 22222, NULL, NULL, NULL, NULL)
INSERT [dbo].[Cliente] ([IdCliente], [Nombre], [ApP], [ApM], [Edad], [FechaDeNacimiento], [Sexo], [RFC], [Direccion], [CP], [Telefono], [TelefonoCasa], [Correo], [IdAval]) VALUES (31, NULL, NULL, NULL, 23, CAST(N'2020-06-13' AS Date), 1, NULL, N'Zona Rio', 22222, NULL, NULL, NULL, NULL)
INSERT [dbo].[Cliente] ([IdCliente], [Nombre], [ApP], [ApM], [Edad], [FechaDeNacimiento], [Sexo], [RFC], [Direccion], [CP], [Telefono], [TelefonoCasa], [Correo], [IdAval]) VALUES (32, N'Sergio Gamaliel', N'Escobedo', N'Diaz', 23, CAST(N'1996-10-15' AS Date), 1, N'EODJ9615NQ1', N'Zona Rio', 22222, N'6641234567', N'6641234567', N'jesus.escobedo16@tectijuana.edu.mx', 1)
INSERT [dbo].[Cliente] ([IdCliente], [Nombre], [ApP], [ApM], [Edad], [FechaDeNacimiento], [Sexo], [RFC], [Direccion], [CP], [Telefono], [TelefonoCasa], [Correo], [IdAval]) VALUES (33, N'Sergio Gamaliel', N'Escobedo', N'Diaz', 23, CAST(N'1996-10-15' AS Date), 1, N'EODJ9615NQ1', N'Zona Rio', 22222, N'6641234567', N'6641234567', N'jesus.escobedo16@tectijuana.edu.mx', 2)
INSERT [dbo].[Cliente] ([IdCliente], [Nombre], [ApP], [ApM], [Edad], [FechaDeNacimiento], [Sexo], [RFC], [Direccion], [CP], [Telefono], [TelefonoCasa], [Correo], [IdAval]) VALUES (34, N'Jesús Eduardo', N'Morales', N'Diaz', 12, CAST(N'2018-10-15' AS Date), 1, N'EODJ9615NQ1', N'Zona Rio', 22222, N'6641234567', N'6641234567', N'elcorreo@gmail.com', 3)
INSERT [dbo].[Cliente] ([IdCliente], [Nombre], [ApP], [ApM], [Edad], [FechaDeNacimiento], [Sexo], [RFC], [Direccion], [CP], [Telefono], [TelefonoCasa], [Correo], [IdAval]) VALUES (35, N'Jesús Eduardo', N'Morales', N'Diaz', 12, CAST(N'2018-10-15' AS Date), 1, N'EODJ9615NQ1', N'Zona Rio', 22222, N'6641234567', N'6641234567', N'elcorreo@gmail.com', 4)
INSERT [dbo].[Cliente] ([IdCliente], [Nombre], [ApP], [ApM], [Edad], [FechaDeNacimiento], [Sexo], [RFC], [Direccion], [CP], [Telefono], [TelefonoCasa], [Correo], [IdAval]) VALUES (36, N'Jesús Eduardo', N'Escobedo', N'Diaz', 12, CAST(N'1996-04-12' AS Date), 1, N'EODJ9615NQ1', N'Zona Rio', 22222, N'6641234567', N'6641234567', N'jesus.escobedo16@tectijuana.edu.mx', 5)
INSERT [dbo].[Cliente] ([IdCliente], [Nombre], [ApP], [ApM], [Edad], [FechaDeNacimiento], [Sexo], [RFC], [Direccion], [CP], [Telefono], [TelefonoCasa], [Correo], [IdAval]) VALUES (37, N'Jesús Eduardo', N'Escobedo', N'Diaz', 12, CAST(N'1996-04-12' AS Date), 1, N'EODJ9615NQ1', N'Zona Rio', 22222, N'6641234567', N'6641234567', N'jesus.escobedo16@tectijuana.edu.mx', 6)
INSERT [dbo].[Cliente] ([IdCliente], [Nombre], [ApP], [ApM], [Edad], [FechaDeNacimiento], [Sexo], [RFC], [Direccion], [CP], [Telefono], [TelefonoCasa], [Correo], [IdAval]) VALUES (38, N'eduardo', N'escobedo', N'diaz', 23, CAST(N'2020-06-12' AS Date), 1, N'sdfs', N'laurel', 22253, N'6642414460', N'6642414460', N'sdfsd@', 7)
INSERT [dbo].[Cliente] ([IdCliente], [Nombre], [ApP], [ApM], [Edad], [FechaDeNacimiento], [Sexo], [RFC], [Direccion], [CP], [Telefono], [TelefonoCasa], [Correo], [IdAval]) VALUES (39, N'q', N'q', N'q', 1, CAST(N'2020-10-10' AS Date), 1, N'q', N'Insurgentes', 22278, N'6641234567', N'6641234567', N'jesus.escobedo16@tectijuana.edu.mx', 8)
INSERT [dbo].[Cliente] ([IdCliente], [Nombre], [ApP], [ApM], [Edad], [FechaDeNacimiento], [Sexo], [RFC], [Direccion], [CP], [Telefono], [TelefonoCasa], [Correo], [IdAval]) VALUES (40, N'q', N'q', N'q', 1, CAST(N'2020-10-10' AS Date), 1, N'q', N'Insurgentes', 22278, N'6641234567', N'6641234567', N'jesus.escobedo16@tectijuana.edu.mx', 9)
INSERT [dbo].[Cliente] ([IdCliente], [Nombre], [ApP], [ApM], [Edad], [FechaDeNacimiento], [Sexo], [RFC], [Direccion], [CP], [Telefono], [TelefonoCasa], [Correo], [IdAval]) VALUES (41, N'juanisimo', N'Ed', N'es', 22, CAST(N'2020-10-10' AS Date), 1, N'asd', N'Zona Rio', 22222, N'6641234567', N'6641234567', N'elcorreo@gmail.com', 10)
INSERT [dbo].[Cliente] ([IdCliente], [Nombre], [ApP], [ApM], [Edad], [FechaDeNacimiento], [Sexo], [RFC], [Direccion], [CP], [Telefono], [TelefonoCasa], [Correo], [IdAval]) VALUES (42, N'Gamaliel', N'Escobedo', N'Diaz', 18, CAST(N'2002-01-29' AS Date), 1, N'EODJ9615NQ1', N'Zona Rio', 22222, N'6641234567', N'6641234567', N'elcorreo@gmail.com', 11)
INSERT [dbo].[Cliente] ([IdCliente], [Nombre], [ApP], [ApM], [Edad], [FechaDeNacimiento], [Sexo], [RFC], [Direccion], [CP], [Telefono], [TelefonoCasa], [Correo], [IdAval]) VALUES (43, N'Jesús Eduardo', N'Escobedo', N'Diaz', 23, CAST(N'1996-10-15' AS Date), 1, N'EODJ9615NQ1', N'El Laurel', 22253, N'6642414460', N'6641234567', N'jesus.escobedo16@tectijuana.edu.mx', 12)
INSERT [dbo].[Cliente] ([IdCliente], [Nombre], [ApP], [ApM], [Edad], [FechaDeNacimiento], [Sexo], [RFC], [Direccion], [CP], [Telefono], [TelefonoCasa], [Correo], [IdAval]) VALUES (44, N'Jesús Eduardo', N'Escobedo', N'Diaz', 23, CAST(N'1996-10-15' AS Date), 1, N'EODJ9615NQ1', N'Zona Rio', 22222, N'6641234567', N'6641234567', N'jesus.escobedo16@tectijuana.edu.mx', 13)
SET IDENTITY_INSERT [dbo].[Cliente] OFF
SET IDENTITY_INSERT [dbo].[Color] ON 

INSERT [dbo].[Color] ([IdColor], [Color], [Precio]) VALUES (1, N'Blanco', CAST(0.0000 AS Decimal(14, 4)))
INSERT [dbo].[Color] ([IdColor], [Color], [Precio]) VALUES (2, N'Rojo', CAST(43200.0000 AS Decimal(14, 4)))
INSERT [dbo].[Color] ([IdColor], [Color], [Precio]) VALUES (3, N'Negro', CAST(21600.0000 AS Decimal(14, 4)))
INSERT [dbo].[Color] ([IdColor], [Color], [Precio]) VALUES (4, N'Metalico', CAST(21600.0000 AS Decimal(14, 4)))
INSERT [dbo].[Color] ([IdColor], [Color], [Precio]) VALUES (5, N'Azul', CAST(21600.0000 AS Decimal(14, 4)))
SET IDENTITY_INSERT [dbo].[Color] OFF
SET IDENTITY_INSERT [dbo].[Consecionario] ON 

INSERT [dbo].[Consecionario] ([IdConsecionario], [Nombre]) VALUES (1, N'Tesla')
SET IDENTITY_INSERT [dbo].[Consecionario] OFF
SET IDENTITY_INSERT [dbo].[DatosFinanciamiento] ON 

INSERT [dbo].[DatosFinanciamiento] ([IdDatosFinanciamiento], [NombreEnTC], [NoTarjetaC], [IdMesExpiracion], [IdFechaExpiracion], [CVV], [CPFacturacion], [FechaPago], [PrimerPago], [IdCliente], [IdTiempoDePago]) VALUES (1, N'Gamaliel Escobedo Diaz', N'112233445566778899', 4, 5, N'123', 22278, CAST(N'2020-06-11' AS Date), NULL, NULL, 1)
INSERT [dbo].[DatosFinanciamiento] ([IdDatosFinanciamiento], [NombreEnTC], [NoTarjetaC], [IdMesExpiracion], [IdFechaExpiracion], [CVV], [CPFacturacion], [FechaPago], [PrimerPago], [IdCliente], [IdTiempoDePago]) VALUES (2, N'Gamaliel Escobedo Diaz', N'1234567', 3, 3, N'123', 22222, CAST(N'2020-06-12' AS Date), NULL, 6, 1)
INSERT [dbo].[DatosFinanciamiento] ([IdDatosFinanciamiento], [NombreEnTC], [NoTarjetaC], [IdMesExpiracion], [IdFechaExpiracion], [CVV], [CPFacturacion], [FechaPago], [PrimerPago], [IdCliente], [IdTiempoDePago]) VALUES (13, N'eduardo', N'123', 1, 1, N'123', 2222, CAST(N'2020-06-12' AS Date), NULL, 17, 1)
INSERT [dbo].[DatosFinanciamiento] ([IdDatosFinanciamiento], [NombreEnTC], [NoTarjetaC], [IdMesExpiracion], [IdFechaExpiracion], [CVV], [CPFacturacion], [FechaPago], [PrimerPago], [IdCliente], [IdTiempoDePago]) VALUES (14, N'eduardo', N'123', 1, 1, N'123', 2222, CAST(N'2020-06-12' AS Date), NULL, 18, 1)
INSERT [dbo].[DatosFinanciamiento] ([IdDatosFinanciamiento], [NombreEnTC], [NoTarjetaC], [IdMesExpiracion], [IdFechaExpiracion], [CVV], [CPFacturacion], [FechaPago], [PrimerPago], [IdCliente], [IdTiempoDePago]) VALUES (15, N'eduardo', N'123', 1, 1, N'123', 2222, CAST(N'2020-06-12' AS Date), NULL, 19, 1)
INSERT [dbo].[DatosFinanciamiento] ([IdDatosFinanciamiento], [NombreEnTC], [NoTarjetaC], [IdMesExpiracion], [IdFechaExpiracion], [CVV], [CPFacturacion], [FechaPago], [PrimerPago], [IdCliente], [IdTiempoDePago]) VALUES (16, N'eduardo', N'123', 1, 1, N'123', 2222, CAST(N'2020-06-12' AS Date), NULL, 20, 1)
INSERT [dbo].[DatosFinanciamiento] ([IdDatosFinanciamiento], [NombreEnTC], [NoTarjetaC], [IdMesExpiracion], [IdFechaExpiracion], [CVV], [CPFacturacion], [FechaPago], [PrimerPago], [IdCliente], [IdTiempoDePago]) VALUES (17, N'Jesus Eduardo Escobedo Diaz', N'12345678', 1, 1, N'123', 22222, CAST(N'2020-06-12' AS Date), NULL, 21, 2)
INSERT [dbo].[DatosFinanciamiento] ([IdDatosFinanciamiento], [NombreEnTC], [NoTarjetaC], [IdMesExpiracion], [IdFechaExpiracion], [CVV], [CPFacturacion], [FechaPago], [PrimerPago], [IdCliente], [IdTiempoDePago]) VALUES (18, N'eduardo', N'123', 1, 1, N'123', 2222, CAST(N'2020-06-12' AS Date), CAST(136461.00 AS Decimal(14, 2)), 22, 1)
INSERT [dbo].[DatosFinanciamiento] ([IdDatosFinanciamiento], [NombreEnTC], [NoTarjetaC], [IdMesExpiracion], [IdFechaExpiracion], [CVV], [CPFacturacion], [FechaPago], [PrimerPago], [IdCliente], [IdTiempoDePago]) VALUES (19, N'Karen Nohemi Morales Galindo', N'1234567', 8, 5, N'3', 22190, CAST(N'2020-06-12' AS Date), CAST(162608.00 AS Decimal(14, 2)), 23, 2)
INSERT [dbo].[DatosFinanciamiento] ([IdDatosFinanciamiento], [NombreEnTC], [NoTarjetaC], [IdMesExpiracion], [IdFechaExpiracion], [CVV], [CPFacturacion], [FechaPago], [PrimerPago], [IdCliente], [IdTiempoDePago]) VALUES (20, N'fany Escobedo Diaz', N'1234567', 2, 2, N'123', 22222, CAST(N'2020-06-12' AS Date), CAST(171355.50 AS Decimal(14, 2)), 24, 2)
INSERT [dbo].[DatosFinanciamiento] ([IdDatosFinanciamiento], [NombreEnTC], [NoTarjetaC], [IdMesExpiracion], [IdFechaExpiracion], [CVV], [CPFacturacion], [FechaPago], [PrimerPago], [IdCliente], [IdTiempoDePago]) VALUES (21, N'fghf', N'1234', 1, 1, N'123', 22253, CAST(N'2020-06-12' AS Date), CAST(141709.50 AS Decimal(14, 2)), 25, 2)
INSERT [dbo].[DatosFinanciamiento] ([IdDatosFinanciamiento], [NombreEnTC], [NoTarjetaC], [IdMesExpiracion], [IdFechaExpiracion], [CVV], [CPFacturacion], [FechaPago], [PrimerPago], [IdCliente], [IdTiempoDePago]) VALUES (22, N'Jesus Eduardo Escobedo Diaz', N'456', 1, 1, N'123', 22222, CAST(N'2020-06-12' AS Date), CAST(141709.50 AS Decimal(14, 2)), 26, 2)
INSERT [dbo].[DatosFinanciamiento] ([IdDatosFinanciamiento], [NombreEnTC], [NoTarjetaC], [IdMesExpiracion], [IdFechaExpiracion], [CVV], [CPFacturacion], [FechaPago], [PrimerPago], [IdCliente], [IdTiempoDePago]) VALUES (23, N'Jesus Eduardo Escobedo Diaz', N'123456', 1, 1, N'123', 22222, CAST(N'2020-06-12' AS Date), CAST(141709.50 AS Decimal(14, 2)), 27, 2)
INSERT [dbo].[DatosFinanciamiento] ([IdDatosFinanciamiento], [NombreEnTC], [NoTarjetaC], [IdMesExpiracion], [IdFechaExpiracion], [CVV], [CPFacturacion], [FechaPago], [PrimerPago], [IdCliente], [IdTiempoDePago]) VALUES (24, N'Jesus Eduardo Escobedo Diaz', N'11223344', 1, 1, N'159', 22222, CAST(N'2020-06-13' AS Date), CAST(170707.50 AS Decimal(14, 2)), 28, 2)
INSERT [dbo].[DatosFinanciamiento] ([IdDatosFinanciamiento], [NombreEnTC], [NoTarjetaC], [IdMesExpiracion], [IdFechaExpiracion], [CVV], [CPFacturacion], [FechaPago], [PrimerPago], [IdCliente], [IdTiempoDePago]) VALUES (25, N'Jesus Eduardo Escobedo Diaz', N'11223344', 1, 1, N'159', 22222, CAST(N'2020-06-13' AS Date), CAST(170707.50 AS Decimal(14, 2)), 29, 2)
INSERT [dbo].[DatosFinanciamiento] ([IdDatosFinanciamiento], [NombreEnTC], [NoTarjetaC], [IdMesExpiracion], [IdFechaExpiracion], [CVV], [CPFacturacion], [FechaPago], [PrimerPago], [IdCliente], [IdTiempoDePago]) VALUES (26, NULL, NULL, 1, 1, NULL, 22222, CAST(N'2020-06-13' AS Date), CAST(752661.00 AS Decimal(14, 2)), 30, 1)
INSERT [dbo].[DatosFinanciamiento] ([IdDatosFinanciamiento], [NombreEnTC], [NoTarjetaC], [IdMesExpiracion], [IdFechaExpiracion], [CVV], [CPFacturacion], [FechaPago], [PrimerPago], [IdCliente], [IdTiempoDePago]) VALUES (27, NULL, NULL, 1, 1, NULL, 22222, CAST(N'2020-06-13' AS Date), CAST(752661.00 AS Decimal(14, 2)), 31, 1)
INSERT [dbo].[DatosFinanciamiento] ([IdDatosFinanciamiento], [NombreEnTC], [NoTarjetaC], [IdMesExpiracion], [IdFechaExpiracion], [CVV], [CPFacturacion], [FechaPago], [PrimerPago], [IdCliente], [IdTiempoDePago]) VALUES (28, N'Sergio Gamaliel Escobedo Diaz', N'12345678', 3, 2, N'123', 22278, CAST(N'2020-06-13' AS Date), CAST(179455.50 AS Decimal(14, 2)), 32, 2)
INSERT [dbo].[DatosFinanciamiento] ([IdDatosFinanciamiento], [NombreEnTC], [NoTarjetaC], [IdMesExpiracion], [IdFechaExpiracion], [CVV], [CPFacturacion], [FechaPago], [PrimerPago], [IdCliente], [IdTiempoDePago]) VALUES (29, N'Sergio Gamaliel Escobedo Diaz', N'12345678', 3, 2, N'123', 22278, CAST(N'2020-06-13' AS Date), CAST(179455.50 AS Decimal(14, 2)), 33, 2)
INSERT [dbo].[DatosFinanciamiento] ([IdDatosFinanciamiento], [NombreEnTC], [NoTarjetaC], [IdMesExpiracion], [IdFechaExpiracion], [CVV], [CPFacturacion], [FechaPago], [PrimerPago], [IdCliente], [IdTiempoDePago]) VALUES (30, N'Jesus Eduardo Escobedo Diaz', N'1165', 1, 1, N'123', 22222, CAST(N'2020-06-13' AS Date), CAST(172830.00 AS Decimal(14, 2)), 34, 3)
INSERT [dbo].[DatosFinanciamiento] ([IdDatosFinanciamiento], [NombreEnTC], [NoTarjetaC], [IdMesExpiracion], [IdFechaExpiracion], [CVV], [CPFacturacion], [FechaPago], [PrimerPago], [IdCliente], [IdTiempoDePago]) VALUES (31, N'Jesus Eduardo Escobedo Diaz', N'1165', 1, 1, N'123', 22222, CAST(N'2020-06-13' AS Date), CAST(172830.00 AS Decimal(14, 2)), 35, 3)
INSERT [dbo].[DatosFinanciamiento] ([IdDatosFinanciamiento], [NombreEnTC], [NoTarjetaC], [IdMesExpiracion], [IdFechaExpiracion], [CVV], [CPFacturacion], [FechaPago], [PrimerPago], [IdCliente], [IdTiempoDePago]) VALUES (32, N'Jesus Eduardo Escobedo Diaz', N'123456', 1, 1, N'123', 22222, CAST(N'2020-06-13' AS Date), CAST(141709.50 AS Decimal(14, 2)), 36, 2)
INSERT [dbo].[DatosFinanciamiento] ([IdDatosFinanciamiento], [NombreEnTC], [NoTarjetaC], [IdMesExpiracion], [IdFechaExpiracion], [CVV], [CPFacturacion], [FechaPago], [PrimerPago], [IdCliente], [IdTiempoDePago]) VALUES (33, N'Jesus Eduardo Escobedo Diaz', N'123456', 1, 1, N'123', 22222, CAST(N'2020-06-13' AS Date), CAST(141709.50 AS Decimal(14, 2)), 37, 2)
INSERT [dbo].[DatosFinanciamiento] ([IdDatosFinanciamiento], [NombreEnTC], [NoTarjetaC], [IdMesExpiracion], [IdFechaExpiracion], [CVV], [CPFacturacion], [FechaPago], [PrimerPago], [IdCliente], [IdTiempoDePago]) VALUES (34, N'eduardo', N'123', 1, 1, N'123', 2222, CAST(N'2020-06-13' AS Date), CAST(136461.00 AS Decimal(14, 2)), 38, 1)
INSERT [dbo].[DatosFinanciamiento] ([IdDatosFinanciamiento], [NombreEnTC], [NoTarjetaC], [IdMesExpiracion], [IdFechaExpiracion], [CVV], [CPFacturacion], [FechaPago], [PrimerPago], [IdCliente], [IdTiempoDePago]) VALUES (35, N'Jesus Eduardo Escobedo Diaz', N'1', 1, 1, N'123', 2225, CAST(N'2020-06-13' AS Date), CAST(141709.50 AS Decimal(14, 2)), 39, 2)
INSERT [dbo].[DatosFinanciamiento] ([IdDatosFinanciamiento], [NombreEnTC], [NoTarjetaC], [IdMesExpiracion], [IdFechaExpiracion], [CVV], [CPFacturacion], [FechaPago], [PrimerPago], [IdCliente], [IdTiempoDePago]) VALUES (36, N'Jesus Eduardo Escobedo Diaz', N'1', 1, 1, N'123', 2225, CAST(N'2020-06-13' AS Date), CAST(141709.50 AS Decimal(14, 2)), 40, 2)
INSERT [dbo].[DatosFinanciamiento] ([IdDatosFinanciamiento], [NombreEnTC], [NoTarjetaC], [IdMesExpiracion], [IdFechaExpiracion], [CVV], [CPFacturacion], [FechaPago], [PrimerPago], [IdCliente], [IdTiempoDePago]) VALUES (37, N'fany Escobedo Diaz', N'123456', 1, 1, N'123', 22222, CAST(N'2020-06-13' AS Date), CAST(141709.50 AS Decimal(14, 2)), 41, 2)
INSERT [dbo].[DatosFinanciamiento] ([IdDatosFinanciamiento], [NombreEnTC], [NoTarjetaC], [IdMesExpiracion], [IdFechaExpiracion], [CVV], [CPFacturacion], [FechaPago], [PrimerPago], [IdCliente], [IdTiempoDePago]) VALUES (38, N'Jesus Eduardo Escobedo Diaz', N'123456', 1, 1, N'123', 22222, CAST(N'2020-06-13' AS Date), CAST(146958.00 AS Decimal(14, 2)), 42, 3)
INSERT [dbo].[DatosFinanciamiento] ([IdDatosFinanciamiento], [NombreEnTC], [NoTarjetaC], [IdMesExpiracion], [IdFechaExpiracion], [CVV], [CPFacturacion], [FechaPago], [PrimerPago], [IdCliente], [IdTiempoDePago]) VALUES (39, N'Jesus Eduardo Escobedo Diaz', N'11234567', 1, 1, N'123', 22222, CAST(N'2020-06-14' AS Date), CAST(158557.50 AS Decimal(14, 2)), 43, 2)
INSERT [dbo].[DatosFinanciamiento] ([IdDatosFinanciamiento], [NombreEnTC], [NoTarjetaC], [IdMesExpiracion], [IdFechaExpiracion], [CVV], [CPFacturacion], [FechaPago], [PrimerPago], [IdCliente], [IdTiempoDePago]) VALUES (40, N'Jesus Eduardo Escobedo Diaz', N'12345678', 1, 1, N'123', 22222, CAST(N'2020-06-14' AS Date), CAST(141709.50 AS Decimal(14, 2)), 44, 2)
SET IDENTITY_INSERT [dbo].[DatosFinanciamiento] OFF
SET IDENTITY_INSERT [dbo].[Empleado] ON 

INSERT [dbo].[Empleado] ([IdEmpleado], [Nombre], [ApP], [ApM], [Telefono], [Correo], [RFC], [IdTipoEmpleado], [IdUsuarioLogin]) VALUES (1, N'Karen', N'Morales', N'Galindo', N'6641234567', N'elcorreo@gmail.com', N'sdfs5', 1, 1)
SET IDENTITY_INSERT [dbo].[Empleado] OFF
SET IDENTITY_INSERT [dbo].[FechaExpiracion] ON 

INSERT [dbo].[FechaExpiracion] ([IdFechaExpiracion], [FechaExpiracion]) VALUES (1, 2020)
INSERT [dbo].[FechaExpiracion] ([IdFechaExpiracion], [FechaExpiracion]) VALUES (2, 2021)
INSERT [dbo].[FechaExpiracion] ([IdFechaExpiracion], [FechaExpiracion]) VALUES (3, 2022)
INSERT [dbo].[FechaExpiracion] ([IdFechaExpiracion], [FechaExpiracion]) VALUES (4, 2023)
INSERT [dbo].[FechaExpiracion] ([IdFechaExpiracion], [FechaExpiracion]) VALUES (5, 2024)
INSERT [dbo].[FechaExpiracion] ([IdFechaExpiracion], [FechaExpiracion]) VALUES (6, 2025)
INSERT [dbo].[FechaExpiracion] ([IdFechaExpiracion], [FechaExpiracion]) VALUES (7, 2026)
SET IDENTITY_INSERT [dbo].[FechaExpiracion] OFF
SET IDENTITY_INSERT [dbo].[MesExpiracion] ON 

INSERT [dbo].[MesExpiracion] ([IdMesExpiracion], [MesExpiracion]) VALUES (1, N'01')
INSERT [dbo].[MesExpiracion] ([IdMesExpiracion], [MesExpiracion]) VALUES (2, N'02')
INSERT [dbo].[MesExpiracion] ([IdMesExpiracion], [MesExpiracion]) VALUES (3, N'03')
INSERT [dbo].[MesExpiracion] ([IdMesExpiracion], [MesExpiracion]) VALUES (4, N'04')
INSERT [dbo].[MesExpiracion] ([IdMesExpiracion], [MesExpiracion]) VALUES (5, N'05')
INSERT [dbo].[MesExpiracion] ([IdMesExpiracion], [MesExpiracion]) VALUES (6, N'06')
INSERT [dbo].[MesExpiracion] ([IdMesExpiracion], [MesExpiracion]) VALUES (7, N'07')
INSERT [dbo].[MesExpiracion] ([IdMesExpiracion], [MesExpiracion]) VALUES (8, N'08')
INSERT [dbo].[MesExpiracion] ([IdMesExpiracion], [MesExpiracion]) VALUES (9, N'09')
INSERT [dbo].[MesExpiracion] ([IdMesExpiracion], [MesExpiracion]) VALUES (10, N'10')
INSERT [dbo].[MesExpiracion] ([IdMesExpiracion], [MesExpiracion]) VALUES (11, N'11')
INSERT [dbo].[MesExpiracion] ([IdMesExpiracion], [MesExpiracion]) VALUES (12, N'12')
SET IDENTITY_INSERT [dbo].[MesExpiracion] OFF
SET IDENTITY_INSERT [dbo].[Modelo] ON 

INSERT [dbo].[Modelo] ([IdModelo], [Modelo]) VALUES (1, N'Model S')
INSERT [dbo].[Modelo] ([IdModelo], [Modelo]) VALUES (2, N'Model 3')
INSERT [dbo].[Modelo] ([IdModelo], [Modelo]) VALUES (3, N'Model x')
INSERT [dbo].[Modelo] ([IdModelo], [Modelo]) VALUES (4, N'cybertruck')
INSERT [dbo].[Modelo] ([IdModelo], [Modelo]) VALUES (5, N'Y')
SET IDENTITY_INSERT [dbo].[Modelo] OFF
SET IDENTITY_INSERT [dbo].[Performance] ON 

INSERT [dbo].[Performance] ([IdPerformance], [Performance], [Precio]) VALUES (1, N'Base', CAST(0.0000 AS Decimal(14, 4)))
INSERT [dbo].[Performance] ([IdPerformance], [Performance], [Precio]) VALUES (2, N'Autonomia estandar', CAST(20000.0000 AS Decimal(14, 4)))
INSERT [dbo].[Performance] ([IdPerformance], [Performance], [Precio]) VALUES (3, N'Autonomia mayor', CAST(30000.0000 AS Decimal(14, 4)))
INSERT [dbo].[Performance] ([IdPerformance], [Performance], [Precio]) VALUES (4, N'Performance', CAST(40000.0000 AS Decimal(14, 4)))
SET IDENTITY_INSERT [dbo].[Performance] OFF
SET IDENTITY_INSERT [dbo].[Sexo] ON 

INSERT [dbo].[Sexo] ([IdSexo], [Sexo]) VALUES (1, N'Hombre')
INSERT [dbo].[Sexo] ([IdSexo], [Sexo]) VALUES (2, N'Mujer')
SET IDENTITY_INSERT [dbo].[Sexo] OFF
SET IDENTITY_INSERT [dbo].[Sucursal] ON 

INSERT [dbo].[Sucursal] ([IdSucursal], [Nombre], [Direccion], [CP], [IdConsecionario]) VALUES (4, N'Tesla', N'3248 Lionshead Ave, Carlsbad, CA , Estados Unidos', 92010, 1)
INSERT [dbo].[Sucursal] ([IdSucursal], [Nombre], [Direccion], [CP], [IdConsecionario]) VALUES (5, N'Tesla', N'7007 Friars Rd #325a, San Diego, CA ,Estados Unidos', 92108, 1)
INSERT [dbo].[Sucursal] ([IdSucursal], [Nombre], [Direccion], [CP], [IdConsecionario]) VALUES (6, N'Tesla Service Center', N'5600 Kearny Mesa Rd, CA, Estados Unidos', 92111, 1)
SET IDENTITY_INSERT [dbo].[Sucursal] OFF
SET IDENTITY_INSERT [dbo].[TiempoDePago] ON 

INSERT [dbo].[TiempoDePago] ([IdTiempoDePago], [TiempoDePago]) VALUES (1, N'3 Años')
INSERT [dbo].[TiempoDePago] ([IdTiempoDePago], [TiempoDePago]) VALUES (2, N'5 Años')
INSERT [dbo].[TiempoDePago] ([IdTiempoDePago], [TiempoDePago]) VALUES (3, N'7 Años')
SET IDENTITY_INSERT [dbo].[TiempoDePago] OFF
SET IDENTITY_INSERT [dbo].[TipoEmpleado] ON 

INSERT [dbo].[TipoEmpleado] ([IdTipoEmpleado], [TipoEmpleado]) VALUES (1, N'Vendedor')
INSERT [dbo].[TipoEmpleado] ([IdTipoEmpleado], [TipoEmpleado]) VALUES (2, N'Gerente')
INSERT [dbo].[TipoEmpleado] ([IdTipoEmpleado], [TipoEmpleado]) VALUES (3, N'Recepcionista')
SET IDENTITY_INSERT [dbo].[TipoEmpleado] OFF
SET IDENTITY_INSERT [dbo].[UsuarioLogin] ON 

INSERT [dbo].[UsuarioLogin] ([IdUsuarioLogin], [Usuario], [Contra]) VALUES (1, N'karen', 0x02000000A0EE796C69BB546DFEF3E21B87728D9AF8FCCDCB04123723405D54E5701A8665)
SET IDENTITY_INSERT [dbo].[UsuarioLogin] OFF
SET IDENTITY_INSERT [dbo].[Vendido] ON 

INSERT [dbo].[Vendido] ([IdVendido], [Vendido]) VALUES (1, N'Vendido')
INSERT [dbo].[Vendido] ([IdVendido], [Vendido]) VALUES (2, N'Entregado')
INSERT [dbo].[Vendido] ([IdVendido], [Vendido]) VALUES (3, N'Cancelado')
SET IDENTITY_INSERT [dbo].[Vendido] OFF
SET IDENTITY_INSERT [dbo].[VentaAuto] ON 

INSERT [dbo].[VentaAuto] ([IdVentaAuto], [IdEmpleado], [IdAutos], [IdAuto_Adic], [IdCliente], [IdSucursal], [Fecha], [IdVendido]) VALUES (14, 1, 14, 20, 20, 4, CAST(N'2020-06-12' AS Date), 2)
INSERT [dbo].[VentaAuto] ([IdVentaAuto], [IdEmpleado], [IdAutos], [IdAuto_Adic], [IdCliente], [IdSucursal], [Fecha], [IdVendido]) VALUES (15, 1, 15, 21, 21, 4, CAST(N'2020-06-12' AS Date), 2)
INSERT [dbo].[VentaAuto] ([IdVentaAuto], [IdEmpleado], [IdAutos], [IdAuto_Adic], [IdCliente], [IdSucursal], [Fecha], [IdVendido]) VALUES (16, 1, 14, 22, 22, 4, CAST(N'2020-06-12' AS Date), 2)
INSERT [dbo].[VentaAuto] ([IdVentaAuto], [IdEmpleado], [IdAutos], [IdAuto_Adic], [IdCliente], [IdSucursal], [Fecha], [IdVendido]) VALUES (17, 1, 15, 23, 23, 4, CAST(N'2020-06-12' AS Date), 2)
INSERT [dbo].[VentaAuto] ([IdVentaAuto], [IdEmpleado], [IdAutos], [IdAuto_Adic], [IdCliente], [IdSucursal], [Fecha], [IdVendido]) VALUES (18, 1, 15, 24, 24, 4, CAST(N'2020-06-12' AS Date), 2)
INSERT [dbo].[VentaAuto] ([IdVentaAuto], [IdEmpleado], [IdAutos], [IdAuto_Adic], [IdCliente], [IdSucursal], [Fecha], [IdVendido]) VALUES (19, 1, 14, 25, 25, 4, CAST(N'2020-06-12' AS Date), 2)
INSERT [dbo].[VentaAuto] ([IdVentaAuto], [IdEmpleado], [IdAutos], [IdAuto_Adic], [IdCliente], [IdSucursal], [Fecha], [IdVendido]) VALUES (20, 1, 14, 26, 26, 4, CAST(N'2020-06-12' AS Date), 2)
INSERT [dbo].[VentaAuto] ([IdVentaAuto], [IdEmpleado], [IdAutos], [IdAuto_Adic], [IdCliente], [IdSucursal], [Fecha], [IdVendido]) VALUES (21, 1, 14, 27, 27, 4, CAST(N'2020-06-12' AS Date), 2)
INSERT [dbo].[VentaAuto] ([IdVentaAuto], [IdEmpleado], [IdAutos], [IdAuto_Adic], [IdCliente], [IdSucursal], [Fecha], [IdVendido]) VALUES (22, 1, 15, 28, 28, 4, CAST(N'2020-06-13' AS Date), 2)
INSERT [dbo].[VentaAuto] ([IdVentaAuto], [IdEmpleado], [IdAutos], [IdAuto_Adic], [IdCliente], [IdSucursal], [Fecha], [IdVendido]) VALUES (23, 1, 15, 29, 29, 4, CAST(N'2020-06-13' AS Date), 2)
INSERT [dbo].[VentaAuto] ([IdVentaAuto], [IdEmpleado], [IdAutos], [IdAuto_Adic], [IdCliente], [IdSucursal], [Fecha], [IdVendido]) VALUES (24, 1, 18, 31, 30, 4, CAST(N'2020-06-13' AS Date), 2)
INSERT [dbo].[VentaAuto] ([IdVentaAuto], [IdEmpleado], [IdAutos], [IdAuto_Adic], [IdCliente], [IdSucursal], [Fecha], [IdVendido]) VALUES (25, 1, 18, 30, 31, 4, CAST(N'2020-06-13' AS Date), 2)
INSERT [dbo].[VentaAuto] ([IdVentaAuto], [IdEmpleado], [IdAutos], [IdAuto_Adic], [IdCliente], [IdSucursal], [Fecha], [IdVendido]) VALUES (26, 1, 15, 32, 32, 4, CAST(N'2020-06-13' AS Date), 2)
INSERT [dbo].[VentaAuto] ([IdVentaAuto], [IdEmpleado], [IdAutos], [IdAuto_Adic], [IdCliente], [IdSucursal], [Fecha], [IdVendido]) VALUES (27, 1, 15, 33, 33, 4, CAST(N'2020-06-13' AS Date), 2)
INSERT [dbo].[VentaAuto] ([IdVentaAuto], [IdEmpleado], [IdAutos], [IdAuto_Adic], [IdCliente], [IdSucursal], [Fecha], [IdVendido]) VALUES (28, 1, 15, 34, 34, 4, CAST(N'2020-06-13' AS Date), 2)
INSERT [dbo].[VentaAuto] ([IdVentaAuto], [IdEmpleado], [IdAutos], [IdAuto_Adic], [IdCliente], [IdSucursal], [Fecha], [IdVendido]) VALUES (29, 1, 15, 35, 35, 4, CAST(N'2020-06-13' AS Date), 2)
INSERT [dbo].[VentaAuto] ([IdVentaAuto], [IdEmpleado], [IdAutos], [IdAuto_Adic], [IdCliente], [IdSucursal], [Fecha], [IdVendido]) VALUES (30, 1, 14, 36, 36, 4, CAST(N'2020-06-13' AS Date), 2)
INSERT [dbo].[VentaAuto] ([IdVentaAuto], [IdEmpleado], [IdAutos], [IdAuto_Adic], [IdCliente], [IdSucursal], [Fecha], [IdVendido]) VALUES (31, 1, 14, 37, 37, 4, CAST(N'2020-06-13' AS Date), 2)
INSERT [dbo].[VentaAuto] ([IdVentaAuto], [IdEmpleado], [IdAutos], [IdAuto_Adic], [IdCliente], [IdSucursal], [Fecha], [IdVendido]) VALUES (32, 1, 14, 38, 38, 4, CAST(N'2020-06-13' AS Date), 2)
INSERT [dbo].[VentaAuto] ([IdVentaAuto], [IdEmpleado], [IdAutos], [IdAuto_Adic], [IdCliente], [IdSucursal], [Fecha], [IdVendido]) VALUES (33, 1, 14, 39, 39, 4, CAST(N'2020-06-13' AS Date), 2)
INSERT [dbo].[VentaAuto] ([IdVentaAuto], [IdEmpleado], [IdAutos], [IdAuto_Adic], [IdCliente], [IdSucursal], [Fecha], [IdVendido]) VALUES (34, 1, 14, 40, 40, 4, CAST(N'2020-06-13' AS Date), 2)
INSERT [dbo].[VentaAuto] ([IdVentaAuto], [IdEmpleado], [IdAutos], [IdAuto_Adic], [IdCliente], [IdSucursal], [Fecha], [IdVendido]) VALUES (35, 1, 14, 41, 41, 4, CAST(N'2020-06-13' AS Date), 2)
INSERT [dbo].[VentaAuto] ([IdVentaAuto], [IdEmpleado], [IdAutos], [IdAuto_Adic], [IdCliente], [IdSucursal], [Fecha], [IdVendido]) VALUES (36, 1, 14, 42, 42, 4, CAST(N'2020-06-13' AS Date), 2)
INSERT [dbo].[VentaAuto] ([IdVentaAuto], [IdEmpleado], [IdAutos], [IdAuto_Adic], [IdCliente], [IdSucursal], [Fecha], [IdVendido]) VALUES (37, 1, 14, 43, 43, 4, CAST(N'2020-06-14' AS Date), 2)
INSERT [dbo].[VentaAuto] ([IdVentaAuto], [IdEmpleado], [IdAutos], [IdAuto_Adic], [IdCliente], [IdSucursal], [Fecha], [IdVendido]) VALUES (38, 1, 14, 44, 44, 4, CAST(N'2020-06-14' AS Date), 2)
SET IDENTITY_INSERT [dbo].[VentaAuto] OFF
SET IDENTITY_INSERT [dbo].[ZonaHoraria] ON 

INSERT [dbo].[ZonaHoraria] ([IdZonaHoraria], [Zona], [Estado_]) VALUES (1, N'Pacific Standard Time (Mexico)', 1)
SET IDENTITY_INSERT [dbo].[ZonaHoraria] OFF
ALTER TABLE [dbo].[Auto_Adiccionales]  WITH CHECK ADD FOREIGN KEY([IdAutos])
REFERENCES [dbo].[Autos] ([IdAutos])
GO
ALTER TABLE [dbo].[Auto_Adiccionales]  WITH CHECK ADD FOREIGN KEY([IdColor])
REFERENCES [dbo].[Color] ([IdColor])
GO
ALTER TABLE [dbo].[Auto_Adiccionales]  WITH CHECK ADD FOREIGN KEY([IdPerformance])
REFERENCES [dbo].[Performance] ([IdPerformance])
GO
ALTER TABLE [dbo].[AutoExistencia]  WITH CHECK ADD FOREIGN KEY([IdAutos])
REFERENCES [dbo].[Autos] ([IdAutos])
GO
ALTER TABLE [dbo].[AutoExistencia]  WITH CHECK ADD FOREIGN KEY([IdModelo])
REFERENCES [dbo].[Modelo] ([IdModelo])
GO
ALTER TABLE [dbo].[AutoExistencia]  WITH CHECK ADD FOREIGN KEY([IdSucursal])
REFERENCES [dbo].[Sucursal] ([IdSucursal])
GO
ALTER TABLE [dbo].[Autos]  WITH CHECK ADD FOREIGN KEY([IdAnio])
REFERENCES [dbo].[Anio] ([IdAnio])
GO
ALTER TABLE [dbo].[Autos]  WITH CHECK ADD FOREIGN KEY([IdColor])
REFERENCES [dbo].[Color] ([IdColor])
GO
ALTER TABLE [dbo].[Autos]  WITH CHECK ADD FOREIGN KEY([IdModelo])
REFERENCES [dbo].[Modelo] ([IdModelo])
GO
ALTER TABLE [dbo].[BitacoraDePago]  WITH CHECK ADD FOREIGN KEY([IdVentaAuto])
REFERENCES [dbo].[VentaAuto] ([IdVentaAuto])
GO
ALTER TABLE [dbo].[Cliente]  WITH CHECK ADD FOREIGN KEY([IdAval])
REFERENCES [dbo].[Aval] ([IdAval])
GO
ALTER TABLE [dbo].[Cliente]  WITH CHECK ADD FOREIGN KEY([Sexo])
REFERENCES [dbo].[Sexo] ([IdSexo])
GO
ALTER TABLE [dbo].[DatosFinanciamiento]  WITH CHECK ADD FOREIGN KEY([IdCliente])
REFERENCES [dbo].[Cliente] ([IdCliente])
GO
ALTER TABLE [dbo].[DatosFinanciamiento]  WITH CHECK ADD FOREIGN KEY([IdFechaExpiracion])
REFERENCES [dbo].[FechaExpiracion] ([IdFechaExpiracion])
GO
ALTER TABLE [dbo].[DatosFinanciamiento]  WITH CHECK ADD FOREIGN KEY([IdMesExpiracion])
REFERENCES [dbo].[MesExpiracion] ([IdMesExpiracion])
GO
ALTER TABLE [dbo].[DatosFinanciamiento]  WITH CHECK ADD FOREIGN KEY([IdTiempoDePago])
REFERENCES [dbo].[TiempoDePago] ([IdTiempoDePago])
GO
ALTER TABLE [dbo].[Empleado]  WITH CHECK ADD FOREIGN KEY([IdTipoEmpleado])
REFERENCES [dbo].[TipoEmpleado] ([IdTipoEmpleado])
GO
ALTER TABLE [dbo].[Empleado]  WITH CHECK ADD FOREIGN KEY([IdUsuarioLogin])
REFERENCES [dbo].[UsuarioLogin] ([IdUsuarioLogin])
GO
ALTER TABLE [dbo].[EmpleadoSucursal]  WITH CHECK ADD FOREIGN KEY([IdEmpleado])
REFERENCES [dbo].[Empleado] ([IdEmpleado])
GO
ALTER TABLE [dbo].[EmpleadoSucursal]  WITH CHECK ADD FOREIGN KEY([IdSucursal])
REFERENCES [dbo].[Sucursal] ([IdSucursal])
GO
ALTER TABLE [dbo].[PartesInventario]  WITH CHECK ADD FOREIGN KEY([IdPartes])
REFERENCES [dbo].[Partes] ([IdPartes])
GO
ALTER TABLE [dbo].[PartesInventario]  WITH CHECK ADD FOREIGN KEY([IdSucursal])
REFERENCES [dbo].[Sucursal] ([IdSucursal])
GO
ALTER TABLE [dbo].[PartesPrecioBitacora]  WITH CHECK ADD FOREIGN KEY([IdPartes])
REFERENCES [dbo].[Partes] ([IdPartes])
GO
ALTER TABLE [dbo].[PartesPrecioBitacora]  WITH CHECK ADD FOREIGN KEY([IdPartesPrecio])
REFERENCES [dbo].[PartesPrecio] ([IdPartesPrecio])
GO
ALTER TABLE [dbo].[Sucursal]  WITH CHECK ADD FOREIGN KEY([IdConsecionario])
REFERENCES [dbo].[Consecionario] ([IdConsecionario])
GO
ALTER TABLE [dbo].[VentaAuto]  WITH CHECK ADD FOREIGN KEY([IdAutos])
REFERENCES [dbo].[Autos] ([IdAutos])
GO
ALTER TABLE [dbo].[VentaAuto]  WITH CHECK ADD FOREIGN KEY([IdAuto_Adic])
REFERENCES [dbo].[Auto_Adiccionales] ([IdAuto_Adic])
GO
ALTER TABLE [dbo].[VentaAuto]  WITH CHECK ADD FOREIGN KEY([IdCliente])
REFERENCES [dbo].[Cliente] ([IdCliente])
GO
ALTER TABLE [dbo].[VentaAuto]  WITH CHECK ADD FOREIGN KEY([IdEmpleado])
REFERENCES [dbo].[Empleado] ([IdEmpleado])
GO
ALTER TABLE [dbo].[VentaAuto]  WITH CHECK ADD FOREIGN KEY([IdSucursal])
REFERENCES [dbo].[Sucursal] ([IdSucursal])
GO
ALTER TABLE [dbo].[VentaAuto]  WITH CHECK ADD FOREIGN KEY([IdVendido])
REFERENCES [dbo].[Vendido] ([IdVendido])
GO
ALTER TABLE [dbo].[VentaParte]  WITH CHECK ADD FOREIGN KEY([IdCliente])
REFERENCES [dbo].[Cliente] ([IdCliente])
GO
ALTER TABLE [dbo].[VentaParte]  WITH CHECK ADD FOREIGN KEY([IdEmpleado])
REFERENCES [dbo].[Empleado] ([IdEmpleado])
GO
ALTER TABLE [dbo].[VentaParte]  WITH CHECK ADD FOREIGN KEY([IdSucursal])
REFERENCES [dbo].[Sucursal] ([IdSucursal])
GO
/****** Object:  StoredProcedure [dbo].[AutosAlta]    Script Date: 14/06/2020 11:34:01 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[AutosAlta]
@Marca varchar(25),
@IdColor int ,
@Modelo varchar(25),
@IdAnio int,
@Precio Decimal (14,4),
@Cantidad int,
@IdSucursal int,
@Bandera int output
as 
begin
BEGIN TRY
		BEGIN TRAN	
				declare @IdAutos int, @IdModelo int

				insert into Modelo values (@Modelo)
				set @IdModelo= SCOPE_IDENTITY()

				insert into autos  values(@Marca,@IdColor, @IdModelo,@IdAnio,@Precio)
				set @IdAutos = SCOPE_IDENTITY()

				insert into AutoExistencia (Cantidad,IdAutos,IdModelo,Fecha,IdSucursal) values (@Cantidad,@IdAutos,@IdModelo,GETDATE(),@IdSucursal)

			   set @Bandera = 1
		COMMIT TRAN -- Guarda los cambios
			
	END TRY
	BEGIN CATCH
		ROLLBACK TRAN -- Cancela los cambios debido a que ocurrio un error
		INSERT INTO DB_Errors VALUES -- Tabla para almacenar información de los errores y poder darle seguimiento
			(SUSER_SNAME(),
			ERROR_NUMBER(),
			ERROR_STATE(),
			ERROR_SEVERITY(),
			ERROR_LINE(),
			ERROR_PROCEDURE(),
			ERROR_MESSAGE(),
			CAST(SYSDATETIMEOFFSET() AT TIME ZONE (SELECT zona FROM ZonaHoraria WHERE IdZonaHoraria=1) AS smalldatetime))
			SET @Bandera = 0
	END CATCH	
END
GO
/****** Object:  StoredProcedure [dbo].[Caracteristicas]    Script Date: 14/06/2020 11:34:01 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[Caracteristicas]
@IdAuto int ,@IdPerformace int ,@IdColor int
AS
BEGIN 
Insert into Auto_Adiccionales values(@IdAuto,@IdPerformace,@IdColor)
END

GO
/****** Object:  StoredProcedure [dbo].[SP_Abonar]    Script Date: 14/06/2020 11:34:01 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[SP_Abonar] --28,12635.28,null
@id_Bitacora int,
@Pago decimal(14,2),	
@Bandera int output
as
begin
BEGIN TRY
		BEGIN TRAN	

				declare @NuevoRestante decimal (14,2), @Restante decimal(14,2), @Abono decimal(14,2), @id_BitacoraAnterior int ,@RestanteAnt decimal(14,2),@Pm decimal(14,2)

				set @id_BitacoraAnterior= (@id_Bitacora-1)

				--Obtenemos la cantidad de restante
				set @Restante = (select Restante from BitacoraDePago where id_Bitacora=@id_BitacoraAnterior)

				--Obtenemos la cantidad del PagoMinimo
				set @Abono = (select Abono from BitacoraDePago where id_Bitacora=@id_Bitacora)

				--Obtenemos El Pago minimo

				set @Pm = (select PagoMinimo from BitacoraDePago where id_Bitacora=@id_Bitacora)

				-- si Abono es nulo 
				if(@Abono = 0.00)
				begin
					-- Si pago es mayor o igual a Pago minimo procede el pago
					if(@Pago>=@Pm)
					begin

						set @NuevoRestante = (@Restante-@Pago)

						update BitacoraDePago set Restante=@NuevoRestante,Abono=@Pago where id_Bitacora = @id_Bitacora

						--Pago correcto
						set @Bandera = 1 
					end
					else
					begin
						-- Pago saldo insuficiente
						set @Bandera = 2 
					end
				end
				else
				begin
					-- Ya se efectuo pago este recibo
					set @Bandera = 3
				end
				 
		   
		COMMIT TRAN -- Guarda los cambios
			
	END TRY
	BEGIN CATCH
		ROLLBACK TRAN -- Cancela los cambios debido a que ocurrio un error
		INSERT INTO DB_Errors VALUES -- Tabla para almacenar información de los errores y poder darle seguimiento
			(SUSER_SNAME(),
			ERROR_NUMBER(),
			ERROR_STATE(),
			ERROR_SEVERITY(),
			ERROR_LINE(),
			ERROR_PROCEDURE(),
			ERROR_MESSAGE(),
			CAST(SYSDATETIMEOFFSET() AT TIME ZONE (SELECT zona FROM ZonaHoraria WHERE IdZonaHoraria=1) AS smalldatetime))
			SET @Bandera = 0
	END CATCH	
END
GO
/****** Object:  StoredProcedure [dbo].[SP_CompraCompletada]    Script Date: 14/06/2020 11:34:01 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SP_CompraCompletada]
@IdVentaAuto int,
@IdEmpleado int,
@Bandera int output
as
begin
BEGIN TRY
		BEGIN TRAN	
				update VentaAuto set IdVendido=2, IdEmpleado=@IdEmpleado where IdVentaAuto=@IdVentaAuto
		   set @Bandera = 1
		COMMIT TRAN -- Guarda los cambios
			
	END TRY
	BEGIN CATCH
		ROLLBACK TRAN -- Cancela los cambios debido a que ocurrio un error
		INSERT INTO DB_Errors VALUES -- Tabla para almacenar información de los errores y poder darle seguimiento
			(SUSER_SNAME(),
			ERROR_NUMBER(),
			ERROR_STATE(),
			ERROR_SEVERITY(),
			ERROR_LINE(),
			ERROR_PROCEDURE(),
			ERROR_MESSAGE(),
			CAST(SYSDATETIMEOFFSET() AT TIME ZONE (SELECT zona FROM ZonaHoraria WHERE IdZonaHoraria=1) AS smalldatetime))
			SET @Bandera = 0
	END CATCH	
END
GO
/****** Object:  StoredProcedure [dbo].[SP_Login]    Script Date: 14/06/2020 11:34:01 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_Login] --'karen','karen'
	@Usuario VARCHAR(200),
	@Contra VARCHAR(200)	
AS
BEGIN
	BEGIN TRY
		DECLARE @Existe INT, @IdUsuario INT,@IdTipoEmpleado INT
		SET @Existe = ( SELECT COUNT(*)  FROM UsuarioLogin Usu WHERE Usu.Usuario =  @Usuario AND CONVERT(varbinary,DecryptByPassPhrase('123456',Usu.Contra)) = @Contra )
						
		IF (@Existe > 0)
			BEGIN
				SET @IdUsuario = (SELECT Usu.IdUsuarioLogin  FROM UsuarioLogin Usu WHERE Usu.Usuario =  @Usuario AND CONVERT(varbinary,DecryptByPassPhrase('123456',Usu.Contra)) = @Contra)		
				set @IdTipoEmpleado = (select IdTipoEmpleado from Empleado where IdUsuarioLogin=@IdUsuario)
			END
		ELSE
			BEGIN				
				SET @IdUsuario = 0
				SET @IdTipoEmpleado = 0
			END			
	END TRY
	BEGIN CATCH
		--ROLLBACK TRAN -- Cancela los cambios debido a que ocurrio un error
		INSERT INTO DB_Errors VALUES -- Tabla para almacenar información de los errores y poder darle seguimiento
			(SUSER_SNAME(),
			ERROR_NUMBER(),
			ERROR_STATE(),
			ERROR_SEVERITY(),
			ERROR_LINE(),
			ERROR_PROCEDURE(),
			ERROR_MESSAGE(),
			CAST(SYSDATETIMEOFFSET() AT TIME ZONE (SELECT zona FROM ZonaHoraria WHERE Estado_=1) AS smalldatetime))
		SET @IdUsuario = 0
		SET @IdTipoEmpleado = 0
	END CATCH
	SELECT  @IdUsuario AS IdUsu,
	@IdTipoEmpleado AS IdTip
END	


GO
/****** Object:  StoredProcedure [dbo].[SP_OrdeanarCarro]    Script Date: 14/06/2020 11:34:01 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE procedure [dbo].[SP_OrdeanarCarro]--14,1,1,'eduardo','escobedo','diaz',23,'2020-06-12',1,'sdfs','laurel',22253,'6642414460','6642414460','sdfsd@','eduardo',123,1,1,'123',2222,1,4
@IdAuto int,
@IdColor int,
@IdPerformance int,
@Nombre varchar(50),
@ApP varchar(50),
@ApM varchar(50),
@Edad int,
@FechaDeNacimiento datetime,
@Sexo int,
@RFC varchar(13),
@Direccion varchar(100),
@CP int,
@Telefono varchar(15),
@TelefonoCasa varchar(15),
@Correo varchar(100),
@NombreEnTC varchar(100),
@NoTarjetaC varchar(18),
@IdMesExpiracion int,
@IdFechaExpiracion int,
@CVV varchar(3),
@CPFacturacion  int,
@IdTiempoDePago int,
@IdSucursal int,
@NombreAval varchar(100),
@ApPAval varchar(50),
@ApMAval varchar(50),
@TelefonoAval varchar(15),
@Bandera int output
as
begin
BEGIN TRY
		BEGIN TRAN	
					declare @IdClienteT int, @AAt int,@CuentaC int, @PrecioF decimal(14,2),@IdVentaT int,@Enganche  decimal(14,2),@abono decimal(14,2),@Precio decimal(14,2),@Suma decimal(14,2),@PrecioBase decimal(14,2)
					declare @PrecioColor decimal(14,2),@PrecioPerformance decimal(14,2), @IdAvalT int

					insert into Auto_Adiccionales (IdAutos,IdColor,IdPerformance) values(@IdAuto,@IdColor,@IdPerformance)
					set @AAt=SCOPE_IDENTITY()

					set @PrecioPerformance=(SELECT Precio from Performance where IdPerformance=@IdPerformance)
					set @PrecioColor=(SELECT Precio from Color where IdColor=@IdColor)	
					set @PrecioBase=(SELECT Precio from Autos where IdAutos=@IdAuto)
					set @Suma = (@PrecioPerformance + @PrecioColor + @PrecioBase)

					if (@IdTiempoDePago = 1) 
					begin
						 set   @Precio = (@Suma * 0.30) + @Suma;
						 set   @abono = @Precio/(3*12);

					 end
						if (@IdTiempoDePago = 2) 
					begin
						 set   @Precio = (@Suma * 0.35) + @Suma;
						 set @abono = @Precio / (5 * 12);
					 end
						if (@IdTiempoDePago = 3) 
					begin
						set   @Precio = (@Suma * 0.40) + @Suma;
						set   @abono = @Precio / ( 7* 12);
					end

					insert into Aval (Nombre,ApP,ApM,Telefono) values (@NombreAval,@ApPAval,@ApMAval,@TelefonoAval)
						set @IdAvalT = SCOPE_IDENTITY()
					insert into Cliente (Nombre,ApP,ApM,Edad,FechaDeNacimiento,Sexo,RFC,Direccion,CP,Telefono,TelefonoCasa,Correo,IdAval) values
										(@Nombre,@ApP,@ApM,@Edad,@FechaDeNacimiento,@Sexo,@RFC,@Direccion,@CP,@Telefono,@TelefonoCasa,@Correo,@IdAvalT)

							set @IdClienteT=SCOPE_IDENTITY()	
			
							set @CuentaC=(select COUNT(IdCliente) from VentaAuto where IdCliente=@IdClienteT)

							if(@CuentaC>0)
							begin
								set @PrecioF = @Precio - (@Precio*0.15)
							end
							else
							begin
								set @PrecioF=@Precio
							end
							set @Enganche = (@PrecioF * 0.30)

					insert into DatosFinanciamiento (NombreEnTC,NoTarjetaC,IdMesExpiracion,IdFechaExpiracion,CVV,CPFacturacion,FechaPago,PrimerPago,IdCliente,IdTiempoDePago) values
					(@NombreEnTC,@NoTarjetaC,@IdMesExpiracion,@IdFechaExpiracion,@CVV,@CPFacturacion,GETDATE(),@Enganche,@IdClienteT,@IdTiempoDePago)

					--insert VentaAuto
					insert into VentaAuto (IdAutos,IdAuto_Adic,IdCliente,IdSucursal,Fecha,IdVendido) values (@IdAuto,@AAt,@IdClienteT,@IdSucursal,GETDATE(),1)
					set  @IdVentaT = SCOPE_IDENTITY()
					--BitacoraDePago
					declare @Restante decimal (14,2)
					set @Restante= (@PrecioF-@abono)
					insert into BitacoraDePago (FechaDePago,Abono,PagoMinimo,IdVentaAuto,Restante) values (GETDATE(),@Enganche,@abono,@IdVentaT,@Restante)

					--insert siguiente mes
					declare @siguienteM date,@MesA date, @Idb int

					set @Idb =SCOPE_IDENTITY()

					set @MesA = (select FechaDePago from BitacoraDePago where id_Bitacora= @Idb)

					set @siguienteM = DATEADD(MONTH,1,@MesA)

					insert into BitacoraDePago (FechaDePago,Abono,PagoMinimo,IdVentaAuto) values(@siguienteM,0,@abono,@IdVentaT)

					---Resta stok AutoExistencia
					DECLARE @RestaExistencia int, @CantidadExistencia int
					set @CantidadExistencia= (select Cantidad from AutoExistencia where IdAutos=@IdAuto and IdSucursal=@IdSucursal)
					set @RestaExistencia=@CantidadExistencia-1
					update AutoExistencia set Cantidad=@RestaExistencia where IdAutos=@IdAuto and IdSucursal=@IdSucursal

		   set @Bandera = 1
			COMMIT TRAN -- Guarda los cambios
			
	END TRY
	BEGIN CATCH
		ROLLBACK TRAN -- Cancela los cambios debido a que ocurrio un error
		INSERT INTO DB_Errors VALUES -- Tabla para almacenar información de los errores y poder darle seguimiento
			(SUSER_SNAME(),
			ERROR_NUMBER(),
			ERROR_STATE(),
			ERROR_SEVERITY(),
			ERROR_LINE(),
			ERROR_PROCEDURE(),
			ERROR_MESSAGE(),
			CAST(SYSDATETIMEOFFSET() AT TIME ZONE (SELECT zona FROM ZonaHoraria WHERE IdZonaHoraria=1) AS smalldatetime))
			SET @Bandera = 0
	END CATCH	
END
GO
/****** Object:  StoredProcedure [dbo].[SP_Traspaso]    Script Date: 14/06/2020 11:34:01 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE  procedure [dbo].[SP_Traspaso] --1,2,200,4,5,null
@IdModelo int,
@IdAnio int,
@Cantidad int,
@IdSucursal int,

@IdSucursalD int,
@Bandera int output
as 
begin
BEGIN TRY
		BEGIN TRAN	

				declare @CantidadSumar int,@CantidadDestino int, @CantidadD int, @CantidadResta int,@IdAutos int

				set @IdAutos = (select IdAutos from Autos where IdModelo=@IdModelo and IdAnio=@IdAnio)

				--obtengo la cantidad actual  de la sucursal que le debo de sumar
				set @CantidadDestino =(select  Cantidad from AutoExistencia where IdSucursal = @IdSucursalD and IdAutos = @IdAutos )

				--obtengo la cantidad actual  de la sucursal que le debo de restar
				set @CantidadD = (select Cantidad from AutoExistencia where IdSucursal = @IdSucursal and IdAutos = @IdAutos)

				--Sumar la cantidad de existencia de la sucursal desntino
				set @CantidadSumar = (@CantidadDestino + @Cantidad)

				update AutoExistencia set Cantidad = @CantidadSumar where IdSucursal=@IdSucursalD and IdAutos=@IdAutos

				--restar la cantidad de existencia de la sucursal que se le quitara
				set @CantidadResta = (@CantidadD - @Cantidad)

				update AutoExistencia set Cantidad = @CantidadResta where IdSucursal=@IdSucursal and IdAutos=@IdAutos


			   set @Bandera = 1
		COMMIT TRAN -- Guarda los cambios
			
	END TRY
	BEGIN CATCH
		ROLLBACK TRAN -- Cancela los cambios debido a que ocurrio un error
		INSERT INTO DB_Errors VALUES -- Tabla para almacenar información de los errores y poder darle seguimiento
			(SUSER_SNAME(),
			ERROR_NUMBER(),
			ERROR_STATE(),
			ERROR_SEVERITY(),
			ERROR_LINE(),
			ERROR_PROCEDURE(),
			ERROR_MESSAGE(),
			CAST(SYSDATETIMEOFFSET() AT TIME ZONE (SELECT zona FROM ZonaHoraria WHERE IdZonaHoraria=1) AS smalldatetime))
			SET @Bandera = 0
	END CATCH	
END
GO
/****** Object:  StoredProcedure [dbo].[SP_Usuario_Alta]    Script Date: 14/06/2020 11:34:01 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROCEDURE [dbo].[SP_Usuario_Alta]
	@Usuario VARCHAR(200),
	@Contra VARCHAR(200),	
	@IdEmpleado INT,
	@Bandera int OUTPUT
AS
BEGIN
	BEGIN TRY
		BEGIN TRAN			
			DECLARE @IdUsuario INT
			-------------------------------------------------------------------------------------------------------------
			--- Insercion de usuario ---
			declare @us int

			SET @us = (SELECT COUNT(IdUsuarioLogin) FROM UsuarioLogin WHERE Usuario=@Usuario)	

					if (@us<=0)
					begin
							INSERT INTO UsuarioLogin (Usuario,Contra) VALUES (@Usuario,ENCRYPTBYPASSPHRASE('123456',@Contra))

							set @IdUsuario=SCOPE_IDENTITY()
							update Empleado set IdUsuarioLogin=@IdUsuario where IdEmpleado=@IdEmpleado

								SET @Bandera = 1
					end
					else
					begin
						SET @Bandera = 2
					end
		
			COMMIT TRAN -- Guarda los cambios
			
	END TRY
	BEGIN CATCH
		ROLLBACK TRAN -- Cancela los cambios debido a que ocurrio un error
		INSERT INTO DB_Errors VALUES -- Tabla para almacenar información de los errores y poder darle seguimiento
			(SUSER_SNAME(),
			ERROR_NUMBER(),
			ERROR_STATE(),
			ERROR_SEVERITY(),
			ERROR_LINE(),
			ERROR_PROCEDURE(),
			ERROR_MESSAGE(),
			CAST(SYSDATETIMEOFFSET() AT TIME ZONE (SELECT zona FROM ZonaHoraria WHERE Estado_=1) AS smalldatetime))
			SET @Bandera = 0
	END CATCH	
END
GO
