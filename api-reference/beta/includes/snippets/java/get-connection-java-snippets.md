---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ExternalConnection externalConnection = graphClient.connections("contosohr")
	.buildRequest()
	.get();

```