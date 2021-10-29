
USE BASE_CARMASTER

CREATE TABLE [dbo].[PAISES_T](
	[ID_PAIS] [int] IDENTITY(1,1) NOT NULL,
	[NOMBRE_PAIS] [nvarchar](30) NULL,
	[FECHA_ALTA_PAIS] [smalldatetime] NULL,
	[MONEDA_PAIS] [nvarchar](10) NULL,
	[NOMBRE_MONEDA_PAIS] [nvarchar](50) NULL,
	[ACTIVO_PAIS] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_PAIS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[ESTADOS_T](
	[ID_ESTADO] [int] IDENTITY(1,1) NOT NULL,
	[ID_PAIS] [int] NULL,
	[NOMBRE_ESTADO] [nvarchar](100) NULL,
	[FECHA_ALTA_ESTADO] [smalldatetime] NULL,
	[ACTIVO_ESTADO] [bit] NULL,
	[CODIGO_ESTADO] [nvarchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_ESTADO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[DIRECCIONES_ENTREGA_T](
	[ID_DIRECCION] [int] IDENTITY(1,1) NOT NULL,
	[CALLE_NUM_DIR] [nvarchar](200) NULL,
	[COLONIA_DIR] [nvarchar](200) NULL,
	[CODIGO_POSTAL_DIR] [nvarchar](10) NULL,
	[CIUDAD_DIR] [nvarchar](200) NULL,
	[DELEGACION_DIR] [nvarchar](200) NULL,
	[ESTADO_DIR] [int] NULL,
	[ID_PAIS] [int] NULL,
	[ID_CLIENTE] [int] NULL,
	[FECHA_ALTA_DIR] [smalldatetime] NULL,
	[ALIAS_DIR] [nvarchar](200) NULL,
	[REFERENCIA_DIR] [nvarchar](500) NULL,
	[ACTIVO_DIR] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_DIRECCION] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[CLIENTES_T](
	[ID_CLIENTE] [int] IDENTITY(1,1) NOT NULL,
	[ID_CONTACTO] [int] NULL,
	[ID_FISCAL] [int] NULL,
	[ID_DIRECCION] [int] NULL,
	[NOMBRE_CLIENTE] [nvarchar](250) NULL,
	[CORREO_CLIENTE] [nvarchar](250) NULL,
	[TELEFONO_CLIENTE] [nvarchar](50) NULL,
	[CELULAR_CLIENTE] [nvarchar](50) NULL,
	[EXTENSION_CLIENTE] [nvarchar](50) NULL,
	[IMAGEN_CLIENTE] [nvarchar](50) NULL,
	[SITIO_ALTA] [int] NULL,
	[FECHA_ALTA] [smalldatetime] NULL,
	[ACTIVO_CLIENTE] [bit] NULL,
	[CANTIDAD_SOLICITUDES] [int] NULL,
	[RAZON_SOCIAL] [nvarchar](250) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_CLIENTE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[CONTACTOS_T](
	[ID_CONTACTO] [int] IDENTITY(1,1) NOT NULL,
	[NOMBRES_CONTACTO] [nvarchar](250) NULL,
	[ID_CLIENTE] [int] NULL,
	[CORREO_CONTACTO] [nvarchar](200) NULL,
	[TELEFONO_CONTACTO] [nvarchar](50) NULL,
	[FECHA_ALTA_CONTACTO] [smalldatetime] NULL,
	[APELLIDOS_CONTACTO] [nvarchar](250) NULL,
	[IMAGEN_CONTACTO] [nvarchar](50) NULL,
	[CELULAR_CONTACTO] [nvarchar](50) NULL,
	[EXTENSION_CONTACTO] [nvarchar](50) NULL,
	[PASSWORD_CONTACTO] [nvarchar](255) NULL,
	[GENERO_CONTACTO] [int] NULL,
	[PUESTO_CONTACTO] [nvarchar](50) NULL,
	[ACTIVO_CONTACTO] [bit] NULL,
	[NACIMIENTO_CONTACTO] [smalldatetime] NULL,
	[CODIGO_VERIFICACION] [nvarchar](50) NULL,
	[CODIGO_ACTIVO] [bit] NULL,
	[RAZON_SOCIAL] [nvarchar](250) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_CONTACTO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[PRODUCTOS_T](
	[ID_PRODUCTO] [int] NULL,
	[ID_CATEGORIA] [int] NULL,
	[ID_FAMILIA] [int] NULL,
	[ID_MARCA] [int] NULL,
	[ID_UDM] [int] NULL,
	[NOMBRE_PRODUCTO] [nvarchar](500) NULL,
	[CODIGO_PROVEEDOR] [nvarchar](500) NULL,
	[SKU] [nvarchar](500) NULL,
	[MEDIDA_GRAL] [nvarchar](100) NULL,
	[COSTO_BRUTO_UNITARIO] [float] NULL,
	[IVA_PRODUCTO] [float] NULL,
	[COSTO_TOTAL] [float] NULL,
	[EXISTENCIA] [bit] NULL,
	[DISPONIBILIDAD_VENTA] [bit] NULL,
	[PRODUCTO_HOME] [bit] NULL,
	[PUBLICADO] [bit] NULL,
	[ACTIVO_PRODUCTO] [bit] NULL,
	[ID_LINEA] [nvarchar](250) NULL,
	[CANT_EXIST] [int] NULL,
	[PROMOCION] [bit] NULL,
	[PRECIO_PROMOCION] [float] NULL
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[MARCA_T](
	[ID_MARCA] [int] IDENTITY(1,1) NOT NULL,
	[NOMBRE_MARCA] [nvarchar](255) NULL,
	[DASHBOARD] [nvarchar](10) NULL,
	[ACTIVO_MARCA] [bit] NULL,
	[ID_FAMILIA] [int] NULL,
	[ID_CATEGORIA] [int] NULL,
	[MARCA_DESTACADA] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_MARCA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


CREATE TABLE [dbo].[DETALLE_PRODUCTO_T](
	[ID_DETALLE_PRODUCTO] [int] IDENTITY(1,1) NOT NULL,
	[ID_PRODUCTO] [int] NULL,
	[DESCRIPCION_CORTA] [nvarchar](max) NULL,
	[CARACTERISTICAS_GRALES] [nvarchar](max) NULL,
	[CAPAS] [int] NULL,
	[CARGA_MAXIMA] [nvarchar](max) NULL,
	[CARGA_MAXIMA_DUAL] [nvarchar](max) NULL,
	[COSTADO] [nvarchar](max) NULL,
	[INDICE_VELOCIDAD] [nvarchar](max) NULL,
	[MINIMO_ESPACIO_DUAL] [float] NULL,
	[PESO] [float] NULL,
	[PROFUNDIDAD_PISO] [float] NULL,
	[PRESION_AIRE_MAX] [float] NULL,
	[RANGO_CARGA] [float] NULL,
	[REVOLUCIONES_KM] [float] NULL,
	[TEMPERATURA] [nvarchar](max) NULL,
	[TRACCION] [nvarchar](max) NULL,
	[TREADWARE] [int] NULL,
	[MEDIDA_ANCHO] [float] NULL,
	[MEDIDA_ALTO] [float] NULL,
	[MEDIDA_CONSTRUCCION] [nvarchar](max) NULL,
	[MEDIDA_RIN] [int] NULL,
	[MEDIDA_GRAL] [nvarchar](max) NULL,
	[ACTIVO_DETALLE] [bit] NULL,
	[INDICE_VELOCIDAD_KM] [nvarchar](max) NULL,
	[APLICACION] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_DETALLE_PRODUCTO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
