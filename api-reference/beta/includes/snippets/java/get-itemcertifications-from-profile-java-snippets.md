---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

PersonCertificationCollectionPage certifications = graphClient.me().profile().certifications()
	.buildRequest()
	.get();

```