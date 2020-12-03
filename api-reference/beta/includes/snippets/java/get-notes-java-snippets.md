---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

IPersonAnnotationCollectionPage notes = graphClient.me().profile().notes()
	.buildRequest()
	.get();

```