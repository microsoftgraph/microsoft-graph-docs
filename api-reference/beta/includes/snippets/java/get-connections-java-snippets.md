---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ExternalConnectionCollectionPage connections = graphClient.external().connections()
	.buildRequest()
	.get();

```