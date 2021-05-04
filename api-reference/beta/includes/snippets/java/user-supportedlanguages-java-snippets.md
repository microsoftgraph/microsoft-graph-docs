---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

OutlookUserSupportedLanguagesCollectionPage supportedLanguages = graphClient.me().outlook()
	.supportedLanguages()
	.buildRequest()
	.get();

```