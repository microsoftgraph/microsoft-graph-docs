---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

IDriveRecentCollectionPage recent = graphClient.me().drive()
	.recent()
	.buildRequest()
	.get();

```