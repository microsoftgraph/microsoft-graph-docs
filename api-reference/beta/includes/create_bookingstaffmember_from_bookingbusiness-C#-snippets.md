
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var start = "08:00:00.0000000";

var end = "17:00:00.0000000";

var @odata.type = "#microsoft.graph.bookingWorkTimeSlot";

//create BookingWorkTimeSlot list and populate it
var timeSlots = new List<BookingWorkTimeSlot>();
timeSlots.Add(new BookingWorkTimeSlot(@odata.type,end,start));

var timeSlotsVar@odata.type = "#Collection(microsoft.graph.bookingWorkTimeSlot)";

var day = "friday";

var dayVar@odata.type = "#microsoft.graph.dayVarOfWeek";

var @odata.type = "#microsoft.graph.bookingWorkHours";

var start = "08:00:00.0000000";

var end = "17:00:00.0000000";

var @odata.typeVar = "#microsoft.graph.bookingWorkTimeSlot";

//create BookingWorkTimeSlot list and populate it
var timeSlotsVar = new List<BookingWorkTimeSlot>();
timeSlotsVar.Add(new BookingWorkTimeSlot(@odata.typeVar,end,start));

var timeSlotsVarVar@odata.typeVar = "#Collection(microsoft.graph.bookingWorkTimeSlot)";

var dayVar = "thursdayVar";

var dayVarVar@odata.typeVar = "#microsoft.graph.dayVarVarOfWeek";

var @odata.typeVar = "#microsoft.graph.bookingWorkHours";

var start = "08:00:00.0000000";

var end = "17:00:00.0000000";

var @odata.typeVarVar = "#microsoft.graph.bookingWorkTimeSlot";

//create BookingWorkTimeSlot list and populate it
var timeSlotsVarVar = new List<BookingWorkTimeSlot>();
timeSlotsVarVar.Add(new BookingWorkTimeSlot(@odata.typeVarVar,end,start));

var timeSlotsVarVarVar@odata.typeVarVar = "#Collection(microsoft.graph.bookingWorkTimeSlot)";

var dayVarVar = "wednesdayVarVar";

var dayVarVarVar@odata.typeVarVar = "#microsoft.graph.dayVarVarVarOfWeek";

var @odata.typeVarVar = "#microsoft.graph.bookingWorkHours";

var start = "08:00:00.0000000";

var end = "17:00:00.0000000";

var @odata.typeVarVarVar = "#microsoft.graph.bookingWorkTimeSlot";

//create BookingWorkTimeSlot list and populate it
var timeSlotsVarVarVar = new List<BookingWorkTimeSlot>();
timeSlotsVarVarVar.Add(new BookingWorkTimeSlot(@odata.typeVarVarVar,end,start));

var timeSlotsVarVarVarVar@odata.typeVarVarVar = "#Collection(microsoft.graph.bookingWorkTimeSlot)";

var dayVarVarVar = "tuesdayVarVarVar";

var dayVarVarVarVar@odata.typeVarVarVar = "#microsoft.graph.dayVarVarVarVarOfWeek";

var @odata.typeVarVarVar = "#microsoft.graph.bookingWorkHours";

var start = "08:00:00.0000000";

var end = "17:00:00.0000000";

var @odata.typeVarVarVarVar = "#microsoft.graph.bookingWorkTimeSlot";

//create BookingWorkTimeSlot list and populate it
var timeSlotsVarVarVarVar = new List<BookingWorkTimeSlot>();
timeSlotsVarVarVarVar.Add(new BookingWorkTimeSlot(@odata.typeVarVarVarVar,end,start));

var timeSlotsVarVarVarVar@odata.typeVarVarVarVar = "#Collection(microsoft.graph.bookingWorkTimeSlot)";

var dayVarVarVarVar = "mondayVarVarVarVar";

var dayVarVarVarVar@odata.typeVarVarVarVar = "#microsoft.graph.dayVarVarVarVarOfWeek";

var @odata.typeVarVarVarVar = "#microsoft.graph.bookingWorkHours";

//create BookingWorkHours list and populate it
var workingHours = new List<BookingWorkHours>();
workingHours.Add(new BookingWorkHours(@odata.typeVarVarVarVar,dayVarVarVarVar@odata.typeVarVarVarVar,dayVarVarVarVar,timeSlotsVarVarVarVar@odata.typeVarVarVarVar,timeSlotsVarVarVarVar));
workingHours.Add(new BookingWorkHours(@odata.typeVarVarVar,dayVarVarVar@odata.typeVarVarVar,dayVarVarVar,timeSlotsVarVarVar@odata.typeVarVarVar,timeSlotsVarVarVar));
workingHours.Add(new BookingWorkHours(@odata.typeVarVar,dayVarVar@odata.typeVarVar,dayVarVar,timeSlotsVarVar@odata.typeVarVar,timeSlotsVarVar));
workingHours.Add(new BookingWorkHours(@odata.typeVar,dayVar@odata.typeVar,dayVar,timeSlotsVar@odata.typeVar,timeSlotsVar));
workingHours.Add(new BookingWorkHours(@odata.type,day@odata.type,day,timeSlots@odata.type,timeSlots));

//create instance of BookingStaffMember
var staffMembers = new BookingStaffMember
{
	@odata.type = "#microsoft.graph.bookingStaffMember",
	ColorIndex = 1,
	DisplayName = "Dana Swope",
	EmailAddress = "danas@contoso.com",
	Role@odata.type = "#microsoft.graph.bookingStaffRole",
	Role = "externalGuest",
	UseBusinessHours = true,
	WorkingHours@odata.type = "#Collection(microsoft.graph.bookingWorkHours)",
	WorkingHours = workingHours,
};

await graphClient.BookingBusinesses["{id}"].StaffMembers
	.Request()
	.AddAsync(staffMembers);

```