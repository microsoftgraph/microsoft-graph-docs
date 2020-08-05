---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ChatInfo chatInfo = new ChatInfo();
chatInfo.threadId = "19%3A3b52398f3c524556894b776357c1dd79%40thread.skype";

int startDateTime = 2/6/2020 1:49:21 AM;

int endDateTime = 2/6/2020 2:19:21 AM;

String externalId = "7eb8263f-d0e0-4149-bb1c-1f0476083c56";

MeetingParticipants participants = new MeetingParticipants();
MeetingParticipantInfo organizer = new MeetingParticipantInfo();
IdentitySet identity = new IdentitySet();
Identity user = new Identity();
user.id = "d4a060b5-a8fc-450c-837b-750b2c280000";
user.tenantId = "72f988bf-86f1-41af-91ab-2d7cd0110000";
identity.user = user;
organizer.identity = identity;
organizer.upn = "test1@contoso.com";
participants.organizer = organizer;
LinkedList<MeetingParticipantInfo> attendeesList = new LinkedList<MeetingParticipantInfo>();
MeetingParticipantInfo attendees = new MeetingParticipantInfo();
IdentitySet identity1 = new IdentitySet();
Identity user1 = new Identity();
user1.id = "1f35f2e6-9cab-44ad-8d5a-b74c14720000";
user1.identityProvider = "MSA";
identity1.user = user1;
attendees.identity = identity1;
attendees.upn = "test@contoso.com";
attendeesList.add(attendees);
participants.attendees = attendeesList;

String subject = "Create a meeting with customId provided";

graphClient.me().onlineMeetings()
	.createOrGet(chatInfo,endDateTime,externalId,participants,startDateTime,subject)
	.buildRequest()
	.post();

```