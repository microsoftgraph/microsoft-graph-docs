---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var workbookTable = await graphClient.Me.Drive.Items["{id}"].Workbook.Tables["{id|name}"]
	.Request()
	.GetAsync();

```