---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var bookingStaffMember = new BookingStaffMember
{
	AdditionalData = new Dictionary<string, object>()
	{
		{"workingHours@odata.type","#Collection(microsoft.graph.bookingWorkHours)"},
		{"role@odata.type","#microsoft.graph.bookingStaffRole"},
		{"@odata.type","#microsoft.graph.bookingStaffMember"}
	},
	ColorIndex = 1,
	DisplayName = "Dana Swope",
	EmailAddress = "danas@contoso.com",
	Role = BookingStaffRole.ExternalGuest,
	UseBusinessHours = true,
	WorkingHours = new List<BookingWorkHours>()
	{
		new BookingWorkHours
		{
			AdditionalData = new Dictionary<string, object>()
			{
				{"timeSlots@odata.type","#Collection(microsoft.graph.bookingWorkTimeSlot)"},
				{"day@odata.type","#microsoft.graph.dayOfWeek"},
				{"@odata.type","#microsoft.graph.bookingWorkHours"}
			},
			Day = DayOfWeek.Monday,
			TimeSlots = new List<BookingWorkTimeSlot>()
			{
				new BookingWorkTimeSlot
				{
					AdditionalData = new Dictionary<string, object>()
					{
						{"@odata.type","#microsoft.graph.bookingWorkTimeSlot"}
					},
					End = "17:00:00.0000000",
					Start = "08:00:00.0000000"
				}
			}
		},
		new BookingWorkHours
		{
			AdditionalData = new Dictionary<string, object>()
			{
				{"timeSlots@odata.type","#Collection(microsoft.graph.bookingWorkTimeSlot)"},
				{"day@odata.type","#microsoft.graph.dayOfWeek"},
				{"@odata.type","#microsoft.graph.bookingWorkHours"}
			},
			Day = DayOfWeek.Tuesday,
			TimeSlots = new List<BookingWorkTimeSlot>()
			{
				new BookingWorkTimeSlot
				{
					AdditionalData = new Dictionary<string, object>()
					{
						{"@odata.type","#microsoft.graph.bookingWorkTimeSlot"}
					},
					End = "17:00:00.0000000",
					Start = "08:00:00.0000000"
				}
			}
		},
		new BookingWorkHours
		{
			AdditionalData = new Dictionary<string, object>()
			{
				{"timeSlots@odata.type","#Collection(microsoft.graph.bookingWorkTimeSlot)"},
				{"day@odata.type","#microsoft.graph.dayOfWeek"},
				{"@odata.type","#microsoft.graph.bookingWorkHours"}
			},
			Day = DayOfWeek.Wednesday,
			TimeSlots = new List<BookingWorkTimeSlot>()
			{
				new BookingWorkTimeSlot
				{
					AdditionalData = new Dictionary<string, object>()
					{
						{"@odata.type","#microsoft.graph.bookingWorkTimeSlot"}
					},
					End = "17:00:00.0000000",
					Start = "08:00:00.0000000"
				}
			}
		},
		new BookingWorkHours
		{
			AdditionalData = new Dictionary<string, object>()
			{
				{"timeSlots@odata.type","#Collection(microsoft.graph.bookingWorkTimeSlot)"},
				{"day@odata.type","#microsoft.graph.dayOfWeek"},
				{"@odata.type","#microsoft.graph.bookingWorkHours"}
			},
			Day = DayOfWeek.Thursday,
			TimeSlots = new List<BookingWorkTimeSlot>()
			{
				new BookingWorkTimeSlot
				{
					AdditionalData = new Dictionary<string, object>()
					{
						{"@odata.type","#microsoft.graph.bookingWorkTimeSlot"}
					},
					End = "17:00:00.0000000",
					Start = "08:00:00.0000000"
				}
			}
		},
		new BookingWorkHours
		{
			AdditionalData = new Dictionary<string, object>()
			{
				{"timeSlots@odata.type","#Collection(microsoft.graph.bookingWorkTimeSlot)"},
				{"day@odata.type","#microsoft.graph.dayOfWeek"},
				{"@odata.type","#microsoft.graph.bookingWorkHours"}
			},
			Day = DayOfWeek.Friday,
			TimeSlots = new List<BookingWorkTimeSlot>()
			{
				new BookingWorkTimeSlot
				{
					AdditionalData = new Dictionary<string, object>()
					{
						{"@odata.type","#microsoft.graph.bookingWorkTimeSlot"}
					},
					End = "17:00:00.0000000",
					Start = "08:00:00.0000000"
				}
			}
		}
	}
};

await graphClient.BookingBusinesses["{id}"].StaffMembers
	.Request()
	.AddAsync(bookingStaffMember);

```