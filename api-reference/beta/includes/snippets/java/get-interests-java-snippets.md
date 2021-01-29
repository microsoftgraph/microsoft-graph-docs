---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

IPersonInterestCollectionPage interests = graphClient.me().profile().interests()
	.buildRequest()
	.get();

```