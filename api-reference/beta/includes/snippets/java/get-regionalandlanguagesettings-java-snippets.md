---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

RegionalAndLanguageSettings regionalAndLanguageSettings = graphClient.me().settings().regionalAndLanguageSettings()
	.buildRequest()
	.get();

```