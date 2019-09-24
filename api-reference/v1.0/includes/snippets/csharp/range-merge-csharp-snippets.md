---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var across = true;

await graphClient.Me.Drive.Items["{id}"].Workbook.Names["{name}"]
	.Range()
	.Merge(across)
	.Request()
	.PostAsync();

```