---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

DriveItem driveItem = new DriveItem();
driveItem.name = "Shared legal agreements";

graphClient.drive().items("{bundle-id}")
	.buildRequest()
	.patch(driveItem);

```