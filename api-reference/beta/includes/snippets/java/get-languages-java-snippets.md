---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

LanguageProficiencyCollectionPage languages = graphClient.me().profile().languages()
	.buildRequest()
	.get();

```