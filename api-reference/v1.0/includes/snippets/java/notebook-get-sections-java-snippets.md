---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

IOnenoteSectionCollectionPage sections = graphClient.me().onenote().notebooks("{id}").sections()
	.buildRequest()
	.get();

```