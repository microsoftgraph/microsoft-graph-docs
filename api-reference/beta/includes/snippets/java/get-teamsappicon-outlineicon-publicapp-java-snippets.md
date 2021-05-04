---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

TeamsAppIcon teamsAppIcon = graphClient.appCatalogs().teamsApps("95de633a-083e-42f5-b444-a4295d8e9314").appDefinitions("OTVkZTYzM2EtMDgzZS00MmY1LWI0NDQtYTQyOTVkOGU5MzE0IyMxLjAuNSMjUHVibGlzaGVk").outlineIcon()
	.buildRequest()
	.get();

```