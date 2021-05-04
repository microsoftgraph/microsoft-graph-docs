---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

DriveItemSearchCollectionPage search = graphClient.me().drive().root()
	.search(DriveItemSearchParameterSet
		.newBuilder()
		.withQ("Contoso Project")
		.build())
	.buildRequest()
	.get();

```