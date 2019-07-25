---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var workbookChartLegend = await graphClient.Me.Drive.Items["{id}"].Workbook.Worksheets["{id|name}"].Charts["{name}"].Legend
	.Request()
	.GetAsync();

```