---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

graphClient.me().outlook().masterCategories("4b1c2495-54c9-4a5e-90a2-0ab0b31987d8")
	.buildRequest()
	.delete();

```