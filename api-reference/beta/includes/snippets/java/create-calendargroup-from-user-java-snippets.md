---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

CalendarGroup calendarGroup = new CalendarGroup();
calendarGroup.name = "Personal events";

graphClient.me().calendarGroups()
	.buildRequest()
	.post(calendarGroup);

```