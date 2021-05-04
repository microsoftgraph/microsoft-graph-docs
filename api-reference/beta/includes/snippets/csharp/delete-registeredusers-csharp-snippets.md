---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

await graphClient.Devices["{device-id}"].RegisteredUsers["{directoryObject-id}"].Reference
	.Request()
	.DeleteAsync();

```