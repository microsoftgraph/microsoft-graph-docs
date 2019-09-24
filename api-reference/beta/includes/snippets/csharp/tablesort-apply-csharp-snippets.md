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

var method = "method-value";

await graphClient.Me.Drive.Items["{id}"].Workbook.Tables["{id|name}"].Sort
	.Apply(matchCase,method,fields)
	.Request()
	.PostAsync();

```