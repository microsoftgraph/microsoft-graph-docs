---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ItemReference parentReference = new ItemReference();
parentReference.path = "/drive/root:/Documents";

String name = "Copy of LargeFolder1";

graphClient.me().drive().items("{folder-item-id}")
	.copy(name,parentReference)
	.buildRequest()
	.post();

```