---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

DriveItemGetActivitiesByIntervalCollectionPage getActivitiesByInterval = graphClient.drives("{drive-id}").items("{item-id}")
	.getActivitiesByInterval(DriveItemGetActivitiesByIntervalParameterSet
		.newBuilder()
		.withStartDateTime("2017-01-01")
		.withEndDateTime("2017-01-3")
		.withInterval("day")
		.build())
	.buildRequest()
	.get();

```