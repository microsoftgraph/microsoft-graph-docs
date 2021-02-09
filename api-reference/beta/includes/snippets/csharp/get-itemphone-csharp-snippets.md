---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var phones = await graphClient.Me.Profile.Phones
	.Request()
	.GetAsync();

```