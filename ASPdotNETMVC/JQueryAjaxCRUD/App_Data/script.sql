USE [master]
GO
/****** Object:  Database [JQueryAjaxCRUD]    Script Date: 6/2/2019 2:51:45 PM ******/
CREATE DATABASE [JQueryAjaxCRUD]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'JQueryAjaxCRUD.mdf', FILENAME = N'C:\Users\Admin\Source\Repos\JQuery-Ajax-MVC\ASPdotNETMVC\JQueryAjaxCRUD\App_Data\JQueryAjaxCRUD.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'JQueryAjaxCRUD_log.ldf', FILENAME = N'C:\Users\Admin\Source\Repos\JQuery-Ajax-MVC\ASPdotNETMVC\JQueryAjaxCRUD\App_Data\JQueryAjaxCRUD_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [JQueryAjaxCRUD] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [JQueryAjaxCRUD].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [JQueryAjaxCRUD] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [JQueryAjaxCRUD] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [JQueryAjaxCRUD] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [JQueryAjaxCRUD] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [JQueryAjaxCRUD] SET ARITHABORT OFF 
GO
ALTER DATABASE [JQueryAjaxCRUD] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [JQueryAjaxCRUD] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [JQueryAjaxCRUD] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [JQueryAjaxCRUD] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [JQueryAjaxCRUD] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [JQueryAjaxCRUD] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [JQueryAjaxCRUD] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [JQueryAjaxCRUD] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [JQueryAjaxCRUD] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [JQueryAjaxCRUD] SET  ENABLE_BROKER 
GO
ALTER DATABASE [JQueryAjaxCRUD] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [JQueryAjaxCRUD] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [JQueryAjaxCRUD] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [JQueryAjaxCRUD] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [JQueryAjaxCRUD] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [JQueryAjaxCRUD] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [JQueryAjaxCRUD] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [JQueryAjaxCRUD] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [JQueryAjaxCRUD] SET  MULTI_USER 
GO
ALTER DATABASE [JQueryAjaxCRUD] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [JQueryAjaxCRUD] SET DB_CHAINING OFF 
GO
ALTER DATABASE [JQueryAjaxCRUD] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [JQueryAjaxCRUD] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [JQueryAjaxCRUD] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [JQueryAjaxCRUD] SET QUERY_STORE = OFF
GO
USE [JQueryAjaxCRUD]
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
USE [JQueryAjaxCRUD]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 6/2/2019 2:51:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 6/2/2019 2:51:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 6/2/2019 2:51:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 6/2/2019 2:51:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 6/2/2019 2:51:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](128) NOT NULL,
	[RoleId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 6/2/2019 2:51:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](128) NOT NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEndDateUtc] [datetime] NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[UserName] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employees]    Script Date: 6/2/2019 2:51:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employees](
	[EmployeeID] [int] IDENTITY(1,1) NOT NULL,
	[EmployeeName] [nvarchar](255) NULL,
	[Position] [nvarchar](64) NULL,
	[Office] [nvarchar](128) NULL,
	[Salary] [int] NOT NULL,
	[ImagePath] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.Employees] PRIMARY KEY CLUSTERED 
