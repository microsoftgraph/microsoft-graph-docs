---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var workbookNamedItem = new WorkbookNamedItem
{
	Type = "type-value",
	Scope = "scope-value",
	Comment = "comment-value",
	Value = new Json
	{
	},
	Visible = true
};

await graphClient.Me.Drive.Items["{id}"].Workbook.Names["{name}"]
	.Request()
	.UpdateAsync(workbookNamedItem);

```