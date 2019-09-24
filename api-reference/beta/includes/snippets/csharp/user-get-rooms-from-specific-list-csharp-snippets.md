---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var findRooms = await graphClient.Me
	.FindRooms("Building2Rooms@contoso.onmicrosoft.com")
	.Request()
	.GetAsync();

```