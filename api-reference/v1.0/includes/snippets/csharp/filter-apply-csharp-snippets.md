---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var criteria = new WorkbookFilterCriteria
{
	Criterion1 = "criterion1-value",
	Criterion2 = "criterion2-value",
	Color = "color-value",
	Operator = "",
	Icon = new WorkbookIcon
	{
		Set = "set-value",
		Index = 99
	},
	DynamicCriteria = "dynamicCriteria-value",
	Values = JToken.Parse("{}"),
	FilterOn = "filterOn-value"
};

await graphClient.Me.Drive.Items["{driveItem-id}"].Workbook.Tables["{workbookTable-id}"].Columns["{workbookTableColumn-id}"].Filter
	.Apply(criteria)
	.Request()
	.PostAsync();

```