---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

CalendarCollectionPage calendars = graphClient.me().calendars()
	.buildRequest()
	.get();

```