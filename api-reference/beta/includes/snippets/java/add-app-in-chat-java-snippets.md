---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

TeamsAppInstallation teamsAppInstallation = new TeamsAppInstallation();
teamsAppInstallation.additionalDataManager().put("teamsApp@odata.bind", new JsonPrimitive("https://graph.microsoft.com/beta/appCatalogs/teamsApps/12345678-9abc-def0-123456789a"));

graphClient.chats("19:ea28e88c00e94c7786b065394a61f296@thread.v2").installedApps()
	.buildRequest()
	.post(teamsAppInstallation);

```