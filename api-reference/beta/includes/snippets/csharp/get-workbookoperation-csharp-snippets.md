---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var workbookOperation = await graphClient.Me.Drive.Items["{driveItem-id}"].Workbook.Operations["{workbookOperation-id}"]
	.Request()
	.GetAsync();

```