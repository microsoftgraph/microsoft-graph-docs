---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

LinkedList<Option> requestOptions = new LinkedList<Option>();
requestOptions.add(new HeaderOption("Prefer", "outlook.timezone=\"Pacific Standard Time\""));

OutlookTask outlookTask = new OutlookTask();
outlookTask.subject = "Shop for children's weekend";
DateTimeTimeZone startDateTime = new DateTimeTimeZone();
startDateTime.dateTime = "2016-05-03T09:00:00";
startDateTime.timeZone = "Eastern Standard Time";
outlookTask.startDateTime = startDateTime;
DateTimeTimeZone dueDateTime = new DateTimeTimeZone();
dueDateTime.dateTime = "2016-05-05T16:00:00";
dueDateTime.timeZone = "Eastern Standard Time";
outlookTask.dueDateTime = dueDateTime;

graphClient.me().outlook().tasks()
	.buildRequest( requestOptions )
	.post(outlookTask);

```