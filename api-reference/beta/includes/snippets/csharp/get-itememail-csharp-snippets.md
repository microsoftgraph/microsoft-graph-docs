---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var itemEmail = await graphClient.Users["{userId}"].Profile.Emails["{id}"]
	.Request()
	.GetAsync();

```