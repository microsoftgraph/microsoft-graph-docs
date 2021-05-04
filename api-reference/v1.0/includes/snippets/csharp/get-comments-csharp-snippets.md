---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var comments = await graphClient.Drive.Items["{driveItem-id}"].Workbook.Comments
	.Request()
	.GetAsync();

```