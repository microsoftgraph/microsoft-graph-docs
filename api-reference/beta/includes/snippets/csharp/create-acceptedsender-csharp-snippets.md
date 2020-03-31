---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var directoryObject = new DirectoryObject
{
	Id = "alexd@contoso.com"
};

await graphClient.Groups["{id}"].AcceptedSenders.References
	.Request()
	.AddAsync(directoryObject);

```