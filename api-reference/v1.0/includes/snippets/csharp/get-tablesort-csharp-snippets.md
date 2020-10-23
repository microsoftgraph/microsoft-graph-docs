---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var workbookTableSort = await graphClient.Me.Drive.Items["{id}"].Workbook.Tables["{id|name}"].Sort
	.Request()
	.GetAsync();

```