---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

IListCollectionPage lists = graphClient.sites("{site-id}").lists()
	.buildRequest()
	.get();

```