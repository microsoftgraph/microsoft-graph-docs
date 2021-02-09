---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

Organization organization = new Organization();
LinkedList<String> marketingNotificationEmailsList = new LinkedList<String>();
marketingNotificationEmailsList.add("marketing@contoso.com");
organization.marketingNotificationEmails = marketingNotificationEmailsList;
PrivacyProfile privacyProfile = new PrivacyProfile();
privacyProfile.contactEmail = "alice@contoso.com";
privacyProfile.statementUrl = "https://contoso.com/privacyStatement";
organization.privacyProfile = privacyProfile;
LinkedList<String> securityComplianceNotificationMailsList = new LinkedList<String>();
securityComplianceNotificationMailsList.add("security@contoso.com");
organization.securityComplianceNotificationMails = securityComplianceNotificationMailsList;
LinkedList<String> securityComplianceNotificationPhonesList = new LinkedList<String>();
securityComplianceNotificationPhonesList.add("(123) 456-7890");
organization.securityComplianceNotificationPhones = securityComplianceNotificationPhonesList;
LinkedList<String> technicalNotificationMailsList = new LinkedList<String>();
technicalNotificationMailsList.add("tech@contoso.com");
organization.technicalNotificationMails = technicalNotificationMailsList;

graphClient.organization("{id}")
	.buildRequest()
	.patch(organization);

```