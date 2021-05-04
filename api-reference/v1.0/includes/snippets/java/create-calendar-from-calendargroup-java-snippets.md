---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

Calendar calendar = new Calendar();
calendar.name = "Marketing calendar";

graphClient.me().calendarGroups("AAMkADYAAAR9NR5AAA=").calendars()
	.buildRequest()
	.post(calendar);

```