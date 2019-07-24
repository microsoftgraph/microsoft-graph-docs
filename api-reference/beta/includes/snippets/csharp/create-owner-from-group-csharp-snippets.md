---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var directoryObject = new DirectoryObject
{
	AdditionalData = new Dictionary<string, object>()
	{
		{"@odata.id","https://graph.microsoft.com/beta/users/{id}"}
	}
};

await graphClient.Groups["{id}"].Owners.References
	.Request()
	.AddAsync(directoryObject);

```