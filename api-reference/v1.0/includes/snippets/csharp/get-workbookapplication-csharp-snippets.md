---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var workbookApplication = await graphClient.Me.Drive.Items["{driveItem-id}"].Workbook.Application
	.Request()
	.GetAsync();

```