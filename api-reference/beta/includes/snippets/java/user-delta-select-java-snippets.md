---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

UserDeltaCollectionPage delta = graphClient.users()
	.delta()
	.buildRequest()
	.select("displayName,jobTitle,mobilePhone")
	.get();

```