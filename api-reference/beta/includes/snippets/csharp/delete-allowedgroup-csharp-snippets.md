---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

await graphClient.Print.Shares["{printerShare-id}"].AllowedGroups["{group-id}"].Reference
	.Request()
	.DeleteAsync();

```