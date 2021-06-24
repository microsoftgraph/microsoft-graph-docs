---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var workbookTableColumn = new WorkbookTableColumn
{
	Name = "name-value",
	Index = 99,
	Values = "values-value"
};

await graphClient.Me.Drive.Items["{driveItem-id}"].Workbook.Tables["{workbookTable-id}"].Columns["{workbookTableColumn-id}"]
	.Request()
	.UpdateAsync(workbookTableColumn);

```