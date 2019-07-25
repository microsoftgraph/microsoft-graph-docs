---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

IOffice365GroupsActivityDetailCollectionPage getOffice365GroupsActivityDetail = graphClient.reports()
	.getOffice365GroupsActivityDetail('D7')
	.buildRequest()
	.get();

```