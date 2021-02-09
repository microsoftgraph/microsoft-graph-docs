---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

String comment = "Updating the latest guidelines";

graphClient.drives("{drive-id}").items("{item-id}")
	.checkin(null,comment)
	.buildRequest()
	.post();

```