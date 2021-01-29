---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

IWebAccountCollectionPage webAccounts = graphClient.me().profile().webAccounts()
	.buildRequest()
	.get();

```