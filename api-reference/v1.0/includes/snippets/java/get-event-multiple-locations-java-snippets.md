---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

Event event = graphClient.me().events("AAMkADAGAADDdm4NAAA=")
	.buildRequest()
	.select("subject,body,bodyPreview,organizer,attendees,start,end,location,locations")
	.get();

```