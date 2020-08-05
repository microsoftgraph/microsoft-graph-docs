---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var users = await graphClient.Users
	.Request()
	.Filter("startswith(displayName,'Eric'),")
	.Select("displayName,signInActivity")
	.GetAsync();

```