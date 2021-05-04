---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ReportRootGetAzureADApplicationSignInSummaryCollectionPage getAzureADApplicationSignInSummary = graphClient.reports()
	.getAzureADApplicationSignInSummary(ReportRootGetAzureADApplicationSignInSummaryParameterSet
		.newBuilder()
		.withPeriod("D7")
		.build())
	.buildRequest()
	.get();

```