---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var directoryObject = new DirectoryObject
{
	Id = "bb165b45-151c-4cf6-9911-cd7188912848"
};

await graphClient.DirectoryRoles["{directoryRole-id}"].Members.References
	.Request()
	.AddAsync(directoryObject);

```