---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

IItemEmailCollectionPage emails = graphClient.me().profile().emails()
	.buildRequest()
	.get();

```