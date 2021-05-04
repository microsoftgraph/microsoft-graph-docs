---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

PersonAnnualEventCollectionPage anniversaries = graphClient.me().profile().anniversaries()
	.buildRequest()
	.get();

```