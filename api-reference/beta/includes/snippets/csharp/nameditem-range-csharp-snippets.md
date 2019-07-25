---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

await graphClient.Me.Drive.Items["{id}"].Workbook.Names["{name}"]
	.Range()
	.Request()
	.PostAsync();

```