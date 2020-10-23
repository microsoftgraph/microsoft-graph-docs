---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

DateTimeTimeZone newReminderTime = new DateTimeTimeZone();
newReminderTime.dateTime = "dateTime-value";
newReminderTime.timeZone = "timeZone-value";

graphClient.me().events("{id}")
	.snoozeReminder(newReminderTime)
	.buildRequest()
	.post();

```