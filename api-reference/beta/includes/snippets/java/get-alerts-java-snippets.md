---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

IAlertCollectionPage alerts = graphClient.security().alerts()
	.buildRequest()
	.get();

```