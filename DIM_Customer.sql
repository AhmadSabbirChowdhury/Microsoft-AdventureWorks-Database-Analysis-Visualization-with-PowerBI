/****** Cleansed Customer Table  ******/
SELECT 
  [CustomerKey], 
  --,[GeographyKey]
  --,[CustomerAlternateKey]
  --,[Title]
  [FirstName] AS [First Name], 
  --,[MiddleName]
  [LastName] AS [Last Name], 
  [FirstName] + ' ' + [LastName] AS [Full Name],	-- Combined First and Last name
  --,[NameStyle]
  --,[BirthDate]
  --,[MaritalStatus]
  --,[Suffix]
  CASE WHEN [Gender] = 'M' THEN 'Male' WHEN [Gender] = 'F' THEN 'Female' END AS Gender, 
  --,[EmailAddress]
  --,[YearlyIncome]
  --,[TotalChildren]
  --,[NumberChildrenAtHome]
  --,[EnglishEducation]
  --,[SpanishEducation]
  --,[FrenchEducation]
  --,[EnglishOccupation]
  --,[SpanishOccupation]
  --,[FrenchOccupation]
  --,[HouseOwnerFlag]
  --,[NumberCarsOwned]
  --,[AddressLine1]
  --,[AddressLine2]
  --,[Phone]
	[DateFirstPurchase], 
  --,[CommuteDistance]
  g.city AS [Customer City] -- Joined in [Customer City] column from the Geography table
FROM 
  [AdventureWorksDW2019].[dbo].[DimCustomer] AS c 
  LEFT JOIN dbo.DimGeography AS g ON g.GeographyKey = c.GeographyKey -- Joined DimGeography table using PK and FK
ORDER BY 
  CustomerKey ASC
