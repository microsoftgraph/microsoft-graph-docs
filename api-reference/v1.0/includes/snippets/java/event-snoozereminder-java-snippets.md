---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

DateTimeTimeZone newReminderTime = new DateTimeTimeZone();
newReminderTime.dateTime = "dateTime-value";
newReminderTime.timeZone = "timeZone-value";

graphClient.me().events("{id}")
	.snoozeReminder(EventSnoozeReminderParameterSet
		.newBuilder()
		.withNewReminderTime(newReminderTime)
		.build())
	.buildRequest()
	.post();

```