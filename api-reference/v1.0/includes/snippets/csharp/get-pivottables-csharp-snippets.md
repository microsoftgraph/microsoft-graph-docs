---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var pivotTables = await graphClient.Me.Drive.Root.Workbook.Worksheets["{id}"].PivotTables
	.Request()
	.GetAsync();

```