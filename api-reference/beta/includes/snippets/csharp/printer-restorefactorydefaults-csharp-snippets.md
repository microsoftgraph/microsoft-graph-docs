---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

await graphClient.Print.Printers["{id}"]
	.RestoreFactoryDefaults()
	.Request()
	.PostAsync();

```