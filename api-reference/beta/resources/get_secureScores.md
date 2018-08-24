# Get secureScores

 > **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

Retrieve the properties and relationships of an [secureScores](../resources/secureScores.md) object.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](../../../concepts/permissions_reference.md).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) |  SecurityEvents.Read.All, SecurityEvents.ReadWrite.All   |
|Delegated (personal Microsoft account) |  Not supported.  |
|Application | SecurityEvents.Read.All, SecurityEvents.ReadWrite.All |

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
GET /security/secureScores
```

## Request headers

| Name      |Description|
|:----------|:----------|
| Authorization  | Bearer {code}. Required.|

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and an **secureScores** object in the response body.

## Example

### Request

The following is an example of the request.
<!-- {
  "blockType": "request",
  "name": "get_secureScores"
}-->

```http
GET https://graph.microsoft.com/beta/security/secureScores?$top=1
```

### Response

The following is an example of the response.
<!-- {
  "blockType": "response",
  "truncated": false,
  "@odata.type": "microsoft.graph.secureScores"
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json


{
    "@odata.context": "https://graph.microsoft.com/testsecurityppe/$metadata#Security/secureScores",
    "@odata.nextLink": "https://graph.microsoft.com/testsecurityppe/security/secureScores?$top=1&$skip=1",
    "value": [
        {
            "licensedUserCount": 99,
            "activeUserCount": 0,
            "currentScore": 176,
            "maxScore": 364,
            "enabledServices": [],
            "id": "STRING",
            "azureTenantId": "STRING",
            "createdDateTime": "2018-08-07T00:00:00Z",
            "lastModifiedDateTime": "0001-01-01T00:00:00Z",
            "averageScoreByScopes": [
                {
                    "oDataType": null,
                    "scope": "TotalSeats",
                    "averageScore": 34,
                    "DeviceScore": "0",
                    "DataScore": "17",
                    "SeatSizeRangeUpperValue": "99",
                    "CategoryValue": "1",
                    "AccountScore": "16",
                    "SeatSizeRangeLowerValue": "6"
                },
                {
                    "oDataType": null,
                    "scope": "AllTenants",
                    "averageScore": 30,
                    "DeviceScore": "0",
                    "DataScore": "15",
                    "AccountScore": "14"
                },
                {
                    "oDataType": null,
                    "scope": "IndustryTypes",
                    "averageScore": -1,
                    "DeviceScore": "-1",
                    "DataScore": "-1",
                    "CategoryValue": "-1",
                    "AccountScore": "-1"
                }
            ],
            "controlScores": [
                {
                    "oDataType": null,
                    "controlName": "AdminMFA",
                    "score": 40,
                    "controlCategory": "Account",
                    "description": "You should enable MFA for all of your admin accounts because a breach of any of those accounts can lead to a breach of any of your data. We found that you had 1 admins out of 5 that did not have MFA enabled.  If you enable MFA for those 1 admin accounts, your score will go up 10 points.",
                    "total": "5",
                    "count": "1"
                },
                {
                    "oDataType": null,
                    "controlName": "UserMFA",
                    "score": 2,
                    "controlCategory": "Account",
                    "description": "You should enable MFA for all of your user accounts because a breach of any of those accounts can lead to a breach of any data that user has access to. We found that you had 97 users out of 106 that did not have MFA enabled.  If you enable MFA for those 97 user accounts, your score will go up 28 points.",
                    "total": "106",
                    "count": "97"
                },
                {
                    "oDataType": null,
                    "controlName": "AltInfoIncomplete",
                    "score": 1,
                    "controlCategory": "Account",
                    "description": "You should ensure that alternate contact information, such as alternate email or cell phone number, is completed for all users. This will ensure that you can safely contact users to verify anomalous activity, and will ensure that if you have to enable multi-factor authentication for a user that they will be able to complete the registration. We found that you have 0 accounts that do not have completed information.  ",
                    "total": "106",
                    "count": "0"
                },
                {
                    "oDataType": null,
                    "controlName": "DLPEnabled",
                    "score": 20,
                    "controlCategory": "Data",
                    "description": "You should enable Data Loss Prevention (DLP) policies to help protect your data from accidental, or malicious exposure. DLP allows Exchange Online and SharePoint Online content to be scanned for specific types of data like social security numbers, credit card numbers, or passwords, and will alert users and administrators that this data should not be exposed. We found that you have enabled 1 DLP policies.  ",
                    "count": "1"
                },
                {
                    "oDataType": null,
                    "controlName": "IntegratedApps",
                    "score": 10,
                    "controlCategory": "Data",
                    "description": "You should not allow third party integrated applications to connect to your services unless there is a very clear value and you have robust security controls in place. While there are legitimate uses, attackers can grant access from breached accounts to third party applications to exfiltrate data from your tenancy without having to maintain the breached account. We found that your policy to allow third party integrated applications to access your service is currently configured to false.  ",
                    "on": "false"
                },
                {
                    "oDataType": null,
                    "controlName": "ManyAdmins",
                    "score": 1,
                    "controlCategory": "Account",
                    "description": "You should designate less than five global tenant administrators because the more global admin users you have, the more likely it is that one of those accounts will be successfully breached by an external attacker. We found that you have 5 admins designated.  ",
                    "count": "5"
                },
                {
                    "oDataType": null,
                    "controlName": "OneAdmin",
                    "score": 2,
                    "controlCategory": "Account",
                    "description": "You should designate more than one global tenant administrator because that one admin can perform malicious activity without the possibility of being discovered by another admin. We found that you have 5 admins designated.  ",
                    "count": "5"
                },
                {
                    "oDataType": null,
                    "controlName": "RoleOverlap",
                    "score": 1,
                    "controlCategory": "Account",
                    "description": "You should leverage non-global administrator roles to perform required administrative work with the least privileges necessary to complete the task. Using roles like Password Administrator or Exchange Online Administrator will reduce the number of high value, high impact global admin role holders you have, which will in turn reduce the likelihood of a breach of an account with global administrative privileges. We found that you have 1 users in non-global admin roles.  ",
                    "count": "1"
                },
                {
                    "oDataType": null,
                    "controlName": "PWAgePolicyNew",
                    "score": 10,
                    "controlCategory": "Account",
                    "description": "While this is not the most intuitive recommendation, research has found that when periodic password resets are enforced, passwords become weaker as users tend to pick something weaker and then use a pattern of it for rotation. If a user creates a strong password: long, complex and without any pragmatic words present, it should remain just as strong is 60 days as it is today. It is Microsoft's official security position to not expire passwords periodically without a specific reason. We found that your current policy is set to require a password reset every 999 days.  ",
                    "expiry": "999"
                },
                {
                    "oDataType": null,
                    "controlName": "InactiveAccounts",
                    "score": 0,
                    "controlCategory": "Account",
                    "description": "You should disable any accounts that have not been used in the last 30 days. While there may be legitimate circumstances where an account is unused for 30 days, these accounts can also be targets for attackers who are looking to find ways to access your data without being noticed. We found that you have 23 accounts that have not been used in the last 30 days.  If you disable these accounts, or ensure the owners use them, your score will go up 1 points.",
                    "count": "23"
                },
                {
                    "oDataType": null,
                    "controlName": "MDMAlphaPW",
                    "score": 0,
                    "controlCategory": "Device",
                    "description": "You should require your users to use a complex password with a at least two character sets (letters and numbers, for example) to unlock their mobile devices. Devices without this protection are vulnerable to being accessed physically by attackers who can then steal account credentials, data, or install malware on the device. We found that your mobile device policy requiring an alphanumeric password currently requires 0 character sets.  If you require an alphanumeric password on mobile devices, your score will go up 1 points.",
                    "charSetsRequired": "0"
                },
                {
                    "oDataType": null,
                    "controlName": "MDMEncryptReq",
                    "score": 0,
                    "controlCategory": "Device",
                    "description": "You should require your users to use encryption on their mobile devices. Unencrypted devices can be stolen and their data extracted by an attacker very easily. We found that your mobile device policy requiring encryption is set to false.  If you require encryption on mobile devices, your score will go up 1 points.",
                    "required": "false"
                },
                {
                    "oDataType": null,
                    "controlName": "MDMManageEmail",
                    "score": 0,
                    "controlCategory": "Device",
                    "description": "",
                    "required": "false"
                },
                {
                    "oDataType": null,
                    "controlName": "MDMPWExpireNew",
                    "score": 0,
                    "controlCategory": "Device",
                    "description": "While this is not the most intuitive recommendation, research has found that when periodic password resets are enforced, passwords become weaker as users tend to pick something weaker and then use a pattern of it for rotation. If a user creates a strong password: long, complex and without any pragmatic words present, it should remain just as strong is 60 days as it is today. It is Microsoft's official security position to not expire passwords periodically without a specific reason. We found that your mobile device password expiration policy is set to expire after infinite days.  If you never expire passwords, your score will go up 1 points.",
                    "expiry": "0"
                },
                {
                    "oDataType": null,
                    "controlName": "MDMPWReq",
                    "score": 0,
                    "controlCategory": "Device",
                    "description": "You should require your users to use a password to unlock their mobile devices. Devices without this protection are vulnerable to being accessed physically by attackers who can then steal account credentials, data, or install malware on the device. We found that your mobile device policy requiring a password is set to false.  If you require a password on mobile devices, your score will go up 5 points.",
                    "required": "false"
                },
                {
                    "oDataType": null,
                    "controlName": "MDMRootedBlock",
                    "score": 0,
                    "controlCategory": "Device",
                    "description": "You should not allow your users to use to connect with mobile devices that have been jail broken or rooted. These devices have had basic protections disabled to run software that is often malicious and could very easily lead to an account or data breach. We found that your mobile device policy disallowing rooted devices is set to true.  If you disallow rooted devices, your score will go up 1 points.",
                    "on": "true"
                },
                {
                    "oDataType": null,
                    "controlName": "MDMSimplePW",
                    "score": 0,
                    "controlCategory": "Device",
                    "description": "You should require your users to use a complex password to unlock their mobile devices. Devices without this protection are vulnerable to being accessed physically by attackers who can then steal account credentials, data, or install malware on the device. We found that your mobile device policy requiring a complex password is set to false.  If you require a complex password on mobile devices, your score will go up 2 points.",
                    "allowedSimplePassword": "false"
                },
                {
                    "oDataType": null,
                    "controlName": "MDMWipeOnFail",
                    "score": 0,
                    "controlCategory": "Device",
                    "description": "You should require your users to wipe the contents of the mobile device after no more than 10 sign in failures. Devices without this protection are vulnerable to being accessed physically by attackers who can then steal account credentials, data, or install malware on the device. We found that your mobile device policy requiring wipe after multiple failed sign ins is set to wipe after infinite failures.  If you require a content wipe after less than 10 sign in failures, your score will go up 1 points.",
                    "maxPasswordAttempts": "0"
                },
                {
                    "oDataType": null,
                    "controlName": "MDMEnabled",
                    "score": 0,
                    "controlCategory": "Device",
                    "description": "You should use a mobile device management service such as Office 365 Mobile Device Management or Microsoft InTune. Devices, especially mobile devices, are vulnerable to attacks such as malware that can lead to account and data breaches. We found that your enablement of mobile device management services is false.  If you enable a mobile device management service, your score will go up 20 points.",
                    "on": "false",
                    "IntuneOn": "false"
                },
                {
                    "oDataType": null,
                    "controlName": "MDMLockInactive",
                    "score": 0,
                    "controlCategory": "Device",
                    "description": "You should require your users to configure their mobile devices to lock on inactivity. Attackers can steal unlocked devices and access data and account information. We found that your mobile device policy requiring lock on inactivity is set to infinite.  If you require lock on inactivity on mobile devices, your score will go up 1 points.",
                    "passwordTimeout": "0"
                },
                {
                    "oDataType": null,
                    "controlName": "MDMPWReuse",
                    "score": 0,
                    "controlCategory": "Device",
                    "description": "You should not allow your users to reuse the same password on their mobile devices. Devices without this protection are vulnerable to being accessed by attackers who can then steal account credentials, data, or install malware on the device. We found that your mobile device password re-use history policy is set to remember infinite passwords.  If you keep a password history of at least 5 passwords, your score will go up 1 points.",
                    "passwordHistoryCount": "0"
                },
                {
                    "oDataType": null,
                    "controlName": "MDMReportViolation",
                    "score": 0,
                    "controlCategory": "Device",
                    "description": "You should configure your mobile device management policies to block access to devices that violate your policy and to report those violations to an administrator. Users will be able to connect with non-compliant devices unless you block access, leading to vulnerable devices connecting to your data. We found that your policy configure to block access and report mobile devices is set to false.  If you enable this policy, your score will increase by 5 points.",
                    "on": "false"
                },
                {
                    "oDataType": null,
                    "controlName": "MBDelegation",
                    "score": 1,
                    "controlCategory": "Data",
                    "description": "You should ensure that your users do not use mailbox delegation. While there are many legitimate uses of mailbox delegation, it also makes it much easier for an attacker to move laterally from one account to another to steal data. We found that you had 0 active accounts out of 31 with mailbox delegation.  ",
                    "total": "31",
                    "count": "0"
                },
                {
                    "oDataType": null,
                    "controlName": "MailboxAuditingEnabled",
                    "score": 10,
                    "controlCategory": "Data",
                    "description": "You should enable mailbox auditing for at least ninety percent of all users that have mailboxes in your tenancy. By default all non-owner access is audited, but you must enable auditing on the mailbox for owner access to also be audited. This will allow you to discover illicit access of Exchange Online activity if a user's account has been breached. We found that you had 31 mailboxes of 31 with audited enabled.  ",
                    "total": "31",
                    "count": "31"
                },
                {
                    "oDataType": null,
                    "controlName": "SafeAttachmentsEnabled",
                    "score": 0,
                    "controlCategory": "Data",
                    "description": "You should enable the Office 365 Advanced Threat Protection Safe Attachments feature. This will extend the malware protections in the service to include routing all messages and attachments that don't have a known virus/malware signature to a special hypervisor environment where a behavior analysis is performed using a variety of machine learning and analysis techniques to detect malicious intent. We found that your enablement is set to false.  If you enable Safe Attachments,  your score will go up 15 points.",
                    "on": "false"
                },
                {
                    "oDataType": null,
                    "controlName": "CustomerLockBoxEnabled",
                    "score": 5,
                    "controlCategory": "Data",
                    "description": "You should enable the customer lockbox feature. This will require Microsoft to get your approval for any datacenter operation that grants a Microsoft employee direct access to any of your content. We found that your enablement of this feature is set to true.  ",
                    "on": "true"
                },
                {
                    "oDataType": null,
                    "controlName": "CloudApplicationSecurityEnabled",
                    "score": 20,
                    "controlCategory": "Account",
                    "description": "You should adopt the Office 365 Advanced Security Management Console. This console will allow you to set up policies to alert you about anomalous and suspicious activity. We found that your subscription to Advanced Security Management Console is set to true.  ",
                    "on": "true"
                },
                {
                    "oDataType": null,
                    "controlName": "BlockAutoFwdTransportRule",
                    "score": 20,
                    "controlCategory": "Data",
                    "description": "You should enable Client Rules Forwarding Blocks because the use of client-side forwarding (rules) to exfiltrate data to external recipients is becoming an increasingly used vector for data exfiltration by bad actors. We found that you had 1 Rules out of 8 that did have blocks enabled.  ",
                    "total": "8",
                    "count": "1"
                },
                {
                    "oDataType": null,
                    "controlName": "AdoptedODB",
                    "score": 10,
                    "controlCategory": "Data",
                    "description": "You should store user documents in OneDrive for Business because it safeguards this content against data loss. We found that OneDrive for Business is true.  ",
                    "adopted": "true"
                },
                {
                    "oDataType": null,
                    "controlName": "IRMDocs",
                    "score": 0,
                    "controlCategory": "Data",
                    "description": "You should enable and use Information Rights Management protections on email and document data. This will help prevent accidental or malicious exposure of your data outside of your organizational boundaries. Attackers targeting specific, high value data assets will be prevented from opening them without a user credential in your tenancy. We found that your use of IRM protections in documents is 0.  If you use IRM, your score will go up 5 points.",
                    "total": "79",
                    "count": "0"
                },
                {
                    "oDataType": null,
                    "controlName": "SPOVersioning",
                    "score": 2,
                    "controlCategory": "Data",
                    "description": "You should enable versioning on all of your SharePoint online site collection document libraries. This will ensure that accidental or malicious changes to document content can be recovered. We found that you do not have versioning enabled on 0 out of 79 of your site document libraries.  ",
                    "total": "79",
                    "count": "0"
                },
                {
                    "oDataType": null,
                    "controlName": "AnonymousAccess",
                    "score": 0,
                    "controlCategory": "Data",
                    "description": "You should allow your users to use anonymous guest sharing links for SharePoint Online sites and documents. While there are inherent risks in sharing documents anonymously, Microsoft has found that when anonymous sharing is disabled, users often use more risky methods of sharing sites and documents, email for example. A  proactive approach would be to enable anonymous sharing links for customers while also educating users on the pitfalls with sharing anonymously and monitoring links shared for signs of exfiltration by an attacker. We found that 128 out of 228 sites/docs do not have anonymous sharing enabled.  If you allow anonymous guest sharing links, your score will go up 1 points.",
                    "total": "228",
                    "count": "128"
                },
                {
                    "oDataType": null,
                    "controlName": "ExternalSharingExpiration",
                    "score": 0,
                    "controlCategory": "Data",
                    "description": "You should restrict the length of time that anonymous access links are valid. An attacker can compromise a user account for a short period of time, send anonymous sharing links to an external account, then take their time accessing the data. They can also compromise external accounts and steal the anonymous sharing links sent to those external entities well after the data has been shared. We found that your external link expiration time is set to false.  If you set an expiration time, your score will go up 2 points.",
                    "on": "false"
                },
                {
                    "oDataType": null,
                    "controlName": "AuditUsed",
                    "score": 0,
                    "controlCategory": "Data",
                    "description": "You should consume your audit data either through the audit log search or through the Activity API to a third party security information system at least every week. This data enables a wide range of illicit activity detection and security breach scoping and investigation capabilities. Consuming and reviewing it regularly makes it less likely that an attacker will operate in your tenancy undetected for long periods of time.   If you consume this data, your score will go up 5 points.",
                    "Reviewed": "7/13/2018"
                },
                {
                    "oDataType": null,
                    "controlName": "DelegatedAdmins",
                    "score": 0,
                    "controlCategory": "Account",
                    "description": "You should review non-global administrator role group assignments at least every week. While these roles are less powerful than a global admin, they do grant special privileges that can be used illicitly. If you see something unusual contact the user to confirm it is a legitimate need.   If you review this report, your score will go up 5 points.",
                    "Reviewed": "1/1/0001"
                },
                {
                    "oDataType": null,
                    "controlName": "ExternalSharingContactsReview",
                    "score": 0,
                    "controlCategory": "Data",
                    "description": "You should review the list of external users that you have invited to sensitive documents on a weekly basis. Attackers that have compromised accounts with sharing privileges will be able to expose sensitive data to external users for long periods of time without regular review of who has access.   If you review this report, your score will go up  points.",
                    "Reviewed": "1/1/0001"
                },
                {
                    "oDataType": null,
                    "controlName": "MailForwardingRules",
                    "score": 0,
                    "controlCategory": "Data",
                    "description": "You should review mailbox forwarding rules to external domains at least every week. There are several ways you can do this, including simply reviewing the list of mail forwarding rules to external domains on all of your mailboxes using a PowerShell script, or by reviewing mail forwarding rule creation activity in the last week from the Audit Log Search. While there are lots of legitimate uses of mail forwarding rules to other locations, it is also a very popular data exfiltration tactic for attackers. You should review them regularly to ensure your users' email is not being exfiltrated.   If you review this report, your score will go up 5 points.",
                    "Reviewed": "1/1/0001"
                },
                {
                    "oDataType": null,
                    "controlName": "MalwareDetections",
                    "score": 5,
                    "controlCategory": "Data",
                    "description": "You should review the Malware Detections report at least weekly. This report shows specific instances of Microsoft blocking a malware attachment from reaching your users. While this report isn't strictly actionable, reviewing it will give you a sense of the overall volume of malware being targeted at your users, which may prompt you to adopt more aggressive malware mitigations.   ",
                    "Reviewed": "8/2/2018"
                },
                {
                    "oDataType": null,
                    "controlName": "NonOwnerAccess",
                    "score": 0,
                    "controlCategory": "Data",
                    "description": "You should review the Mailbox Access by Non-Owners report at least every other week. This report shows which mailboxes have been accessed by someone other than the mailbox owner. While there are many legitimate uses of delegate permissions, regularly reviewing that access can help prevent an external attacker from maintaining access for a long time, and can help discover malicious insider activity sooner.   If you review this report, your score will go up 5 points.",
                    "Reviewed": "1/1/0001"
                },
                {
                    "oDataType": null,
                    "controlName": "RGChanges",
                    "score": 0,
                    "controlCategory": "Account",
                    "description": "You should review user role group changes at least every week. There are several ways you can do this, including simply reviewing the list of users in different administrative role groups in the Office 365 Admin Portal, or by reviewing role administration activity in the last week from the Audit Log Search. You should do this because you should watch for illicit role group changes, which could give an attacker elevated privileges to perform more dangerous and impactful things in your tenancy.   If you review this report, your score will go up 10 points.",
                    "Reviewed": "7/13/2018"
                },
                {
                    "oDataType": null,
                    "controlName": "NewProvisionedAccounts",
                    "score": 0,
                    "controlCategory": "Account",
                    "description": "You should review your account provisioning activity report at least weekly. This report includes a history of attempts to provision accounts to external applications. If you don't usually use a third party provider to manage accounts, any entry on the list is likely illicit. But, if you do, this is a great way to monitor transaction volumes, and look for new or unusual third party applications that are managing users. If you see something unusual, contact the provider to determine if the action is legitimate.   If you review it, your score will go up 10 points.",
                    "Reviewed": "7/12/2018"
                },
                {
                    "oDataType": null,
                    "controlName": "SignIns",
                    "score": 0,
                    "controlCategory": "Account",
                    "description": "You should review the Azure Security reports at least every week. These reports contains records of accounts that have successfully signed-in after multiple risk events, such as locations, IP addresses which could be an indication that the account could be compromised.   If you review this report, your score will go up 45 points.",
                    "Reviewed": "7/13/2018"
                },
                {
                    "oDataType": null,
                    "controlName": "SafeLinksEnabled",
                    "score": 15,
                    "controlCategory": "Data",
                    "description": "You should enable the Office 365 Advanced Threat Protection Safe Links feature. This will extend the phishing protection in the service to include redirecting all email hyperlinks through a forwarding service which will block malicious ones even after it has been delivered to the end user. We found that your enablement is set to [Not Measured].  ",
                    "Met": "true"
                },
                {
                    "oDataType": null,
                    "controlName": "MDMMinPW",
                    "score": 1,
                    "controlCategory": "Device",
                    "description": "You should require your users to use a complex password with a minimum password length of at least six characters to unlock their mobile devices. Devices without this protection are vulnerable to being accessed physically by attackers who can then steal account credentials, data, or install malware on the device. We found that your mobile device minimum password length policy requires a minimum of [Not Measured] characters.  ",
                    "Met": "true"
                }
            ],
            "vendorInformation": {
                "provider": "SecureScore",
                "providerVersion": "",
                "subProvider": "",
                "vendor": "Microsoft"
            }
        }
    ]
}
```


<!-- {
  "type": "#page.annotation",
  "description": "Get secureScores",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
