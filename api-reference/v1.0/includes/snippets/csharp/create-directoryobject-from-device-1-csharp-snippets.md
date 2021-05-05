---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var directoryObject = new DirectoryObject
{
	Id = "{id}"
};

await graphClient.Devices["{device-id}"].RegisteredOwners.References
	.Request()
	.AddAsync(directoryObject);

```