---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

IMailboxUsageQuotaStatusMailboxCountsCollectionPage getMailboxUsageQuotaStatusMailboxCounts = graphClient.reports()
	.getMailboxUsageQuotaStatusMailboxCounts('D7')
	.buildRequest()
	.get();

```