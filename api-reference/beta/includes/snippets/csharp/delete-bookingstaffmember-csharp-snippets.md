---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

await graphClient.BookingBusinesses["Contosolunchdelivery@M365B489948.onmicrosoft.com"].StaffMembers["5fae928f-6d2d-417a-ad96-4b0caeb362d6"]
	.Request()
	.DeleteAsync();

```