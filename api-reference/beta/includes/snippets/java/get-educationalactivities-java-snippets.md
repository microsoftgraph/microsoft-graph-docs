---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

IEducationalActivityCollectionPage educationalActivities = graphClient.me().profile().educationalActivities()
	.buildRequest()
	.get();

```