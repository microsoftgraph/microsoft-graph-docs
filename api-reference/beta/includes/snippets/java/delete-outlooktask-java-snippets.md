---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

graphClient.me().outlook().tasks("AAMkADIyAAAhrb_QAAA=")
	.buildRequest()
	.delete();

```