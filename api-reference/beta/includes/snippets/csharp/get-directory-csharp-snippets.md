---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var directoryObject = await graphClient.Directory.DeletedItems["46cc6179-19d0-473e-97ad-6ff84347bbbb"]
	.Request()
	.GetAsync();

```