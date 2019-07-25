---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

graphClient.accessReviews("2975E9B5-44CE-4E71-93D3-30F03B5AA992")
	.applyDecisions()
	.buildRequest()
	.post();

```