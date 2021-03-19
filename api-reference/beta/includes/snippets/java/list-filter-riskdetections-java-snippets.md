---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

RiskDetectionCollectionPage riskDetections = graphClient.identityProtection().riskDetections()
	.buildRequest()
	.filter("riskEventType eq 'unfamiliarFeatures' or riskLevel eq 'medium'")
	.get();

```