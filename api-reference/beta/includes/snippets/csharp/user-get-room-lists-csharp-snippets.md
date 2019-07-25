---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var findRoomLists = await graphClient.Me
	.FindRoomLists()
	.Request()
	.GetAsync();

```