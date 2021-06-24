---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var directoryObject = new DirectoryObject
{
	Id = "15c1a2d5-9101-44b2-83ab-885db8a647ca"
};

await graphClient.DirectoryRoles["{directoryRole-id}"].Members.References
	.Request()
	.AddAsync(directoryObject);

```