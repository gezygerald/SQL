/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) [SalesID]
      ,[ToyID]
      ,[PurchaseDate]
      ,[UnitCount]
      ,[Receipt]
  FROM [Toys].[dbo].[ToySales]