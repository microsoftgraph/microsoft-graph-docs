---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

Content tokenLifetimePolicies = graphClient.applications("{id}").tokenLifetimePolicies()
	.buildRequest()
	.get();

```