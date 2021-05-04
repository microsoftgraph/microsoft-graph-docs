---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

EventCollectionPage events = graphClient.groups("{id}").events()
	.buildRequest()
	.get();

```