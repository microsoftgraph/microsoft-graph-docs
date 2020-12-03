---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

Shift shift = new Shift();
shift.id = "SHFT_577b75d2-a927-48c0-a5d1-dc984894e7b8";
shift.userId = "c5d0c76b-80c4-481c-be50-923cd8d680a1";
shift.schedulingGroupId = "TAG_228940ed-ff84-4e25-b129-1b395cf78be0";
ShiftItem sharedShift = new ShiftItem();
sharedShift.displayName = "Day shift";
sharedShift.notes = "Please do inventory as part of your shift.";
sharedShift.startDateTime = CalendarSerializer.deserialize("2019-03-11T15:00:00Z");
sharedShift.endDateTime = CalendarSerializer.deserialize("2019-03-12T00:00:00Z");
sharedShift.theme = ScheduleEntityTheme.BLUE;
LinkedList<ShiftActivity> activitiesList = new LinkedList<ShiftActivity>();
ShiftActivity activities = new ShiftActivity();
activities.isPaid = true;
activities.startDateTime = CalendarSerializer.deserialize("2019-03-11T15:00:00Z");
activities.endDateTime = CalendarSerializer.deserialize("2019-03-11T15:15:00Z");
activities.code = "";
activities.displayName = "Lunch";
activitiesList.add(activities);
sharedShift.activities = activitiesList;
shift.sharedShift = sharedShift;
ShiftItem draftShift = new ShiftItem();
draftShift.displayName = "Day shift";
draftShift.notes = "Please do inventory as part of your shift.";
draftShift.startDateTime = CalendarSerializer.deserialize("2019-03-11T15:00:00Z");
draftShift.endDateTime = CalendarSerializer.deserialize("2019-03-12T00:00:00Z");
draftShift.theme = ScheduleEntityTheme.BLUE;
LinkedList<ShiftActivity> activitiesList1 = new LinkedList<ShiftActivity>();
ShiftActivity activities1 = new ShiftActivity();
activities1.isPaid = true;
activities1.startDateTime = CalendarSerializer.deserialize("2019-03-11T15:00:00Z");
activities1.endDateTime = CalendarSerializer.deserialize("2019-03-11T15:30:00Z");
activities1.code = "";
activities1.displayName = "Lunch";
activitiesList1.add(activities1);
draftShift.activities = activitiesList1;
shift.draftShift = draftShift;

graphClient.teams("{teamId}").schedule().shifts()
	.buildRequest()
	.post(shift);

```