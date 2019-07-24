---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

OnlineMeeting OnlineMeeting = new OnlineMeeting();
OnlineMeeting.meetingType = MeetingType.MEET_NOW;
MeetingParticipants participants = new MeetingParticipants();
MeetingParticipantInfo organizer = new MeetingParticipantInfo();
IdentitySet identity = new IdentitySet();
Identity user = new Identity();
user.id = "550fae72-d251-43ec-868c-373732c2704f";
identity.user = user;
organizer.identity = identity;
participants.organizer = organizer;
OnlineMeeting.participants = participants;
OnlineMeeting.subject = "subject-value";

graphClient.app().onlineMeetings()
	.buildRequest()
	.post(OnlineMeeting);

```