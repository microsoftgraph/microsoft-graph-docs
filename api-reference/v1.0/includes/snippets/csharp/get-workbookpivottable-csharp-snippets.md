---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var workbookPivotTable = await graphClient.Me.Drive.Root.Workbook.Worksheets["{id}"].PivotTables["{id}"]
	.Request()
	.GetAsync();

```