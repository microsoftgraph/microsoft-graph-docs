---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

WebAccount webAccount = new WebAccount();
webAccount.webUrl = "https://github.com/innocenty.popov";

graphClient.me().profile().webAccounts("{id}")
	.buildRequest()
	.patch(webAccount);

```