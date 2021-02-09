---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var directoryObject = new DirectoryObject
{
	Id = "2c891f12-928d-4da2-8d83-7d2434a0d8dc"
};

await graphClient.DirectoryRoles["0afed502-2456-4fd4-988e-3c21924c28a7"].Members.References
	.Request()
	.AddAsync(directoryObject);

```