---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var registeredUsers = await graphClient.Devices["{id}"].RegisteredUsers
	.Request()
	.GetAsync();

```