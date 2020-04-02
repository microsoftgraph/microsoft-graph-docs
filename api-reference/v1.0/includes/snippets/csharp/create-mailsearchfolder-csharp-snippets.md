---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var mailFolder = new MailFolder
{
	AdditionalData = new Dictionary<string, object>()
	{
		{"@odata.type","microsoft.graph.mailSearchFolder"}
	},
	DisplayName = "Weekly digests",
	IncludeNestedFolders = true,
	SourceFolderIds = new List<String>()
	{
		"AQMkADYAAAIBDAAAAA=="
	},
	FilterQuery = "contains(subject, 'weekly digest')"
};

await graphClient.Me.MailFolders["AQMkADYAAAIBDAAAAA=="].ChildFolders
	.Request()
	.AddAsync(mailFolder);

```