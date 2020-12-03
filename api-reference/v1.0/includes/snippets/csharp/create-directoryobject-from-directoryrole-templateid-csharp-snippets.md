---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var directoryObject = new DirectoryObject
{
	Id = "{user-id}"
};

await graphClient.DirectoryRoles["roleTemplateId={role-templateId}"].Members.References
	.Request()
	.AddAsync(directoryObject);

```