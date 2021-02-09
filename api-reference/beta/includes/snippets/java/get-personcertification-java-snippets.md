---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

PersonCertification personCertification = graphClient.me().profile().certifications("{id}")
	.buildRequest()
	.get();

```