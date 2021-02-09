---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

Content shiftPreferences = graphClient.users("871dbd5c-3a6a-4392-bfe1-042452793a50").shiftPreferences()
	.buildRequest()
	.get();

```