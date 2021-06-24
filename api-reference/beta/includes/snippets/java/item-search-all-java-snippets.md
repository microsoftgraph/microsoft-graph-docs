---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

DriveSearchCollectionPage search = graphClient.me().drive()
	.search(DriveSearchParameterSet
		.newBuilder()
		.withQ("Contoso Project")
		.build())
	.buildRequest()
	.get();

```