---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var workbookChartLegend = new WorkbookChartLegend
{
	Visible = true,
	Position = "position-value",
	Overlay = true
};

await graphClient.Me.Drive.Items["{id}"].Workbook.Worksheets["{id|name}"].Charts["{name}"].Legend
	.Request()
	.UpdateAsync(workbookChartLegend);

```