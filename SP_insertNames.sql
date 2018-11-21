USE [PythonConn]
GO
/****** Object:  StoredProcedure [dbo].[insertNames]    Script Date: 21-11-2018 16:01:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE [dbo].[insertNames]
	@FirstName varchar(25),
	@LastName  varchar(25)
AS
BEGIN
	SET NOCOUNT ON
	IF (@FirstName IS NOT NULL AND @LastName IS NOT NULL)
		INSERT INTO dbo.vPerson(FirstName,LastName)
		VALUES (@FirstName,@LastName)
		RETURN(1)
END
