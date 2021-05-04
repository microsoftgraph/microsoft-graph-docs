---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var staffMembers = await graphClient.BookingBusinesses["{bookingBusiness-id}"].StaffMembers
	.Request()
	.GetAsync();

```