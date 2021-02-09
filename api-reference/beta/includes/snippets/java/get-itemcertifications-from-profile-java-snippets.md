---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

IPersonCertificationCollectionPage certifications = graphClient.me().profile().certifications()
	.buildRequest()
	.get();

```