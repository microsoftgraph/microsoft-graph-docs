---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var bookingStaffMember = new BookingStaffMember
{
	WorkingHours = new List<BookingWorkHours>()
	{
		new BookingWorkHours
		{
			Day = DayOfWeek.Monday,
			TimeSlots = new List<BookingWorkTimeSlot>()
			{
			},
			AdditionalData = new Dictionary<string, object>()
			{
				{"day@odata.type", "#microsoft.graph.dayOfWeek"},
				{"timeSlots@odata.type", "#Collection(microsoft.graph.bookingWorkTimeSlot)"}
			}
		},
		new BookingWorkHours
		{
			Day = DayOfWeek.Tuesday,
			TimeSlots = new List<BookingWorkTimeSlot>()
			{
				new BookingWorkTimeSlot
				{
					End = new TimeOfDay(17, 0, 0),
					Start = new TimeOfDay(8, 0, 0)
				}
			},
			AdditionalData = new Dictionary<string, object>()
			{
				{"day@odata.type", "#microsoft.graph.dayOfWeek"},
				{"timeSlots@odata.type", "#Collection(microsoft.graph.bookingWorkTimeSlot)"}
			}
		},
		new BookingWorkHours
		{
			Day = DayOfWeek.Wednesday,
			TimeSlots = new List<BookingWorkTimeSlot>()
			{
				new BookingWorkTimeSlot
				{
					End = new TimeOfDay(17, 0, 0),
					Start = new TimeOfDay(8, 0, 0)
				}
			},
			AdditionalData = new Dictionary<string, object>()
			{
				{"day@odata.type", "#microsoft.graph.dayOfWeek"},
				{"timeSlots@odata.type", "#Collection(microsoft.graph.bookingWorkTimeSlot)"}
			}
		},
		new BookingWorkHours
		{
			Day = DayOfWeek.Thursday,
			TimeSlots = new List<BookingWorkTimeSlot>()
			{
				new BookingWorkTimeSlot
				{
					End = new TimeOfDay(17, 0, 0),
					Start = new TimeOfDay(8, 0, 0)
				}
			},
			AdditionalData = new Dictionary<string, object>()
			{
				{"day@odata.type", "#microsoft.graph.dayOfWeek"},
				{"timeSlots@odata.type", "#Collection(microsoft.graph.bookingWorkTimeSlot)"}
			}
		},
		new BookingWorkHours
		{
			Day = DayOfWeek.Friday,
			TimeSlots = new List<BookingWorkTimeSlot>()
			{
				new BookingWorkTimeSlot
				{
					End = new TimeOfDay(17, 0, 0),
					Start = new TimeOfDay(8, 0, 0)
				}
			},
			AdditionalData = new Dictionary<string, object>()
			{
				{"day@odata.type", "#microsoft.graph.dayOfWeek"},
				{"timeSlots@odata.type", "#Collection(microsoft.graph.bookingWorkTimeSlot)"}
			}
		}
	}
};

await graphClient.BookingBusinesses["Contosolunchdelivery@M365B489948.onmicrosoft.com"].StaffMembers["8ee1c803-a1fa-406d-8259-7ab53233f148"]
	.Request()
	.UpdateAsync(bookingStaffMember);

```