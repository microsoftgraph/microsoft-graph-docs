---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ProjectParticipationCollectionPage projects = graphClient.me().profile().projects()
	.buildRequest()
	.get();

```