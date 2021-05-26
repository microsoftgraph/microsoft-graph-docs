---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

OutlookTask outlookTask = new OutlookTask();
outlookTask.subject = "Shop for dinner";
DateTimeTimeZone startDateTime = new DateTimeTimeZone();
startDateTime.dateTime = "2016-04-23T18:00:00";
startDateTime.timeZone = "Pacific Standard Time";
outlookTask.startDateTime = startDateTime;
DateTimeTimeZone dueDateTime = new DateTimeTimeZone();
dueDateTime.dateTime = "2016-04-25T13:00:00";
dueDateTime.timeZone = "Pacific Standard Time";
outlookTask.dueDateTime = dueDateTime;

graphClient.me().outlook().taskFolders("AAMkADIyAAAhrbPXAAA=").tasks()
	.buildRequest()
	.post(outlookTask);

```