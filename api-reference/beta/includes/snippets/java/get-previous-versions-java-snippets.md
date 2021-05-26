---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

DriveItemVersionCollectionPage versions = graphClient.me().drive().items("{item-id}").versions()
	.buildRequest()
	.get();

```