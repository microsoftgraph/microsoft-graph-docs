---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

await graphClient.Print.Printers["{id}"].Jobs["{id}"].Documents["{id}"]
	.UploadData()
	.Request()
	.Header("Range","bytes=0-72796")
	.PostAsync();

```