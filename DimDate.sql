USE [TraficDB]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[DimDate](
	[Date_key] [int] NOT NULL,
	[Fulldate] [date] NOT NULL,
	[Day] [int] NOT NULL,
	[Month] [int] NOT NULL,
	[Monthname] [nvarchar](8) NOT NULL,
	[Quarter] [int] NOT NULL,
	[Year] [int] NOT NULL,
	[Day_of_week] [int] NOT NULL,
	[Week_of_month] [int] NOT NULL,
	[Dayname] [nvarchar](8) NOT NULL,
 CONSTRAINT [PK_DIMDATE] PRIMARY KEY CLUSTERED 
(
	[Date_key] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


