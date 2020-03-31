---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var address = "Sheet1!A1:D5";

var hasHeaders = true;

await graphClient.Me.Drive.Items["{id}"].Workbook.Tables
	.Add(hasHeaders,address)
	.Request()
	.PostAsync();

```