# Get secureScoreControlProfiles

 > **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

Retrieve the properties and relationships of an [secureScoreControlProfiles](../resources/secureScoreControlProfiles.md) object.

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
GET /security/secureScoreControlProfiles
```

## Request headers

| Name      |Description|
|:----------|:----------|
| Authorization  | Bearer {code}. Required.|

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and an **secureScoreControlProfiles** object in the response body.

## Example

### Request

The following is an example of the request.
<!-- {
  "blockType": "request",
  "name": "get_secureScoreControlProfiles"
}-->

```http
GET https://graph.microsoft.com/beta/security/secureScoreControlProfiles
```

### Response

The following is an example of the response.
<!-- {
  "blockType": "response",
  "truncated": false,
  "@odata.type": "microsoft.graph.secureScoreControlProfiles"
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json



{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#Security/secureScoreControlProfiles",
    "value": [
        {
            "controlName": "Review self-service password reset, alt phone, and email changes monthly",
            "maxScore": 10,
            "controlCategory": "Account",
            "actionType": "Review",
            "service": "AADPremium",
            "tier": "Advanced",
            "userImpact": "Low",
            "implementationCost": "Low",
            "rank": 55,
            "threats": [
                "Account Breach",
                "Elevation of Privilege",
                "Malicious Insider"
            ],
            "deprecated": false,
            "remediation": "Clicking the launch button below will take you to the Audit log search page in the secuirty & compliance center where you can review all of the self-service password, alternate phone number, or alternate email address changes for your users. An attacker will commonly compromise an account, then change the password reset communication mechanisms to be a device or account that they control.",
            "remediationImpact": "This change will have no effect on your users.",
            "actionUrl": "https://protection.office.com/#/unifiedauditlog",
            "tenantSetState": "Default",
            "tenantNote": null,
            "assignedTo": null,
            "updatedBy": null,
            "title": "AccountChanges",
            "azureTenantId": "STRING",
            "createdDateTime": "0001-01-01T00:00:00Z",
            "lastModifiedDateTime": "0001-01-01T00:00:00Z",
            "vendorInformation": {
                "provider": "SecureScore",
                "providerVersion": "",
                "subProvider": "",
                "vendor": "Microsoft"
            }
        },
        {
            "controlName": "Enable MFA for all global admins",
            "maxScore": 50,
            "controlCategory": "Account",
            "actionType": "Config",
            "service": "AzureAD",
            "tier": "Core",
            "userImpact": "Low",
            "implementationCost": "Low",
            "rank": 1,
            "threats": [
                "Account Breach",
                "Elevation of Privilege"
            ],
            "deprecated": false,
            "remediation": "Enabling MFA at the site linked below will update your Global Administrator account logons to require the use of MFA to authenticate to Office 365. This will make it more difficult for an attacker to steal admin credentials and then steal your data.",
            "remediationImpact": "When you enable MFA for your Global Administrators, they will be prompted to authenticate with a 2nd factor upon logging into Office 365 services each day. The second factor is most commonly a phone call to a registered cell phone number where they type in an authorization code, or with a mobile application called Azure Authenticator.",
            "actionUrl": "https://account.activedirectory.windowsazure.com/UserManagement/MultifactorVerification.aspx",
            "tenantSetState": "Default",
            "tenantNote": null,
            "assignedTo": null,
            "updatedBy": null,
            "title": "AdminMFA",
            "azureTenantId": "STRING",
            "createdDateTime": "0001-01-01T00:00:00Z",
            "lastModifiedDateTime": "0001-01-01T00:00:00Z",
            "vendorInformation": {
                "provider": "SecureScore",
                "providerVersion": "",
                "subProvider": "",
                "vendor": "Microsoft"
            }
        },
        {
            "controlName": "Store user documents in OneDrive for Business",
            "maxScore": 10,
            "controlCategory": "Data",
            "actionType": "Config",
            "service": "OD4B",
            "tier": "Core",
            "userImpact": "Low",
            "implementationCost": "Low",
            "rank": 10,
            "threats": [
                "Data Exfiltration",
                "Data Deletion"
            ],
            "deprecated": false,
            "remediation": "You should adopt and use OneDrive for Business to store user documents. Storing documents on local client machines leaves them vulnerable to malware attacks like Ransomware that destroy or leak that data. Keeping data in OneDrive for Business gives you an effective backup and restore mechanism to recover from an attack on your locally stored documents. We measure whether or not you have used OneDrive for Business in the last month. The link below will take you to your OneDrive for Business instance.",
            "remediationImpact": "This change will have no negative effect on your users, although you should ensure they understand how to use OneDrive for Business to store and sync their documents.",
            "actionUrl": "https://portal.office.com/AdminPortal/Home?switchtomoderndefault=true#/catalog",
            "tenantSetState": "Default",
            "tenantNote": null,
            "assignedTo": null,
            "updatedBy": null,
            "title": "AdoptedODB",
            "azureTenantId": "STRING",
            "createdDateTime": "0001-01-01T00:00:00Z",
            "lastModifiedDateTime": "0001-01-01T00:00:00Z",
            "vendorInformation": {
                "provider": "SecureScore",
                "providerVersion": "",
                "subProvider": "",
                "vendor": "Microsoft"
            }
        },
        {
            "controlName": "User alternate contact info is completed for all users",
            "maxScore": 1,
            "controlCategory": "Account",
            "actionType": "Behavior",
            "service": "AzureAD",
            "tier": "Defense In Depth",
            "userImpact": "Low",
            "implementationCost": "Low",
            "rank": 45,
            "threats": [
                "Account Breach",
                "Elevation of Privilege"
            ],
            "deprecated": false,
            "remediation": "Clicking the launch button below will take you to the active users page in the admin center. Here, you can ensure that alternate contact information, such as alternate email or cell phone number, is completed for all users. This will ensure that you can safely contact users to verify anomalous activity, and will ensure that if you have to enable multi-factor authentication for a user that they will be able to complete the registration.",
            "remediationImpact": "This change will have no effect on your users.",
            "actionUrl": "https://portal.office.com/Admin/Default.aspx#ActiveUsersPage",
            "tenantSetState": "Default",
            "tenantNote": null,
            "assignedTo": null,
            "updatedBy": null,
            "title": "AltInfoIncomplete",
            "azureTenantId": "STRING",
            "createdDateTime": "0001-01-01T00:00:00Z",
            "lastModifiedDateTime": "0001-01-01T00:00:00Z",
            "vendorInformation": {
                "provider": "SecureScore",
                "providerVersion": "",
                "subProvider": "",
                "vendor": "Microsoft"
            }
        },
        {
            "controlName": "Allow anonymous guest sharing links for sites and docs",
            "maxScore": 1,
            "controlCategory": "Data",
            "actionType": "Config",
            "service": "SPO",
            "tier": "Defense In Depth",
            "userImpact": "Moderate",
            "implementationCost": "Low",
            "rank": 44,
            "threats": [
                "Data Exfiltration",
                "Data Spillage"
            ],
            "deprecated": false,
            "remediation": "Clicking the launch button will take you to \"external sharing\" in the Sharepoint admin center. Under \"Sharing outside your organization\", select \"allow sharing to authenticated external users and using anonymous access links\". It is recommended that you set an expiration date for links so that if attackers compromise an external account, they would not continue to have access to your data past the expiration date.",
            "remediationImpact": "This change will allow your users to share documents and links anonymously.",
            "actionUrl": "https://%initialdomainshort%-admin.sharepoint.com/_layouts/15/online/ExternalSharing.aspx",
            "tenantSetState": "Default",
            "tenantNote": null,
            "assignedTo": null,
            "updatedBy": null,
            "title": "AnonymousAccess",
            "azureTenantId": "STRING",
            "createdDateTime": "0001-01-01T00:00:00Z",
            "lastModifiedDateTime": "0001-01-01T00:00:00Z",
            "vendorInformation": {
                "provider": "SecureScore",
                "providerVersion": "",
                "subProvider": "",
                "vendor": "Microsoft"
            }
        },
        {
            "controlName": "Do not allow anonymous calendar sharing",
            "maxScore": 10,
            "controlCategory": "Data",
            "actionType": "Config",
            "service": "EXO",
            "tier": "Defense In Depth",
            "userImpact": "Moderate",
            "implementationCost": "Low",
            "rank": 26,
            "threats": [
                "Data Spillage"
            ],
            "deprecated": false,
            "remediation": "Disabling anonymous calendar sharing requires the recipients of shared calendars to be authenticated users. This will make it more difficult for attackers to track the movement of your organization's users and  glean information about your organization. To disable calendar sharing, follow the link below to the Admin center and navigate to Calendar.",
            "remediationImpact": "This change will have a moderate impact on your users.",
            "actionUrl": "https://portal.office.com/AdminPortal/Home?switchtomoderndefault=true#/Settings/ServicesAndAddIns",
            "tenantSetState": "Default",
            "tenantNote": null,
            "assignedTo": null,
            "updatedBy": null,
            "title": "AnonymousCalendar",
            "azureTenantId": "STRING",
            "createdDateTime": "0001-01-01T00:00:00Z",
            "lastModifiedDateTime": "0001-01-01T00:00:00Z",
            "vendorInformation": {
                "provider": "SecureScore",
                "providerVersion": "",
                "subProvider": "",
                "vendor": "Microsoft"
            }
        },
        {
            "controlName": "Enable audit data recording",
            "maxScore": 15,
            "controlCategory": "Data",
            "actionType": "Review",
            "service": "IP",
            "tier": "Core",
            "userImpact": "Low",
            "implementationCost": "Low",
            "rank": 3,
            "threats": [
                "Account Breach",
                "Data Exfiltration",
                "Data Deletion",
                "Elevation of Privilege",
                "Malicious Insider"
            ],
            "deprecated": false,
            "remediation": "Clicking the launch button below will turn on audit activity recording for your service so that all activity will be recorded and retained for 90 days. This will make it much simpler for you to determine what an attacker has done in the event of a compromise and to fully and completely recover.",
            "remediationImpact": "This change will have no effect on your users.",
            "actionUrl": "https://protection.office.com/#/unifiedauditlog",
            "tenantSetState": "Default",
            "tenantNote": null,
            "assignedTo": null,
            "updatedBy": null,
            "title": "AuditEnabled",
            "azureTenantId": "STRING",
            "createdDateTime": "0001-01-01T00:00:00Z",
            "lastModifiedDateTime": "0001-01-01T00:00:00Z",
            "vendorInformation": {
                "provider": "SecureScore",
                "providerVersion": "",
                "subProvider": "",
                "vendor": "Microsoft"
            }
        },
        {
            "controlName": "Use audit data",
            "maxScore": 5,
            "controlCategory": "Data",
            "actionType": "Review",
            "service": "IP",
            "tier": "Core",
            "userImpact": "Low",
            "implementationCost": "Low",
            "rank": 13,
            "threats": [
                "Account Breach",
                "Data Exfiltration",
                "Data Deletion",
                "Elevation of Privilege",
                "Malicious Insider"
            ],
            "deprecated": false,
            "remediation": "Clicking the launch button below will take you to the audit log search where you can consume the audit log data and look for any signs of an attacker breaching your tenancy and taking any illicit actions. Reviewing these logs periodically reduce the possibility of an attacker operating unnoticed for long periods of time within your tenancy.",
            "remediationImpact": "This change will have no effect on your users.",
            "actionUrl": "https://protection.office.com/#/unifiedauditlog",
            "tenantSetState": "Default",
            "tenantNote": null,
            "assignedTo": null,
            "updatedBy": null,
            "title": "AuditUsed",
            "azureTenantId": "STRING",
            "createdDateTime": "0001-01-01T00:00:00Z",
            "lastModifiedDateTime": "0001-01-01T00:00:00Z",
            "vendorInformation": {
                "provider": "SecureScore",
                "providerVersion": "",
                "subProvider": "",
                "vendor": "Microsoft"
            }
        },
        {
            "controlName": "Enable Client Rules Forwarding Block",
            "maxScore": 20,
            "controlCategory": "Data",
            "actionType": "Config",
            "service": "EXO",
            "tier": "Advanced",
            "userImpact": "Moderate",
            "implementationCost": "Moderate",
            "rank": 3,
            "threats": [
                "Data Exfiltration"
            ],
            "deprecated": false,
            "remediation": "<p>There are several ways today that a bad actor can use external mail forwarding to exfiltrate data.<br><ol><li>Client created external mail forwarding Rules, such as the Outlook desktop client.</li><li>Admins can set up external mail forwarding for a user via setting ForwardingSmtpAddress on a user object.</li><li>Admins can create external transport rules to forward messages. </li><li>Client created ForwardingSmtpAddress via Outlook Web Access interface</li></ol><br>This Security Control action will help mitigate Client created external mail forwarding rules.<br><br>A simple mitigation is to, on each Remote Domain, including the Default to disallow Auto-Forwarding. This is a global setting and applies to every email sent from within a Tenant, as a result it is a very broad approach, which does not allow white listing. More details can be found <a href='https://technet.microsoft.com/en-us/library/dn743842(v&#0061;exchg.150).aspx' target='_blank'>here</a>. RBAC roles can be used to achieve a similar result. <br><br>Using a properly configured Transport Rule we can control the impact of data exfiltration via Client created external mail forwarding rules. This approach has a couple of advantages:<br><ol><li>Clients will receive a custom NDR message, useful for highlighting to end users external forwarding rules they may have not known existed (accidental exfiltration),     or external forwarding rules created by a bad actor on a compromised mailbox.</li><li>Allows a whitelist of users or groups to be configured to allow business approved exceptions to the policy.</li><li>Provides some mitigation, for when an Admin account has been used to create a Remote Domain with auto-forwarding enabled to specific namespace to exfiltrate data.</li><li>Provides some mitigation, for when an Admin account has been used to alter the Default Remote Domain settings.</li></ol>This Security Control will create a transport rule that will stop external messages leaving your Tenant, that are of the type AutoForward, mitigating the use of Client created external mail forwarding rules and malicious Remote Domain entries as a data exfiltration vector.<br><ol><li>If The Sender is located 'Inside the organization'</li><li>If The Recipient is located 'Outside the organization'</li><li>If The message type is 'Auto-Forward'</li><li>Reject the message with the explanation 'External Mail Forwarding via Client Rules is not permitted'</li></ol><p>",
            "remediationImpact": "Any users that have a Client Rule configured that attempts to auto-forward messages to a remote domain, will receive an NDR with the explanation \"External Mail-Forwarding via Client Rules is not permitted\". If you wish to whitelist users for business reasons, you can modify the created Transport Rule and use exceptions to create a whitelist",
            "actionUrl": "https://outlook.office.com/ecp/RulesEditor/TransportRules.slab",
            "tenantSetState": "Default",
            "tenantNote": null,
            "assignedTo": null,
            "updatedBy": null,
            "title": "BlockAutoFwdTransportRule",
            "azureTenantId": "STRING",
            "createdDateTime": "0001-01-01T00:00:00Z",
            "lastModifiedDateTime": "0001-01-01T00:00:00Z",
            "vendorInformation": {
                "provider": "SecureScore",
                "providerVersion": "",
                "subProvider": "",
                "vendor": "Microsoft"
            }
        },
        {
            "controlName": "Do not allow calendar details sharing",
            "maxScore": 5,
            "controlCategory": "Data",
            "actionType": "Config",
            "service": "EXO",
            "tier": "Defense In Depth",
            "userImpact": "Moderate",
            "implementationCost": "Low",
            "rank": 31,
            "threats": [
                "Data Spillage"
            ],
            "deprecated": false,
            "remediation": "Clicking the launch button below will take you to the services & add-ins page in the admin center. Navigate to Calendar and a pane will slide out where you can disallow users from sharing calendar details with external users. Attackers will very commonly spend time learning about your organization (performing reconnaissance) before launching an attack. Publicly available calendars can help attackers understand organizational relationships, and determine when specific users may be more vulnerable to an attack, such as when they are traveling.",
            "remediationImpact": "This change will have a moderate impact on your users.",
            "actionUrl": "https://portal.office.com/Admin/Default.aspx#SharingDashboardPage",
            "tenantSetState": "Default",
            "tenantNote": null,
            "assignedTo": null,
            "updatedBy": null,
            "title": "CalendarDetails",
            "azureTenantId": "STRING",
            "createdDateTime": "0001-01-01T00:00:00Z",
            "lastModifiedDateTime": "0001-01-01T00:00:00Z",
            "vendorInformation": {
                "provider": "SecureScore",
                "providerVersion": "",
                "subProvider": "",
                "vendor": "Microsoft"
            }
        },
        {
            "controlName": "Enable Advanced Security Management Console",
            "maxScore": 20,
            "controlCategory": "Account",
            "actionType": "Config",
            "service": "IP",
            "tier": "Advanced",
            "userImpact": "Low",
            "implementationCost": "Moderate",
            "rank": 48,
            "threats": [
                "Account Breach",
                "Elevation of Privilege",
                "Data Exfiltration",
                "Malicious Insider",
                "Data Spillage"
            ],
            "deprecated": false,
            "remediation": "Advanced Security Management in Office 365 gives you insights into suspicious activity in Office 365 so you can investigate situations that are potentially problematic and, if needed, take action to address security issues.With Advanced Security Management, you get alerts that you can set up by using policies to notify you about anomalous and suspicious activity. And you can also get Productivity app discovery, which lets you use the information from your organization's log files to understand and act on your users' app usage in Office 365 and other cloud apps.Advanced Security Management is available in Office 365 Enterprise E5 or as an add-on subscription to Office 365. Clicking the launch button below will take you take to the Security & Compliance Center page where you can enable and use the Advanced Security Management console.",
            "remediationImpact": "This change will have no effect on your users.",
            "actionUrl": "https://protection.office.com/#/advancedsecuritymanagement",
            "tenantSetState": "Default",
            "tenantNote": null,
            "assignedTo": null,
            "updatedBy": null,
            "title": "CloudApplicationSecurityEnabled",
            "azureTenantId": "STRING",
            "createdDateTime": "0001-01-01T00:00:00Z",
            "lastModifiedDateTime": "0001-01-01T00:00:00Z",
            "vendorInformation": {
                "provider": "SecureScore",
                "providerVersion": "",
                "subProvider": "",
                "vendor": "Microsoft"
            }
        },
        {
            "controlName": "Enable customer lockbox feature",
            "maxScore": 5,
            "controlCategory": "Data",
            "actionType": "Config",
            "service": "EXO",
            "tier": "Advanced",
            "userImpact": "Moderate",
            "implementationCost": "Moderate",
            "rank": 77,
            "threats": [
                "Data Exfiltration",
                "Data Deletion",
                "Data Spillage"
            ],
            "deprecated": false,
            "remediation": "As an Office 365 admin, customer lockbox requests allows you to control how a Microsoft support engineer accesses your data. Sometimes if you run into an issue, you might need a Microsoft support engineer to help you fix it. In some cases, the support engineer will require access to your Office 365 content to troubleshoot and fix the issue. Customer lockbox requests allows you to control whether to give the support engineer access to your data. There's also an expiration time on the request and content access is removed after the support engineer has fixed the issue. Customer lockbox is included in the Office 365 E5 plan. If you don't have an Office 365 E5 plan, you can buy a separate customer lockbox subscription with any Office 365 Enterprise plan. Enabling the button below will enabling the Customer Lockbox feature so that Microsoft engineers do not get access to your content without your explicit approval. When you get the request for access, you can scrutinize the request and either approve or reject it. ",
            "remediationImpact": "Until the request is approved, the Microsoft engineer will not be granted access to customer data.",
            "actionUrl": "https://portal.office.com/AdminPortal/Home?switchtomoderndefault=true#/settings/security",
            "tenantSetState": "Default",
            "tenantNote": null,
            "assignedTo": null,
            "updatedBy": null,
            "title": "CustomerLockBoxEnabled",
            "azureTenantId": "STRING",
            "createdDateTime": "0001-01-01T00:00:00Z",
            "lastModifiedDateTime": "0001-01-01T00:00:00Z",
            "vendorInformation": {
                "provider": "SecureScore",
                "providerVersion": "",
                "subProvider": "",
                "vendor": "Microsoft"
            }
        },
        {
            "controlName": "Review non-global administrators weekly",
            "maxScore": 5,
            "controlCategory": "Account",
            "actionType": "Review",
            "service": "AzureAD",
            "tier": "Defense In Depth",
            "userImpact": "Low",
            "implementationCost": "Low",
            "rank": 30,
            "threats": [
                "Account Breach",
                "Elevation of Privilege",
                "Malicious Insider"
            ],
            "deprecated": false,
            "remediation": "Clicking the launch button below will take you to the admin center ",
            "remediationImpact": "This change will have no effect on your users.",
            "actionUrl": "https://portal.office.com/Admin/Default.aspx#ActiveUsersPage",
            "tenantSetState": "Default",
            "tenantNote": null,
            "assignedTo": null,
            "updatedBy": null,
            "title": "DelegatedAdmins",
            "azureTenantId": "STRING",
            "createdDateTime": "0001-01-01T00:00:00Z",
            "lastModifiedDateTime": "0001-01-01T00:00:00Z",
            "vendorInformation": {
                "provider": "SecureScore",
                "providerVersion": "",
                "subProvider": "",
                "vendor": "Microsoft"
            }
        },
        {
            "controlName": "Review sign-in devices report weekly",
            "maxScore": 10,
            "controlCategory": "Account",
            "actionType": "Review",
            "service": "AzureAD",
            "tier": "Defense In Depth",
            "userImpact": "Low",
            "implementationCost": "Low",
            "rank": 23,
            "threats": [
                "Account Breach",
                "Data Exfiltration",
                "Data Spillage"
            ],
            "deprecated": true,
            "remediation": "Clicking the launch button below will take you to a log of device sign-ins. Reviewing this log for anomalies will decrease the latency to notice when a breach has occurred.",
            "remediationImpact": "This change will have no effect on your users.",
            "actionUrl": "https://portal.azure.com/#blade/Microsoft_AAD_IAM/ActiveDirectoryMenuBlade/RiskySignIns",
            "tenantSetState": "Default",
            "tenantNote": null,
            "assignedTo": null,
            "updatedBy": null,
            "title": "DeviceSignIns",
            "azureTenantId": "STRING",
            "createdDateTime": "0001-01-01T00:00:00Z",
            "lastModifiedDateTime": "0001-01-01T00:00:00Z",
            "vendorInformation": {
                "provider": "SecureScore",
                "providerVersion": "",
                "subProvider": "",
                "vendor": "Microsoft"
            }
        },
        {
            "controlName": "Enable Data Loss Prevention policies",
            "maxScore": 20,
            "controlCategory": "Data",
            "actionType": "Config",
            "service": "IP",
            "tier": "Advanced",
            "userImpact": "Moderate",
            "implementationCost": "Moderate",
            "rank": 46,
            "threats": [
                "Data Exfiltration",
                "Data Spillage"
            ],
            "deprecated": false,
            "remediation": "To comply with business standards and industry regulations, organizations need to protect sensitive information and prevent its inadvertent disclosure. Examples of sensitive information that you might want to prevent from leaking outside your organization include financial data or personally identifiable information (PII) such as credit card numbers, social security numbers, or health records. Clicking the launch button below will take you to the Office 365 Security & Compliance Center, where you can identify, monitor, and automatically protect sensitive information across Office 365.",
            "remediationImpact": "This change will have a moderate impact on your users.",
            "actionUrl": "https://outlook.office365.com/ecp/?Realm=%tenantdomain%exsvurl=1mkt=en-USrfr=Admin_o365",
            "tenantSetState": "Default",
            "tenantNote": null,
            "assignedTo": null,
            "updatedBy": null,
            "title": "DLPEnabled",
            "azureTenantId": "STRING",
            "createdDateTime": "0001-01-01T00:00:00Z",
            "lastModifiedDateTime": "0001-01-01T00:00:00Z",
            "vendorInformation": {
                "provider": "SecureScore",
                "providerVersion": "",
                "subProvider": "",
                "vendor": "Microsoft"
            }
        },
        {
            "controlName": "Do not allow external domain skype communications",
            "maxScore": 5,
            "controlCategory": "Data",
            "actionType": "Config",
            "service": "SFB",
            "tier": "Defense In Depth",
            "userImpact": "Moderate",
            "implementationCost": "Low",
            "rank": 28,
            "threats": [
                "Data Exfiltration",
                "Data Spillage"
            ],
            "deprecated": false,
            "remediation": "Clicking the launch button below will take you the Skype for Business admin center where you can limit skype communications to within your organization. This will prevent external users from pretending to be someone your user knows, and then send malicious links or attachments and infiltrating your tenancy.",
            "remediationImpact": "This change will have a moderate impact on your users.",
            "actionUrl": "https://admin1a.online.lync.com/lscp/OrganizationSettings/General.aspx?language=en-US&tenantID=%tenantguid%",
            "tenantSetState": "Default",
            "tenantNote": null,
            "assignedTo": null,
            "updatedBy": null,
            "title": "ExternalSFB",
            "azureTenantId": "STRING",
            "createdDateTime": "0001-01-01T00:00:00Z",
            "lastModifiedDateTime": "0001-01-01T00:00:00Z",
            "vendorInformation": {
                "provider": "SecureScore",
                "providerVersion": "",
                "subProvider": "",
                "vendor": "Microsoft"
            }
        },
        {
            "controlName": "Review list of external users you have invited to documents monthly",
            "maxScore": 2,
            "controlCategory": "Data",
            "actionType": "Review",
            "service": "SPO",
            "tier": "Defense In Depth",
            "userImpact": "Low",
            "implementationCost": "Low",
            "rank": 38,
            "threats": [
                "Data Exfiltration",
                "Data Spillage"
            ],
            "deprecated": true,
            "remediation": "Clicking the launch button below will take you to your tenant sharepoint site. Click the Share link on the upper right corner of this page to review the list of external users with whom you have shared this site (and accompanying documents). Periodically reviewing the list of external users with whom you've invited to sensitive documents will help you notice when attackers have compromised an account and is using it to share sensitive data to external users.",
            "remediationImpact": "This change will have no effect on your users.",
            "actionUrl": "https://%initialdomainshort%.sharepoint.com",
            "tenantSetState": "Default",
            "tenantNote": null,
            "assignedTo": null,
            "updatedBy": null,
            "title": "ExternalSharingContactsReview",
            "azureTenantId": "STRING",
            "createdDateTime": "0001-01-01T00:00:00Z",
            "lastModifiedDateTime": "0001-01-01T00:00:00Z",
            "vendorInformation": {
                "provider": "SecureScore",
                "providerVersion": "",
                "subProvider": "",
                "vendor": "Microsoft"
            }
        },
        {
            "controlName": "Configure expiration time for external sharing links",
            "maxScore": 2,
            "controlCategory": "Data",
            "actionType": "Config",
            "service": "SPO",
            "tier": "Defense In Depth",
            "userImpact": "Moderate",
            "implementationCost": "Low",
            "rank": 35,
            "threats": [
                "Data Exfiltration",
                "Data Spillage"
            ],
            "deprecated": false,
            "remediation": "Clicking the launch button below will take you the SharePoint admin center where you can set an expiration time for anonymous links. This helps limit sharing to external users outside of your organization so that they do not keep access to documents that you've shared with them indefinitely.",
            "remediationImpact": "This change will have a moderate impact on your users.",
            "actionUrl": "https://%initialdomainshort%-admin.sharepoint.com/_layouts/15/online/ExternalSharing.aspx",
            "tenantSetState": "Default",
            "tenantNote": null,
            "assignedTo": null,
            "updatedBy": null,
            "title": "ExternalSharingExpiration",
            "azureTenantId": "STRING",
            "createdDateTime": "0001-01-01T00:00:00Z",
            "lastModifiedDateTime": "0001-01-01T00:00:00Z",
            "vendorInformation": {
                "provider": "SecureScore",
                "providerVersion": "",
                "subProvider": "",
                "vendor": "Microsoft"
            }
        },
        {
            "controlName": "Review signs-ins after multiple failures report weekly",
            "maxScore": 15,
            "controlCategory": "Account",
            "actionType": "Review",
            "service": "AzureAD",
            "tier": "Core",
            "userImpact": "Low",
            "implementationCost": "Low",
            "rank": 4,
            "threats": [
                "Account Breach",
                "Password Cracking"
            ],
            "deprecated": true,
            "remediation": "Clicking the launch button below will take you to an security report showing a list of all the successful sign-ins that have occurred after multiple failures. While there are legitimate reasons for this behavior, it also could indicate that an attacker successfully performed a brute force password cracking attack. The report itself includes the name of the user, the number of failed attempts before the successful sign in, and the time of the first successful sign in.",
            "remediationImpact": "This change will have no effect on your users.",
            "actionUrl": "https://portal.azure.com/#blade/Microsoft_AAD_IAM/ActiveDirectoryMenuBlade/RiskySignIns",
            "tenantSetState": "Default",
            "tenantNote": null,
            "assignedTo": null,
            "updatedBy": null,
            "title": "FailedSignIns",
            "azureTenantId": "STRING",
            "createdDateTime": "0001-01-01T00:00:00Z",
            "lastModifiedDateTime": "0001-01-01T00:00:00Z",
            "vendorInformation": {
                "provider": "SecureScore",
                "providerVersion": "",
                "subProvider": "",
                "vendor": "Microsoft"
            }
        },
        {
            "controlName": "Review signs-ins from multiple geographies report weekly ",
            "maxScore": 10,
            "controlCategory": "Account",
            "actionType": "Review",
            "service": "AzureAD",
            "tier": "Core",
            "userImpact": "Low",
            "implementationCost": "Low",
            "rank": 8,
            "threats": [
                "Account Breach"
            ],
            "deprecated": true,
            "remediation": "Clicking the launch button below will take you to an security report showing a list of successful sign ins from a user where two sign ins appeared to originate from different regions and the time between sign ins makes it impossible for the user to have traveled between those regions. Essentially, the user appears to be in two places at once. There are several potential causes, including sharing passwords (which is bad), using VPNs or remote desktop, or using two devices and one device has an unusual IP address. The report includes the user, the first sign in location, the second sign in location, the time between sign ins, the estimated travel time, and the time of the 2nd sign in.",
            "remediationImpact": "This change will have no effect on your users.",
            "actionUrl": "https://portal.azure.com/#blade/Microsoft_AAD_IAM/ActiveDirectoryMenuBlade/RiskySignIns",
            "tenantSetState": "Default",
            "tenantNote": null,
            "assignedTo": null,
            "updatedBy": null,
            "title": "GeoSignIns",
            "azureTenantId": "STRING",
            "createdDateTime": "0001-01-01T00:00:00Z",
            "lastModifiedDateTime": "0001-01-01T00:00:00Z",
            "vendorInformation": {
                "provider": "SecureScore",
                "providerVersion": "",
                "subProvider": "",
                "vendor": "Microsoft"
            }
        },
        {
            "controlName": "Disable accounts not used in last 30 days",
            "maxScore": 1,
            "controlCategory": "Account",
            "actionType": "Behavior",
            "service": "AzureAD",
            "tier": "Defense In Depth",
            "userImpact": "Moderate",
            "implementationCost": "Low",
            "rank": 42,
            "threats": [
                "Account Breach",
                "Elevation of Privilege",
                "Malicious Insider"
            ],
            "deprecated": false,
            "remediation": "Clicking the launch button below will take you to the active users page in the admin center. Here, you can disable any accounts that have not been used in the last 30 days. While there may be legitimate circumstances where an account is unused for 30 days, these accounts can also be targets for attackers who are looking to find ways to access your data without being noticed.",
            "remediationImpact": "This change will have a moderate impact on your users.",
            "actionUrl": "https://portal.office.com/Admin/Default.aspx#ActiveUsersPage",
            "tenantSetState": "Default",
            "tenantNote": null,
            "assignedTo": null,
            "updatedBy": null,
            "title": "InactiveAccounts",
            "azureTenantId": "STRING",
            "createdDateTime": "0001-01-01T00:00:00Z",
            "lastModifiedDateTime": "0001-01-01T00:00:00Z",
            "vendorInformation": {
                "provider": "SecureScore",
                "providerVersion": "",
                "subProvider": "",
                "vendor": "Microsoft"
            }
        },
        {
            "controlName": "Do not allow third party integrated applications",
            "maxScore": 10,
            "controlCategory": "Data",
            "actionType": "Config",
            "service": "AzureAD",
            "tier": "Defense In Depth",
            "userImpact": "Moderate",
            "implementationCost": "Low",
            "rank": 27,
            "threats": [
                "Data Exfiltration",
                "Data Spillage"
            ],
            "deprecated": false,
            "remediation": "Disabling third party integrated applications will update your site policy to not allow third party integrated applications. Third party applications are not created by Microsoft so they can be malicious and be used to exfiltrate data from your tenancy.To disable third party integrated applications, follow the link below to the Admin center and search for \"Integrated Apps settings\". On the slide-out panel, turn off the switch labeled \"Let people in your organization decide whether third-party apps can access their Office 365 information\".",
            "remediationImpact": "This change will have a moderate impact on your users.",
            "actionUrl": "https://portal.office.com/adminportal/home?switchtomodern=true#/homepage",
            "tenantSetState": "Default",
            "tenantNote": null,
            "assignedTo": null,
            "updatedBy": null,
            "title": "IntegratedApps",
            "azureTenantId": "STRING",
            "createdDateTime": "0001-01-01T00:00:00Z",
            "lastModifiedDateTime": "0001-01-01T00:00:00Z",
            "vendorInformation": {
                "provider": "SecureScore",
                "providerVersion": "",
                "subProvider": "",
                "vendor": "Microsoft"
            }
        },
        {
            "controlName": "Require PC and mobile devices to have advanced security configurations",
            "maxScore": 5,
            "controlCategory": "Device",
            "actionType": "Config",
            "service": "InTune",
            "tier": "Advanced",
            "userImpact": "Moderate",
            "implementationCost": "Low",
            "rank": 72,
            "threats": [
                "Account Breach",
                "Data Exfiltration",
                "Data Spillage"
            ],
            "deprecated": false,
            "remediation": "Intune is a cloud-based enterprise mobility management (EMM) service that helps enable your workforce to be productive while keeping your corporate data protected. Use Intune to make sure your organization's users are protected against basic internet attacks. Clicking the launch now button will take to the catalog where you can subscribe to the Intune service. Use Intune to set up a policy that requires advanced security configurations.",
            "remediationImpact": "This change will have a moderate impact on your users.",
            "actionUrl": "https://portal.office.com/AdminPortal/Home?switchtomoderndefault=true#/catalog",
            "tenantSetState": "Default",
            "tenantNote": null,
            "assignedTo": null,
            "updatedBy": null,
            "title": "InTuneNoAdvancedSettings",
            "azureTenantId": "STRING",
            "createdDateTime": "0001-01-01T00:00:00Z",
            "lastModifiedDateTime": "0001-01-01T00:00:00Z",
            "vendorInformation": {
                "provider": "SecureScore",
                "providerVersion": "",
                "subProvider": "",
                "vendor": "Microsoft"
            }
        },
        {
            "controlName": "Require PC and Mobile devices to be patched, have anti-virus, and firewalls enabled",
            "maxScore": 10,
            "controlCategory": "Device",
            "actionType": "Config",
            "service": "InTune",
            "tier": "Advanced",
            "userImpact": "Moderate",
            "implementationCost": "Moderate",
            "rank": 62,
            "threats": [
                "Account Breach",
                "Data Exfiltration",
                "Data Spillage"
            ],
            "deprecated": false,
            "remediation": "Intune is a cloud-based enterprise mobility management (EMM) service that helps enable your workforce to be productive while keeping your corporate data protected. Use Intune to make sure your organization's users are protected against basic internet attacks. Clicking the launch now button will take to the catalog where you can subscribe to the Intune service. Use Intune to set up a policy that requires the PC and mobile device to be patched, have anti-virus, and have a firewall enabled.",
            "remediationImpact": "This change will have a moderate impact on your users.",
            "actionUrl": "https://portal.office.com/AdminPortal/Home?switchtomoderndefault=true#/catalog",
            "tenantSetState": "Default",
            "tenantNote": null,
            "assignedTo": null,
            "updatedBy": null,
            "title": "InTuneNoPAVC",
            "azureTenantId": "STRING",
            "createdDateTime": "0001-01-01T00:00:00Z",
            "lastModifiedDateTime": "0001-01-01T00:00:00Z",
            "vendorInformation": {
                "provider": "SecureScore",
                "providerVersion": "",
                "subProvider": "",
                "vendor": "Microsoft"
            }
        },
        {
            "controlName": "IRM protections applied to documents",
            "maxScore": 5,
            "controlCategory": "Data",
            "actionType": "Behavior",
            "service": "AzureAD",
            "tier": "Defense in Depth",
            "userImpact": "Moderate",
            "implementationCost": "Moderate",
            "rank": 32,
            "threats": [
                "Data Exfiltration",
                "Data Spillage"
            ],
            "deprecated": false,
            "remediation": "Clicking the link below will take you to a support page that describes the steps to restrict permission to content in documents, workbooks, and presentations by using Information Rights Management (IRM). Information Rights Management (IRM) allows individuals and administrators to specify access permissions to documents, workbooks, and presentations. This helps prevent sensitive information from being printed, forwarded, or copied by unauthorized people. After permission for a file has been restricted by using IRM, the access and usage restrictions are enforced regardless of where the information is, because the permission to a file is stored in the document, workbook, or presentation file itself. IRM helps individuals enforce their personal preferences regarding the transmission of personal or private information. IRM also helps organizations enforce corporate policy governing the control and dissemination of confidential or proprietary information.",
            "remediationImpact": "This change will have a moderate impact on your users.",
            "actionUrl": "https://support.office.com/en-us/article/Information-Rights-Management-in-Office-2010-C7A70797-6B1E-493F-ACF7-92A39B85E30C",
            "tenantSetState": "Default",
            "tenantNote": null,
            "assignedTo": null,
            "updatedBy": null,
            "title": "IRMDocs",
            "azureTenantId": "STRING",
            "createdDateTime": "0001-01-01T00:00:00Z",
            "lastModifiedDateTime": "0001-01-01T00:00:00Z",
            "vendorInformation": {
                "provider": "SecureScore",
                "providerVersion": "",
                "subProvider": "",
                "vendor": "Microsoft"
            }
        },
        {
            "controlName": "IRM protections applied to email",
            "maxScore": 5,
            "controlCategory": "Data",
            "actionType": "Behavior",
            "service": "AzureAD",
            "tier": "Defense in Depth",
            "userImpact": "Moderate",
            "implementationCost": "Moderate",
            "rank": 33,
            "threats": [
                "Data Exfiltration",
                "Data Spillage"
            ],
            "deprecated": false,
            "remediation": "Clicking the link below will take you to a support page that describes the steps to restrict permission to content in email messages in Microsoft Outlook with Information Rights Management (IRM). Information Rights Management (IRM) allows you to specify access permissions to email messages. IRM helps prevent sensitive information from being read, printed, forwarded, or copied by unauthorized people. After permission for a message is restricted by using IRM, the access and usage restrictions are enforced regardless of where the message goes, because the permissions to access an email message are stored in the message file itself. IRM helps you restrict the transmission of personal or private information. IRM also helps organizations enforce corporate policy governing the control and dissemination of confidential or proprietary information, both within the organization and with customers and partners.",
            "remediationImpact": "This change will have a moderate impact on your users.",
            "actionUrl": "https://support.office.com/en-us/article/Introduction-to-IRM-for-email-messages-3629182e-0c4f-4d3e-a495-dfa4aea21aa3?ui=en-US&rs=en-US&ad=US",
            "tenantSetState": "Default",
            "tenantNote": null,
            "assignedTo": null,
            "updatedBy": null,
            "title": "IRMEmail",
            "azureTenantId": "STRING",
            "createdDateTime": "0001-01-01T00:00:00Z",
            "lastModifiedDateTime": "0001-01-01T00:00:00Z",
            "vendorInformation": {
                "provider": "SecureScore",
                "providerVersion": "",
                "subProvider": "",
                "vendor": "Microsoft"
            }
        },
        {
            "controlName": "Enable Information Rights Management (IRM) services",
            "maxScore": 10,
            "controlCategory": "Data",
            "actionType": "Config",
            "service": "AzureAD",
            "tier": "Core",
            "userImpact": "Low",
            "implementationCost": "Low",
            "rank": 12,
            "threats": [
                "Data Spillage",
                "Data Exfiltration"
            ],
            "deprecated": false,
            "remediation": "Enabling Information Rights Management services at the site linked below will give your users the ability to apply protection to their files and limit consumers ability to access as well as distribute files. This will allow your users to encrypt their files and ensure that only the intended target can open and decrypt the files.",
            "remediationImpact": "This change will have no negative effect on your users, although you should ensure they understand how to use Information Rights Management",
            "actionUrl": "https://account.activedirectory.windowsazure.com/RmsOnline/Manage.aspx?BrandContextID=O365",
            "tenantSetState": "Default",
            "tenantNote": null,
            "assignedTo": null,
            "updatedBy": null,
            "title": "IRMEnabled",
            "azureTenantId": "STRING",
            "createdDateTime": "0001-01-01T00:00:00Z",
            "lastModifiedDateTime": "0001-01-01T00:00:00Z",
            "vendorInformation": {
                "provider": "SecureScore",
                "providerVersion": "",
                "subProvider": "",
                "vendor": "Microsoft"
            }
        },
        {
            "controlName": "Enable mailbox auditing for all users",
            "maxScore": 10,
            "controlCategory": "Data",
            "actionType": "Config",
            "service": "EXO",
            "tier": "Core",
            "userImpact": "Low",
            "implementationCost": "Low",
            "rank": 6,
            "threats": [
                "Account Breach"
            ],
            "deprecated": false,
            "remediation": "Running the PowerShell script linked below will turn on owner activity mailbox auditing for all mailboxes in your service. By default all non-owner access and administrative actions are recorded, but owner actions are not. Enabling mailbox auditing will include owner activity in the audit records, which will in turn enable you to investigate and scope a compromise of that user's account.",
            "remediationImpact": "This change will have no effect on your users.",
            "actionUrl": "https://github.com/OfficeDev/O365-InvestigationTooling/blob/master/EnableMailboxAuditing.ps1",
            "tenantSetState": "Default",
            "tenantNote": null,
            "assignedTo": null,
            "updatedBy": null,
            "title": "MailboxAuditingEnabled",
            "azureTenantId": "STRING",
            "createdDateTime": "0001-01-01T00:00:00Z",
            "lastModifiedDateTime": "0001-01-01T00:00:00Z",
            "vendorInformation": {
                "provider": "SecureScore",
                "providerVersion": "",
                "subProvider": "",
                "vendor": "Microsoft"
            }
        },
        {
            "controlName": "Do not use mail forwarding rules to external domains",
            "maxScore": 1,
            "controlCategory": "Data",
            "actionType": "Behavior",
            "service": "EXO",
            "tier": "Core",
            "userImpact": "Low",
            "implementationCost": "Low",
            "rank": 20,
            "threats": [
                "Account Breach",
                "Data Exfiltration",
                "Malicious Insider"
            ],
            "deprecated": false,
            "remediation": "Clicking the launch button below will take you to the exchange admin center where you can review the existing mail forwarding rules and remove rules which forward user mail to domains not registered in your tenancy. To view existing mail forwarding rules, navigate to Recipients > Mailboxes in the Exchange admin center. Removing these rules will reduce the ability of attackers from siphoning out data from your tenancy . ",
            "remediationImpact": "This change will have no effect on your users.",
            "actionUrl": "https://outlook.office365.com/ecp/?Realm=%tenantdomain%exsvurl=1mkt=en-USrfr=Admin_o365",
            "tenantSetState": "Default",
            "tenantNote": null,
            "assignedTo": null,
            "updatedBy": null,
            "title": "MailForwardingAll",
            "azureTenantId": "STRING",
            "createdDateTime": "0001-01-01T00:00:00Z",
            "lastModifiedDateTime": "0001-01-01T00:00:00Z",
            "vendorInformation": {
                "provider": "SecureScore",
                "providerVersion": "",
                "subProvider": "",
                "vendor": "Microsoft"
            }
        },
        {
            "controlName": "Review mailbox forwarding rules weekly",
            "maxScore": 5,
            "controlCategory": "Data",
            "actionType": "Review",
            "service": "EXO",
            "tier": "Core",
            "userImpact": "Low",
            "implementationCost": "Low",
            "rank": 16,
            "threats": [
                "Account Breach",
                "Data Exfiltration",
                "Malicious Insider"
            ],
            "deprecated": false,
            "remediation": "Running the PowerShell script linked below will generate two csv files, \"MailboxDelegatePermissions\" and \"MailForwardingRulesToExternalDomains\", in your System32 folder. You should run this script and review the reports created on a weekly basis to ensure your users' email is not being exfiltrated.",
            "remediationImpact": "This change will have no effect on your users.",
            "actionUrl": "https://github.com/OfficeDev/O365-InvestigationTooling/blob/master/DumpDelegatesandForwardingRules.ps1",
            "tenantSetState": "Default",
            "tenantNote": null,
            "assignedTo": null,
            "updatedBy": null,
            "title": "MailForwardingRules",
            "azureTenantId": "STRING",
            "createdDateTime": "0001-01-01T00:00:00Z",
            "lastModifiedDateTime": "0001-01-01T00:00:00Z",
            "vendorInformation": {
                "provider": "SecureScore",
                "providerVersion": "",
                "subProvider": "",
                "vendor": "Microsoft"
            }
        },
        {
            "controlName": "Review malware detections report weekly",
            "maxScore": 5,
            "controlCategory": "Data",
            "actionType": "Review",
            "service": "IP",
            "tier": "Core",
            "userImpact": "Low",
            "implementationCost": "Low",
            "rank": 18,
            "threats": [
                "Phishing/Whaling"
            ],
            "deprecated": false,
            "remediation": "Clicking the launch button below will take you to a security report where you can view how many times Microsoft blocked a malware attachment from reaching your users. Depending on how many breach attempts you faced in the last week, you may decide to adopt more aggressive malware mitigations after review.",
            "remediationImpact": "This change will have no effect on your users.",
            "actionUrl": "https://admin.protection.outlook.com/Reports/DisplayReport.aspx?reportId=MalwareDetections&wa=wsignin1.0",
            "tenantSetState": "Default",
            "tenantNote": null,
            "assignedTo": null,
            "updatedBy": null,
            "title": "MalwareDetections",
            "azureTenantId": "STRING",
            "createdDateTime": "0001-01-01T00:00:00Z",
            "lastModifiedDateTime": "0001-01-01T00:00:00Z",
            "vendorInformation": {
                "provider": "SecureScore",
                "providerVersion": "",
                "subProvider": "",
                "vendor": "Microsoft"
            }
        },
        {
            "controlName": "Designate less than 5 global admins",
            "maxScore": 1,
            "controlCategory": "Account",
            "actionType": "Behavior",
            "service": "AzureAD",
            "tier": "Core",
            "userImpact": "Low",
            "implementationCost": "Low",
            "rank": 21,
            "threats": [
                "Account Breach",
                "Elevation of Privilege",
                "Malicious Insider"
            ],
            "deprecated": false,
            "remediation": "Designate less than five global tenant administrators because the more global admin users you have, the more likely it is that one of those accounts will be successfully breached by an external attacker. You should designate alternate roles for global admins such that they can complete needed tasks but only with the least privileged required for the task. For example, if your user is primarily responsible for Exchange Online administration, you should use that role instead of the Global admin role to reduce the impact of a potential breach of that account. Make sure you have at least two Global Admins designated to ensure that you can protect against a rogue insider and to ensure a breach of one of those accounts can be recovered.",
            "remediationImpact": "Admins who have been designated alternate roles will lose some of the privileges that they had before (although they might keep some privileges depending on the role). Make sure that these users have enough privileges to complete their day-to-day work.",
            "actionUrl": "https://portal.office.com/Admin/Default.aspx#ActiveUsersPage",
            "tenantSetState": "Default",
            "tenantNote": null,
            "assignedTo": null,
            "updatedBy": null,
            "title": "ManyAdmins",
            "azureTenantId": "STRING",
            "createdDateTime": "0001-01-01T00:00:00Z",
            "lastModifiedDateTime": "0001-01-01T00:00:00Z",
            "vendorInformation": {
                "provider": "SecureScore",
                "providerVersion": "",
                "subProvider": "",
                "vendor": "Microsoft"
            }
        },
        {
            "controlName": "Do not allow mailbox delegation",
            "maxScore": 1,
            "controlCategory": "Data",
            "actionType": "Behavior",
            "service": "EXO",
            "tier": "Defense In Depth",
            "userImpact": "Moderate",
            "implementationCost": "Low",
            "rank": 43,
            "threats": [
                "Account Breach",
                "Elevation of Privilege",
                "Malicious Insider"
            ],
            "deprecated": false,
            "remediation": "Clicking the launch button below will take you to the Exchange admin center. To disallow mailbox delegation for a user, navigate to recipient > mailboxes. Click on the mailbox that you want to remove delegation for and then click Edit. On the mailbox properties page, click Mailbox Delegation. To remove a permission for a recipient, under the appropriate permission, select the recipient and then click Remove -. Click Save to save your changes. While there are many legitimate uses of mailbox delegation, it also makes it much easier for an attacker to move laterally from one account to another to steal data. ",
            "remediationImpact": "This change will have a moderate impact on your users.",
            "actionUrl": "https://outlook.office365.com/owa/#path=/mail?realm=%tenantdomain%",
            "tenantSetState": "Default",
            "tenantNote": null,
            "assignedTo": null,
            "updatedBy": null,
            "title": "MBDelegation",
            "azureTenantId": "STRING",
            "createdDateTime": "0001-01-01T00:00:00Z",
            "lastModifiedDateTime": "0001-01-01T00:00:00Z",
            "vendorInformation": {
                "provider": "SecureScore",
                "providerVersion": "",
                "subProvider": "",
                "vendor": "Microsoft"
            }
        },
        {
            "controlName": "Require mobile devices to use alphanumeric password",
            "maxScore": 1,
            "controlCategory": "Device",
            "actionType": "Config",
            "service": "IP",
            "tier": "Advanced",
            "userImpact": "Moderate",
            "implementationCost": "Low",
            "rank": 64,
            "threats": [
                "Account Breach",
                "Data Exfiltration",
                "Data Spillage"
            ],
            "deprecated": false,
            "remediation": "Clicking the launch button below will take you to the device security policies page in the Security & Compliance center. Here, you can set a policy to require users to use a complex password with a at least two character sets (letters and numbers, for example) to unlock their mobile devices. Devices without this protection are vulnerable to being accessed physically by attackers who can then steal account credentials, data, or install malware on the device. ",
            "remediationImpact": "This change will have a moderate impact on your users.",
            "actionUrl": "https://portal.office.com/EAdmin/Device/IntuneInventory.aspx",
            "tenantSetState": "Default",
            "tenantNote": null,
            "assignedTo": null,
            "updatedBy": null,
            "title": "MDMAlphaPW",
            "azureTenantId": "STRING",
            "createdDateTime": "0001-01-01T00:00:00Z",
            "lastModifiedDateTime": "0001-01-01T00:00:00Z",
            "vendorInformation": {
                "provider": "SecureScore",
                "providerVersion": "",
                "subProvider": "",
                "vendor": "Microsoft"
            }
        },
        {
            "controlName": "Review blocked devices report weekly",
            "maxScore": 5,
            "controlCategory": "Device",
            "actionType": "Review",
            "service": "InTune",
            "tier": "Advanced",
            "userImpact": "Low",
            "implementationCost": "Low",
            "rank": 61,
            "threats": [
                "Account Breach",
                "Data Exfiltration",
                "Data Spillage"
            ],
            "deprecated": false,
            "remediation": "Clicking the launch button below will take you to the device compliance report. In the device compliance report in Office 365, you can see which mobile devices aren't compliant with the mobile device policies you've deployed in Mobile Device Management for Office 365. ",
            "remediationImpact": "This change will have no effect on your users.",
            "actionUrl": "https://portal.office.com/EAdmin/Device/IntuneInventory.aspx",
            "tenantSetState": "Default",
            "tenantNote": null,
            "assignedTo": null,
            "updatedBy": null,
            "title": "MDMDeviceAlert",
            "azureTenantId": "STRING",
            "createdDateTime": "0001-01-01T00:00:00Z",
            "lastModifiedDateTime": "0001-01-01T00:00:00Z",
            "vendorInformation": {
                "provider": "SecureScore",
                "providerVersion": "",
                "subProvider": "",
                "vendor": "Microsoft"
            }
        },
        {
            "controlName": "Enable mobile device management services",
            "maxScore": 20,
            "controlCategory": "Device",
            "actionType": "Config",
            "service": "IP",
            "tier": "Advanced",
            "userImpact": "Moderate",
            "implementationCost": "Moderate",
            "rank": 57,
            "threats": [
                "Account Breach",
                "Data Exfiltration",
                "Data Spillage"
            ],
            "deprecated": false,
            "remediation": "Clicking the launch button below will take you to the activation process for mobile device management. The built-in Mobile Device Management (MDM) for Office 365 helps you secure and manage your users' mobile devices like iPhones, iPads, Androids, and Windows phones. You can create and manage device security policies, remotely wipe a device, and view detailed device reports.  ",
            "remediationImpact": "This change will have a moderate impact on your users.",
            "actionUrl": "https://portal.office.com/EAdmin/Device/IntuneInventory.aspx",
            "tenantSetState": "Default",
            "tenantNote": null,
            "assignedTo": null,
            "updatedBy": null,
            "title": "MDMEnabled",
            "azureTenantId": "STRING",
            "createdDateTime": "0001-01-01T00:00:00Z",
            "lastModifiedDateTime": "0001-01-01T00:00:00Z",
            "vendorInformation": {
                "provider": "SecureScore",
                "providerVersion": "",
                "subProvider": "",
                "vendor": "Microsoft"
            }
        },
        {
            "controlName": "Require mobile devices to use encryption",
            "maxScore": 1,
            "controlCategory": "Device",
            "actionType": "Config",
            "service": "IP",
            "tier": "Advanced",
            "userImpact": "Moderate",
            "implementationCost": "Low",
            "rank": 65,
            "threats": [
                "Account Breach",
                "Data Exfiltration",
                "Data Spillage"
            ],
            "deprecated": false,
            "remediation": "Clicking the launch button below will take you to the device security policies page in the Security & Compliance center. Here, you can set a policy to require users to use encryption on their mobile devices. Unencrypted devices can be stolen and their data extracted by an attacker very easily.",
            "remediationImpact": "This change will have a moderate impact on your users.",
            "actionUrl": "https://portal.office.com/EAdmin/Device/IntuneInventory.aspx",
            "tenantSetState": "Default",
            "tenantNote": null,
            "assignedTo": null,
            "updatedBy": null,
            "title": "MDMEncryptReq",
            "azureTenantId": "STRING",
            "createdDateTime": "0001-01-01T00:00:00Z",
            "lastModifiedDateTime": "0001-01-01T00:00:00Z",
            "vendorInformation": {
                "provider": "SecureScore",
                "providerVersion": "",
                "subProvider": "",
                "vendor": "Microsoft"
            }
        },
        {
            "controlName": "Require mobile devices to lock on inactivity",
            "maxScore": 1,
            "controlCategory": "Device",
            "actionType": "Config",
            "service": "IP",
            "tier": "Advanced",
            "userImpact": "Moderate",
            "implementationCost": "Low",
            "rank": 66,
            "threats": [
                "Account Breach",
                "Data Exfiltration",
                "Data Spillage"
            ],
            "deprecated": false,
            "remediation": "Clicking the launch button below will take you to the device security policies page in the Security & Compliance center. Here, you can set a policy to require users to configure their mobile devices to lock on inactivity. Attackers can steal unlocked devices and access data and account information.",
            "remediationImpact": "This change will have a moderate impact on your users.",
            "actionUrl": "https://portal.office.com/EAdmin/Device/IntuneInventory.aspx",
            "tenantSetState": "Default",
            "tenantNote": null,
            "assignedTo": null,
            "updatedBy": null,
            "title": "MDMLockInactive",
            "azureTenantId": "STRING",
            "createdDateTime": "0001-01-01T00:00:00Z",
            "lastModifiedDateTime": "0001-01-01T00:00:00Z",
            "vendorInformation": {
                "provider": "SecureScore",
                "providerVersion": "",
                "subProvider": "",
                "vendor": "Microsoft"
            }
        },
        {
            "controlName": "Require mobile devices to manage email profile",
            "maxScore": 5,
            "controlCategory": "Device",
            "actionType": "Config",
            "service": "IP",
            "tier": "Advanced",
            "userImpact": "Moderate",
            "implementationCost": "Low",
            "rank": 60,
            "threats": [
                "Account Breach",
                "Data Exfiltration",
                "Data Spillage"
            ],
            "deprecated": false,
            "remediation": "Clicking the launch button below will take you to the device security policies page in the Security & Compliance center. Here, you can set a policy to require the policy to manage the email profile of the user. If you do not require this, users will be able to setup and configure email accounts without the protections of the mobile device management policy, leading to potential breaches of accounts and data.",
            "remediationImpact": "This change will have a moderate impact on your users.",
            "actionUrl": "https://portal.office.com/EAdmin/Device/IntuneInventory.aspx",
            "tenantSetState": "Default",
            "tenantNote": null,
            "assignedTo": null,
            "updatedBy": null,
            "title": "MDMManageEmail",
            "azureTenantId": "STRING",
            "createdDateTime": "0001-01-01T00:00:00Z",
            "lastModifiedDateTime": "0001-01-01T00:00:00Z",
            "vendorInformation": {
                "provider": "SecureScore",
                "providerVersion": "",
                "subProvider": "",
                "vendor": "Microsoft"
            }
        },
        {
            "controlName": "Require mobile devices to have minimum password length",
            "maxScore": 1,
            "controlCategory": "Device",
            "actionType": "Config",
            "service": "IP",
            "tier": "Advanced",
            "userImpact": "Moderate",
            "implementationCost": "Low",
            "rank": 67,
            "threats": [
                "Account Breach",
                "Data Exfiltration",
                "Data Spillage"
            ],
            "deprecated": false,
            "remediation": "Clicking the launch button below will take you to the device security policies page in the Security & Compliance center. Here, you can set a policy to require users to use a complex password with a minimum password length of at least six characters to unlock their mobile devices. Devices without this protection are vulnerable to being accessed physically by attackers who can then steal account credentials, data, or install malware on the device.",
            "remediationImpact": "This change will have a moderate impact on your users.",
            "actionUrl": "https://portal.office.com/EAdmin/Device/IntuneInventory.aspx",
            "tenantSetState": "ThirdParty",
            "tenantNote": "Using something else",
            "assignedTo": null,
            "updatedBy": "admin@M365x610530.onmicrosoft.com",
            "title": "MDMMinPW",
            "azureTenantId": "STRING",
            "createdDateTime": "0001-01-01T00:00:00Z",
            "lastModifiedDateTime": "2018-07-12T17:20:00.0199824Z",
            "vendorInformation": {
                "provider": "SecureScore",
                "providerVersion": "",
                "subProvider": "",
                "vendor": "Microsoft"
            }
        },
        {
            "controlName": "Require mobile devices to expire password",
            "maxScore": 1,
            "controlCategory": "Device",
            "actionType": "Config",
            "service": "IP",
            "tier": "Advanced",
            "userImpact": "Moderate",
            "implementationCost": "Low",
            "rank": 70,
            "threats": [
                "Account Breach",
                "Data Exfiltration",
                "Data Spillage"
            ],
            "deprecated": true,
            "remediation": "Clicking the link below will take you to a location where you can make the recommended change or where you can review the recommended data.",
            "remediationImpact": "This change will have a moderate impact on your users.",
            "actionUrl": "https://portal.office.com/EAdmin/Device/IntuneInventory.aspx",
            "tenantSetState": "Default",
            "tenantNote": null,
            "assignedTo": null,
            "updatedBy": null,
            "title": "MDMPWExpire",
            "azureTenantId": "STRING",
            "createdDateTime": "0001-01-01T00:00:00Z",
            "lastModifiedDateTime": "0001-01-01T00:00:00Z",
            "vendorInformation": {
                "provider": "SecureScore",
                "providerVersion": "",
                "subProvider": "",
                "vendor": "Microsoft"
            }
        },
        {
            "controlName": "Require mobile devices to never expire password",
            "maxScore": 1,
            "controlCategory": "Device",
            "actionType": "Config",
            "service": "IP",
            "tier": "Advanced",
            "userImpact": "Moderate",
            "implementationCost": "Low",
            "rank": 70,
            "threats": [
                "Account Breach",
                "Data Exfiltration",
                "Data Spillage"
            ],
            "deprecated": false,
            "remediation": "Clicking the launch button below will take you to the device security policies page in the Security & Compliance center. Here, you can make sure that there is not a policy that expires passwords. Research has found that when periodic password resets are enforced, passwords become weaker as users tend to pick something weaker and then use a pattern of it for rotation.",
            "remediationImpact": "This change will have a moderate impact on your users.",
            "actionUrl": "https://portal.office.com/EAdmin/Device/IntuneInventory.aspx",
            "tenantSetState": "Default",
            "tenantNote": null,
            "assignedTo": null,
            "updatedBy": null,
            "title": "MDMPWExpireNew",
            "azureTenantId": "STRING",
            "createdDateTime": "0001-01-01T00:00:00Z",
            "lastModifiedDateTime": "0001-01-01T00:00:00Z",
            "vendorInformation": {
                "provider": "SecureScore",
                "providerVersion": "",
                "subProvider": "",
                "vendor": "Microsoft"
            }
        },
        {
            "controlName": "Require mobile devices to use a password",
            "maxScore": 5,
            "controlCategory": "Device",
            "actionType": "Config",
            "service": "IP",
            "tier": "Advanced",
            "userImpact": "Low",
            "implementationCost": "Low",
            "rank": 58,
            "threats": [
                "Account Breach",
                "Data Exfiltration",
                "Data Spillage"
            ],
            "deprecated": false,
            "remediation": "Clicking the launch button below will take you to the device security policies page in the Security & Compliance center. Here, you can set a policy to require users to use a password to unlock their mobile devices. Devices without this protection are vulnerable to being accessed physically by attackers who can then steal account credentials, data, or install malware on the device.",
            "remediationImpact": "This change will have no effect on your users.",
            "actionUrl": "https://portal.office.com/EAdmin/Device/IntuneInventory.aspx",
            "tenantSetState": "Default",
            "tenantNote": null,
            "assignedTo": null,
            "updatedBy": null,
            "title": "MDMPWReq",
            "azureTenantId": "STRING",
            "createdDateTime": "0001-01-01T00:00:00Z",
            "lastModifiedDateTime": "0001-01-01T00:00:00Z",
            "vendorInformation": {
                "provider": "SecureScore",
                "providerVersion": "",
                "subProvider": "",
                "vendor": "Microsoft"
            }
        },
        {
            "controlName": "Do not allow mobile device password re-use",
            "maxScore": 1,
            "controlCategory": "Device",
            "actionType": "Config",
            "service": "IP",
            "tier": "Advanced",
            "userImpact": "Moderate",
            "implementationCost": "Low",
            "rank": 71,
            "threats": [
                "Account Breach",
                "Data Exfiltration",
                "Data Spillage"
            ],
            "deprecated": false,
            "remediation": "Clicking the launch button below will take you to the device security policies page in the Security & Compliance center. Here, you can set a policy to require users to reuse the same password on their mobile devices. Devices without this protection are vulnerable to being accessed by attackers who can then steal account credentials, data, or install malware on the device.",
            "remediationImpact": "This change will have a moderate impact on your users.",
            "actionUrl": "https://portal.office.com/EAdmin/Device/IntuneInventory.aspx",
            "tenantSetState": "Default",
            "tenantNote": null,
            "assignedTo": null,
            "updatedBy": null,
            "title": "MDMPWReuse",
            "azureTenantId": "STRING",
            "createdDateTime": "0001-01-01T00:00:00Z",
            "lastModifiedDateTime": "0001-01-01T00:00:00Z",
            "vendorInformation": {
                "provider": "SecureScore",
                "providerVersion": "",
                "subProvider": "",
                "vendor": "Microsoft"
            }
        },
        {
            "controlName": "Require mobile devices to block access and report policy violations",
            "maxScore": 5,
            "controlCategory": "Device",
            "actionType": "Config",
            "service": "IP",
            "tier": "Advanced",
            "userImpact": "Moderate",
            "implementationCost": "Low",
            "rank": 59,
            "threats": [
                "Account Breach",
                "Data Exfiltration",
                "Data Spillage"
            ],
            "deprecated": false,
            "remediation": "Clicking the launch button below will take you to the device security policies page in the Security & Compliance center. Here, you can set a policy to block access to devices don't conform to your MDM policies and to report those violations to an administrator. Users will be able to connect with non-compliant devices unless you block access, leading to vulnerable devices connecting to your data. ",
            "remediationImpact": "This change will have a moderate impact on your users.",
            "actionUrl": "https://portal.office.com/EAdmin/Device/IntuneInventory.aspx",
            "tenantSetState": "Default",
            "tenantNote": null,
            "assignedTo": null,
            "updatedBy": null,
            "title": "MDMReportViolation",
            "azureTenantId": "STRING",
            "createdDateTime": "0001-01-01T00:00:00Z",
            "lastModifiedDateTime": "0001-01-01T00:00:00Z",
            "vendorInformation": {
                "provider": "SecureScore",
                "providerVersion": "",
                "subProvider": "",
                "vendor": "Microsoft"
            }
        },
        {
            "controlName": "Do not allow jail broken or rooted mobile devices to connect",
            "maxScore": 1,
            "controlCategory": "Device",
            "actionType": "Config",
            "service": "IP",
            "tier": "Advanced",
            "userImpact": "Moderate",
            "implementationCost": "Low",
            "rank": 69,
            "threats": [
                "Account Breach",
                "Data Exfiltration",
                "Data Spillage"
            ],
            "deprecated": false,
            "remediation": "Clicking the launch button below will take you to the device security policies page in the Security & Compliance center. Here, you can set a policy to require users to use to connect with mobile devices that have been jail broken or rooted. These devices have had basic protections disabled to run software that is often malicious and could very easily lead to an account or data breach.",
            "remediationImpact": "This change will have a moderate impact on your users.",
            "actionUrl": "https://portal.office.com/EAdmin/Device/IntuneInventory.aspx",
            "tenantSetState": "Default",
            "tenantNote": null,
            "assignedTo": null,
            "updatedBy": null,
            "title": "MDMRootedBlock",
            "azureTenantId": "STRING",
            "createdDateTime": "0001-01-01T00:00:00Z",
            "lastModifiedDateTime": "0001-01-01T00:00:00Z",
            "vendorInformation": {
                "provider": "SecureScore",
                "providerVersion": "",
                "subProvider": "",
                "vendor": "Microsoft"
            }
        },
        {
            "controlName": "Do not allow simple passwords on mobile devices",
            "maxScore": 2,
            "controlCategory": "Device",
            "actionType": "Config",
            "service": "IP",
            "tier": "Advanced",
            "userImpact": "Moderate",
            "implementationCost": "Low",
            "rank": 63,
            "threats": [
                "Account Breach",
                "Data Exfiltration",
                "Data Spillage"
            ],
            "deprecated": false,
            "remediation": "Clicking the launch button below will take you to the device security policies page in the Security & Compliance center. Here, you can set a policy to require users to use a complex password to unlock their mobile devices. Devices without this protection are vulnerable to being accessed physically by attackers who can then steal account credentials, data, or install malware on the device. ",
            "remediationImpact": "This change will have a moderate impact on your users.",
            "actionUrl": "https://portal.office.com/EAdmin/Device/IntuneInventory.aspx",
            "tenantSetState": "Default",
            "tenantNote": null,
            "assignedTo": null,
            "updatedBy": null,
            "title": "MDMSimplePW",
            "azureTenantId": "STRING",
            "createdDateTime": "0001-01-01T00:00:00Z",
            "lastModifiedDateTime": "0001-01-01T00:00:00Z",
            "vendorInformation": {
                "provider": "SecureScore",
                "providerVersion": "",
                "subProvider": "",
                "vendor": "Microsoft"
            }
        },
        {
            "controlName": "Require mobile devices to wipe on multiple sign-in failures",
            "maxScore": 1,
            "controlCategory": "Device",
            "actionType": "Config",
            "service": "IP",
            "tier": "Advanced",
            "userImpact": "Moderate",
            "implementationCost": "Low",
            "rank": 68,
            "threats": [
                "Account Breach",
                "Data Exfiltration",
                "Data Spillage"
            ],
            "deprecated": false,
            "remediation": "Clicking the launch button below will take you to the device security policies page in the Security & Compliance center. Here, you can set a policy to require users to wipe the contents of the mobile device after no more than 10 sign in failures. Devices without this protection are vulnerable to being accessed physically by attackers who can then steal account credentials, data, or install malware on the device.",
            "remediationImpact": "This change will have a moderate impact on your users.",
            "actionUrl": "https://portal.office.com/EAdmin/Device/IntuneInventory.aspx",
            "tenantSetState": "Default",
            "tenantNote": null,
            "assignedTo": null,
            "updatedBy": null,
            "title": "MDMWipeOnFail",
            "azureTenantId": "STRING",
            "createdDateTime": "0001-01-01T00:00:00Z",
            "lastModifiedDateTime": "0001-01-01T00:00:00Z",
            "vendorInformation": {
                "provider": "SecureScore",
                "providerVersion": "",
                "subProvider": "",
                "vendor": "Microsoft"
            }
        },
        {
            "controlName": "Review account provisioning activity report weekly",
            "maxScore": 10,
            "controlCategory": "Account",
            "actionType": "Review",
            "service": "AzureAD",
            "tier": "Defense In Depth",
            "userImpact": "Low",
            "implementationCost": "Low",
            "rank": 29,
            "threats": [
                "Account Breach",
                "Elevation of Privilege",
                "Malicious Insider"
            ],
            "deprecated": false,
            "remediation": "Clicking the launch button below will take you to a report that will show a history of attempts to provision accounts to external applications. If you don't usually use a third party provider to manage accounts, any entry on the list is likely illicit. But, if you do, this is a great way to monitor transaction volumes, and look for new or unusual third party applications that are managing users. If you see something unusual, contact the provider to determine if the action is legitimate. ",
            "remediationImpact": "This change will have no effect on your users.",
            "actionUrl": "https://portal.azure.com/#blade/Microsoft_AAD_IAM/ActiveDirectoryMenuBlade/Audit",
            "tenantSetState": "Default",
            "tenantNote": null,
            "assignedTo": null,
            "updatedBy": null,
            "title": "NewProvisionedAccounts",
            "azureTenantId": "STRING",
            "createdDateTime": "0001-01-01T00:00:00Z",
            "lastModifiedDateTime": "0001-01-01T00:00:00Z",
            "vendorInformation": {
                "provider": "SecureScore",
                "providerVersion": "",
                "subProvider": "",
                "vendor": "Microsoft"
            }
        },
        {
            "controlName": "Do not use transport rule to external domains",
            "maxScore": 5,
            "controlCategory": "Data",
            "actionType": "Config",
            "service": "IP",
            "tier": "Core",
            "userImpact": "Low",
            "implementationCost": "Low",
            "rank": 14,
            "threats": [
                "Account Breach",
                "Data Exfiltration",
                "Data Spillage",
                "Malicious Insider"
            ],
            "deprecated": false,
            "remediation": "Clicking the launch button below will take you to the Exchange admin center where you can review the existing mail transport rules and remove rules which forward mail to domains not registered in your tenancy. To set Exhange Online mail transport rules, navigate to mail flow > rules in the Exchange admin center. Removing these rules will reduce the ability of attackers from siphoning out data from your tenancy. ",
            "remediationImpact": "This change will have no effect on your users.",
            "actionUrl": "https://outlook.office365.com/ecp/?Realm=%tenantdomain%exsvurl=1mkt=en-USrfr=Admin_o365",
            "tenantSetState": "Default",
            "tenantNote": null,
            "assignedTo": null,
            "updatedBy": null,
            "title": "NoGlobalMailForwarding",
            "azureTenantId": "STRING",
            "createdDateTime": "0001-01-01T00:00:00Z",
            "lastModifiedDateTime": "0001-01-01T00:00:00Z",
            "vendorInformation": {
                "provider": "SecureScore",
                "providerVersion": "",
                "subProvider": "",
                "vendor": "Microsoft"
            }
        },
        {
            "controlName": "Review mailbox access by non-owners report bi-weekly",
            "maxScore": 5,
            "controlCategory": "Data",
            "actionType": "Review",
            "service": "EXO",
            "tier": "Core",
            "userImpact": "Low",
            "implementationCost": "Low",
            "rank": 17,
            "threats": [
                "Account Breach",
                "Data Exfiltration",
                "Malicious Insider"
            ],
            "deprecated": false,
            "remediation": "Clicking the launch button below will take you to a report that will show which mailboxes have been accessed by someone other than the mailbox owner. Reviewing this report regularly will help you notice when an external attacker has breached your tenancy and using it to access user mailboxes.",
            "remediationImpact": "This change will have no effect on your users.",
            "actionUrl": "https://outlook.office365.com/ecp/Reporting/NonOwnerAccessReport.aspx?rfr=admin_o365&exsvurl=1&mkt=en-US&Realm=%tenantdomain%",
            "tenantSetState": "Default",
            "tenantNote": null,
            "assignedTo": null,
            "updatedBy": null,
            "title": "NonOwnerAccess",
            "azureTenantId": "STRING",
            "createdDateTime": "0001-01-01T00:00:00Z",
            "lastModifiedDateTime": "0001-01-01T00:00:00Z",
            "vendorInformation": {
                "provider": "SecureScore",
                "providerVersion": "",
                "subProvider": "",
                "vendor": "Microsoft"
            }
        },
        {
            "controlName": "Do not use transport white lists",
            "maxScore": 5,
            "controlCategory": "Data",
            "actionType": "Config",
            "service": "IP",
            "tier": "Core",
            "userImpact": "Low",
            "implementationCost": "Low",
            "rank": 15,
            "threats": [
                "Phishing/Whaling",
                "Spoofing"
            ],
            "deprecated": false,
            "remediation": "Clicking the launch button below will take you to the exchange admin center where you can review the existing domain whitelists and remove these domains. To set Exhange Online mail transport rules, navigate to mail flow > rules in the Exchange admin center. Removing these domains will allow automatic filtering of suspected spam from these domains away from the inbox and reduce the likelihood that your users will fall prey to these attacks.",
            "remediationImpact": "This change will have no effect on your users.",
            "actionUrl": "https://outlook.office365.com/ecp/?Realm=%tenantdomain%exsvurl=1mkt=en-USrfr=Admin_o365",
            "tenantSetState": "Default",
            "tenantNote": null,
            "assignedTo": null,
            "updatedBy": null,
            "title": "NoTransportWhitelist",
            "azureTenantId": "STRING",
            "createdDateTime": "0001-01-01T00:00:00Z",
            "lastModifiedDateTime": "0001-01-01T00:00:00Z",
            "vendorInformation": {
                "provider": "SecureScore",
                "providerVersion": "",
                "subProvider": "",
                "vendor": "Microsoft"
            }
        },
        {
            "controlName": "Designate more than one global admin",
            "maxScore": 2,
            "controlCategory": "Account",
            "actionType": "Behavior",
            "service": "AzureAD",
            "tier": "Core",
            "userImpact": "Low",
            "implementationCost": "Low",
            "rank": 19,
            "threats": [
                "Malicious Insider"
            ],
            "deprecated": false,
            "remediation": "Designate more than 1 global admin to enable admins to monitor each other for signs of breach. Elevating any users/custom admins to global admins gives them access to all administrative features in the Office 365 and the ability to assign admin roles to other users. You should enforce more secure account authentication (ie.MFA) with global admins as they have more permissions that an attacker can use in the event of a breach. Designate less than 5 global tenant admins, it reduces the likelihood of admin accounts being successfully breached by an attacker.",
            "remediationImpact": "Admins who have been designated global admin roles will have access to all administrative features in the Office 365 and the ability to assign admin roles to other users. They should have more secure account authentication to protect these additional privileges from attackers.",
            "actionUrl": "https://portal.office.com/Admin/Default.aspx#ActiveUsersPage",
            "tenantSetState": "Default",
            "tenantNote": null,
            "assignedTo": null,
            "updatedBy": null,
            "title": "OneAdmin",
            "azureTenantId": "STRING",
            "createdDateTime": "0001-01-01T00:00:00Z",
            "lastModifiedDateTime": "0001-01-01T00:00:00Z",
            "vendorInformation": {
                "provider": "SecureScore",
                "providerVersion": "",
                "subProvider": "",
                "vendor": "Microsoft"
            }
        },
        {
            "controlName": "Enable privileged identity management",
            "maxScore": 10,
            "controlCategory": "Account",
            "actionType": "Config",
            "service": "AADPremium",
            "tier": "Advanced",
            "userImpact": "Moderate",
            "implementationCost": "Moderate",
            "rank": 56,
            "threats": [
                "Account Breach",
                "Elevation of Privilege",
                "Malicious Insider"
            ],
            "deprecated": false,
            "remediation": "Clicking the launch button below will take you to the Azure portal where you can manage, control, and monitor access within your organization. Organizations want to minimize the number of people who have access to secure information or resources, because that reduces the chance of a malicious user getting that access. However, users still need to carry out privileged operations in Azure, Office 365, or SaaS apps. Organizations give users privileged access in Azure AD without monitoring what those users are doing with their admin privileges. Azure AD Privileged Identity Management helps to resolve this risk. ",
            "remediationImpact": "This change will have a moderate impact on your users.",
            "actionUrl": "https://portal.office.com/AdminPortal/Home?switchtomoderndefault=true#/catalog",
            "tenantSetState": "Default",
            "tenantNote": null,
            "assignedTo": null,
            "updatedBy": null,
            "title": "PIMEnabled",
            "azureTenantId": "STRING",
            "createdDateTime": "0001-01-01T00:00:00Z",
            "lastModifiedDateTime": "0001-01-01T00:00:00Z",
            "vendorInformation": {
                "provider": "SecureScore",
                "providerVersion": "",
                "subProvider": "",
                "vendor": "Microsoft"
            }
        },
        {
            "controlName": "Review account provisioning activity report weekly",
            "maxScore": 5,
            "controlCategory": "Account",
            "actionType": "Review",
            "service": "AzureAD",
            "tier": "Defense In Depth",
            "userImpact": "Low",
            "implementationCost": "Low",
            "rank": 29,
            "threats": [
                "Account Breach",
                "Elevation of Privilege",
                "Malicious Insider"
            ],
            "deprecated": true,
            "remediation": "Clicking the launch button below will take you to a report that will show a history of attempts to provision accounts to external applications. If you don't usually use a third party provider to manage accounts, any entry on the list is likely illicit. But, if you do, this is a great way to monitor transaction volumes, and look for new or unusual third party applications that are managing users. If you see something unusual, contact the provider to determine if the action is legitimate. ",
            "remediationImpact": "This change will have no effect on your users.",
            "actionUrl": "https://portal.azure.com/#blade/Microsoft_AAD_IAM/ActiveDirectoryMenuBlade/Audit",
            "tenantSetState": "Default",
            "tenantNote": null,
            "assignedTo": null,
            "updatedBy": null,
            "title": "ProvisionedAccounts",
            "azureTenantId": "STRING",
            "createdDateTime": "0001-01-01T00:00:00Z",
            "lastModifiedDateTime": "0001-01-01T00:00:00Z",
            "vendorInformation": {
                "provider": "SecureScore",
                "providerVersion": "",
                "subProvider": "",
                "vendor": "Microsoft"
            }
        },
        {
            "controlName": "User account password age meets policy",
            "maxScore": 1,
            "controlCategory": "Account",
            "actionType": "Behavior",
            "service": "AzureAD",
            "tier": "Defense In Depth",
            "userImpact": "Moderate",
            "implementationCost": "Low",
            "rank": 40,
            "threats": [
                "Account Breach",
                "Password Cracking"
            ],
            "deprecated": true,
            "remediation": "Clicking the link below will take you to a location where you can make the recommended change or where you can review the recommended data.",
            "remediationImpact": "This change will have a moderate impact on your users.",
            "actionUrl": "https://portal.office.com/Admin/Default.aspx#ActiveUsersPage",
            "tenantSetState": "Default",
            "tenantNote": null,
            "assignedTo": null,
            "updatedBy": null,
            "title": "PWAge",
            "azureTenantId": "STRING",
            "createdDateTime": "0001-01-01T00:00:00Z",
            "lastModifiedDateTime": "0001-01-01T00:00:00Z",
            "vendorInformation": {
                "provider": "SecureScore",
                "providerVersion": "",
                "subProvider": "",
                "vendor": "Microsoft"
            }
        },
        {
            "controlName": "Require passwords to be reset at least every 60 days",
            "maxScore": 10,
            "controlCategory": "Account",
            "actionType": "Config",
            "service": "AzureAD",
            "tier": "Defense In Depth",
            "userImpact": "Moderate",
            "implementationCost": "Low",
            "rank": 24,
            "threats": [
                "Password Cracking",
                "Account Breach"
            ],
            "deprecated": true,
            "remediation": "Setting a password expiry policy at the site linked below allows your users to re-own an account in the case of a breach and requires attackers to breach the same account multiple times which increases the chance of detecting the breach.",
            "remediationImpact": "This change will have a moderate impact on your users.",
            "actionUrl": "https://portal.office.com/ServiceSettings/PasswordsSettingsEnterprise.aspx",
            "tenantSetState": "Default",
            "tenantNote": null,
            "assignedTo": null,
            "updatedBy": null,
            "title": "PWAgePolicy",
            "azureTenantId": "STRING",
            "createdDateTime": "0001-01-01T00:00:00Z",
            "lastModifiedDateTime": "0001-01-01T00:00:00Z",
            "vendorInformation": {
                "provider": "SecureScore",
                "providerVersion": "",
                "subProvider": "",
                "vendor": "Microsoft"
            }
        },
        {
            "controlName": "Do not expire passwords",
            "maxScore": 10,
            "controlCategory": "Account",
            "actionType": "Config",
            "service": "AzureAD",
            "tier": "Defense In Depth",
            "userImpact": "Moderate",
            "implementationCost": "Low",
            "rank": 24,
            "threats": [
                "Password Cracking",
                "Account Breach"
            ],
            "deprecated": false,
            "remediation": "Setting the password expiry policy at the site linked below to never expire encourages stronger passwords without patterns.",
            "remediationImpact": "Your users will no longer need to periodically create new passwords.",
            "actionUrl": "https://portal.office.com/ServiceSettings/PasswordsSettingsEnterprise.aspx",
            "tenantSetState": "Default",
            "tenantNote": null,
            "assignedTo": null,
            "updatedBy": null,
            "title": "PWAgePolicyNew",
            "azureTenantId": "STRING",
            "createdDateTime": "0001-01-01T00:00:00Z",
            "lastModifiedDateTime": "0001-01-01T00:00:00Z",
            "vendorInformation": {
                "provider": "SecureScore",
                "providerVersion": "",
                "subProvider": "",
                "vendor": "Microsoft"
            }
        },
        {
            "controlName": "Review users with anomalous sign-in activity report weekly",
            "maxScore": 15,
            "controlCategory": "Account",
            "actionType": "Review",
            "service": "AADPremium",
            "tier": "Advanced",
            "userImpact": "Low",
            "implementationCost": "Low",
            "rank": 49,
            "threats": [
                "Account Breach",
                "Elevation of Privilege"
            ],
            "deprecated": true,
            "remediation": "Clicking the launch button below will take you to a list of account credentials in your tenancy that have anomalous sign-in activity.",
            "remediationImpact": "This change will have no effect on your users.",
            "actionUrl": "https://portal.azure.com/#blade/Microsoft_AAD_IAM/ActiveDirectoryMenuBlade/RiskySignIns",
            "tenantSetState": "Default",
            "tenantNote": null,
            "assignedTo": null,
            "updatedBy": null,
            "title": "ReviewAnomalousSignins",
            "azureTenantId": "STRING",
            "createdDateTime": "0001-01-01T00:00:00Z",
            "lastModifiedDateTime": "0001-01-01T00:00:00Z",
            "vendorInformation": {
                "provider": "SecureScore",
                "providerVersion": "",
                "subProvider": "",
                "vendor": "Microsoft"
            }
        },
        {
            "controlName": "Review application usage report weekly",
            "maxScore": 5,
            "controlCategory": "Data",
            "actionType": "Review",
            "service": "AADPremium",
            "tier": "Advanced",
            "userImpact": "Low",
            "implementationCost": "Low",
            "rank": 74,
            "threats": [
                "Data Exfiltration",
                "Data Spillage",
                "Elevation of Privilege"
            ],
            "deprecated": false,
            "remediation": "Clicking the launch button below will take you to an security report showing a usage summary for all Software As A Service (SaaS) applications that are integrated with your directory.   Attackers can often get access to data illicitly through third party SaaS application. The report includes the application, unique users and total sign ins.",
            "remediationImpact": "This change will have no effect on your users.",
            "actionUrl": "https://portal.azure.com/#blade/Microsoft_AAD_IAM/StartboardApplicationsMenuBlade/SignIns/menuId/",
            "tenantSetState": "Default",
            "tenantNote": null,
            "assignedTo": null,
            "updatedBy": null,
            "title": "ReviewAppUsage",
            "azureTenantId": "STRING",
            "createdDateTime": "0001-01-01T00:00:00Z",
            "lastModifiedDateTime": "0001-01-01T00:00:00Z",
            "vendorInformation": {
                "provider": "SecureScore",
                "providerVersion": "",
                "subProvider": "",
                "vendor": "Microsoft"
            }
        },
        {
            "controlName": "Review signs-Ins from possibly infected devices report weekly",
            "maxScore": 10,
            "controlCategory": "Device",
            "actionType": "Review",
            "service": "AADPremium",
            "tier": "Advanced",
            "userImpact": "Low",
            "implementationCost": "Low",
            "rank": 54,
            "threats": [
                "Account Breach",
                "Data Exfiltration",
                "Data Spillage"
            ],
            "deprecated": true,
            "remediation": "Clicking the launch button below will take you to an security report showing a list of accounts that have sign-in activity from devices that may be infected with malicious software such as malware. This report attempts to identify your users' devices that that have become infected and are now part of a botnet. We correlate IP addresses of users' sign-ins against IP addresses that we know to be in contact with botnet servers. Recommendation: This report flags IP addresses, not user devices. We recommend that you contact the user and scan all the user's devices to be certain. It is also possible that a user's personal device is infected, or that someone other than the user, who was using the same IP address as the user, has an infected device.",
            "remediationImpact": "This change will have no effect on your users.",
            "actionUrl": "https://portal.azure.com/#blade/Microsoft_AAD_IAM/ActiveDirectoryMenuBlade/RiskySignIns",
            "tenantSetState": "Default",
            "tenantNote": null,
            "assignedTo": null,
            "updatedBy": null,
            "title": "ReviewInfectedDeviceSignins",
            "azureTenantId": "STRING",
            "createdDateTime": "0001-01-01T00:00:00Z",
            "lastModifiedDateTime": "0001-01-01T00:00:00Z",
            "vendorInformation": {
                "provider": "SecureScore",
                "providerVersion": "",
                "subProvider": "",
                "vendor": "Microsoft"
            }
        },
        {
            "controlName": "Review irregular sign-in activity report weekly",
            "maxScore": 10,
            "controlCategory": "Account",
            "actionType": "Review",
            "service": "AADPremium",
            "tier": "Advanced",
            "userImpact": "Low",
            "implementationCost": "Low",
            "rank": 52,
            "threats": [
                "Account Breach",
                "Elevation of Privilege",
                "Malicious Insider"
            ],
            "deprecated": true,
            "remediation": "Clicking the launch button below will take you to an security report showing users with irregular sign-in activity report at least weekly. Irregular sign-ins are those that have been identified by our machine learning algorithms, on the basis of an \"impossible travel\" condition combined with an anomalous sign in location and device. This may indicate that a hacker has successfully signed in using this account.",
            "remediationImpact": "This change will have no effect on your users.",
            "actionUrl": "https://portal.azure.com/#blade/Microsoft_AAD_IAM/ActiveDirectoryMenuBlade/RiskySignIns",
            "tenantSetState": "Default",
            "tenantNote": null,
            "assignedTo": null,
            "updatedBy": null,
            "title": "ReviewIrregularSignins",
            "azureTenantId": "STRING",
            "createdDateTime": "0001-01-01T00:00:00Z",
            "lastModifiedDateTime": "0001-01-01T00:00:00Z",
            "vendorInformation": {
                "provider": "SecureScore",
                "providerVersion": "",
                "subProvider": "",
                "vendor": "Microsoft"
            }
        },
        {
            "controlName": "Review password reset activity report weekly",
            "maxScore": 5,
            "controlCategory": "Account",
            "actionType": "Review",
            "service": "AADPremium",
            "tier": "Advanced",
            "userImpact": "Low",
            "implementationCost": "Low",
            "rank": 73,
            "threats": [
                "Account Breach",
                "Elevation of Privilege",
                "Malicious Insider"
            ],
            "deprecated": true,
            "remediation": "Clicking the launch button below will take you to an security report showing a list of password reset activity. An attacker will commonly compromise an account, then change the password to something that they control and can manage. The report includes the user, role, date and time of the reset, method used and whether the reset was successful.",
            "remediationImpact": "This change will have no effect on your users.",
            "actionUrl": "https://portal.azure.com/#blade/Microsoft_AAD_IAM/ActiveDirectoryMenuBlade/Audit",
            "tenantSetState": "Default",
            "tenantNote": null,
            "assignedTo": null,
            "updatedBy": null,
            "title": "ReviewPWReset",
            "azureTenantId": "STRING",
            "createdDateTime": "0001-01-01T00:00:00Z",
            "lastModifiedDateTime": "0001-01-01T00:00:00Z",
            "vendorInformation": {
                "provider": "SecureScore",
                "providerVersion": "",
                "subProvider": "",
                "vendor": "Microsoft"
            }
        },
        {
            "controlName": "Review RMS device access report weekly",
            "maxScore": 5,
            "controlCategory": "Data",
            "actionType": "Review",
            "service": "AADPremium",
            "tier": "Advanced",
            "userImpact": "Low",
            "implementationCost": "Low",
            "rank": 75,
            "threats": [
                "Data Exfiltration",
                "Data Spillage"
            ],
            "deprecated": false,
            "remediation": "Clicking the launch button below will take you to an security report showing a usage summary for all devices that have accessed content protected by Rights Management (RMS). ",
            "remediationImpact": "This change will have no effect on your users.",
            "actionUrl": "https://manage.windowsazure.com/%tenantdomain%#Workspaces/ActiveDirectoryExtension/Directory/%tenantguid%/ReportRightsManagement/RightsManagementDevices/reportRightsManagement",
            "tenantSetState": "Default",
            "tenantNote": null,
            "assignedTo": null,
            "updatedBy": null,
            "title": "ReviewRMSDeviceUsage",
            "azureTenantId": "STRING",
            "createdDateTime": "0001-01-01T00:00:00Z",
            "lastModifiedDateTime": "0001-01-01T00:00:00Z",
            "vendorInformation": {
                "provider": "SecureScore",
                "providerVersion": "",
                "subProvider": "",
                "vendor": "Microsoft"
            }
        },
        {
            "controlName": "Review RMS usage report weekly",
            "maxScore": 5,
            "controlCategory": "Data",
            "actionType": "Review",
            "service": "AADPremium",
            "tier": "Advanced",
            "userImpact": "Low",
            "implementationCost": "Low",
            "rank": 76,
            "threats": [
                "Data Exfiltration",
                "Data Spillage"
            ],
            "deprecated": false,
            "remediation": "Clicking the launch button below will take you to an security report showing a usage summary for the top 1000 users that have accessed content protected by Rights Management (RMS). The report includes the type of action (consuming protected content, access was denied, etc.) and the number that it occurred.",
            "remediationImpact": "This change will have no effect on your users.",
            "actionUrl": "https://manage.windowsazure.com/%tenantdomain%#Workspaces/ActiveDirectoryExtension/Directory/%tenantguid%/ReportRightsManagement/RightsManagementSummary/reportRightsManagement",
            "tenantSetState": "Default",
            "tenantNote": null,
            "assignedTo": null,
            "updatedBy": null,
            "title": "ReviewRMSUsage",
            "azureTenantId": "STRING",
            "createdDateTime": "0001-01-01T00:00:00Z",
            "lastModifiedDateTime": "0001-01-01T00:00:00Z",
            "vendorInformation": {
                "provider": "SecureScore",
                "providerVersion": "",
                "subProvider": "",
                "vendor": "Microsoft"
            }
        },
        {
            "controlName": "Review signs-ins from IP's with suspicious activity report weekly",
            "maxScore": 10,
            "controlCategory": "Account",
            "actionType": "Review",
            "service": "AADPremium",
            "tier": "Advanced",
            "userImpact": "Low",
            "implementationCost": "Low",
            "rank": 53,
            "threats": [
                "Account Breach",
                "Elevation of Privilege",
                "Malicious Insider"
            ],
            "deprecated": true,
            "remediation": "Clicking the launch button below will take you to an security report showing a list of accounts that have sign-in activity from IP's with suspicious activity. This report shows sign-ins from IP addresses where suspicious activity has been detected. Suspicious activity in this case is defined to be an unusually high ratio of failed sign-ins to successful sign-ins, which may indicate that an IP address is being used for malicious purposes.",
            "remediationImpact": "This change will have no effect on your users.",
            "actionUrl": "https://portal.azure.com/#blade/Microsoft_AAD_IAM/ActiveDirectoryMenuBlade/RiskySignIns",
            "tenantSetState": "Default",
            "tenantNote": null,
            "assignedTo": null,
            "updatedBy": null,
            "title": "ReviewSuspciousIPSignins",
            "azureTenantId": "STRING",
            "createdDateTime": "0001-01-01T00:00:00Z",
            "lastModifiedDateTime": "0001-01-01T00:00:00Z",
            "vendorInformation": {
                "provider": "SecureScore",
                "providerVersion": "",
                "subProvider": "",
                "vendor": "Microsoft"
            }
        },
        {
            "controlName": "Review users with leaked credentials report weekly",
            "maxScore": 20,
            "controlCategory": "Account",
            "actionType": "Review",
            "service": "AADPremium",
            "tier": "Advanced",
            "userImpact": "Low",
            "implementationCost": "Low",
            "rank": 47,
            "threats": [
                "Account Breach",
                "Elevation of Privilege",
                "Password Cracking"
            ],
            "deprecated": true,
            "remediation": "Clicking the launch button below will take you to a list of account credentials in your tenancy that appear to have been posted publicly. ",
            "remediationImpact": "This change will have no effect on your users.",
            "actionUrl": "https://portal.azure.com/#blade/Microsoft_AAD_IAM/ActiveDirectoryMenuBlade/RiskySignIns",
            "tenantSetState": "Default",
            "tenantNote": null,
            "assignedTo": null,
            "updatedBy": null,
            "title": "ReviewUsersWithLeakedCreds",
            "azureTenantId": "STRING",
            "createdDateTime": "0001-01-01T00:00:00Z",
            "lastModifiedDateTime": "0001-01-01T00:00:00Z",
            "vendorInformation": {
                "provider": "SecureScore",
                "providerVersion": "",
                "subProvider": "",
                "vendor": "Microsoft"
            }
        },
        {
            "controlName": "Review role changes weekly",
            "maxScore": 10,
            "controlCategory": "Account",
            "actionType": "Review",
            "service": "AzureAD",
            "tier": "Core",
            "userImpact": "Low",
            "implementationCost": "Low",
            "rank": 9,
            "threats": [
                "Account Breach",
                "Elevation of Privilege"
            ],
            "deprecated": false,
            "remediation": "Clicking the launch button below will take you to a management interface showing a list of all the users in your tenancy that currently hold administrator privileges. Selecting any given user will bring up a pane showing more details about the user. Reviewing this list periodically will help you detect when an attacker has infiltrated into your tenant and is elevating their permissions to perform more dangerous and impactful things in your tenancy.",
            "remediationImpact": "This change will have no effect on your users.",
            "actionUrl": "https://portal.office.com/Admin/Default.aspx#ActiveUsersPage",
            "tenantSetState": "Default",
            "tenantNote": null,
            "assignedTo": null,
            "updatedBy": null,
            "title": "RGChanges",
            "azureTenantId": "STRING",
            "createdDateTime": "0001-01-01T00:00:00Z",
            "lastModifiedDateTime": "0001-01-01T00:00:00Z",
            "vendorInformation": {
                "provider": "SecureScore",
                "providerVersion": "",
                "subProvider": "",
                "vendor": "Microsoft"
            }
        },
        {
            "controlName": "Use non-global administrative roles",
            "maxScore": 1,
            "controlCategory": "Account",
            "actionType": "Behavior",
            "service": "AzureAD",
            "tier": "Defense In Depth",
            "userImpact": "Low",
            "implementationCost": "Low",
            "rank": 41,
            "threats": [
                "Account Breach",
                "Elevation of Privilege",
                "Malicious Insider"
            ],
            "deprecated": false,
            "remediation": "Designate alternate roles for global admins such that they can complete needed tasks but only with the least privileged required for the task. For example, if your user is primarily responsible for Exchange Online administration, you should use that role instead of the Global admin role to reduce the impact of a potential breach of that account. Make sure you have at least two Global Admins designated to ensure that you can protect against a rogue insider and to ensure a breach of one of those accounts can be recovered.",
            "remediationImpact": "Admins who have been designated alternate roles will lose some of the privileges that they had before (although they might keep some privileges depending on the role). Make sure that these users have enough privileges to complete their day-to-day work.",
            "actionUrl": "https://portal.office.com/Admin/Default.aspx#ActiveUsersPage",
            "tenantSetState": "Default",
            "tenantNote": null,
            "assignedTo": null,
            "updatedBy": null,
            "title": "RoleOverlap",
            "azureTenantId": "STRING",
            "createdDateTime": "0001-01-01T00:00:00Z",
            "lastModifiedDateTime": "0001-01-01T00:00:00Z",
            "vendorInformation": {
                "provider": "SecureScore",
                "providerVersion": "",
                "subProvider": "",
                "vendor": "Microsoft"
            }
        },
        {
            "controlName": "Enable Advanced Threat Protection safe attachments policy",
            "maxScore": 15,
            "controlCategory": "Data",
            "actionType": "Config",
            "service": "IP",
            "tier": "Advanced",
            "userImpact": "Moderate",
            "implementationCost": "Low",
            "rank": 50,
            "threats": [
                "Phishing/Whaling",
                "Spoofing"
            ],
            "deprecated": false,
            "remediation": "Clicking the launch button below will take you to the Exchange admin center where you can enable the Office 365 Advanced Threat Protection Safe Attachments feature. To set up a safe attachments policy, navigate to advanced threats > safe attachments in the Exchange admin center. Setting up safe attachment policies help prevent users in your organization from suffering the effects of opening malicious attachments in email. Safe attachments policies and their related EOP component, safe links policies, are a part of advanced threat protection (ATP) in EOP.",
            "remediationImpact": "This change will have a moderate impact on your users.",
            "actionUrl": "https://portal.office.com/AdminPortal/Home?switchtomoderndefault=true#/catalog",
            "tenantSetState": "Default",
            "tenantNote": null,
            "assignedTo": null,
            "updatedBy": null,
            "title": "SafeAttachmentsEnabled",
            "azureTenantId": "STRING",
            "createdDateTime": "0001-01-01T00:00:00Z",
            "lastModifiedDateTime": "0001-01-01T00:00:00Z",
            "vendorInformation": {
                "provider": "SecureScore",
                "providerVersion": "",
                "subProvider": "",
                "vendor": "Microsoft"
            }
        },
        {
            "controlName": "Enable Advanced Threat Protection safe links policy",
            "maxScore": 15,
            "controlCategory": "Data",
            "actionType": "Config",
            "service": "IP",
            "tier": "Advanced",
            "userImpact": "Moderate",
            "implementationCost": "Low",
            "rank": 51,
            "threats": [
                "Phishing/Whaling",
                "Spoofing"
            ],
            "deprecated": false,
            "remediation": "Clicking the launch button below will take you to the Exchange admin center where you can enable the Office 365 Advanced Threat Protection Safe Links feature. To set up a safe link policy, navigate to advanced threats > safe links in the Exchange admin center. Setting up safe link policies help prevent users in your organization from suffering the effects of following malicious links in email. Safe links policies and their related EOP component, safe attachments policies, are a part of advanced threat protection (ATP) in EOP.",
            "remediationImpact": "This change will have a moderate impact on your users.",
            "actionUrl": "https://portal.office.com/AdminPortal/Home?switchtomoderndefault=true#/catalog",
            "tenantSetState": "ThirdParty",
            "tenantNote": "Using Trend",
            "assignedTo": null,
            "updatedBy": "admin@M365x610530.onmicrosoft.com",
            "title": "SafeLinksEnabled",
            "azureTenantId": "STRING",
            "createdDateTime": "0001-01-01T00:00:00Z",
            "lastModifiedDateTime": "2018-07-12T17:20:29.1581241Z",
            "vendorInformation": {
                "provider": "SecureScore",
                "providerVersion": "",
                "subProvider": "",
                "vendor": "Microsoft"
            }
        },
        {
            "controlName": null,
            "maxScore": 5,
            "controlCategory": "Data",
            "actionType": "Config",
            "service": "SPO",
            "tier": "Defense In Depth",
            "userImpact": "Moderate",
            "implementationCost": "Low",
            "rank": 34,
            "threats": [
                "Data Exfiltration",
                "Data Spillage"
            ],
            "deprecated": true,
            "remediation": null,
            "remediationImpact": null,
            "actionUrl": "https://%initialdomainshort%-admin.sharepoint.com/_layouts/15/online/ExternalSharing.aspx",
            "tenantSetState": "Default",
            "tenantNote": null,
            "assignedTo": null,
            "updatedBy": null,
            "title": "SharingDomainMgmt",
            "azureTenantId": "STRING",
            "createdDateTime": "0001-01-01T00:00:00Z",
            "lastModifiedDateTime": "0001-01-01T00:00:00Z",
            "vendorInformation": {
                "provider": "SecureScore",
                "providerVersion": "",
                "subProvider": "",
                "vendor": "Microsoft"
            }
        },
        {
            "controlName": "Review signs-ins after multiple failures report weekly",
            "maxScore": 45,
            "controlCategory": "Account",
            "actionType": "Review",
            "service": "AzureAD",
            "tier": "Core",
            "userImpact": "Low",
            "implementationCost": "Low",
            "rank": 4,
            "threats": [
                "Account Breach",
                "Password Cracking",
                "Data Exfiltration",
                "Data Spillage"
            ],
            "deprecated": false,
            "remediation": "Clicking the launch button below will take you to an security report showing a list of all the successful sign-ins that have occurred after multiple failures. While there are legitimate reasons for this behavior, it also could indicate that an attacker has been active. The report itself includes the name of the user, the number of failed attempts before the successful sign in, and the time of the first successful sign in.",
            "remediationImpact": "This change will have no effect on your users.",
            "actionUrl": "https://portal.azure.com/#blade/Microsoft_AAD_IAM/ActiveDirectoryMenuBlade/RiskySignIns",
            "tenantSetState": "Default",
            "tenantNote": null,
            "assignedTo": null,
            "updatedBy": null,
            "title": "SignIns",
            "azureTenantId": "STRING",
            "createdDateTime": "0001-01-01T00:00:00Z",
            "lastModifiedDateTime": "0001-01-01T00:00:00Z",
            "vendorInformation": {
                "provider": "SecureScore",
                "providerVersion": "",
                "subProvider": "",
                "vendor": "Microsoft"
            }
        },
        {
            "controlName": "SPO Sites have classification policies",
            "maxScore": 10,
            "controlCategory": "Data",
            "actionType": "Config",
            "service": "SPO",
            "tier": "Defense In Depth",
            "userImpact": "Moderate",
            "implementationCost": "Moderate",
            "rank": 22,
            "threats": [
                "Data Exfiltration",
                "Data Spillage",
                "Malicious Insider"
            ],
            "deprecated": false,
            "remediation": "Enabling sharepoint online data classifications at the site linked below allows users to classify data as according to the impact to the business if leaked (High Business Impact, Medium Business Impact, Low Business Impact, Public). You can then set up protection policies to maintain your HBI, MBI and LBI data. Enabling and using Sharepoint Online data classifications allows you to identify critical data and implement policies to effectively protect the data and more easily investigate breaches.",
            "remediationImpact": "This change will have a moderate impact on your users.",
            "actionUrl": "https://msdn.microsoft.com/en-us/library/mt718319.aspx",
            "tenantSetState": "Default",
            "tenantNote": null,
            "assignedTo": null,
            "updatedBy": null,
            "title": "SiteClassification",
            "azureTenantId": "STRING",
            "createdDateTime": "0001-01-01T00:00:00Z",
            "lastModifiedDateTime": "0001-01-01T00:00:00Z",
            "vendorInformation": {
                "provider": "SecureScore",
                "providerVersion": "",
                "subProvider": "",
                "vendor": "Microsoft"
            }
        },
        {
            "controlName": "Enable versioning on all SharePoint online document libraries",
            "maxScore": 2,
            "controlCategory": "Data",
            "actionType": "Config",
            "service": "SPO",
            "tier": "Defense In Depth",
            "userImpact": "Moderate",
            "implementationCost": "Low",
            "rank": 36,
            "threats": [
                "Data Deletion"
            ],
            "deprecated": false,
            "remediation": "Clicking the launch button below will take you to your Sharepoint librairies page. Navigate to any site and to Versioning settings where you can enable versioning. This will ensure that accidental or malicious changes to document content can be recovered. We found that you do not have versioning enabled on {0} out of {1} of your site document libraries.",
            "remediationImpact": "This change will have a moderate impact on your users.",
            "actionUrl": "https://%initialdomainshort%.sharepoint.com/_layouts/15/mcontent.aspx",
            "tenantSetState": "Default",
            "tenantNote": null,
            "assignedTo": null,
            "updatedBy": null,
            "title": "SPOVersioning",
            "azureTenantId": "STRING",
            "createdDateTime": "0001-01-01T00:00:00Z",
            "lastModifiedDateTime": "0001-01-01T00:00:00Z",
            "vendorInformation": {
                "provider": "SecureScore",
                "providerVersion": "",
                "subProvider": "",
                "vendor": "Microsoft"
            }
        },
        {
            "controlName": "Require strong password complexity",
            "maxScore": 10,
            "controlCategory": "Account",
            "actionType": "Config",
            "service": "AzureAD",
            "tier": "Core",
            "userImpact": "Moderate",
            "implementationCost": "Low",
            "rank": 11,
            "threats": [
                "Password Cracking",
                "Account Breach"
            ],
            "deprecated": true,
            "remediation": "You should require all of your users to set and use a strong password. This will make it much more difficult for an attacker to successfully crack your passwords.",
            "remediationImpact": "This change will require your users to have to manage a more complex password to logon to their Office 365 service. The best passwords are randomly generated ones. We recommend you teach your users to leverage a local password manager technology like Password Safe, Enpass, KeePass, or LockCrypt. If you are using single sign on and they use the same password for local logon and O365 authentication, we recommend the use of Passphrases (versus a password).",
            "actionUrl": "https://technet.microsoft.com/en-us/library/ff657853.aspx",
            "tenantSetState": "Default",
            "tenantNote": null,
            "assignedTo": null,
            "updatedBy": null,
            "title": "StrongPW",
            "azureTenantId": "STRING",
            "createdDateTime": "0001-01-01T00:00:00Z",
            "lastModifiedDateTime": "0001-01-01T00:00:00Z",
            "vendorInformation": {
                "provider": "SecureScore",
                "providerVersion": "",
                "subProvider": "",
                "vendor": "Microsoft"
            }
        },
        {
            "controlName": null,
            "maxScore": 2,
            "controlCategory": "Data",
            "actionType": "Config",
            "service": "SPO",
            "tier": "Defense In Depth",
            "userImpact": "Moderate",
            "implementationCost": "Low",
            "rank": 39,
            "threats": [
                "Data Deletion"
            ],
            "deprecated": true,
            "remediation": null,
            "remediationImpact": null,
            "actionUrl": "https://technet.microsoft.com/en-us/library/dn917455.aspx",
            "tenantSetState": "Default",
            "tenantNote": null,
            "assignedTo": null,
            "updatedBy": null,
            "title": "SyncManagement",
            "azureTenantId": "STRING",
            "createdDateTime": "0001-01-01T00:00:00Z",
            "lastModifiedDateTime": "0001-01-01T00:00:00Z",
            "vendorInformation": {
                "provider": "SecureScore",
                "providerVersion": "",
                "subProvider": "",
                "vendor": "Microsoft"
            }
        },
        {
            "controlName": "Tag documents in SharePoint",
            "maxScore": 2,
            "controlCategory": "Data",
            "actionType": "Behavior",
            "service": "SPO",
            "tier": "Defense in Depth",
            "userImpact": "Moderate",
            "implementationCost": "Moderate",
            "rank": 37,
            "threats": [
                "Data Exfiltration",
                "Data Spillage"
            ],
            "deprecated": false,
            "remediation": "You can create classifications labels that the users in your organization can apply to documents or sites. If you use document classification tags, you will be able to implement specific retention/deletion policies in data loss protection (DLP) that leverage those tags.",
            "remediationImpact": "This change will have a moderate impact on your users.",
            "actionUrl": "https://support.office.com/en-us/article/Use-PowerShell-to-manage-Office-365-Groups-Admin-help-aeb669aa-1770-4537-9de2-a82ac11b0540?ui=en-US&rs=en-US&ad=US#bkmk_createclassification",
            "tenantSetState": "Default",
            "tenantNote": null,
            "assignedTo": null,
            "updatedBy": null,
            "title": "TaggedDocs",
            "azureTenantId": "STRING",
            "createdDateTime": "0001-01-01T00:00:00Z",
            "lastModifiedDateTime": "0001-01-01T00:00:00Z",
            "vendorInformation": {
                "provider": "SecureScore",
                "providerVersion": "",
                "subProvider": "",
                "vendor": "Microsoft"
            }
        },
        {
            "controlName": "Review sign-ins from unknown sources report weekly ",
            "maxScore": 10,
            "controlCategory": "Account",
            "actionType": "Review",
            "service": "AzureAD",
            "tier": "Core",
            "userImpact": "Low",
            "implementationCost": "Low",
            "rank": 7,
            "threats": [
                "Account Breach"
            ],
            "deprecated": true,
            "remediation": "Clicking the launch button below will take you to an security report showing a list of users who have successfully signed in while assigned a client IP address that has been recognized by Microsoft as an anonymous proxy IP address (such as for the TOR network). These proxies are often used by users that want to hide their computer's IP address, and may be used for illicit activity. The report shows the user, the number of successful sign ins, the IP address, and the time of the last successful logon.",
            "remediationImpact": "This change will have no effect on your users.",
            "actionUrl": "https://portal.azure.com/#blade/Microsoft_AAD_IAM/ActiveDirectoryMenuBlade/RiskySignIns",
            "tenantSetState": "Default",
            "tenantNote": null,
            "assignedTo": null,
            "updatedBy": null,
            "title": "UnknownSignIns",
            "azureTenantId": "STRING",
            "createdDateTime": "0001-01-01T00:00:00Z",
            "lastModifiedDateTime": "0001-01-01T00:00:00Z",
            "vendorInformation": {
                "provider": "SecureScore",
                "providerVersion": "",
                "subProvider": "",
                "vendor": "Microsoft"
            }
        },
        {
            "controlName": "Enable MFA for all users",
            "maxScore": 30,
            "controlCategory": "Account",
            "actionType": "Config",
            "service": "AzureAD",
            "tier": "Core",
            "userImpact": "Moderate",
            "implementationCost": "Low",
            "rank": 2,
            "threats": [
                "Account Breach",
                "Elevation of Privilege"
            ],
            "deprecated": false,
            "remediation": "Enabling MFA at the interface linked below will update your user account logons to require the use of MFA to authenticate to Office 365. This will make it more difficult for an attacker to steal user credentials and then steal your data.",
            "remediationImpact": "When you enable MFA for your users, they will be prompted to authenticate with a 2nd factor upon logging into Office 365 services each day. The second factor is most commonly a phone call to a registered cell phone number where they type in an authorization code, or with a mobile application called Azure Authenticator.",
            "actionUrl": "https://account.activedirectory.windowsazure.com/UserManagement/MultifactorVerification.aspx",
            "tenantSetState": "Default",
            "tenantNote": null,
            "assignedTo": null,
            "updatedBy": null,
            "title": "UserMFA",
            "azureTenantId": "STRING",
            "createdDateTime": "0001-01-01T00:00:00Z",
            "lastModifiedDateTime": "0001-01-01T00:00:00Z",
            "vendorInformation": {
                "provider": "SecureScore",
                "providerVersion": "",
                "subProvider": "",
                "vendor": "Microsoft"
            }
        },
        {
            "controlName": "Set outbound spam notifications",
            "maxScore": 15,
            "controlCategory": "Data",
            "actionType": "Config",
            "service": "IP",
            "tier": "Core",
            "userImpact": "Low",
            "implementationCost": "Low",
            "rank": 5,
            "threats": [
                "Account Breach",
                "Phishing/Whaling",
                "Spoofing"
            ],
            "deprecated": false,
            "remediation": "Enabling strong outbound spam policy notifications will notify a tenant administrator if an account is blocked for sending excessive spam emails and send a copy of the email causing the block to occur. The accounts will always be blocked, but when you configure notifications, you will know when the account has been blocked and can determine the root cause.",
            "remediationImpact": "When a sender is blocked from the service due to sending outbound spam, the recipients specified below will receive a notification and copy of the email message.",
            "actionUrl": "https://outlook.office365.com/ecp/?Realm=%tenantdomain%exsvurl=1mkt=en-USrfr=Admin_o365",
            "tenantSetState": "Default",
            "tenantNote": null,
            "assignedTo": null,
            "updatedBy": null,
            "title": "WeakSpam",
            "azureTenantId": "STRING",
            "createdDateTime": "0001-01-01T00:00:00Z",
            "lastModifiedDateTime": "0001-01-01T00:00:00Z",
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
  "description": "Get secureScoreControlProfiles",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
