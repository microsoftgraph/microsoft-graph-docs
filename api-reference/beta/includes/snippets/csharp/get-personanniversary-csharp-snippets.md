---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var personAnniversary = await graphClient.Me.Profile.Anniversaries["{id}"]
	.Request()
	.GetAsync();

```