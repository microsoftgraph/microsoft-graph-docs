---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

TrustFrameworkPolicyCollectionPage policies = graphClient.trustFramework().policies()
	.buildRequest()
	.get();

```