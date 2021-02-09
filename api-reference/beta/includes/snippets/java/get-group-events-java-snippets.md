---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

IEventCollectionPage events = graphClient.groups("{id}").events()
	.buildRequest()
	.get();

```