---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

DriveSharedWithMeCollectionPage sharedWithMe = graphClient.me().drive()
	.sharedWithMe()
	.buildRequest()
	.get();

```