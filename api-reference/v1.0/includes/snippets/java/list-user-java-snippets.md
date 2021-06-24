---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

UserCollectionWithReferencesPage allowedUsers = graphClient.print().shares("{printerShareId}").allowedUsers()
	.buildRequest()
	.get();

```