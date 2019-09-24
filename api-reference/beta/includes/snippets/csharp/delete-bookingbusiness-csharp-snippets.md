---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

await graphClient.BookingBusinesses["fabrikam@M365B489948.onmicrosoft.com"]
	.Request()
	.DeleteAsync();

```