---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

await graphClient.Print.PrinterShares["{printerShare-id}"].AllowedUsers["{user-id}"].Reference
	.Request()
	.DeleteAsync();

```