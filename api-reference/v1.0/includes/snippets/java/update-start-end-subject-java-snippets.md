---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

OnlineMeeting onlineMeeting = new OnlineMeeting();
onlineMeeting.startDateTime = OffsetDateTimeSerializer.deserialize("2020-09-09T21:33:30.8546353+00:00");
onlineMeeting.endDateTime = OffsetDateTimeSerializer.deserialize("2020-09-09T22:03:30.8566356+00:00");
onlineMeeting.subject = "Patch Meeting Subject";

graphClient.me().onlineMeetings("MSpkYzE3Njc0Yy04MWQ5LTRhZGItYmZi")
	.buildRequest()
	.patch(onlineMeeting);

```