---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var fields = new List<WorkbookSortField>()
{
	new WorkbookSortField
	{
		Key = 99,
		SortOn = "sortOn-value",
		Ascending = true,
		Color = "color-value",
		DataOption = "dataOption-value",
		Icon = new WorkbookIcon
		{
			Set = "set-value",
			Index = 99
		}
	}
};

var matchCase = true;

var hasHeaders = true;

var orientation = "orientation-value";

var method = "method-value";

await graphClient.Me.Drive.Items["{id}"].Workbook.Names["{name}"]
	.Range().Sort
	.Apply(matchCase,hasHeaders,orientation,method,fields)
	.Request()
	.PostAsync();

```