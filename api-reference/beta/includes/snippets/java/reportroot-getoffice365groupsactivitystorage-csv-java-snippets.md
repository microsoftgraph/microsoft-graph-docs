---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

IOffice365GroupsActivityStorageCollectionPage getOffice365GroupsActivityStorage = graphClient.reports()
	.getOffice365GroupsActivityStorage('D7')
	.buildRequest()
	.get();

```