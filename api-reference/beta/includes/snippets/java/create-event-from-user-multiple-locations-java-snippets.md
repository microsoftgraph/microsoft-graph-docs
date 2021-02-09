---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

LinkedList<Option> requestOptions = new LinkedList<Option>();
requestOptions.add(new HeaderOption("Prefer", "outlook.timezone=\"Pacific Standard Time\""));

Event event = new Event();
event.subject = "Plan summer company picnic";
ItemBody body = new ItemBody();
body.contentType = BodyType.HTML;
body.content = "Let's kick-start this event planning!";
event.body = body;
DateTimeTimeZone start = new DateTimeTimeZone();
start.dateTime = "2017-08-30T11:00:00";
start.timeZone = "Pacific Standard Time";
event.start = start;
DateTimeTimeZone end = new DateTimeTimeZone();
end.dateTime = "2017-08-30T12:00:00";
end.timeZone = "Pacific Standard Time";
event.end = end;
LinkedList<Attendee> attendeesList = new LinkedList<Attendee>();
Attendee attendees = new Attendee();
EmailAddress emailAddress = new EmailAddress();
emailAddress.address = "DanaS@contoso.onmicrosoft.com";
emailAddress.name = "Dana Swope";
attendees.emailAddress = emailAddress;
attendees.type = AttendeeType.REQUIRED;
attendeesList.add(attendees);
Attendee attendees1 = new Attendee();
EmailAddress emailAddress1 = new EmailAddress();
emailAddress1.address = "AlexW@contoso.onmicrosoft.com";
emailAddress1.name = "Alex Wilber";
attendees1.emailAddress = emailAddress1;
attendees1.type = AttendeeType.REQUIRED;
attendeesList.add(attendees1);
event.attendees = attendeesList;
Location location = new Location();
location.displayName = "Conf Room 3; Fourth Coffee; Home Office";
location.locationType = LocationType.DEFAULT;
event.location = location;
LinkedList<Location> locationsList = new LinkedList<Location>();
Location locations = new Location();
locations.displayName = "Conf Room 3";
locationsList.add(locations);
Location locations1 = new Location();
locations1.displayName = "Fourth Coffee";
PhysicalAddress address2 = new PhysicalAddress();
address2.street = "4567 Main St";
address2.city = "Redmond";
address2.state = "WA";
address2.countryOrRegion = "US";
address2.postalCode = "32008";
locations1.address = address2;
OutlookGeoCoordinates coordinates = new OutlookGeoCoordinates();
coordinates.latitude = 47.672d;
coordinates.longitude = -102.103d;
locations1.coordinates = coordinates;
locationsList.add(locations1);
Location locations2 = new Location();
locations2.displayName = "Home Office";
locationsList.add(locations2);
event.locations = locationsList;
event.allowNewTimeProposals = true;

graphClient.me().events()
	.buildRequest( requestOptions )
	.post(event);

```