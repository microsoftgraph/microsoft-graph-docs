---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var directoryObject = new DirectoryObject
{
	Id = "0f933635-5b77-4cf4-a577-f78a5eb090a2"
};

await graphClient.DirectoryRoles["{directoryRole-id}"].Members.References
	.Request()
	.AddAsync(directoryObject);

```