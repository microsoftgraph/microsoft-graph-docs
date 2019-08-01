---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ITeamsUserActivityUserDetailCollectionPage getTeamsUserActivityUserDetail = graphClient.reports()
	.getTeamsUserActivityUserDetail('D7')
	.buildRequest()
	.get();

```