CREATE TABLE [dbo].[Badge] (
    [BadgeID]    INT            IDENTITY (1, 1) NOT NULL,
    [Reason]     VARCHAR(250) NOT NULL,
    [Sender]     VARCHAR(50) NOT NULL,
    [Recipient]  VARCHAR(50) NOT NULL,
    [EmployeeId] VARCHAR(50) NOT NULL,
    [WalletID]   VARCHAR(50) NOT NULL,
    [CategorySelected] VARCHAR(50) NOT NULL, 
    CONSTRAINT [PK_Badge] PRIMARY KEY CLUSTERED ([BadgeID] ASC),
    CONSTRAINT [FK_Badge_Employee_EmployeeId] FOREIGN KEY ([EmployeeId]) REFERENCES [dbo].[Employee] ([EmployeeId]),
    CONSTRAINT [FK_Badge_Wallet_WalletID] FOREIGN KEY ([WalletID]) REFERENCES [dbo].[Wallet] ([WalletID])
);


GO
CREATE NONCLUSTERED INDEX [IX_Badge_EmployeeId]
    ON [dbo].[Badge]([EmployeeId] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_Badge_WalletID]
    ON [dbo].[Badge]([WalletID] ASC);

