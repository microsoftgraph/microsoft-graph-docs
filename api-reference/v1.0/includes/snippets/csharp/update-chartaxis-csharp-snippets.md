---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var workbookChartAxis = new WorkbookChartAxis
{
	MajorUnit = new Json
	{
	},
	Maximum = new Json
	{
	},
	Minimum = new Json
	{
	}
};

await graphClient.Me.Drive.Items["{id}"].Workbook.Worksheets["{id|name}"].Charts["{name}"].Axes.ValueAxis
	.Request()
	.UpdateAsync(workbookChartAxis);

```