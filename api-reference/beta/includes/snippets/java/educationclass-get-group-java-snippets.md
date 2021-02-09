---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

Group group = graphClient.education().classes("2961761D-8094-4183-A9F6-8E36E966C7D9").group()
	.buildRequest()
	.get();

```