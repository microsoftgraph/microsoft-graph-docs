---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

TrendingCollectionPage trending = graphClient.me().insights().trending()
	.buildRequest()
	.get();

```