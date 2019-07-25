---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

Application application = new Application();
application.allowPublicClient = true;
application.displayName = "Display name";

graphClient.applications()
	.buildRequest()
	.post(application);

```