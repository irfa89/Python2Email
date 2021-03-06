USE [master]
GO

/****** Object:  Database [PythonConn]    Script Date: 18-11-2018 00:00:15 ******/
CREATE DATABASE [PythonConn]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'PythonConn', FILENAME = N'D:\Microsoft SQL Server 2017\MSSQL14.MSSQLSERVER\MSSQL\DATA\PythonConn.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'PythonConn_log', FILENAME = N'D:\Microsoft SQL Server 2017\MSSQL14.MSSQLSERVER\MSSQL\DATA\PythonConn_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO

ALTER DATABASE [PythonConn] SET COMPATIBILITY_LEVEL = 140
GO

IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [PythonConn].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO

ALTER DATABASE [PythonConn] SET ANSI_NULL_DEFAULT OFF 
GO

ALTER DATABASE [PythonConn] SET ANSI_NULLS OFF 
GO

ALTER DATABASE [PythonConn] SET ANSI_PADDING OFF 
GO

ALTER DATABASE [PythonConn] SET ANSI_WARNINGS OFF 
GO

ALTER DATABASE [PythonConn] SET ARITHABORT OFF 
GO

ALTER DATABASE [PythonConn] SET AUTO_CLOSE OFF 
GO

ALTER DATABASE [PythonConn] SET AUTO_SHRINK OFF 
GO

ALTER DATABASE [PythonConn] SET AUTO_UPDATE_STATISTICS ON 
GO

ALTER DATABASE [PythonConn] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO

ALTER DATABASE [PythonConn] SET CURSOR_DEFAULT  GLOBAL 
GO

ALTER DATABASE [PythonConn] SET CONCAT_NULL_YIELDS_NULL OFF 
GO

ALTER DATABASE [PythonConn] SET NUMERIC_ROUNDABORT OFF 
GO

ALTER DATABASE [PythonConn] SET QUOTED_IDENTIFIER OFF 
GO

ALTER DATABASE [PythonConn] SET RECURSIVE_TRIGGERS OFF 
GO

ALTER DATABASE [PythonConn] SET  DISABLE_BROKER 
GO

ALTER DATABASE [PythonConn] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO

ALTER DATABASE [PythonConn] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO

ALTER DATABASE [PythonConn] SET TRUSTWORTHY OFF 
GO

ALTER DATABASE [PythonConn] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO

ALTER DATABASE [PythonConn] SET PARAMETERIZATION SIMPLE 
GO

ALTER DATABASE [PythonConn] SET READ_COMMITTED_SNAPSHOT OFF 
GO

ALTER DATABASE [PythonConn] SET HONOR_BROKER_PRIORITY OFF 
GO

ALTER DATABASE [PythonConn] SET RECOVERY FULL 
GO

ALTER DATABASE [PythonConn] SET  MULTI_USER 
GO

ALTER DATABASE [PythonConn] SET PAGE_VERIFY CHECKSUM  
GO

ALTER DATABASE [PythonConn] SET DB_CHAINING OFF 
GO

ALTER DATABASE [PythonConn] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO

ALTER DATABASE [PythonConn] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO

ALTER DATABASE [PythonConn] SET DELAYED_DURABILITY = DISABLED 
GO

ALTER DATABASE [PythonConn] SET QUERY_STORE = OFF
GO

ALTER DATABASE [PythonConn] SET  READ_WRITE 
GO

