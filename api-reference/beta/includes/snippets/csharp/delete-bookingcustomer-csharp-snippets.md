---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

await graphClient.BookingBusinesses["Contosolunchdelivery@M365B489948.onmicrosoft.com"].Customers["80b5ddda-1e3b-4c9d-abe2-d606cc075e2e"]
	.Request()
	.DeleteAsync();

```