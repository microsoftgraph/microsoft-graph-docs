---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ISkypeForBusinessActivityUserDetailCollectionPage getSkypeForBusinessActivityUserDetail = graphClient.reports()
	.getSkypeForBusinessActivityUserDetail('D7')
	.buildRequest()
	.get();

```