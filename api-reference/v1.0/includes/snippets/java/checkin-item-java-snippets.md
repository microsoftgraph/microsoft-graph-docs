---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

String comment = "Updating the latest guidelines";

graphClient.drives("{drive-id}").items("{item-id}")
	.checkin(DriveItemCheckinParameterSet
		.newBuilder()
		.withCheckInAs(null)
		.withComment(comment)
		.build())
	.buildRequest()
	.post();

```