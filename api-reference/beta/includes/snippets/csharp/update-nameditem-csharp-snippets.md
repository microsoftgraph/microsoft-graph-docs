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
	Value = JToken.Parse("{}"),
	Visible = true
};

await graphClient.Me.Drive.Items["{driveItem-id}"].Workbook.Names["{workbookNamedItem-id}"]
	.Request()
	.UpdateAsync(workbookNamedItem);

```