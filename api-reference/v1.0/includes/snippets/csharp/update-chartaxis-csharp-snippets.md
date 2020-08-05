---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var workbookChartAxis = new WorkbookChartAxis
{
	MajorUnit = JToken.Parse("{}"),
	Maximum = JToken.Parse("{}"),
	Minimum = JToken.Parse("{}")
};

await graphClient.Me.Drive.Items["{id}"].Workbook.Worksheets["{id|name}"].Charts["{name}"].Axes.ValueAxis
	.Request()
	.UpdateAsync(workbookChartAxis);

```