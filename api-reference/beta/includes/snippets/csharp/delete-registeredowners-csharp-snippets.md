---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

await graphClient.Devices["{device-id}"].RegisteredOwners["{directoryObject-id}"].Reference
	.Request()
	.DeleteAsync();

```