(
	[EmployeeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'201906020804319_initDb', N'JQueryAjaxCRUD.Migrations.Configuration', 0x1F8B0800000000000400DD5CDB72E336127DDFAAFD07169F76B71CD1978C6BE2929372643BABDDF125969DCADB14444232774890214147AAAD7C591EF249FB0B0BF08E1B49489428A7E6C5C2E574A3D140379ADDF3BFDFFF187FB7F23DE30D46B11BA04BF364746C1A10D981E3A2E5A599E0C5571FCDEFBEFDEB5FC6378EBF327E2AC69DD17164268A2FCD578CC30BCB8AED57E88378E4BB7614C4C1028FECC0B7801358A7C7C7DF58272716241026C1328CF15382B0EBC3F407F93909900D439C00EF2E70A017E7EDA46796A21AF7C08771086C7869FEEBC70446EBABFF80D5E4E9E57A944D308D2BCF05849919F416A601100A30C084D58B9718CE7014A0E52C240DC07B5E87908C5B002F86F9122EAAE15D57737C4A576355130B283B8971E06B029E9CE5E2B1F8E91B09D92CC547047843048DD774D5A9102FCD1B3FF48235248BE7895D4CBC880E54C87854CC3C32D8FEA3522F88FAD07F47C624F17012C14B04131C01EFC8784CE69E6BFF1BAE9F832F105DA2C4F3EA6C1246491FD3409A1EA32084115E3FC105C7FCF4DA342C76BEC50394D32573B3654E113E3B358D7BC20C987BB0D48A9A48663888E00F10C10860E83C028C61443675EAC054AE02170A9AF4574195A823395CA67107569F205AE2D74BF3F4C307D3B87557D0295A724E5E904BCE229984A304B6117B0C6237531A25A1F3AF7BA0F3B058B876D3724E4E3FF64066063C10ADDBF6AA1963EA832524BBF6DAC02DF9539BDBB1559DABC6D35628CA53E0359EB8BBF2405FC5E13DC4A362E22883BC8D08DCAF41F46554473C323ACFAB0EE969D7437A76325F9C7DFC700E9CB3F3AFE1D9874D0EECD4D13FA874CED6BAA5A928AD07F4BC17AAF7E0CD5DA65BCFD127662A2256EC097A696FFCEA86993163F6FB733EEC360A7CFA9BD5AFACF7F32C48A2F47806CA21CF205A42BCA54A53A8FED5BA403D7CD5A69C8AEA2D1D4A17B4C9492848ECFB3414FCEE966E678DBB0A43B279A96A5189E87B2E1CC0800ECC7BB90F6F7CE07A3D5C881DA810E77FE1463E2C57F97D40D40F206D9E1F411C93FBC0F92788FBB6F712EF04DA4944D47486811FEE9CDAE36B80E07DE2CFA9F6EF8F566F5BF3FC6B700B6CE24BDF203A6B6BBC4F81FD2548F00D72AE895FFE82ED0290FE7C76FDEE00BDB07365DB308E6F893243671290B7ED765E2BBDA3867648261E707DB947C2DDA69F8BA19557221F2178268A6132EFA489D54FC1D245DD582D86AA59CD46B4B29A0FD365958275E3341FA966341DD0CA6736AA377F2FDDA1FE1DBE14F6F03DBEED8CF7EEA30D43B98BE9F651A23BB74D29A59F8097F44D6AA3D3905E02FD9F8614F6F04F43CA26697E731DEA957478061583097CA7F1F21756FB99E338DBF7716096B96FE2FBB90354C7E52A8E03DB4D4F81240096872F58FE890F67B4C732B2D5F0F110B230A2E82E3579A485ACCDE495EA015D430F62685CD959387E02621B38A218C9821C0DC60A8B2A61AC8A8BB0CCFD43A049341D467412A08FA0989C541761F158B8C87643E0B54A899BD9D184D1B59734F89E6B18424409B64AA20B717918843250D2E136A54D4263ABA671CD8AA8F05A557BDEE6C256FB2E4427F6A2932DBEB3422F73FF6D278AD92CB13D2867B348BA30A00CE90DA1A0F95BA5AB02F00F97435350EEC5A450D0DCA5DA8B82B2121B40415991BC3B05CD9EA85DF79F7BAF1E9A7AB20FE5FD9BF546710DA09B8C3C0E4C3533DF93CCC164068C44F5BC9ED34EB8C292C719E1337F9FC5B9ABCBAB08059F41CC7DC28F4DA3F27973DDA87229AC66903C9A2300B0CE6C0B08AF894D8095B6B680E65F140520E1546A305704041BB9CB5D110DD82278D7089B1B100EB6A6482276FDCB6A6DA0FAFB2BAFE19D9E30E5CA4A6D104E4AA717470D47A210FC0DC82EBC835054C15D51305D1C6A1D97BAB6B07C331A04D4E2FE2A84542CA6772915AAD92E259957A7E3D76D2525CE075348A9584CEF52CA75B45D4812CF42C3B7D84A44AC1FD0D3612BC225A5C92AFBC65696E198378C2D452AE4F80E84A18B96B5D4C8BCC59865799193AF66FAD9827E8661D9B12469B0E4B6A48483082C21D74B48134E6FDD28C6D7008339A0C1A289E30BC3A4065A71FD1724791B2C6E64610B8A19F4EF6C567316A3C4A9C9216EC9227DEA19A5E1F89A0AA8A71A345395E6AB35E41C4E022FF1515B1E6317B4ECDBA00C2FEBE98E58A50CD6D1AAD6EE484552601DA768EB8E52E4FCD5518AB6EE28B5ACBF3A50AD59C41A5BDCEE0B6EACA06AC26383D5DD4E9AADBAE974B59A7124F535BB79BA52CE0E276089FBAF9E2D6AB14A7B07DA1BF1C6EF6F9F4AFF7CF3BD5243A8245E3CD1EA32573DDBD4284514B78EA28AEC0EB6772A475D77BFF86790FE76B522ECE674E5095CAC91489B34316A39400258AD4FC3E630695A8CDD617A34AC069B8BC5180FB64B83CB7AC615C364BD63233C8544E523BA531073ACEAE8626F776449B6551D5AD2BD01B68467BEAF3BAA2421AB0E2CE9EE8E5D6567F1F7E801DB2FE5E37C1B03968570B6B3600A8CDD5C8AFD18C05ABA4B1DA8D6AC899527B4086079FB412A94328EB18D4265C1BBED144A81A1BE7F985C11F6FA694C705163320920CC15DF9400A3C6D353DB9D2A8710C9E08794D4CB880617B918E75184F64A4F21AC900D318D428CC4BCAF630CFD111D309AFDE24D3C17D2CBBC18700790BB8031CE929ECCD3E39353AE52F470AA36AD38763C49144656BAC9EED70095932E95726BB6A276CD81582C89DE4064BF82482C97ACC037A98D94E2D2EA483D58B614520A9AE65BE9A1B2958FA9ACB7AD7B2C58FB9B0F567F6FE667B3DAC60D5472BB74DA2EC2D62EFDAB4085EF8653E4C0D5A5F9DF74D6451A3DA67FA5CD47C6347E41EE2F09E9782602357E1393F5FB2985EA507C5732FADBBBA86AEB2EF2E9CF9FB3A947C643446EF70BE39813F426DBCFD6BA6971934DDD829B8D2BE0DEEF69630ACB14B7FBB9EE8529AF239BBBFA17A7AC864CE3EE94DCE5B23AB1AD1025B5607DE1F5224255ADD72658CA3A2F87FCC4699D97DE62E5755F9BB0A6ACF9DAC45EF3155FDDAFA162E6807648F284DFC795B4131FF4B06C935058B3D541178B6776E9153615C86CE7A2BCB3C293DE4CA7A4AEA437EC21F57EE7C52487523F5239EDC3968DECB352A4E143E79FAA40E400529A25D995C39781EC5BD754DF240E3C975EAFD8E3C0942D37F3C39774EC5BD954DF2B0E5CD9B40A370E4CD786B29F036B5A67133A781986980CCA6FABBCBEA2B1BC22FBF2439EFDF3806C7EE649D60A333A161164EA219061BB65A4B2027C79D6AF8A58A58F4A82D510355175BA314F58389B025D61443359BDB5E63E45E362F331CD641549FA4DB47313D3483B1FD34C5B91FA3E44F98834F95C56D2D3725536650EBEA7721166252DD5496D6E71632ECA7BAA0EE94528CCE951E453BC9F62905E44D2E7D1D128FE1053238879AEFD57D9C44588DD650541FFE36C046DC6309763A6681114FE01C75131840B02DD410C1C62B5AF22EC2E808D49378D71A7FF83481A37A446770E9D297A48709860B264E8CF3D26A646FD8C26FA69850BCBF3F821A4BFE23E9640D874E9B78107F47DE27A4EC9F7AD24ECA480A00E4C1E51A67B89696479B92E91EE03D41128175FE9773D43E2B110B0F801CDC01BDC8437A27E9FE012D8EB2AC8A80269DF0856ECE36B172C23E0C73946359FFC243AECF8AB6FFF0F92462605315E0000, N'6.2.0-61023')
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 6/2/2019 2:51:48 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_UserId]    Script Date: 6/2/2019 2:51:48 PM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_UserId]    Script Date: 6/2/2019 2:51:48 PM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_RoleId]    Script Date: 6/2/2019 2:51:48 PM ******/
CREATE NONCLUSTERED INDEX [IX_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_UserId]    Script Date: 6/2/2019 2:51:48 PM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserRoles]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 6/2/2019 2:51:48 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]
GO
USE [master]
GO
ALTER DATABASE [JQueryAjaxCRUD] SET  READ_WRITE 
GO
