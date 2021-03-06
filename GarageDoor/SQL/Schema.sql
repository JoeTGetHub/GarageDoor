CREATE TABLE [dbo].[LogCommands](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Created] [datetime] NOT NULL,
	[PriorCommand] [int] NOT NULL,
	[PriorCommandExpanded] [varchar](50) NOT NULL,
	[StatusStart] [int] NOT NULL,
	[StatusStartExpanded] [varchar](200) NOT NULL,
	[Command] [int] NOT NULL,
	[CommandExpanded] [varchar](50) NOT NULL,
	[CommandDuration] [float] NOT NULL,
	[StatusEnd] [int] NOT NULL,
	[StatusEndExpanded] [varchar](200) NOT NULL,
 CONSTRAINT [PK_LogCommands] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

CREATE TABLE [dbo].[LogSensor](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Created] [datetime] NOT NULL,
	[LogTime] [time](7) NULL,
	[Rpm] [int] NOT NULL,
 CONSTRAINT [PK_LogSensor] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO