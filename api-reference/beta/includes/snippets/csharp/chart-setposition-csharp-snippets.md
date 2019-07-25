---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var startCell = "startCell-value";

var endCell = "endCell-value";

await graphClient.Me.Drive.Items["{id}"].Workbook.Worksheets["{id|name}"].Charts["{name}"]
	.SetPosition(startCell,endCell)
	.Request()
	.PostAsync();

```