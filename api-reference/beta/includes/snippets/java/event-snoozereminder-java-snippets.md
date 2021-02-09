---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

DateTimeTimeZone newReminderTime = new DateTimeTimeZone();
newReminderTime.dateTime = "2016-10-19T10:37:00Z";
newReminderTime.timeZone = "timeZone-value";

graphClient.me().events("{id}")
	.snoozeReminder(newReminderTime)
	.buildRequest()
	.post();

```