---
title: Configure provisioning using Microsoft Graph API
description: Learn how to save time by using the Microsoft Graph APIs to automate the configuration of automatic provisioning.
author: kenwith
ms.topic: conceptual
localization_priority: Normal
ms.prod: applications
---

# Configure provisioning using the Microsoft Graph API

The Azure portal is a convenient way to configure provisioning for individual apps, one at a time. But if you're creating several, or even hundreds of instances of an application, it can be easier to automate app creation and configuration with the Microsoft Graph APIs. This article shows you how to automate configuration of provisioning through the Microsoft Graph API.

This article uses the **AWS Single-Account Access** Azure AD application template as an example. You can use the steps in this article to provision any app that is enabled for provisioning in the Azure AD Gallery.

## Prerequisites

To configure the **AWS Single-Account Access**, you must first have the following:
1. An AWS single sign-on (SSO) enabled subscription.
2. Configure and test Azure AD SSO for AWS Single-Account Access. This involves establishing a trust between Azure AD and the AWS application and authorizing access to the AWS application. For guidance, refer to the [See also](#see-also) section.

This tutorial assumes that you are using Microsoft Graph Explorer, but you can use Postman, or create your own client app to call Microsoft Graph. To call the Microsoft Graph APIs in this tutorial, you need to use an account with the global administrator role and the appropriate permissions. For this tutorial, the `Directory.ReadWrite.All` delegated permission is needed. Complete the following steps to set permissions in Microsoft Graph Explorer:

1. Start [Microsoft Graph Explorer](https://developer.microsoft.com/graph/graph-explorer).
2. Select **Sign-In with Microsoft** and sign in using an Azure AD global administrator account. After you successfully sign in, you can see the user account details in the left-hand pane.
3. Select the settings icon to the right of the user account details, and then select **Select permissions**.

    ![Select the Microsoft Graph permissions](./images/application-proxy-configure-api/set-permissions.png)
        
4. In the list of permissions, scroll down and expand **Directory (3)**, and then select the **Directory.ReadWrite.All** permission. 

    ![Scroll to and select the appropriate permissions](./images/application-provisioning-configure-api/select-permissions.png)

5. Select **Consent**, and then select **Accept** to accept the consent of the permissions. You don't need to consent on behalf of your organization for these permissions.

    ![Accept consent of the permissions](./images/application-provisioning-configure-api/accept-permissions.png)

6. Add the **AWS Single-Account Access** app from the gallery. To configure the integration of AWS Single-Account Access into Azure AD, it must first be in your list of managed SaaS apps. If isn't, follow these steps to add it.
    1. In the Azure portal, search for and select **Azure Active Directory**.
    2. Within the Azure Active Directory overview menu, choose **Enterprise Applications** > **All applications**.
    3. Select **New application** to add an application.
    4. In the **Add from the gallery** section, type **AWS Single-Account Access** in the search box.
    5. Select **AWS Single-Account Access** from results panel, click **Create**, and wait a few seconds while the app is added to your tenant.

## Step 1: Retrieve the gallery application template identifier

Applications in the Azure AD application gallery each have a template that describes the metadata for that application. Using this template, you can create an instance of the application and service principal in your tenant for management. Retrieve the identifier of the application template for **AWS Single-Account Access** and from the response, record the value of the **id** property to use later in this tutorial.

### Request


```http
GET https://graph.microsoft.com/v1.0/applicationTemplates?$filter=displayName eq 'AWS Single Sign-on'
```

### Response

```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#applicationTemplates",
  "value": [
    {
      "id": "21ed01d2-ec13-4e9e-86c1-cd546719ebc4",
      "displayName": "AWS Single Sign-on",
      "homePageUrl": "https://aws.amazon.com/",
      "supportedSingleSignOnModes": [
        "saml",
        "external"
      ],
      "supportedProvisioningTypes": [
        "sync"
      ],
      "logoUrl": "https://az495088.vo.msecnd.net/app-logo/awssinglesignon_215.png",
      "categories": [
        "developerServices",
        "itInfrastructure",
        "security",
        "New"
      ],
      "publisher": "Amazon Web Services, Inc.",
      "description": "Federate once to AWS SSO & use it to manage access centrally to multiple AWS accounts. Provision users via SCIM & get Azure AD single sign-in access to the AWS Console, CLI, & AWS SSO integrated apps."
    }
  ]
}
```

## Step 2: Create an instance of the gallery application in your tenant

Using the **id** value that you recorded for the application template from Step 1, create an instance of the application *and* service principal in your tenant. Record the value of the **id** property for the service principal to use later in this tutorial.

### Request

```http
POST https://graph.microsoft.com/v1.0/applicationTemplates/21ed01d2-ec13-4e9e-86c1-cd546719ebc4/instantiate
Content-type: application/json

{
  "displayName": "AWS Contoso"
}
```

### Response

```http
HTTP/1.1 201 OK
Content-type: application/json

{
  "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#microsoft.graph.applicationServicePrincipal",
  "application": {
    "id": "45ed32ab-76f1-4ce0-b3c2-b59c4502be43",
    "appId": "bfc8712e-0986-4d47-896b-6872713598c6",
    "applicationTemplateId": "21ed01d2-ec13-4e9e-86c1-cd546719ebc4",
    "createdDateTime": "2021-05-24T20:24:16Z",
    "deletedDateTime": null,
    "displayName": "AWS Contoso",
    "groupMembershipClaims": null,
    "identifierUris": [],
    "isFallbackPublicClient": false,
    "signInAudience": "AzureADMyOrg",
    "tags": [],
    "tokenEncryptionKeyId": null,
    "defaultRedirectUri": null,
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
          "adminConsentDescription": "Allow the application to access AWS Contoso on behalf of the signed-in user.",
          "adminConsentDisplayName": "Access AWS Contoso",
          "id": "c1dcc9a0-c0d5-49af-a5f9-dd4a70837710",
          "isEnabled": true,
          "type": "User",
          "userConsentDescription": "Allow the application to access AWS Contoso on your behalf.",
          "userConsentDisplayName": "Access AWS Contoso",
          "value": "user_impersonation"
        }
      ],
      "preAuthorizedApplications": []
    },
    "appRoles": [
      {
        "allowedMemberTypes": [
          "User"
        ],
        "displayName": "User",
        "id": "8774f594-1d59-4279-b9d9-59ef09a23530",
        "isEnabled": true,
        "description": "User",
        "value": null,
        "origin": "Application"
      },
      {
        "allowedMemberTypes": [
          "User"
        ],
        "displayName": "msiam_access",
        "id": "e7f1a7f3-9eda-48e0-9963-bd67bf531afd",
        "isEnabled": true,
        "description": "msiam_access",
        "value": null,
        "origin": "Application"
      }
    ],
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
      "homePageUrl": "https://*.signin.aws.amazon.com/platform/saml/acs/*?metadata=awssinglesignon|ISV9.1|primary|z",
      "redirectUris": []
    }
  },
  "servicePrincipal": {
    "id": "29f68db3-1000-46bf-a940-f5ea3ecc39e7",
    "deletedDateTime": null,
    "accountEnabled": true,
    "appId": "bfc8712e-0986-4d47-896b-6872713598c6",
    "applicationTemplateId": "21ed01d2-ec13-4e9e-86c1-cd546719ebc4",
    "appDisplayName": "AWS Contoso",
    "alternativeNames": [],
    "appOwnerOrganizationId": "ff8bf889-e031-41ac-8f7b-aedb059892ee",
    "displayName": "AWS Contoso",
    "appRoleAssignmentRequired": true,
    "loginUrl": null,
    "logoutUrl": null,
    "homepage": "https://*.signin.aws.amazon.com/platform/saml/acs/*?metadata=awssinglesignon|ISV9.1|primary|z",
    "notificationEmailAddresses": [],
    "preferredSingleSignOnMode": null,
    "preferredTokenSigningKeyThumbprint": null,
    "replyUrls": [],
    "servicePrincipalNames": [
      "bfc8712e-0986-4d47-896b-6872713598c6"
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
    "appRoles": [
      {
        "allowedMemberTypes": [
          "User"
        ],
        "displayName": "User",
        "id": "8774f594-1d59-4279-b9d9-59ef09a23530",
        "isEnabled": true,
        "description": "User",
        "value": null,
        "origin": "Application"
      },
      {
        "allowedMemberTypes": [
          "User"
        ],
        "displayName": "msiam_access",
        "id": "e7f1a7f3-9eda-48e0-9963-bd67bf531afd",
        "isEnabled": true,
        "description": "msiam_access",
        "value": null,
        "origin": "Application"
      }
    ],
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
        "adminConsentDescription": "Allow the application to access AWS Contoso on behalf of the signed-in user.",
        "adminConsentDisplayName": "Access AWS Contoso",
        "id": "c1dcc9a0-c0d5-49af-a5f9-dd4a70837710",
        "isEnabled": true,
        "type": "User",
        "userConsentDescription": "Allow the application to access AWS Contoso on your behalf.",
        "userConsentDisplayName": "Access AWS Contoso",
        "value": "user_impersonation"
      }
    ],
    "passwordCredentials": []
  }
}
```

## Step 3: Retrieve the template for the provisioning connector

Applications in the gallery that are enabled for provisioning have templates to streamline configuration. Use the **id** that you recorded for the service principal that you created in Step 2 to get a synchronization template for the application. Record the **id** that is returned for the provisioning template to use later in this tutorial.

### Request

```http
GET https://graph.microsoft.com/beta/servicePrincipals/29f68db3-1000-46bf-a940-f5ea3ecc39e7/synchronization/templates
```

### Response

```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#servicePrincipals('29f68db3-1000-46bf-a940-f5ea3ecc39e7')/synchronization/templates",
    "value": [
      {
        "id": "aWSSingleSignon",
        "applicationId": "21ed01d2-ec13-4e9e-86c1-cd546719ebc4",
        "default": true,
        "description": null,
        "discoverable": true,
        "factoryTag": "aWSSingleSignon",
        "metadata": [
          {
            "key": "AzureIngestionAttributeOptimization",
            "value": "False"
          },
          {
            "key": "AzureIngestionAttributeOptimization",
            "value": "False"
          },
          {
            "key": "galleryApplicationIdentifier",
            "value": "21ed01d2-ec13-4e9e-86c1-cd546719ebc4"
          },
          {
            "key": "galleryApplicationKey",
            "value": "awssinglesignon"
          },
          {
            "key": "isSynchronizationInPreview",
            "value": "true"
          },
          {
            "key": "configurationFields",
            "value": "[{\"name\":\"baseaddress\"},{\"name\":\"secrettoken\",\"secret\":true}]"
          }
        ],
        "schema@odata.context": "https://graph.microsoft.com/beta/$metadata#servicePrincipals('29f68db3-1000-46bf-a940-f5ea3ecc39e7')/synchronization/templates('aWSSingleSignon')/schema/$entity",
        "schema": {
          "id": "aWSSingleSignon.00000000000000000000000000000000",
          "version": "6.0",
          "synchronizationRules": [
            {
              "editable": true,
              "id": "03f7d90d-bf71-41b1-bda6-aaf0ddbee5d8",
              "name": "USERGROUP_OUTBOUND_USERGROUP",
              "priority": 1,
              "sourceDirectoryName": "Azure Active Directory",
              "targetDirectoryName": "AWSSingleSignon",
              "metadata": [
                {
                  "key": "defaultSourceObjectMappings",
                  "value": "[{\"AttributeMappings\":[{\"DefaultValue\":\"False\",...,\"Unsynchronized\":false}}]]"
                },
                {
                  "key": "supportsProvisionOnDemand",
                  "value": "true"
                }
              ],
              "objectMappings": [
                {
                  "enabled": true,
                  "flowTypes": "Add,Update,Delete",
                  "name": "Provision Azure Active Directory Groups",
                  "scope": null,
                  "sourceObjectName": "Group",
                  "targetObjectName": "urn:ietf:params:scim:schemas:core:2.0:Group",
                  "attributeMappings": [
                    {
                      "defaultValue": null,
                      "exportMissingReferences": false,
                      "flowBehavior": "FlowWhenChanged",
                      "flowType": "Always",
                      "matchingPriority": 0,
                      "targetAttributeName": "members",
                      "source": {
                        "expression": "[members]",
                        "name": "members",
                        "type": "Attribute",
                        "parameters": []
                      }
                    }
                  ],
                  "metadata": [
                    {
                      "key": "IsCustomerDefined",
                      "value": "false"
                    },
                    {
                      "key": "DisableMonitoringForChanges",
                      "value": "false"
                    },
                    {
                      "key": "Disposition",
                      "value": "\"Normal\""
                    },
                    {
                      "key": "ExcludeFromReporting",
                      "value": "false"
                    },
                    {
                      "key": "EscrowBehavior",
                      "value": "\"Default\""
                    },
                    {
                      "key": "Unsynchronized",
                      "value": "false"
                    },
                    {
                      "key": "OriginalJoiningProperty",
                      "value": "displayName"
                    }
                  ]
                }
              ]
            }
          ]
        }
      }
    }
  ]
}
```

## Step 4: Create the provisioning job based on the template

To enable provisioning, you'll first need to create a job. Use the **id** of the service principal for the request and the **id** of the provisioning template that you previously recorded for the **templateId** to create a provisioning job. Record the **id** of the provisioning job that is created.

### Request

```http
POST https://graph.microsoft.com/beta/servicePrincipals/29f68db3-1000-46bf-a940-f5ea3ecc39e7/synchronization/jobs
Content-type: application/json

{ 
    "templateId": "aWSSingleSignon"
}
```

### Response

```http
HTTP/1.1 201 OK
Content-type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#servicePrincipals('29f68db3-1000-46bf-a940-f5ea3ecc39e7')/synchronization/jobs/$entity",
  "id": "aWSSingleSignon.ff8bf889e03141ac8f7baedb059892ee.bfc8712e-0986-4d47-896b-6872713598c6",
  "templateId": "aWSSingleSignon",
  "schedule": {
    "expiration": null,
    "interval": "PT40M",
    "state": "Disabled"
  },
  "status": {
    "countSuccessiveCompleteFailures": 0,
    "escrowsPruned": false,
    "code": "Paused",
    "lastExecution": null,
    "lastSuccessfulExecution": null,
    "lastSuccessfulExecutionWithExports": null,
    "quarantine": null,
    "steadyStateFirstAchievedTime": "0001-01-01T00:00:00Z",
    "steadyStateLastAchievedTime": "0001-01-01T00:00:00Z",
    "troubleshootingUrl": null,
    "progress": [],
    "synchronizedEntryCountByType": []
  },
  "synchronizationJobSettings": [
    {
      "name": "AzureIngestionAttributeOptimization",
      "value": "False"
    }
  ]
}
```

In this response, the job is in a **Paused** status because it hasn't yet ben started.

## Step 5: Start the provisioning job

Now that the provisioning job is configured, start it. This starts the initial sync and imports roles from AWS to Azure AD.

### Request

```http
POST https://graph.microsoft.com/beta/servicePrincipals/29f68db3-1000-46bf-a940-f5ea3ecc39e7/synchronization/jobs/aWSSingleSignon.ff8bf889e03141ac8f7baedb059892ee.bfc8712e-0986-4d47-896b-6872713598c6/start
```

### Response

```http
HTTP/1.1 204 No Content
```

## Step 6: Monitor provisioning

### Monitor the provisioning job status

Now that the provisioning job is running, you can track the progress of the current provisioning cycle as well as statistics. For example, for services that provision users and groups from Azure AD to the target system, you can monitor how many users have been created in the target system.

#### Request

```http
GET https://graph.microsoft.com/beta/servicePrincipals/29f68db3-1000-46bf-a940-f5ea3ecc39e7/synchronization/jobs/aWSSingleSignon.ff8bf889e03141ac8f7baedb059892ee.bfc8712e-0986-4d47-896b-6872713598c6
```

#### Response

```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#servicePrincipals('29f68db3-1000-46bf-a940-f5ea3ecc39e7')/synchronization/jobs/$entity",
  "id": "aWSSingleSignon.ff8bf889e03141ac8f7baedb059892ee.bfc8712e-0986-4d47-896b-6872713598c6",
  "templateId": "aWSSingleSignon",
  "schedule": {
    "expiration": null,
    "interval": "PT40M",
    "state": "Active"
  },
  "status": {
    "countSuccessiveCompleteFailures": 1,
    "escrowsPruned": false,
    "code": "Quarantine",
    "lastSuccessfulExecution": null,
    "lastSuccessfulExecutionWithExports": null,
    "steadyStateFirstAchievedTime": "0001-01-01T00:00:00Z",
    "steadyStateLastAchievedTime": "0001-01-01T00:00:00Z",
    "troubleshootingUrl": "",
    "lastExecution": {
      "activityIdentifier": "c3173f7b-9e67-4759-828c-cb499967be57",
      "countEntitled": 0,
      "countEntitledForProvisioning": 0,
      "countEscrowed": 0,
      "countEscrowedRaw": 0,
      "countExported": 0,
      "countExports": 0,
      "countImported": 0,
      "countImportedDeltas": 0,
      "countImportedReferenceDeltas": 0,
      "state": "Failed",
      "timeBegan": "2021-05-24T21:45:53.6330529Z",
      "timeEnded": "2021-05-24T21:45:54.5581273Z",
      "error": {
        "code": "SystemForCrossDomainIdentityManagementInvalidCredentials",
        "message": "Please provide a valid tenant URL for your application.",
        "tenantActionable": true
      }
    },
    "progress": [],
    "quarantine": {
      "currentBegan": "2021-05-24T21:45:54.4981365Z",
      "nextAttempt": "2021-05-24T21:50:54.4981365Z",
      "reason": "EncounteredQuarantineException",
      "seriesBegan": "2021-05-24T21:45:54.4981365Z",
      "seriesCount": 1,
      "error": {
        "code": "SystemForCrossDomainIdentityManagementInvalidCredentials",
        "message": "Please provide a valid tenant URL for your application.",
        "tenantActionable": true
      }
    },
    "synchronizedEntryCountByType": []
  },
  "synchronizationJobSettings": [
    {
      "name": "AzureIngestionAttributeOptimization",
      "value": "False"
    }
  ]
}
```

### Monitor provisioning events using the provisioning logs

In addition to monitoring the status of the provisioning job, you can use the provisioning logs to query for all the events that are occurring. For example, for services that provision users and groups from Azure AD to the target system, query for a particular user and determine if they were successfully provisioned.

#### Request

```http
GET https://graph.microsoft.com/beta/auditLogs/provisioning
```
#### Response

```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#auditLogs/provisioning",
    "value": [
        {
            "id": "gc532ff9-r265-ec76-861e-42e2970a8218",
            "activityDateTime": "2019-06-24T20:53:08Z",
            "tenantId": "7928d5b5-7442-4a97-ne2d-66f9j9972ecn",
            "jobId": "BoxOutDelta.7928d5b574424a97ne2d66f9j9972ecn",
            "cycleId": "44576n58-v14b-70fj-8404-3d22tt46ed93",
            "changeId": "eaad2f8b-e6e3-409b-83bd-e4e2e57177d5",
            "action": "Create",
            "durationInMilliseconds": 2785,
            "sourceSystem": {
                "id": "0404601d-a9c0-4ec7-bbcd-02660120d8c9",
                "displayName": "Azure Active Directory",
                "details": {}
            },
            "targetSystem": {
                "id": "cd22f60b-5f2d-1adg-adb4-76ef31db996b",
                "displayName": "Box",
                "details": {
                    "ApplicationId": "f2764360-e0ec-5676-711e-cd6fc0d4dd61",
                    "ServicePrincipalId": "chc46a42-966b-47d7-9774-576b1c8bd0b8",
                    "ServicePrincipalDisplayName": "Box"
                }
            },
            "initiatedBy": {
                "id": "",
                "displayName": "Azure AD Provisioning Service",
                "initiatorType": "system"
            },
            "sourceIdentity": {
                "id": "5e6c9rae-ab4d-5239-8ad0-174391d110eb",
                "displayName": "Self-service Pilot",
                "identityType": "Group",
                "details": {}
            },
            "targetIdentity": {
                "id": "",
                "displayName": "",
                "identityType": "Group",
                "details": {}
            },
            "statusInfo": {
                "@odata.type": "#microsoft.graph.statusDetails",
                "status": "failure",
                "errorCode": "BoxEntryConflict",
                "reason": "Message: Box returned an error response with the HTTP status code 409.  This response indicates that a user or a group already exisits with the same name. This can be avoided by identifying and removing the conflicting user from Box via the Box administrative user interface, or removing the current user from the scope of provisioning either by removing their assignment to the Box application in Azure Active Directory or adding a scoping filter to exclude the user.",
                "additionalDetails": null,
                "errorCategory": "NonServiceFailure",
                "recommendedAction": null
            },
            "provisioningSteps": [
                {
                    "name": "EntryImportAdd",
                    "provisioningStepType": "import",
                    "status": "success",
                    "description": "Received Group 'Self-service Pilot' change of type (Add) from Azure Active Directory",
                    "details": {}
                },
                {
                    "name": "EntrySynchronizationAdd",
                    "provisioningStepType": "matching",
                    "status": "success",
                    "description": "Group 'Self-service Pilot' will be created in Box (Group is active and assigned in Azure Active Directory, but no matching Group was found in Box)",
                    "details": {}
                },
                {
                    "name": "EntryExportAdd",
                    "provisioningStepType": "export",
                    "status": "failure",
                    "description": "Failed to create Group 'Self-service Pilot' in Box",
                    "details": {
                        "ReportableIdentifier": "Self-service Pilot"
                    }
                }
            ],
            "modifiedProperties": [
                {
                    "displayName": "objectId",
                    "oldValue": null,
                    "newValue": "5e0c9eae-ad3d-4139-5ad0-174391d110eb"
                },
                {
                    "displayName": "displayName",
                    "oldValue": null,
                    "newValue": "Self-service Pilot"
                },
                {
                    "displayName": "mailEnabled",
                    "oldValue": null,
                    "newValue": "False"
                },
                {
                    "displayName": "mailNickname",
                    "oldValue": null,
                    "newValue": "5ce25n9a-4c5f-45c9-8362-ef3da29c66c5"
                },
                {
                    "displayName": "securityEnabled",
                    "oldValue": null,
                    "newValue": "True"
                },
                {
                    "displayName": "Name",
                    "oldValue": null,
                    "newValue": "Self-service Pilot"
                }
            ]
       }
    ]
}
```

## See also

- [Tutorial: Azure Active Directory single sign-on (SSO) integration with AWS Single-Account Access](/azure/active-directory/saas-apps/amazon-web-service-tutorial)
- [Instantiate an application template](/graph/api/applicationtemplate-instantiate?view=graph-rest-beta&preserve-view=true)
- [List existing synchronization templates](/graph/api/synchronization-synchronizationtemplate-list?view=graph-rest-beta&preserve-view=true)
- [Create synchronizationJob](/graph/api/synchronization-synchronizationjob-post?view=graph-rest-beta&preserve-view=true)
- [List provisioning logs](/graph/api/provisioningobjectsummary-list?view=graph-rest-beta&preserve-view=true)
- [Integrating a custom SCIM app with Azure AD](/azure/active-directory/app-provisioning/use-scim-to-provision-users-and-groups)
