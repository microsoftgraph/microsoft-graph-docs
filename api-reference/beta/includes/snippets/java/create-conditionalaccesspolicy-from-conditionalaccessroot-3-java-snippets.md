---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ConditionalAccessPolicy conditionalAccessPolicy = new ConditionalAccessPolicy();
conditionalAccessPolicy.displayName = "Demo app for documentation";
conditionalAccessPolicy.state = ConditionalAccessPolicyState.DISABLED;
ConditionalAccessConditionSet conditions = new ConditionalAccessConditionSet();
LinkedList<RiskLevel> signInRiskLevelsList = new LinkedList<RiskLevel>();
signInRiskLevelsList.add(RiskLevel.HIGH);
signInRiskLevelsList.add(RiskLevel.MEDIUM);
conditions.signInRiskLevels = signInRiskLevelsList;
LinkedList<ConditionalAccessClientApp> clientAppTypesList = new LinkedList<ConditionalAccessClientApp>();
clientAppTypesList.add(ConditionalAccessClientApp.MOBILE_APPS_AND_DESKTOP_CLIENTS);
clientAppTypesList.add(ConditionalAccessClientApp.EXCHANGE_ACTIVE_SYNC);
clientAppTypesList.add(ConditionalAccessClientApp.OTHER);
conditions.clientAppTypes = clientAppTypesList;
ConditionalAccessApplications applications = new ConditionalAccessApplications();
LinkedList<String> includeApplicationsList = new LinkedList<String>();
includeApplicationsList.add("All");
applications.includeApplications = includeApplicationsList;
LinkedList<String> excludeApplicationsList = new LinkedList<String>();
excludeApplicationsList.add("499b84ac-1321-427f-aa17-267ca6975798");
excludeApplicationsList.add("00000007-0000-0000-c000-000000000000");
excludeApplicationsList.add("de8bc8b5-d9f9-48b1-a8ad-b748da725064");
excludeApplicationsList.add("00000012-0000-0000-c000-000000000000");
excludeApplicationsList.add("797f4846-ba00-4fd7-ba43-dac1f8f63013");
excludeApplicationsList.add("05a65629-4c1b-48c1-a78b-804c4abdd4af");
excludeApplicationsList.add("7df0a125-d3be-4c96-aa54-591f83ff541c");
applications.excludeApplications = excludeApplicationsList;
LinkedList<String> includeUserActionsList = new LinkedList<String>();
applications.includeUserActions = includeUserActionsList;
conditions.applications = applications;
ConditionalAccessUsers users = new ConditionalAccessUsers();
LinkedList<String> includeUsersList = new LinkedList<String>();
includeUsersList.add("a702a13d-a437-4a07-8a7e-8c052de62dfd");
users.includeUsers = includeUsersList;
LinkedList<String> excludeUsersList = new LinkedList<String>();
excludeUsersList.add("124c5b6a-ffa5-483a-9b88-04c3fce5574a");
excludeUsersList.add("GuestsOrExternalUsers");
users.excludeUsers = excludeUsersList;
LinkedList<String> includeGroupsList = new LinkedList<String>();
users.includeGroups = includeGroupsList;
LinkedList<String> excludeGroupsList = new LinkedList<String>();
users.excludeGroups = excludeGroupsList;
LinkedList<String> includeRolesList = new LinkedList<String>();
includeRolesList.add("9b895d92-2cd3-44c7-9d02-a6ac2d5ea5c3");
includeRolesList.add("cf1c38e5-3621-4004-a7cb-879624dced7c");
includeRolesList.add("c4e39bd9-1100-46d3-8c65-fb160da0071f");
users.includeRoles = includeRolesList;
LinkedList<String> excludeRolesList = new LinkedList<String>();
excludeRolesList.add("b0f54661-2d74-4c50-afa3-1ec803f12efe");
users.excludeRoles = excludeRolesList;
conditions.users = users;
ConditionalAccessPlatforms platforms = new ConditionalAccessPlatforms();
LinkedList<ConditionalAccessDevicePlatform> includePlatformsList = new LinkedList<ConditionalAccessDevicePlatform>();
includePlatformsList.add(ConditionalAccessDevicePlatform.ALL);
platforms.includePlatforms = includePlatformsList;
LinkedList<ConditionalAccessDevicePlatform> excludePlatformsList = new LinkedList<ConditionalAccessDevicePlatform>();
excludePlatformsList.add(ConditionalAccessDevicePlatform.I_O_S);
excludePlatformsList.add(ConditionalAccessDevicePlatform.WINDOWS_PHONE);
platforms.excludePlatforms = excludePlatformsList;
conditions.platforms = platforms;
ConditionalAccessLocations locations = new ConditionalAccessLocations();
LinkedList<String> includeLocationsList = new LinkedList<String>();
includeLocationsList.add("AllTrusted");
locations.includeLocations = includeLocationsList;
LinkedList<String> excludeLocationsList = new LinkedList<String>();
excludeLocationsList.add("00000000-0000-0000-0000-000000000000");
excludeLocationsList.add("d2136c9c-b049-47ae-b9cf-316e04ef7198");
locations.excludeLocations = excludeLocationsList;
conditions.locations = locations;
ConditionalAccessDeviceStates deviceStates = new ConditionalAccessDeviceStates();
LinkedList<String> includeStatesList = new LinkedList<String>();
includeStatesList.add("All");
deviceStates.includeStates = includeStatesList;
LinkedList<String> excludeStatesList = new LinkedList<String>();
excludeStatesList.add("Compliant");
deviceStates.excludeStates = excludeStatesList;
conditions.deviceStates = deviceStates;
conditionalAccessPolicy.conditions = conditions;
ConditionalAccessGrantControls grantControls = new ConditionalAccessGrantControls();
grantControls.operator = "OR";
LinkedList<ConditionalAccessGrantControl> builtInControlsList = new LinkedList<ConditionalAccessGrantControl>();
builtInControlsList.add(ConditionalAccessGrantControl.MFA);
builtInControlsList.add(ConditionalAccessGrantControl.COMPLIANT_DEVICE);
builtInControlsList.add(ConditionalAccessGrantControl.DOMAIN_JOINED_DEVICE);
builtInControlsList.add(ConditionalAccessGrantControl.APPROVED_APPLICATION);
builtInControlsList.add(ConditionalAccessGrantControl.COMPLIANT_APPLICATION);
grantControls.builtInControls = builtInControlsList;
LinkedList<String> customAuthenticationFactorsList = new LinkedList<String>();
grantControls.customAuthenticationFactors = customAuthenticationFactorsList;
LinkedList<String> termsOfUseList = new LinkedList<String>();
termsOfUseList.add("ce580154-086a-40fd-91df-8a60abac81a0");
termsOfUseList.add("7f29d675-caff-43e1-8a53-1b8516ed2075");
grantControls.termsOfUse = termsOfUseList;
conditionalAccessPolicy.grantControls = grantControls;
ConditionalAccessSessionControls sessionControls = new ConditionalAccessSessionControls();
sessionControls.applicationEnforcedRestrictions = null;
sessionControls.persistentBrowser = null;
CloudAppSecuritySessionControl cloudAppSecurity = new CloudAppSecuritySessionControl();
cloudAppSecurity.cloudAppSecurityType = CloudAppSecuritySessionControlType.BLOCK_DOWNLOADS;
cloudAppSecurity.isEnabled = true;
sessionControls.cloudAppSecurity = cloudAppSecurity;
SignInFrequencySessionControl signInFrequency = new SignInFrequencySessionControl();
signInFrequency.value = 4;
signInFrequency.type = SigninFrequencyType.HOURS;
signInFrequency.isEnabled = true;
sessionControls.signInFrequency = signInFrequency;
conditionalAccessPolicy.sessionControls = sessionControls;

graphClient.identity().conditionalAccess().policies()
	.buildRequest()
	.post(conditionalAccessPolicy);

```