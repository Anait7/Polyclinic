CREATE DATABASE [Polyclinic]
GO
USE [Polyclinic]
GO

CREATE TABLE [Diagnosis](
[Id] INT PRIMARY KEY IDENTITY NOT NULL,
[Code] NVARCHAR (MAX) NOT NULL,
[Date] NVARCHAR (MAX) NOT NULL,
)
GO

CREATE  TABLE [Patient](
[Id] INT PRIMARY KEY IDENTITY NOT NULL,
[Name] NVARCHAR (MAX) NOT NULL,
[Lastname] NVARCHAR (MAX) NOT NULL,
[NumberCard] NVARCHAR (MAX) NOT NULL,
[Date] NVARCHAR (MAX) NOT NULL,
[Address] NVARCHAR (MAX) NOT NULL,
[Gender] NVARCHAR (MAX) NOT NULL,
[Discount] NVARCHAR (MAX) NOT NULL,
)
GO

CREATE TABLE [Doctor](
[Id] INT PRIMARY KEY IDENTITY NOT NULL,
[Name] NVARCHAR (MAX) NOT NULL,
[Lastname] NVARCHAR (MAX) NOT NULL,
[Specialization] NVARCHAR (MAX) NOT NULL,
[Category] NVARCHAR (MAX) NOT NULL
[PatientId] INT FOREIGN KEY REFERENCES [Patient](Id) NOT NULL
)
GO


CREATE TABLE [Reception](
[Id] INT PRIMARY KEY IDENTITY NOT NULL,
[CouponNumber] NVARCHAR (MAX)  NOT NULL,
[Date] NVARCHAR (MAX) NOT NULL,
[Purpose] NVARCHAR (MAX) NOT NULL,
[Price] NVARCHAR (MAX) NOT NULL,
)
GO


SELECT TOP (1000) [Id]
      ,[Name]
      ,[Lastname]
      ,[Specialization]
      ,[Category]
  FROM [Polyclinic].[dbo].[Doctor]

  SELECT TOP (1000) [Id]
      ,[Code]
      ,[Date]
  FROM [Polyclinic].[dbo].[Diagnosis]

  SELECT TOP (1000) [Id]
      ,[Name]
      ,[Lastname]
      ,[NumberCard]
      ,[Date]
      ,[Address]
      ,[Gender]
      ,[Discount]
  FROM [Polyclinic].[dbo].[Patient]

  SELECT TOP (1000) [Id]
      ,[CouponNumber]
      ,[Date]
      ,[Purpose]
      ,[Price]
  FROM [Polyclinic].[dbo].[Reception]