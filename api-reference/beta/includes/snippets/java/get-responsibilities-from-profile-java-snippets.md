---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

StringCollectionPage responsibilities = graphClient.customRequest("/me/responsibilities", StringCollectionPage.class)
	.buildRequest()
	.get();

```