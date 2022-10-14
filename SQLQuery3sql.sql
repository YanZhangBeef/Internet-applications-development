CREATE TABLE [dbo].[Notes] (
	[Id] int IDENTITY (1,1) NOT NULL,
	[Allergens] nvarchar (max) NOT NULL,

		[PatientId] int NOT NULL
	PRIMARY KEY (ID),
	FOREIGN KEY (PatientId) REFERENCES Patients (Id)
);
GO