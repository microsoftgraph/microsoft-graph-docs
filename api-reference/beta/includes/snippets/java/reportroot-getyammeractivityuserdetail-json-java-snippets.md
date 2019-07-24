---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

IYammerActivityUserDetailCollectionPage getYammerActivityUserDetail = graphClient.reports()
	.getYammerActivityUserDetail('D7')
	.buildRequest()
	.get();

```