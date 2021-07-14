---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

UserInsightsSettings userInsightsSettings = graphClient.me().settings().itemInsights()
	.buildRequest()
	.get();

```