---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var workbookTable = new WorkbookTable
{
	Name = "name-value",
	ShowHeaders = true,
	ShowTotals = true,
	Style = "style-value"
};

await graphClient.Me.Drive.Items["{id}"].Workbook.Tables["{id|name}"]
	.Request()
	.UpdateAsync(workbookTable);

```