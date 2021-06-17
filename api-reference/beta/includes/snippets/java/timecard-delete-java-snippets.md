---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

graphClient.teams("871dbd5c-3a6a-4392-bfe1-042452793a50").schedule().timeCards("3895809b-a618-4c0d-86a0-d42b25b7d74f")
	.buildRequest()
	.delete();

```