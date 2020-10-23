---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

User user = new User();
user.accountEnabled = true;
user.displayName = "displayName-value";
user.mailNickname = "mailNickname-value";
user.userPrincipalName = "upn-value@tenant-value.onmicrosoft.com";
PasswordProfile passwordProfile = new PasswordProfile();
passwordProfile.forceChangePasswordNextSignIn = true;
passwordProfile.password = "password-value";
user.passwordProfile = passwordProfile;

graphClient.users()
	.buildRequest()
	.post(user);

```