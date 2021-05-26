---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ApplicationSignInDetailedSummary applicationSignInDetailedSummary = graphClient.reports().applicationSignInDetailedSummary("{id}")
	.buildRequest()
	.get();

```