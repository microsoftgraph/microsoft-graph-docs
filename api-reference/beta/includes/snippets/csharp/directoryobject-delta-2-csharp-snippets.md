---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var directoryObject = await graphClient.DirectoryObjects["{directoryObject-id}"]
	.Request()
	.Filter("isOf('Microsoft.Graph.User') or isOf('Microsoft.Graph.Group')")
	.GetAsync();

```