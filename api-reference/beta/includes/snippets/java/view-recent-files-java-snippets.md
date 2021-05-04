---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

DriveRecentCollectionPage recent = graphClient.me().drive()
	.recent()
	.buildRequest()
	.get();

```