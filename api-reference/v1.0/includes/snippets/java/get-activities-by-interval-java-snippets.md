---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

IItemActivityStatCollectionPage getActivitiesByInterval = graphClient.drives("{drive-id}").items("{item-id}")
	.getActivitiesByInterval("2017-01-01","2017-01-3","day")
	.buildRequest()
	.get();

```