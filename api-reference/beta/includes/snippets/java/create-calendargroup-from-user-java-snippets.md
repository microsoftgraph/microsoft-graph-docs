---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

CalendarGroup calendarGroup = new CalendarGroup();
calendarGroup.name = "name-value";
calendarGroup.classId = "classId-value";
calendarGroup.changeKey = "changeKey-value";

graphClient.me().calendarGroups()
	.buildRequest()
	.post(calendarGroup);

```