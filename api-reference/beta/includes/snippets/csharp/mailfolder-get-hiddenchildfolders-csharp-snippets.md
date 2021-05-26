---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var queryOptions = new List<QueryOption>()
{
	new QueryOption("includeHiddenFolders", "true")
};

var childFolders = await graphClient.Me.MailFolders["{mailFolder-id}"].ChildFolders
	.Request( queryOptions )
	.GetAsync();

```