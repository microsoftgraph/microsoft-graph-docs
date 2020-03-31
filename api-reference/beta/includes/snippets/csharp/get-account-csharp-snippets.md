---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var account = await graphClient.Me.Profile.Account
	.Request()
	.GetAsync();

```