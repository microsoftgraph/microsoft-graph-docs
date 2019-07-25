---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

await graphClient.Me.Drive.Items["{id}"].Workbook
	.CloseSession(this)
	.Request()
	.Header("workbook-session-id","{session-id}")
	.PostAsync();

```