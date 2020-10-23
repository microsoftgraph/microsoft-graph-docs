---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var contacts = await graphClient.Contacts
	.Request()
	.Header("ConsistencyLevel","eventual")
	.Search("displayName:wa")
	.GetAsync();

```