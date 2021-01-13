---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

IOutlookUserSupportedLanguagesCollectionPage supportedLanguages = graphClient.me().outlook()
	.supportedLanguages()
	.buildRequest()
	.get();

```