---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

OnlineMeeting onlineMeeting = new OnlineMeeting();
onlineMeeting.startDateTime = "2019-09-09T21:33:30.8546353+00:00";
onlineMeeting.endDateTime = "2019-09-09T22:03:30.8566356+00:00";
onlineMeeting.subject = "Application Token Meeting";
MeetingParticipants participants = new MeetingParticipants();
MeetingParticipantInfo organizer = new MeetingParticipantInfo();
IdentitySet identity = new IdentitySet();
Identity user = new Identity();
user.id = "550fae72-d251-43ec-868c-373732c2704f";
identity.user = user;
organizer.identity = identity;
participants.organizer = organizer;
onlineMeeting.participants = participants;

graphClient.communications().onlineMeetings()
	.buildRequest()
	.post(onlineMeeting);

```