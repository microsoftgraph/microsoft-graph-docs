---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ShiftPreferences shiftPreferences = graphClient.users("871dbd5c-3a6a-4392-bfe1-042452793a50").settings().shiftPreferences()
	.buildRequest()
	.get();

```