---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

IPersonAnniversaryCollectionPage anniversaries = graphClient.me().profile().anniversaries()
	.buildRequest()
	.get();

```