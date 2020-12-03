---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

IItemPublicationCollectionPage publications = graphClient.me().profile().publications()
	.buildRequest()
	.get();

```