---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

IProfileCardPropertyCollectionPage profileCardProperties = graphClient.organization("{organizationId}").settings().profileCardProperties()
	.buildRequest()
	.get();

```