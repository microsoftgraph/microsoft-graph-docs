---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

IAudioRoutingGroupCollectionPage audioRoutingGroups = graphClient.communications().calls("{id}").audioRoutingGroups()
	.buildRequest()
	.get();

```