---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

IRiskyUserHistoryItemCollectionPage history = graphClient.identityProtection().riskyUsers("41a31b00-3b3b-42d9-8f1c-6d4f14e74c69").history()
	.buildRequest()
	.get();

```