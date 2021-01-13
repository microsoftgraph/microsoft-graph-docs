---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

UserScopeTeamsAppInstallation userScopeTeamsAppInstallation = new UserScopeTeamsAppInstallation();
userScopeTeamsAppInstallation.additionalDataManager().put("teamsApp@odata.bind", new JsonPrimitive("https://graph.microsoft.com/v1.0/appCatalogs/teamsApps/12345678-9abc-def0-123456789a"));

graphClient.users("5b649834-7412-4cce-9e69-176e95a394f5").teamwork().installedApps()
	.buildRequest()
	.post(userScopeTeamsAppInstallation);

```