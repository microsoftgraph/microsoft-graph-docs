---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

RiskDetection riskDetection = graphClient.identityProtection().riskDetections("c2b6c2b9-dddc-acd0-2b39-d519d803dbc3")
	.buildRequest()
	.get();

```