---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ItemReference parentReference = new ItemReference();
parentReference.id = "String";

String name = "String";

graphClient.me().drive().items("{item-id}")
	.restore(DriveItemRestoreParameterSet
		.newBuilder()
		.withParentReference(parentReference)
		.withName(name)
		.build())
	.buildRequest()
	.post();

```