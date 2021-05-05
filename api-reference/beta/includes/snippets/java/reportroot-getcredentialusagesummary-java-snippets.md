---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ReportRootGetCredentialUsageSummaryCollectionPage getCredentialUsageSummary = graphClient.reports()
	.getCredentialUsageSummary(ReportRootGetCredentialUsageSummaryParameterSet
		.newBuilder()
		.withPeriod("D30")
		.build())
	.buildRequest()
	.filter("feature eq 'registration'")
	.get();

```