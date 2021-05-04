---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var registeredOwners = await graphClient.Devices["{device-id}"].RegisteredOwners
	.Request()
	.GetAsync();

```