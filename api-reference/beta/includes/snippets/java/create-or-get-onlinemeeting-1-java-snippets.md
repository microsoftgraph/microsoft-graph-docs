---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

OffsetDateTime startDateTime = OffsetDateTimeSerializer.deserialize("02/06/2020 01:49:21");

OffsetDateTime endDateTime = OffsetDateTimeSerializer.deserialize("02/06/2020 02:19:21");

String subject = "Create a meeting with customId provided";

String externalId = "7eb8263f-d0e0-4149-bb1c-1f0476083c56";

MeetingParticipants participants = new MeetingParticipants();
LinkedList<MeetingParticipantInfo> attendeesList = new LinkedList<MeetingParticipantInfo>();
MeetingParticipantInfo attendees = new MeetingParticipantInfo();
IdentitySet identity = new IdentitySet();
Identity user = new Identity();
user.id = "1f35f2e6-9cab-44ad-8d5a-b74c14720000";
identity.user = user;
attendees.identity = identity;
attendees.role = OnlineMeetingRole.PRESENTER;
attendees.upn = "test1@contoso.com";
attendeesList.add(attendees);
participants.attendees = attendeesList;

graphClient.me().onlineMeetings()
	.createOrGet(OnlineMeetingCreateOrGetParameterSet
		.newBuilder()
		.withChatInfo(null)
		.withEndDateTime(endDateTime)
		.withExternalId(externalId)
		.withParticipants(participants)
		.withStartDateTime(startDateTime)
		.withSubject(subject)
		.build())
	.buildRequest()
	.post();

```