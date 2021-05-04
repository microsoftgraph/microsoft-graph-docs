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
		TimeSlotInterval = new Duration("PT60M"),
		MinimumLeadTime = new Duration("P1D"),
		MaximumAdvance = new Duration("P30D"),
		SendConfirmationsToOwner = true,
		AllowStaffSelection = true
	}
};

await graphClient.BookingBusinesses["{bookingBusiness-id}"]
	.Request()
	.UpdateAsync(bookingBusiness);

```