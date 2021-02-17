---
title: "applicationTemplate: instantiate"
description: "Use this API to create a new applicationTemplate"
localization_priority: Normal
author: "luleonpla"
ms.prod: "microsoft-identity-platform"
doc_type: "apiPageType"
---

# applicationTemplate: instantiate

Namespace: microsoft.graph

Add an instance of an application from the Azure AD application gallery into your directory. To learn more about creating and configuring Azure AD gallery applications end-to-end visit [Automate SAML-based SSO app configuration with Microsoft Graph API](https://docs.microsoft.com/graph/application-saml-sso-configure-api).

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged) |
|:---------------------------------------|:--------------------------------------------|
| Delegated (work or school account)     | Application.ReadWrite.All, Directory.ReadWrite.All |
| Delegated (personal Microsoft account) | Not supported. |
| Application                            | Application.ReadWrite.All, Directory.ReadWrite.All |

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
POST /applicationTemplates/{id}/instantiate
```

## Request headers

| Name          | Description   |
|:--------------|:--------------|
| Authorization | Bearer {code} |

## Request body

In the request body, provide a JSON object with the following parameters.

| Parameter    | Type        | Description |
|:-------------|:------------|:------------|
|displayName|String|Custom name of the application|

## Response

If successful, this method returns a `201 OK` response code and a new [applicationServicePrincipal](../resources/applicationserviceprincipal.md) object in the response body.

## Examples

The following example shows how to call this API.

### Request

The following is an example of the request.

> [!NOTE] 
> You can use this API to instantiate [non-gallery apps](/azure/active-directory/manage-apps/add-non-gallery-app). Use the following ID for **applicationTemplate**: `8adf8e6e-67b2-4cf2-a259-e3dc5476c621`.


<!-- {
  "blockType": "request",
  "name": "applicationtemplate_instantiate"
}-->

```http
POST https://graph.microsoft.com/v1.0/applicationTemplates/cd3ed3de-93ee-400b-8b19-b61ef44a0f29/instantiate
Content-type: application/json

{
  "displayName": "My custom name"
}
```

### Response

The following is an example of the response.

> [!NOTE]
> The response object shown here might be shortened for readability. All the properties will be returned from an actual call.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.applicationServicePrincipal"
} -->

```http
HTTP/1.1 201 OK
Content-type: application/json

{
    "application": {
        "id": "9bef669d-bf1e-46bf-90f7-bae587321663",
        "appId": "ed8fa786-7e93-486e-8c16-520c8dba82e3",
        "applicationTemplateId": "cd3ed3de-93ee-400b-8b19-b61ef44a0f29",
        "createdDateTime": "2021-02-17T17:45:59Z",
        "deletedDateTime": null,
        "displayName": "My custom name",
        "groupMembershipClaims": null,
        "identifierUris": [],
        "isFallbackPublicClient": false,
        "signInAudience": "AzureADMyOrg",
        "tags": [],
        "tokenEncryptionKeyId": null,
        "optionalClaims": null,
        "verifiedPublisher": {
            "displayName": null,
            "verifiedPublisherId": null,
            "addedDateTime": null
        },
        "addIns": [],
        "api": {
            "acceptMappedClaims": null,
            "knownClientApplications": [],
            "requestedAccessTokenVersion": null,
            "oauth2PermissionScopes": [
                {
                    "adminConsentDescription": "Allow the application to access My custom name on behalf of the signed-in user.",
                    "adminConsentDisplayName": "Access My custom name",
                    "id": "d4a69afb-885b-46e2-8d5f-20bd734dc5bf",
                    "isEnabled": true,
                    "type": "User",
                    "userConsentDescription": "Allow the application to access My custom name on your behalf.",
                    "userConsentDisplayName": "Access My custom name",
                    "value": "user_impersonation"
                }
            ],
            "preAuthorizedApplications": []
        },
        "appRoles": [],
        "info": {
            "logoUrl": null,
            "marketingUrl": null,
            "privacyStatementUrl": null,
            "supportUrl": null,
            "termsOfServiceUrl": null
        },
        "keyCredentials": [],
        "parentalControlSettings": {
            "countriesBlockedForMinors": [],
            "legalAgeGroupRule": "Allow"
        },
        "passwordCredentials": [],
        "publicClient": {
            "redirectUris": []
        },
        "requiredResourceAccess": [],
        "web": {
            "homePageUrl": "https://*.my.salesforce.com/*?metadata=salesforce.com|ISV9.1|primary|z",
            "redirectUris": []
        }
    },
    "servicePrincipal": {
        "id": "b466556e-22b9-48f5-bbb2-a465a35fa7b9",
        "deletedDateTime": null,
        "accountEnabled": true,
        "appId": "ed8fa786-7e93-486e-8c16-520c8dba82e3",
        "applicationTemplateId": "cd3ed3de-93ee-400b-8b19-b61ef44a0f29",
        "appDisplayName": "My custom name",
        "alternativeNames": [],
        "appOwnerOrganizationId": "5badd315-5aaa-4de7-8ac7-177019570a54",
        "displayName": "My custom name",
        "appRoleAssignmentRequired": true,
        "loginUrl": null,
        "logoutUrl": null,
        "homepage": "https://*.my.salesforce.com/*?metadata=salesforce.com|ISV9.1|primary|z",
        "notificationEmailAddresses": [],
        "preferredSingleSignOnMode": null,
        "preferredTokenSigningKeyThumbprint": null,
        "replyUrls": [],
        "servicePrincipalNames": [
            "ed8fa786-7e93-486e-8c16-520c8dba82e3"
        ],
        "servicePrincipalType": "Application",
        "tags": [
            "WindowsAzureActiveDirectoryIntegratedApp"
        ],
        "tokenEncryptionKeyId": null,
        "samlSingleSignOnSettings": null,
        "verifiedPublisher": {
            "displayName": null,
            "verifiedPublisherId": null,
            "addedDateTime": null
        },
        "addIns": [],
        "appRoles": [],
        "info": {
            "logoUrl": null,
            "marketingUrl": null,
            "privacyStatementUrl": null,
            "supportUrl": null,
            "termsOfServiceUrl": null
        },
        "keyCredentials": [],
        "oauth2PermissionScopes": [
            {
                "adminConsentDescription": "Allow the application to access My custom name on behalf of the signed-in user.",
                "adminConsentDisplayName": "Access My custom name",
                "id": "d4a69afb-885b-46e2-8d5f-20bd734dc5bf",
                "isEnabled": true,
                "type": "User",
                "userConsentDescription": "Allow the application to access My custom name on your behalf.",
                "userConsentDisplayName": "Access My custom name",
                "value": "user_impersonation"
            }
        ],
        "passwordCredentials": []
    }
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "applicationTemplate: instantiate",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
