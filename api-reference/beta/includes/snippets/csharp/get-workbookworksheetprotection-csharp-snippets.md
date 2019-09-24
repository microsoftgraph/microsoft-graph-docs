---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var workbookWorksheetProtection = await graphClient.Me.Drive.Items["{id}"].Workbook.Worksheets["{id|name}"].Protection
	.Request()
	.GetAsync();

```