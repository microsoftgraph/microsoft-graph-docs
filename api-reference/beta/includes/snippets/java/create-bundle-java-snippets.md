---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

DriveItem driveItem = new DriveItem();
driveItem.name = "Just some files";
driveItem.@name.conflictBehavior = "rename";
Bundle bundle = new Bundle();
driveItem.bundle = bundle;
LinkedList<DriveItem> childrenList = new LinkedList<DriveItem>();
DriveItem children = new DriveItem();
children.id = "1234asdf";
childrenList.add(children);
DriveItem children1 = new DriveItem();
children1.id = "1234qwerty";
childrenList.add(children1);
driveItem.children = childrenList;

graphClient.drive().bundles()
	.buildRequest()
	.post(driveItem);

```