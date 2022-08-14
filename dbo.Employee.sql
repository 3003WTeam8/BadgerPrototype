CREATE TABLE [dbo].[Employee] (
    [EmployeeId]  VARCHAR(50) NOT NULL,
    [Name]        VARCHAR(50) NOT NULL,
    [Surname]     VARCHAR(50) NOT NULL,
    [Email]       VARCHAR(50) NOT NULL,
    [Phone]       VARCHAR(10) NOT NULL,
    [Position]    VARCHAR(50) NOT NULL,
    [DateOfBirth] DATETIME  NOT NULL,
    [Password]    VARCHAR(50) NOT NULL,
    CONSTRAINT [PK_Employee] PRIMARY KEY CLUSTERED ([EmployeeId] ASC)
);

