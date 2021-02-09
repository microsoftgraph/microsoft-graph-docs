---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ItemAnalytics itemAnalytics = graphClient.drives("{drive-id}").items("{item-id}").analytics()
	.buildRequest()
	.get();

```