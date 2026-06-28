USE [Trafics]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[smart_city_traffic](
	[record_id] [int] NOT NULL,
	[date] [date] NOT NULL,
	[hour] [tinyint] NOT NULL,
	[road_name] [nvarchar](50) NOT NULL,
	[city] [nvarchar](50) NOT NULL,
	[vehicle_count] [smallint] NOT NULL,
	[avg_speed_kmh] [tinyint] NOT NULL,
	[weather] [nvarchar](50) NOT NULL,
	[accident_flag] [bit] NOT NULL,
 CONSTRAINT [PK_smart_city_traffic] PRIMARY KEY CLUSTERED 
(
	[record_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


