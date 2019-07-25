---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

IOneDriveUsageFileCountsCollectionPage getOneDriveUsageFileCounts = graphClient.reports()
	.getOneDriveUsageFileCounts('D7')
	.buildRequest()
	.get();

```