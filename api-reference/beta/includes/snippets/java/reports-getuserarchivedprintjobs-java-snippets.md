---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ReportRootGetUserArchivedPrintJobsCollectionPage getUserArchivedPrintJobs = graphClient.print().reports()
	.getUserArchivedPrintJobs(ReportRootGetUserArchivedPrintJobsParameterSet
		.newBuilder()
		.withUserId("016b5565-3bbf-4067-b9ff-4d68167eb1a6")
		.withStartDateTime("2021-05-24")
		.withEndDateTime("2021-05-25")
		.build())
	.buildRequest()
	.get();

```