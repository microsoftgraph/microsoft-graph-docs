---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

CalendarGroupCollectionPage calendarGroups = graphClient.me().calendarGroups()
	.buildRequest()
	.get();

```