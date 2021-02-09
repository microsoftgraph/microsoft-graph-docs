---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

IRiskyUserCollectionPage riskyUsers = graphClient.identityProtection().riskyUsers()
	.buildRequest()
	.filter("riskLevel eq microsoft.graph.riskLevel'medium'")
	.get();

```