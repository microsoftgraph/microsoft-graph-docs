---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var getApplicableContentTypesForList = await graphClient.Sites["{site-id}"]
	.GetApplicableContentTypesForList("listId")
	.Request()
	.GetAsync();

```