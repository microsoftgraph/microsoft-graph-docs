---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var bookingBusiness = new BookingBusiness
{
	Email = "admin@fabrikam.com",
	SchedulingPolicy = new BookingSchedulingPolicy
	{
		TimeSlotInterval = "PT60M",
		MinimumLeadTime = "P1D",
		MaximumAdvance = "P30D",
		SendConfirmationsToOwner = true,
		AllowStaffSelection = true
	}
};

await graphClient.BookingBusinesses["fabrikam@M365B489948.onmicrosoft.com"]
	.Request()
	.UpdateAsync(bookingBusiness);

```