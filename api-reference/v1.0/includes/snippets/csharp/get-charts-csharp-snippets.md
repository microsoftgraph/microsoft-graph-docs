---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var charts = await graphClient.Me.Drive.Items["{id}"].Workbook.Worksheets["{id|name}"].Charts
	.Request()
	.GetAsync();

```