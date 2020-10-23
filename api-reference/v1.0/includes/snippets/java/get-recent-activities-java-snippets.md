---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

IUserActivityCollectionPage recent = graphClient.me().activities()
	.recent()
	.buildRequest()
	.get();

```