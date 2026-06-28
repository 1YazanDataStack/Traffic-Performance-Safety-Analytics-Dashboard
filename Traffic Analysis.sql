USE [TraficDB]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[view_Traffic_Final_Analysis] AS
SELECT 
    D.fulldate AS Actual_Date,
    D.DayName AS Day_Of_Week,
    R.Road_name,
    T.Weather,
    SUM(T.Vechicle_Count) * 100 AS Total_Vehicles,
    AVG(T.Avg_speed) AS Average_Speed,
    SUM(CAST(T.Accident_flag AS INT)) * 35 AS Total_Accidents

FROM dbo.FactTraffics AS T
INNER JOIN dbo.DimDate AS D ON T.Date_Key = D.Date_key
INNER JOIN dbo.DimCity AS R ON T.City_key = R.City_key
GROUP BY 
    D.fulldate,
    D.DayName,
    R.Road_name,
    T.Weather;

GO


