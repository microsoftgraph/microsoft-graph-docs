---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var directoryObject = new DirectoryObject
{
	AdditionalData = new Dictionary<string, object>()
	{
		{"@odata.id","https://graph.microsoft.com/v1.0/users/{id}"}
	}
};

await graphClient.Users["{id}"].Manager.Reference
	.Request()
	.PutAsync(directoryObject);

```