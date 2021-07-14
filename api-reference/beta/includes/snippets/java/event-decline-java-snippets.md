---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

String comment = "I won't be able to make this week. How about next week?";

Boolean sendResponse = true;

TimeSlot proposedNewTime = new TimeSlot();
DateTimeTimeZone start = new DateTimeTimeZone();
start.dateTime = "2019-12-02T18:00:00";
start.timeZone = "Pacific Standard Time";
proposedNewTime.start = start;
DateTimeTimeZone end = new DateTimeTimeZone();
end.dateTime = "2019-12-02T19:00:00";
end.timeZone = "Pacific Standard Time";
proposedNewTime.end = end;

graphClient.me().events("{id}")
	.decline(EventDeclineParameterSet
		.newBuilder()
		.withComment(comment)
		.withSendResponse(sendResponse)
		.withProposedNewTime(proposedNewTime)
		.build())
	.buildRequest()
	.post();

```