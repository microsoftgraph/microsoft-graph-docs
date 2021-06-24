---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

Calendar calendar = new Calendar();
calendar.name = "Volunteer";

graphClient.me().calendars()
	.buildRequest()
	.post(calendar);

```