---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

TiIndicatorCollectionPage tiIndicators = graphClient.security().tiIndicators()
	.buildRequest()
	.get();

```