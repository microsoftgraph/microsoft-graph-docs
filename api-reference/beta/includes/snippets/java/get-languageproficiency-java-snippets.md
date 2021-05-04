---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

LanguageProficiency languageProficiency = graphClient.me().profile().languages("{id}")
	.buildRequest()
	.get();

```