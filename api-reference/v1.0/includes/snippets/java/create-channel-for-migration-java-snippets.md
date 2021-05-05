---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

Channel channel = new Channel();
channel.additionalDataManager().put("@microsoft.graph.channelCreationMode", new JsonPrimitive("migration"));
channel.displayName = "Import_150958_99z";
channel.description = "Import_150958_99z";
channel.createdDateTime = OffsetDateTimeSerializer.deserialize("2020-03-14T11:22:17.067Z");

graphClient.teams("57fb72d0-d811-46f4-8947-305e6072eaa5").channels()
	.buildRequest()
	.post(channel);

```