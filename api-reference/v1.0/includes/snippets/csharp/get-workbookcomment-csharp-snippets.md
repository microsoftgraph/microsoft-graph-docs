---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var workbookComment = await graphClient.Drive.Items["{driveItem-id}"].Workbook.Comments["{workbookComment-id}"]
	.Request()
	.GetAsync();

```