---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var name = "name-value";

await graphClient.Me.Drive.Items["{driveItem-id}"].Workbook.Worksheets
	.Add(name)
	.Request()
	.PostAsync();

```