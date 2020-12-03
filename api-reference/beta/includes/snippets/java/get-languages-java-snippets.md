---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ILanguageProficiencyCollectionPage languages = graphClient.me().profile().languages()
	.buildRequest()
	.get();

```