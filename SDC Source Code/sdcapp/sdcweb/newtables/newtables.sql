CREATE TABLE [dbo].[SDC_MANAGERS](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[NAME] [varchar](50) NULL,
	[RETRIEVE_ENDPOINT] [varchar](300) NULL,
	[FORMLIST_ENDPOINT] [varchar](300) NULL,
	[TRANSFORM] [varchar](300) NULL CONSTRAINT [DF_SDC_MANAGERS_TRANSFORM]  DEFAULT ('Transforms/Ver3'),
	[DEFAULT_SUBMIT] [varchar](300) NULL,
 CONSTRAINT [PK_SDC_MANAGERS] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

CREATE TABLE [dbo].[SDC_RECEIVERS](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[NAME] [varchar](50) NULL,
	[SUBMIT_ENDPOINT] [varchar](300) NULL,
	[SUBMIT_ACTION] [varchar](200) NULL CONSTRAINT [DF_SDC_RECEIVERS_SUBMIT_ACTION]  DEFAULT ('SubmitForm'),
	[SUBMIT_NAMESPACE] [varchar](200) NULL CONSTRAINT [DF_SDC_RECEIVERS_SUBMIT_NAMESPACE]  DEFAULT ('urn:ihe:iti:rfd:2007'),
	[SUBMIT_TRANSFORM] [varchar](300) NULL CONSTRAINT [DF_SDC_RECEIVERS_SUBMIT_TRANSFORM]  DEFAULT ('Transforms/Ver3'),
 CONSTRAINT [PK_SDC_RECEIVERS] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]