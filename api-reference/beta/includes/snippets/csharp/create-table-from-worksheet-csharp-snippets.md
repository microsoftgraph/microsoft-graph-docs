---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var address = "";

var hasHeaders = false;

await graphClient.Me.Drive.Items["{id}"].Workbook.Worksheets["{id|name}"].Tables
	.Add(address,hasHeaders)
	.Request()
	.PostAsync();

```