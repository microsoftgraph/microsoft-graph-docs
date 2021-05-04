---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ApplicationDeltaCollectionPage delta = graphClient.applications()
	.delta()
	.buildRequest()
	.get();

```