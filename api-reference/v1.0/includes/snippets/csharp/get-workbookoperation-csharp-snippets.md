---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var workbookOperation = await graphClient.Me.Drive.Items["{drive-item-id}"].Workbook.Operations["{operation-id}"]
	.Request()
	.GetAsync();

```