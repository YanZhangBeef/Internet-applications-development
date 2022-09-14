CREATE TABLE [dbo].[Patients] (
	[Id] int IDENTITY (1,1) NOT NULL,
	[FirstName] nvarchar (max) NOT NULL,
	[LastName] nvarchar (max) NOT NULL,
		[UserId] nvarchar (max) NOT NULL
	PRIMARY KEY (ID)
);
GO


CREATE TABLE [dbo].[Profile] (
	[Id] int IDENTITY (1,1) NOT NULL,
	[FirstName] nvarchar (max) NOT NULL,
	[LastName] nvarchar (max) NOT NULL,
	[DateOfBirth] int NOT NULL,
	[ContackNumber] int NOT NULL,
	[Gender] nvarchar (max) NOT NULL,
	[Email] nvarchar (max) NOT NULL,
	[Address] nvarchar (max) NOT NULL,
		[PatientId] int NOT NULL
	PRIMARY KEY (ID),
	FOREIGN KEY (PatientId) REFERENCES Patients (Id)
);
GO

CREATE TABLE [dbo].[Prescription] (
	[Id] int IDENTITY (1,1) NOT NULL,
	[TreatementDate] int NOT NULL,
	[MedicineName] nvarchar (max) NOT NULL,
	[Days] int NOT NULL,
	[Dosage] nvarchar (max) NOT NULL,
		[PatientId] int NOT NULL
	PRIMARY KEY (ID),
	FOREIGN KEY (PatientId) REFERENCES Patients (Id)
);
GO

CREATE TABLE [dbo].[Appointment] (
	[Id] int IDENTITY (1,1) NOT NULL,
	[Date] int NOT NULL,
	[PatientName] nvarchar (max) NOT NULL,
	[Time] int NOT NULL,
		[PatientId] int NOT NULL
	PRIMARY KEY (ID),
	FOREIGN KEY (PatientId) REFERENCES Patients (Id)
);
GO

CREATE TABLE [dbo].[Rating] (
	[Id] int IDENTITY (1,1) NOT NULL,
	[Score] int NOT NULL,
	[Comment] nvarchar (max) NOT NULL,
		[PatientId] int NOT NULL
	PRIMARY KEY (ID),
	FOREIGN KEY (PatientId) REFERENCES Patients (Id)
);
GO