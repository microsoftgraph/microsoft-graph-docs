---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var workbookChartAxisTitle = new WorkbookChartAxisTitle
{
	Text = "text-value",
	Visible = true
};

await graphClient.Me.Drive.Items["{id}"].Workbook.Worksheets["{id|name}"].Charts["{name}"].Axes.ValueAxis.Title
	.Request()
	.UpdateAsync(workbookChartAxisTitle);

```