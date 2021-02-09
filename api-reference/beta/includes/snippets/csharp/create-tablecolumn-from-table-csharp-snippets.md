---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var workbookTableColumn = new WorkbookTableColumn
{
	Id = "99",
	Name = "name-value",
	Index = 99,
	Values = "values-value"
};

await graphClient.Me.Drive.Items["{id}"].Workbook.Tables["{id|name}"].Columns
	.Request()
	.AddAsync(workbookTableColumn);

```