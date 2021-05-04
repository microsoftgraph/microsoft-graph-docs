---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

TeamsAppInstallation teamsAppInstallation = new TeamsAppInstallation();
teamsAppInstallation.additionalDataManager().put("teamsApp@odata.bind", new JsonPrimitive("https://graph.microsoft.com/beta/appCatalogs/teamsApps/12345678-9abc-def0-123456789a"));

graphClient.teams("87654321-0abc-zqf0-321456789q").installedApps()
	.buildRequest()
	.post(teamsAppInstallation);

```