---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

await graphClient.Print.Printers["1a5f91a7-9bd1-4d5f-bb86-f43554cac51c"].TaskTriggers["25be207e-1154-491f-aa68-a9f7007d4bec"]
	.Request()
	.DeleteAsync();

```