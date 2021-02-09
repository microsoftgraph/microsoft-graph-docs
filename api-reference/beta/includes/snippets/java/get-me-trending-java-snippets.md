---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ITrendingCollectionPage trending = graphClient.me().insights().trending()
	.buildRequest()
	.get();

```