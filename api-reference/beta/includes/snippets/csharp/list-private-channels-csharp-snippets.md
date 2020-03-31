---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var channels = await graphClient.Teams["{id}"].Channels
	.Request()
	.Filter("membershipType eq 'private'")
	.GetAsync();

```