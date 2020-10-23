---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

IDriveItemVersionCollectionPage versions = graphClient.me().drive().items("{item-id}").versions()
	.buildRequest()
	.get();

```