---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

Drive drive = graphClient.drives("{driveId}")
	.buildRequest()
	.get();

```