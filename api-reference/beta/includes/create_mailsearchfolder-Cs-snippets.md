---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var mailFolder = new MailFolder
{
	DisplayName = "Get MyAnalytics",
	IncludeNestedFolders = true,
	SourceFolderIDs = new List<String>()
	{
		"AAMkAGVmMDEzM"
	},
	FilterQuery = "contains(subject, 'MyAnalytics')"
};

await graphClient.Me.MailFolders["searchfolders"].ChildFolders
	.Request()
	.AddAsync(mailFolder);

```