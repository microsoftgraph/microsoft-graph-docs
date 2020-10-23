---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var webAccounts = await graphClient.Me.Profile.WebAccounts
	.Request()
	.GetAsync();

```