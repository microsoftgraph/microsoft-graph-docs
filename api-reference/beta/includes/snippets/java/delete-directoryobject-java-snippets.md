---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

graphClient.directoryObjects("ffab4dce-9b82-49a6-b7c7-1a143106598c")
	.buildRequest()
	.delete();

```