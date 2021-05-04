---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

Subscription subscription = new Subscription();
subscription.expirationDateTime = OffsetDateTimeSerializer.deserialize("2016-11-22T18:23:45.9356913Z");

graphClient.subscriptions("{id}")
	.buildRequest()
	.patch(subscription);

```