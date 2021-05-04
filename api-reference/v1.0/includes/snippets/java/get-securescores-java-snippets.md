---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

SecureScoreCollectionPage secureScores = graphClient.security().secureScores()
	.buildRequest()
	.top(1)
	.get();

```