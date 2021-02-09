---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

LinkedList<Option> requestOptions = new LinkedList<Option>();
requestOptions.add(new HeaderOption("Range", "bytes=0-72796"));

graphClient.print().printers("{id}").jobs("{id}").documents("{id}")
	.uploadData()
	.buildRequest( requestOptions )
	.post();

```