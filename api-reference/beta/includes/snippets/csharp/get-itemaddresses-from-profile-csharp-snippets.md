---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var addresses = await graphClient.Me.Profile.Addresses
	.Request()
	.GetAsync();

```