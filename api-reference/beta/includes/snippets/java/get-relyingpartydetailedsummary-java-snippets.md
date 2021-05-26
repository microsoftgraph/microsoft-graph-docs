---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ReportRootGetRelyingPartyDetailedSummaryCollectionPage getRelyingPartyDetailedSummary = graphClient.reports()
	.getRelyingPartyDetailedSummary(ReportRootGetRelyingPartyDetailedSummaryParameterSet
		.newBuilder()
		.withPeriod("period_value")
		.build())
	.buildRequest()
	.get();

```