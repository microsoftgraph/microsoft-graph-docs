---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

LinkedList<Option> requestOptions = new LinkedList<Option>();
requestOptions.add(new HeaderOption("Prefer", "outlook.timezone=\"Pacific Standard Time\""));

LinkedList<AttendeeBase> attendeesList = new LinkedList<AttendeeBase>();
AttendeeBase attendees = new AttendeeBase();
attendees.type = AttendeeType.REQUIRED;
EmailAddress emailAddress = new EmailAddress();
emailAddress.name = "Alex Wilbur";
emailAddress.address = "alexw@contoso.onmicrosoft.com";
attendees.emailAddress = emailAddress;

attendeesList.add(attendees);

LocationConstraint locationConstraint = new LocationConstraint();
locationConstraint.isRequired = "false";
locationConstraint.suggestLocation = "false";
LinkedList<LocationConstraintItem> locationsList = new LinkedList<LocationConstraintItem>();
LocationConstraintItem locations = new LocationConstraintItem();
locations.resolveAvailability = "false";
locations.displayName = "Conf room Hood";
locationsList.add(locations);
locationConstraint.locations = locationsList;

TimeConstraint timeConstraint = new TimeConstraint();
timeConstraint.activityDomain = ActivityDomain.WORK;
LinkedList<TimeSlot> timeSlotsList = new LinkedList<TimeSlot>();
TimeSlot timeSlots = new TimeSlot();
DateTimeTimeZone start = new DateTimeTimeZone();
start.dateTime = "2019-04-16T09:00:00";
start.timeZone = "Pacific Standard Time";
timeSlots.start = start;
DateTimeTimeZone end = new DateTimeTimeZone();
end.dateTime = "2019-04-18T17:00:00";
end.timeZone = "Pacific Standard Time";
timeSlots.end = end;
timeSlotsList.add(timeSlots);
timeConstraint.timeSlots = timeSlotsList;

boolean isOrganizerOptional = false;

String meetingDuration = "PT1H";

boolean returnSuggestionReasons = true;

String minimumAttendeePercentage = "100";

graphClient.me()
	.findMeetingTimes(attendeesList,locationConstraint,timeConstraint,meetingDuration,null,isOrganizerOptional,returnSuggestionReasons,minimumAttendeePercentage)
	.buildRequest( requestOptions )
	.post();

```