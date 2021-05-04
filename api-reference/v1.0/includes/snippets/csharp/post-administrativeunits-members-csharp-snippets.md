---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var directoryObject = new DirectoryObject
{
	Id = "{id}"
};

await graphClient.Directory.AdministrativeUnits["{administrativeUnit-id}"].Members.References
	.Request()
	.AddAsync(directoryObject);

```