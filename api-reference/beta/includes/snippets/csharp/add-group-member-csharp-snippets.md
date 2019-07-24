---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var directoryObject = new DirectoryObject
{
	AdditionalData = new Dictionary<string, object>()
	{
		{"@odata.id","https://graph.microsoft.com/beta/directoryObjects/{id}"}
	}
};

await graphClient.Groups["{id}"].Members.References
	.Request()
	.AddAsync(directoryObject);

```