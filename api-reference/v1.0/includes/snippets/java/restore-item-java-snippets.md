---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ItemReference parentReference = new ItemReference();
parentReference.id = "String";

String name = "String";

graphClient.me().drive().items("{item-id}")
	.restore(parentReference,name)
	.buildRequest()
	.post();

```