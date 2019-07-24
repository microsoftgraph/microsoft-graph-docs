---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

LinkedList<Option> requestOptions = new LinkedList<Option>();
requestOptions.add(new HeaderOption("Prefer", "outlook.timezone=\"Pacific Standard Time\""));

IEventCollectionPage events = graphClient.me().events()
	.buildRequest( requestOptions )
	.select("subject,body,bodyPreview,organizer,attendees,start,end,location")
	.get();

```