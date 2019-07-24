---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var workbookChartDataLabels = new WorkbookChartDataLabels
{
	Position = "position-value",
	ShowValue = true,
	ShowSeriesName = true,
	ShowCategoryName = true,
	ShowLegendKey = true
};

await graphClient.Me.Drive.Items["{id}"].Workbook.Worksheets["{id|name}"].Charts["{name}"].DataLabels
	.Request()
	.UpdateAsync(workbookChartDataLabels);

```