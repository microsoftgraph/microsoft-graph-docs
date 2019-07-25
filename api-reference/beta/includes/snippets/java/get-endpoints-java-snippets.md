---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

IEndpointCollectionPage endpoints = graphClient.groups("{id}").endpoints()
	.buildRequest()
	.get();

```