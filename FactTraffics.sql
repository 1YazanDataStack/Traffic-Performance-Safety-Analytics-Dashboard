USE [TraficDB]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[FactTraffics](
	[Traffic_Key] [int] IDENTITY(1,1) NOT NULL,
	[Date_Key] [int] NOT NULL,
	[City_key] [int] NOT NULL,
	[Vechicle_Count] [int] NOT NULL,
	[Avg_speed] [int] NOT NULL,
	[Weather] [nvarchar](50) NOT NULL,
	[Accident_flag] [bit] NOT NULL
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[FactTraffics]  WITH CHECK ADD  CONSTRAINT [FK_facttraffics_dimcity] FOREIGN KEY([City_key])
REFERENCES [dbo].[DimCity] ([City_Key])
GO

ALTER TABLE [dbo].[FactTraffics] CHECK CONSTRAINT [FK_facttraffics_dimcity]
GO

ALTER TABLE [dbo].[FactTraffics]  WITH CHECK ADD  CONSTRAINT [FK_facttraffics_dimdate] FOREIGN KEY([Date_Key])
REFERENCES [dbo].[DimDate] ([Date_key])
GO

ALTER TABLE [dbo].[FactTraffics] CHECK CONSTRAINT [FK_facttraffics_dimdate]
GO


