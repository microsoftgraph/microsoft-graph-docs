---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

DriveItem driveItem = new DriveItem();
ItemReference parentReference = new ItemReference();
parentReference.id = "new-parent-folder-id";
driveItem.parentReference = parentReference;
driveItem.name = "new-item-name.txt";

graphClient.me().drive().items("{item-id}")
	.buildRequest()
	.patch(driveItem);

```