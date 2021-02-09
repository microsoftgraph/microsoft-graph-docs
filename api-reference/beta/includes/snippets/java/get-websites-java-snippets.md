---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

IPersonWebsiteCollectionPage websites = graphClient.me().profile().websites()
	.buildRequest()
	.get();

```