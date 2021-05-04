---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

TeamworkBot teamworkBot = graphClient.appCatalogs().teamsApps("e4c5c249-bb4b-419e-b7c5-b1d98559368b").appDefinitions("ZTRjNWMyNDktYmI0Yi00MTllLWI3YzUtYjFkOTg1NTkzNjhiIyMyLjAuMSMjUHVibGlzaGVk").bot()
	.buildRequest()
	.get();

```