---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

IOffice365ActivationsUserDetailCollectionPage getOffice365ActivationsUserDetail = graphClient.reports()
	.getOffice365ActivationsUserDetail()
	.buildRequest()
	.get();

```