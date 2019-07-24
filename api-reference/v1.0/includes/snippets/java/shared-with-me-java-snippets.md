---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

IDriveItemCollectionPage sharedWithMe = graphClient.me().drive()
	.sharedWithMe()
	.buildRequest()
	.get();

```