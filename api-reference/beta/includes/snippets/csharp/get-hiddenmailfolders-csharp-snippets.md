---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var queryOptions = new List<QueryOption>()
{
	new QueryOption("includeHiddenFolders", "true")
};

var mailFolders = await graphClient.Me.MailFolders
	.Request( queryOptions )
	.GetAsync();

```