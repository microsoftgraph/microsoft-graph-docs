---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ItemEmailCollectionPage emails = graphClient.me().profile().emails()
	.buildRequest()
	.get();

```