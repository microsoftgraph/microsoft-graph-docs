---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var publications = await graphClient.Me.Profile.Publications
	.Request()
	.GetAsync();

```