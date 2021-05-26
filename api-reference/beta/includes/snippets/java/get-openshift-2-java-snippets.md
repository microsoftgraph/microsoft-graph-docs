---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

OpenShiftCollectionPage openShifts = graphClient.teams("{id}").schedule().openShifts()
	.buildRequest()
	.get();

```