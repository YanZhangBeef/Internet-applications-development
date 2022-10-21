
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 10/20/2022 19:11:14
-- Generated from EDMX file: G:\MASTER\S2\FIT5032\AS\Coding\FIT5032-Assignment\Assignment\Assignment\Models\NiceDoctor.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [aspnet-Assignment-20221020041618];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_PatinetsProfile]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Patinets] DROP CONSTRAINT [FK_PatinetsProfile];
GO
IF OBJECT_ID(N'[dbo].[FK_PatinetsPrescription]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Prescriptions] DROP CONSTRAINT [FK_PatinetsPrescription];
GO
IF OBJECT_ID(N'[dbo].[FK_PatinetsAppointment]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Appointments] DROP CONSTRAINT [FK_PatinetsAppointment];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[Patinets]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Patinets];
GO
IF OBJECT_ID(N'[dbo].[Profiles]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Profiles];
GO
IF OBJECT_ID(N'[dbo].[Prescriptions]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Prescriptions];
GO
IF OBJECT_ID(N'[dbo].[Appointments]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Appointments];
GO
IF OBJECT_ID(N'[dbo].[Image]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Image];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'Patinets'
CREATE TABLE [dbo].[Patinets] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [FirstName] nvarchar(max)  NOT NULL,
    [LastName] nvarchar(max)  NOT NULL,
    [Profile_Id] int  NOT NULL
);
GO

-- Creating table 'Profiles'
CREATE TABLE [dbo].[Profiles] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [FirstName] nvarchar(max)  NOT NULL,
    [LastName] nvarchar(max)  NOT NULL,
    [DateOfBirth] nvarchar(max)  NOT NULL,
    [ContackNumber] nvarchar(max)  NOT NULL,
    [Gender] nvarchar(max)  NOT NULL,
    [Email] nvarchar(max)  NOT NULL,
    [Address] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'Prescriptions'
CREATE TABLE [dbo].[Prescriptions] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [TreatementDate] nvarchar(max)  NOT NULL,
    [MedicineName] nvarchar(max)  NOT NULL,
    [Days] nvarchar(max)  NOT NULL,
    [Dosage] nvarchar(max)  NOT NULL,
    [PatinetsId] int  NOT NULL
);
GO

-- Creating table 'Appointments'
CREATE TABLE [dbo].[Appointments] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Date] nvarchar(max)  NOT NULL,
    [PatientName] nvarchar(max)  NOT NULL,
    [Time] nvarchar(max)  NOT NULL,
    [PatinetsId] int  NOT NULL
);
GO

-- Creating table 'Images'
CREATE TABLE [dbo].[Image] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [FileName] nvarchar(max)  NOT NULL,
    [FileType] nvarchar(max) NOT NULL,
    [File] nvarchar(max)  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Id] in table 'Patinets'
ALTER TABLE [dbo].[Patinets]
ADD CONSTRAINT [PK_Patinets]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Profiles'
ALTER TABLE [dbo].[Profiles]
ADD CONSTRAINT [PK_Profiles]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Prescriptions'
ALTER TABLE [dbo].[Prescriptions]
ADD CONSTRAINT [PK_Prescriptions]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Appointments'
ALTER TABLE [dbo].[Appointments]
ADD CONSTRAINT [PK_Appointments]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Images'
ALTER TABLE [dbo].[Image]
ADD CONSTRAINT [PK_Image]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [Profile_Id] in table 'Patinets'
ALTER TABLE [dbo].[Patinets]
ADD CONSTRAINT [FK_PatinetsProfile]
    FOREIGN KEY ([Profile_Id])
    REFERENCES [dbo].[Profiles]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_PatinetsProfile'
CREATE INDEX [IX_FK_PatinetsProfile]
ON [dbo].[Patinets]
    ([Profile_Id]);
GO

-- Creating foreign key on [PatinetsId] in table 'Prescriptions'
ALTER TABLE [dbo].[Prescriptions]
ADD CONSTRAINT [FK_PatinetsPrescription]
    FOREIGN KEY ([PatinetsId])
    REFERENCES [dbo].[Patinets]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_PatinetsPrescription'
CREATE INDEX [IX_FK_PatinetsPrescription]
ON [dbo].[Prescriptions]
    ([PatinetsId]);
GO

-- Creating foreign key on [PatinetsId] in table 'Appointments'
ALTER TABLE [dbo].[Appointments]
ADD CONSTRAINT [FK_PatinetsAppointment]
    FOREIGN KEY ([PatinetsId])
    REFERENCES [dbo].[Patinets]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_PatinetsAppointment'
CREATE INDEX [IX_FK_PatinetsAppointment]
ON [dbo].[Appointments]
    ([PatinetsId]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------