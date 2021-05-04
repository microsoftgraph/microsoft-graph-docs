---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

PersonInterestCollectionPage interests = graphClient.me().profile().interests()
	.buildRequest()
	.get();

```