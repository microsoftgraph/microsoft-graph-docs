---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

DriveItemDeltaCollectionPage delta = graphClient.me().drive().root()
	.delta()
	.buildRequest()
	.get();

```