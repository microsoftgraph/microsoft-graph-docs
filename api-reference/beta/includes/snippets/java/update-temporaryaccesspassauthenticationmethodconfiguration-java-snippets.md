---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

TemporaryAccessPassAuthenticationMethodConfiguration authenticationMethodConfiguration = new TemporaryAccessPassAuthenticationMethodConfiguration();
authenticationMethodConfiguration.state = AuthenticationMethodState.ENABLED;
authenticationMethodConfiguration.defaultLifetimeInMinutes = 60;
authenticationMethodConfiguration.defaultLength = 8;
authenticationMethodConfiguration.minimumLifetimeInMinutes = 60;
authenticationMethodConfiguration.maximumLifetimeInMinutes = 1440;
authenticationMethodConfiguration.
  isUsableOnce = false;
LinkedList<AuthenticationMethodTarget> includeTargetsList = new LinkedList<AuthenticationMethodTarget>();
AuthenticationMethodTarget includeTargets = new AuthenticationMethodTarget();
includeTargets.targetType = AuthenticationMethodTargetType.GROUP;
includeTargets.id = "all_users";
includeTargets.isRegistrationRequired = false;
includeTargets.useForSignIn = true;
includeTargetsList.add(includeTargets);
AuthenticationMethodTargetCollectionResponse authenticationMethodTargetCollectionResponse = new AuthenticationMethodTargetCollectionResponse();
authenticationMethodTargetCollectionResponse.value = includeTargetsList;
AuthenticationMethodTargetCollectionPage authenticationMethodTargetCollectionPage = new AuthenticationMethodTargetCollectionPage(authenticationMethodTargetCollectionResponse, null);
authenticationMethodConfiguration.includeTargets = authenticationMethodTargetCollectionPage;

graphClient.policies().authenticationMethodsPolicy().authenticationMethodConfigurations("TemporaryAccessPass")
	.buildRequest()
	.patch(authenticationMethodConfiguration);

```