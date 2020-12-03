---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var personInterest = await graphClient.Me.Profile.Interests["{id}"]
	.Request()
	.GetAsync();

```