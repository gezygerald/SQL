--EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Loan]') AND type in (N'U'))
--DROP TABLE [dbo].[Loan]
CREATE TABLE [dbo].[Loan](
[LoanNumber] [int] IDENTITY(1000,1) NOT NULL,
[CustomerFname] [varchar](50) NULL,
[CustomerLname] [varchar](50) NULL,
[PropertyAddress] [varchar](150) NULL,
[City] [varchar](150) NULL,
[State] [varchar](50) NULL,
[BankruptcyAttorneyName] [varchar](50) NULL,
[UPB] MONEY NULL,
[LoanDate] [Datetime] NULL
CONSTRAINT [PK_Loan] PRIMARY KEY CLUSTERED
(
[LoanNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
TRUNCATE TABLE dbo.Loan
INSERT INTO [dbo].[Loan]
([CustomerFname]
,[CustomerLname]
,[PropertyAddress]
,[City]
,[State]
,[BankruptcyAttorneyName]
,[UPB]
,[LoanDate])
SELECT 'Mr. Anand','Dasari','1212 Main St.','Plano','TX','Jerry',85000,'1/1/2012' UNION
SELECT 'Mr. John','Nasari','1215 Joseph St.','Garland','TX','Jerry',95000,'4/2/2012' UNION
SELECT 'Dr. Ali','Muwwakkil','2375 True True St.','Atlanta','GA','Diesel',115000,'5/3/2008' UNION
SELECT 'Mr. John','Brown','11532 Chain St.','SanFrancisco','CA','Mora',350000,'6/13/2004' UNION
SELECT 'Dr. Kishan','Johnson','4625 Miller Rd.','Atlanta','GA','Diesel',225000,'8/9/2002' UNION
SELECT 'Mr. John','Jackson','972 Flower Rd.','Dallas','TX','Jerry',150000,'3/1/2012' UNION
SELECT 'Sr. Ralph','Jenkins','1518 Mission Ridge St.','SanFrancisco','CA','Mora',650000,'12/15/2011'