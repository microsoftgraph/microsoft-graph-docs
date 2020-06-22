---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

LinkedList<Option> requestOptions = new LinkedList<Option>();
requestOptions.add(new HeaderOption("Prefer", "outlook.timezone=\"Pacific Standard Time\""));

Event event = new Event();
event.subject = "Prep for customer meeting";
ItemBody body = new ItemBody();
body.contentType = BodyType.HTML;
body.content = "Does this time work for you?";
event.body = body;
DateTimeTimeZone start = new DateTimeTimeZone();
start.dateTime = "2019-11-20T13:00:00";
start.timeZone = "Pacific Standard Time";
event.start = start;
DateTimeTimeZone end = new DateTimeTimeZone();
end.dateTime = "2019-11-20T14:00:00";
end.timeZone = "Pacific Standard Time";
event.end = end;
Location location = new Location();
location.displayName = "Cordova conference room";
event.location = location;
LinkedList<Attendee> attendeesList = new LinkedList<Attendee>();
Attendee attendees = new Attendee();
EmailAddress emailAddress = new EmailAddress();
emailAddress.address = "AdeleV@contoso.OnMicrosoft.com";
emailAddress.name = "Adele Vance";
attendees.emailAddress = emailAddress;
attendees.type = AttendeeType.REQUIRED;
attendeesList.add(attendees);
event.attendees = attendeesList;
event.allowNewTimeProposals = true;
event.isOnlineMeeting = true;
event.onlineMeetingProvider = OnlineMeetingProviderType.TEAMS_FOR_BUSINESS;

graphClient.me().events()
	.buildRequest( requestOptions )
	.post(event);

```