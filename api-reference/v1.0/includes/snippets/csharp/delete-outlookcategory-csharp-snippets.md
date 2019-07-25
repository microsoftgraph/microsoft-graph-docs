---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

await graphClient.Me.Outlook.MasterCategories["4b1c2495-54c9-4a5e-90a2-0ab0b31987d8"]
	.Request()
	.DeleteAsync();

```