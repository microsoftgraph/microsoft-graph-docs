---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

graphClient.organization("{organizationId}").settings().profileCardProperties("fax")
	.buildRequest()
	.delete();

```