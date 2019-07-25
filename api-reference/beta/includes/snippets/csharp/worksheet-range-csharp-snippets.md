---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var address = "address-value";

await graphClient.Me.Drive.Items["{id}"].Workbook.Worksheets["{id|name}"]
	.Range()
	.Request()
	.PostAsync();

```