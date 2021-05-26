---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

UserActivityRecentCollectionPage recent = graphClient.me().activities()
	.recent()
	.buildRequest()
	.get();

```