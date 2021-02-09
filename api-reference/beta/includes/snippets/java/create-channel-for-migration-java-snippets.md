---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

Channel channel = new Channel();
channel.additionalDataManager().put("@microsoft.graph.channelCreationMode", new JsonPrimitive("migration"));
channel.displayName = "Architecture Discussion";
channel.description = "This channel is where we debate all future architecture plans";
channel.membershipType = ChannelMembershipType.STANDARD;
channel.createdDateTime = CalendarSerializer.deserialize("2020-03-14T11:22:17.067Z");

graphClient.teams("57fb72d0-d811-46f4-8947-305e6072eaa5").channels()
	.buildRequest()
	.post(channel);

```