---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var joinedTeams = await graphClient.Me.JoinedTeams
	.Request()
	.GetAsync();

```