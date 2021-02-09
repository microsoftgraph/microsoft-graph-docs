---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ProfileCardProperty profileCardProperty = graphClient.organization("{organizationId}").settings().profileCardProperties("{id}")
	.buildRequest()
	.get();

```