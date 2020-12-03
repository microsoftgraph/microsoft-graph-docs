---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

LinkedList<Option> requestOptions = new LinkedList<Option>();
requestOptions.add(new QueryOption("startDateTime", "2019-04-08T09:00:00.0000000"));
requestOptions.add(new QueryOption("endDateTime", "2019-04-30T09:00:00.0000000"));

IEventCollectionPage instances = graphClient.me().events("AAMkAGUzYRgWAAA=").instances()
	.buildRequest( requestOptions )
	.select("subject,bodyPreview,seriesMasterId,type,recurrence,start,end")
	.get();

```