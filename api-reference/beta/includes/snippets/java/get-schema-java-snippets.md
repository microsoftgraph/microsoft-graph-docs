---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

Schema schema = graphClient.external().connections("contosohr").schema()
	.buildRequest()
	.get();

```