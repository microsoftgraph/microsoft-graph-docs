---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ISubscriptionCollectionPage subscriptions = graphClient.subscriptions()
	.buildRequest()
	.get();

```