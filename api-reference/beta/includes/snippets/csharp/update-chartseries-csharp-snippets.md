---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var workbookChartSeries = new WorkbookChartSeries
{
	Name = "name-value"
};

await graphClient.Me.Drive.Items["{id}"].Workbook.Worksheets["{id|name}"].Charts["{name}"].Series["{undefined}"]
	.Request()
	.UpdateAsync(workbookChartSeries);

```