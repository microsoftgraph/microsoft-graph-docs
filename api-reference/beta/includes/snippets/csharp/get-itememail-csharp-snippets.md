---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var itemEmail = await graphClient.Users["{user-id}"].Profile.Emails["{itemEmail-id}"]
	.Request()
	.GetAsync();

```