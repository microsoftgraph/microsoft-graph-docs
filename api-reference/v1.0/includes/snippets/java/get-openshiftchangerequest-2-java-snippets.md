---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

OpenShiftChangeRequestCollectionPage openShiftChangeRequests = graphClient.teams("{id}").schedule().openShiftChangeRequests()
	.buildRequest()
	.get();

```