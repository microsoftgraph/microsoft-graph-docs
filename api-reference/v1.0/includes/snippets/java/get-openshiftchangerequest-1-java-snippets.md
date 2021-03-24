---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

OpenShiftChangeRequest openShiftChangeRequest = graphClient.teams("{id}").schedule().openShiftChangeRequests("SREQ_0b87dd20-d5ed-4764-9c3e-cfc8516def09")
	.buildRequest()
	.get();

```