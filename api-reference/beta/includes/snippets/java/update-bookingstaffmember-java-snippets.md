---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

BookingStaffMember bookingStaffMember = new BookingStaffMember();
LinkedList<BookingWorkHours> workingHoursList = new LinkedList<BookingWorkHours>();
BookingWorkHours workingHours = new BookingWorkHours();
workingHours.additionalDataManager().put("@odata.type", new JsonPrimitive("#microsoft.graph.bookingWorkHours"));
workingHours.additionalDataManager().put("day@odata.type", new JsonPrimitive("#microsoft.graph.dayOfWeek"));
workingHours.day = DayOfWeek.MONDAY;
workingHours.additionalDataManager().put("timeSlots@odata.type", new JsonPrimitive("#Collection(microsoft.graph.bookingWorkTimeSlot)"));
LinkedList<String> timeSlotsList = new LinkedList<String>();
workingHours.timeSlots = timeSlotsList;
workingHoursList.add(workingHours);
BookingWorkHours workingHours1 = new BookingWorkHours();
workingHours1.additionalDataManager().put("@odata.type", new JsonPrimitive("#microsoft.graph.bookingWorkHours"));
workingHours1.additionalDataManager().put("day@odata.type", new JsonPrimitive("#microsoft.graph.dayOfWeek"));
workingHours1.day = DayOfWeek.TUESDAY;
workingHours1.additionalDataManager().put("timeSlots@odata.type", new JsonPrimitive("#Collection(microsoft.graph.bookingWorkTimeSlot)"));
LinkedList<BookingWorkTimeSlot> timeSlotsList1 = new LinkedList<BookingWorkTimeSlot>();
BookingWorkTimeSlot timeSlots = new BookingWorkTimeSlot();
timeSlots.additionalDataManager().put("@odata.type", new JsonPrimitive("#microsoft.graph.bookingWorkTimeSlot"));
timeSlots.end = "17:00:00.0000000";
timeSlots.start = "08:00:00.0000000";
timeSlotsList1.add(timeSlots);
workingHours1.timeSlots = timeSlotsList1;
workingHoursList.add(workingHours1);
BookingWorkHours workingHours2 = new BookingWorkHours();
workingHours2.additionalDataManager().put("@odata.type", new JsonPrimitive("#microsoft.graph.bookingWorkHours"));
workingHours2.additionalDataManager().put("day@odata.type", new JsonPrimitive("#microsoft.graph.dayOfWeek"));
workingHours2.day = DayOfWeek.WEDNESDAY;
workingHours2.additionalDataManager().put("timeSlots@odata.type", new JsonPrimitive("#Collection(microsoft.graph.bookingWorkTimeSlot)"));
LinkedList<BookingWorkTimeSlot> timeSlotsList2 = new LinkedList<BookingWorkTimeSlot>();
BookingWorkTimeSlot timeSlots1 = new BookingWorkTimeSlot();
timeSlots1.additionalDataManager().put("@odata.type", new JsonPrimitive("#microsoft.graph.bookingWorkTimeSlot"));
timeSlots1.end = "17:00:00.0000000";
timeSlots1.start = "08:00:00.0000000";
timeSlotsList2.add(timeSlots1);
workingHours2.timeSlots = timeSlotsList2;
workingHoursList.add(workingHours2);
BookingWorkHours workingHours3 = new BookingWorkHours();
workingHours3.additionalDataManager().put("@odata.type", new JsonPrimitive("#microsoft.graph.bookingWorkHours"));
workingHours3.additionalDataManager().put("day@odata.type", new JsonPrimitive("#microsoft.graph.dayOfWeek"));
workingHours3.day = DayOfWeek.THURSDAY;
workingHours3.additionalDataManager().put("timeSlots@odata.type", new JsonPrimitive("#Collection(microsoft.graph.bookingWorkTimeSlot)"));
LinkedList<BookingWorkTimeSlot> timeSlotsList3 = new LinkedList<BookingWorkTimeSlot>();
BookingWorkTimeSlot timeSlots2 = new BookingWorkTimeSlot();
timeSlots2.additionalDataManager().put("@odata.type", new JsonPrimitive("#microsoft.graph.bookingWorkTimeSlot"));
timeSlots2.end = "17:00:00.0000000";
timeSlots2.start = "08:00:00.0000000";
timeSlotsList3.add(timeSlots2);
workingHours3.timeSlots = timeSlotsList3;
workingHoursList.add(workingHours3);
BookingWorkHours workingHours4 = new BookingWorkHours();
workingHours4.additionalDataManager().put("@odata.type", new JsonPrimitive("#microsoft.graph.bookingWorkHours"));
workingHours4.additionalDataManager().put("day@odata.type", new JsonPrimitive("#microsoft.graph.dayOfWeek"));
workingHours4.day = DayOfWeek.FRIDAY;
workingHours4.additionalDataManager().put("timeSlots@odata.type", new JsonPrimitive("#Collection(microsoft.graph.bookingWorkTimeSlot)"));
LinkedList<BookingWorkTimeSlot> timeSlotsList4 = new LinkedList<BookingWorkTimeSlot>();
BookingWorkTimeSlot timeSlots3 = new BookingWorkTimeSlot();
timeSlots3.additionalDataManager().put("@odata.type", new JsonPrimitive("#microsoft.graph.bookingWorkTimeSlot"));
timeSlots3.end = "17:00:00.0000000";
timeSlots3.start = "08:00:00.0000000";
timeSlotsList4.add(timeSlots3);
workingHours4.timeSlots = timeSlotsList4;
workingHoursList.add(workingHours4);
bookingStaffMember.workingHours = workingHoursList;

graphClient.bookingBusinesses("Contosolunchdelivery@M365B489948.onmicrosoft.com").staffMembers("8ee1c803-a1fa-406d-8259-7ab53233f148")
	.buildRequest()
	.patch(bookingStaffMember);

```