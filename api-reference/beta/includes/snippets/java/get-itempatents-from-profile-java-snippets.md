---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

IItemPatentCollectionPage patents = graphClient.me().profile().patents()
	.buildRequest()
	.get();

```