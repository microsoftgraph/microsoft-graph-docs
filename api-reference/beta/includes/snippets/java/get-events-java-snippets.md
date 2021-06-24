---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

LinkedList<Option> requestOptions = new LinkedList<Option>();
requestOptions.add(new HeaderOption("Prefer", "outlook.timezone=\"Pacific Standard Time\""));

EventCollectionPage events = graphClient.me().events()
	.buildRequest( requestOptions )
	.select("subject,body,bodyPreview,organizer,attendees,start,end,location")
	.get();

```