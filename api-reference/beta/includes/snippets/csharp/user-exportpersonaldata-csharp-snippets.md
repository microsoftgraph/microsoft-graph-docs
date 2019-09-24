---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var storageLocation = "storageLocation-value";

await graphClient.Users["{id}"]
	.ExportPersonalData(storageLocation)
	.Request()
	.PostAsync();

```