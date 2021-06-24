---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var userAccountInformation = await graphClient.Me.Profile.Account["{userAccountInformation-id}"]
	.Request()
	.GetAsync();

```