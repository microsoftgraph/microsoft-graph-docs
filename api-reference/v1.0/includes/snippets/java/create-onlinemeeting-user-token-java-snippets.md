---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

OnlineMeeting onlineMeeting = new OnlineMeeting();
onlineMeeting.startDateTime = OffsetDateTimeSerializer.deserialize("2019-07-12T21:30:34.2444915+00:00");
onlineMeeting.endDateTime = OffsetDateTimeSerializer.deserialize("2019-07-12T22:00:34.2464912+00:00");
onlineMeeting.subject = "User Token Meeting";

graphClient.me().onlineMeetings()
	.buildRequest()
	.post(onlineMeeting);

```