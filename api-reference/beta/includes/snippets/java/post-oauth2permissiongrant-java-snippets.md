---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

OAuth2PermissionGrant oAuth2PermissionGrant = new OAuth2PermissionGrant();
oAuth2PermissionGrant.clientId = "clientId-value";
oAuth2PermissionGrant.consentType = "consentType-value";
oAuth2PermissionGrant.principalId = "principalId-value";
oAuth2PermissionGrant.resourceId = "resourceId-value";
oAuth2PermissionGrant.scope = "scope-value";
oAuth2PermissionGrant.startTime = CalendarSerializer.deserialize("2016-10-19T10:37:00Z");
oAuth2PermissionGrant.expiryTime = CalendarSerializer.deserialize("2016-10-19T10:37:00Z");

graphClient.oauth2PermissionGrants()
	.buildRequest()
	.post(oAuth2PermissionGrant);

```