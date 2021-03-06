USE ultraschall;
GO
IF OBJECT_ID(N'seasons', N'U') IS NOT NULL
BEGIN
  DROP TABLE seasons;
END
GO
CREATE TABLE seasons
(
  id UNIQUEIDENTIFIER DEFAULT NEWID(),
  title NVARCHAR(256) NOT NULL,
  sequence INT DEFAULT 0,
  title NVARCHAR(256) NOT NULL,
  subtitle NVARCHAR(256),
  description NVARCHAR(256) NOT NULL,
  summary NVARCHAR(256),
  podcast UNIQUEIDENTIFIER NOT NULL REFERENCES podcasts(id) ON DELETE CASCADE
)
GO

