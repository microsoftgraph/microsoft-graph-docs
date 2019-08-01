---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

DriveItem driveItem = new DriveItem();
driveItem.name = "My Day at the Beach";
driveItem.@name.conflictBehavior = "rename";
Bundle bundle = new Bundle();
Album album = new Album();
bundle.album = album;
driveItem.bundle = bundle;
LinkedList<DriveItem> childrenList = new LinkedList<DriveItem>();
DriveItem children = new DriveItem();
children.id = "1234asdf";
childrenList.add(children);
driveItem.children = childrenList;

graphClient.drive().bundles()
	.buildRequest()
	.post(driveItem);

```