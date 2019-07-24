---
title: "Property differences between Azure AD Graph and Microsoft Graph"
description: "Describes property differences between Azure AD Graph resources (entities) and Microsoft Graph, in order to help migrate apps accordingly."
author: "dkershaw10"
localization_priority: Normal
ms.prod: "microsoft-identity-platform"
---

# Property differences between Azure AD Graph and Microsoft Graph

This article is part of *step 1: review API differences* of the [process to migrate apps](migrate-azure-ad-graph-planning-checklist.md).

In general, the best way to compare the Azure AD Graph API to Microsoft Graph is to compare the underlying metadata for each service, especially the resource descriptions:

- [Azure AD Graph metadata](https://graph.windows.net/microsoft.com/$metadata?api-version=1.6)
- [Microsoft Graph beta metadata](https://graph.microsoft.com/beta /$metadata)
- [Microsoft Graph v1.0 metadata](https://graph.microsoft.comv/1.0/$metadata)

Here, property differences between resources are highlighted. If a property is not shown in this list, it is already available in the [v1.0 version](/graph/api/overview?view=graph-rest-1.0) of Microsoft Graph, with exactly the same name as in Azure AD Graph.

Because user and group are so frequently used, these resources appear first.  Other resources appear alphabetically.

## User property differences

|Azure AD Graph <br>(v1.6) property |Microsoft Graph<br>property|Comments|
|---|---|---|
| **appRoleAssignments** | beta  - **appRoleAssignments** <br> v1.0 - _Not yet available_ | |
| **creationType** | beta  - _Not yet available_ <br> v1.0 - _Not yet available_| |
| **deletedTimestamp**| beta  - **deletedDateTime** <br> v1.0 - **deletedDateTime** | |
| **dirSyncEnabled** | beta &nbsp;-&nbsp;**onPremisesSyncEnabled** <br> v1.0 - **onPremisesSyncEnabled** | |
| **facsimileTelephoneNumber** | beta  - **faxNumber** <br> v1.0 - **faxNumber** | |
| **immutableId** | beta &nbsp;-&nbsp;**onPremisesImmutableId** <br> v1.0 - **onPremisesImmutableId**  | |
| **isCompromised** | beta  - _Not available_ <br> v1.0 - _Not available_ | The Microsoft Graph [identity protection](/graph/api/resources/identityprotection-root?view=graph-rest-beta) API provides more sophisticated functionality. |
| **lastDirSyncDateTime** | beta &nbsp;-&nbsp;**onPremisesLastSyncDateTime** <br> v1.0 - **onPremisesLastSyncDateTime** | |
| **mobile** | beta  - **mobilePhone** <br> v1.0 - **mobilePhone** | |
| **oAuth2PermissionGrants** | beta  - **oAuth2PermissionGrants** <br> v1.0 - _Not yet available_ ||
| **provisioningErrors** | beta &nbsp;-&nbsp;**onPremisesProvisioningErrors** <br> v1.0 - **onPremisesProvisioningErrors** | |
| **refreshTokensValidFromDateTime** | beta&nbsp;-&nbsp;**signinSessionsValidFromDateTime**<br>v1.0&nbsp;-&nbsp;_Not yet available_ | |
| **signinNames** | beta - _Not yet available_ <br> v1.0 - _Not yet available_ | |
| **telephoneNumber** | beta  - **businessPhones** <br> v1.0 - **businessPhones** | |
| **thumbnailPhoto** | beta  - **photo**, photos <br> v1.0 - **photo**, photos | The Azure AD thumbnail photo is not available through Microsoft Graph.  Use the [photo API](/graph/api/resources/profilephoto?view=graph-rest-1.0) instead. |
| **userIdentities** | beta - _Not yet available_ <br> v1.0 - _Not yet available_ | |
| **userState** | beta  - **externalUserState** <br> v1.0 - **externalUserState** | |
| **userStateChangedOn** | beta&nbsp;-&nbsp;**externalUserStateChangeDateTime**<br>v1.0&nbsp;-&nbsp;**externalUserStateChangeDateTime** | |

## Group property differences

|Azure AD Graph <br>(v1.6) property |Microsoft Graph<br> property|Comments|
|---|---|---|
| **dirSyncEnabled** | beta &nbsp;-&nbsp;**onPremisesSyncEnabled** <br> v1.0 - **onPremisesSyncEnabled** | |
| **immutableId** | beta &nbsp;-&nbsp;**onPremisesImmutableId** <br> v1.0 - **onPremisesImmutableId** | |
| **lastDirSyncDateTime** | beta&nbsp;-&nbsp;**onPremisesLastSyncDateTime**<br>v1.0 - **onPremisesLastSyncDateTime** | |
| **onPremisesDomainName** | beta  - _Not yet available_ <br> v1.0 - _Not yet available_ | Planned, but not yet available. |
| **onPremisesNetBiosName** | beta  - _Not yet available_ <br> v1.0 - _Not yet available_ | Planned, but not yet available. |
| **onPremisesSamAccountName** | beta  - _Not yet available_ <br> v1.0 - _Not yet available_ | Planned, but not yet available. |
| **provisioningErrors** | beta&nbsp;-&nbsp;**onPremisesProvisioningErrors**<br> v1.0 - **onPremisesProvisioningErrors** | |

## Application property differences

|Azure AD Graph <br>(v1.6) property |Microsoft Graph<br> property|Comments|
|---|---|---|
| **acceptMappedClaims**  | beta &nbsp;-&nbsp;**api/acceptMappedClaims** <br> v1.0 - _Not yet available_ | acceptMappedClaims is now part of the new api resource. |
| **addIns** | beta  - _Not yet available_ <br> v1.0  - _Not yet available_  | |
| **applicationTemplateId** | beta  - _Not yet available_ <br> v1.0  - _Not yet available_ | |
| **availableToOtherTenants** | beta &nbsp;-&nbsp; **orgRestrictions** <br> v1.0 - _Not yet available_ | |
| **errorUrl**| beta &nbsp;-&nbsp;_not available_ <br> v1.0 -  _not available_ | This property is deprecated.|
| **homepage**| beta &nbsp;-&nbsp;**web/homepage** <br> v1.0 - _Not yet available_ | homepage is now part of the new web resource.|
| **informationalUrls**| beta &nbsp;-&nbsp;**info** <br> v1.0 - _Not yet available_ | |
| **knownClientApplications**| beta&nbsp;-&nbsp;**api/knownClientApplications** <br> v1.0 - _Not yet available_ | knownClientApplications is now part of the new api resource. |
| **logoutUrl**| beta &nbsp;-&nbsp;**web/logoutUrl** <br> v1.0 - _Not yet available_ | logoutUrl is now part of the web resource. |
| **logoUrl**| beta &nbsp;-&nbsp;**info/logoUrl** <br> v1.0 - _Not yet available_ | logoUrl is now part of the new info resource. |
| **mainLogo**| beta &nbsp;-&nbsp;_not available_ <br> v1.0 -  _not available_ | This property is deprecated.|
| **oauth2AllowIdTokenImplicitFlow** | beta&nbsp;-&nbsp;**web/implicitGrantSettings/enableIdTokenIssuance**<br>v1.0 - _Not yet available_ | Renamed, and now part of the new implicitGrantSettings resource. |
| **oauth2AllowImplicitFlow**| beta&nbsp;-&nbsp;**web/oauth2AllowImplicitFlow**<br>v1.0 - _Not yet available_ | oauth2AllowImplicitFlow is now part of the new web resource. |
| **oauth2AllowUrlPathMatching**| beta &nbsp;-&nbsp;_not available_ <br> v1.0 -  _not available_ | This property is deprecated.|
| **oauth2Permissions**| beta&nbsp;-&nbsp;**api/oauth2PermissionScopes**<br> v1.0 - _Not yet available_ | Renamed and now part of the new api resource. |
| **oauth2RequirePostResponse**| beta &nbsp;-&nbsp;_not available_ <br> v1.0 -  _not available_ | This property is deprecated.|
| **publicClient**| beta &nbsp;-&nbsp; **isFallbackPublicClient** <br> v1.0 - _Not yet available_ | This property now has a new meaning - it contains the public client settings like redirectUris. Determining whether the app is a public or confidential client or not is now done automatically, with the isFallbackPublicClient property handling the one special case that cannot be determined automatically.|
| **recordConsentConditions**| beta &nbsp;-&nbsp;_not available_ <br> v1.0 -  _not available_ | This property is deprecated.|
| **replyUrls**| beta&nbsp;-&nbsp;**web/redirectUris**<br> v1.0 - _Not yet available_ | As well as being renamed, redirectUris is now part of the new web resource. | |
| **samlMetadataUrl**| beta  - _Not yet available_  <br> v1.0 - _Not yet available_  | |
| **extensionProperties**| beta &nbsp;-&nbsp;**extensionProperties** <br> v1.0 - _Not yet available_ | This property is deprecated. |
| **serviceEndpoints**|  beta  - _Not yet available_  <br> v1.0 - _Not yet available_  | |

## AppRoleAssignment differences

|Azure AD Graph <br>(v1.6) property |Microsoft Graph<br> property|Comments|
|---|---|---|
| **creationTimestamp** | beta &nbsp;-&nbsp;**creationTimestamp** <br> v1.0 - _Not yet available_ | This will be renamed to createdDateTime.|
| **id** | beta &nbsp;-&nbsp;**appRoleId** <br> v1.0 - _Not yet available_ | |

## Contact property differences

The Azure AD Graph Contact resource has been renamed to orgContact in Microsoft Graph.  Here are the property differences:

|Azure AD Graph <br>(v1.6) property |Microsoft Graph<br> property|Comments|
|---|---|---|
| **city** | beta&nbsp;-&nbsp;**addresses (city)** <br> v1.0 - _Not yet available_  | The city property is part of the addresses resource collection. |
| **country** | beta&nbsp;-&nbsp;**addresses**&nbsp;**(countryOrRegion)**<br> v1.0 - _Not yet available_  | The countryOrRegion property is part of the addresses resource collection. |
| **dirSyncEnabled** | beta &nbsp;-&nbsp;**onPremisesSyncEnabled** <br> v1.0 - _Not yet available_  | |
| **facsimileTelephoneNumber** | beta&nbsp;-&nbsp;**phones**&nbsp;**(businessFax)** <br> v1.0 - _Not yet available_ | Now part of the phones collection, which supports mobile, business, and businessFax. |
| **physicalDeliveryOfficeName** | beta &nbsp;-&nbsp;**officeLocation** <br> v1.0 - **officeLocation** | |
| **postalCode** | beta&nbsp;-&nbsp;**addresses**&nbsp;**(postalCode)**<br> v1.0 - _Not yet available_  | The postalCode property is part of the addresses resource collection. |
| **provisioningErrors** | beta&nbsp;-&nbsp;**onPremisesProvisioningErrors**<br> v1.0 - _Not yet available_  | |
| **sipProxyAddress** |  beta &nbsp;-&nbsp;**imAddresses**<br> v1.0 - _Not yet available_  | |
| **state** | beta &nbsp;-&nbsp;**addresses**&nbsp;**(state)**<br> v1.0 - _Not yet available_  | The state property is part of the addresses resource collection. |
| **streetAddress** | beta &nbsp;-&nbsp;**addresses**&nbsp;**(street)**<br> v1.0 - _Not yet available_  | The street property is part of the addresses resource collection. |
| **telephoneNumber** | beta&nbsp;-&nbsp;**phones**&nbsp;**(business)** <br> v1.0 - _Not yet available_ | Now part of the phones collection, which supports mobile, business, and businessFax. |
| **thumbnailPhoto** | beta &nbsp;-&nbsp;_Not&nbsp;yet&nbsp;available_&nbsp;<br> v1.0 - _Not yet available_ | |

## Contract property differences

|Azure AD Graph <br>(v1.6) property |Microsoft Graph<br> property|Comments|
|---|---|---|
| **customerContextId** | beta &nbsp;-&nbsp;**customerId** <br> v1.0 - **customerId**  |  |

## Device property differences

|Azure AD Graph <br>(v1.6) property |Microsoft Graph<br> property|Comments|
|---|---|---|
| **approximateLastLogonTimestamp** | beta&nbsp;-&nbsp;**approximateLastSignInDateTime** <br> v1.0 - **approximateLastSignInDateTime** |  |
| **complianceExpiryTime** | beta&nbsp;-&nbsp;**complianceExpirationDateTime** <br> v1.0 - **complianceExpirationDateTime** |  |
| **deviceObjectVersion** |  beta&nbsp;-&nbsp;**deviceVersion** <br> v1.0 - **deviceVersion** |  |
| **deviceOSType** | beta&nbsp;-&nbsp;**operatingSystem** <br> v1.0 - **operatingSystem** |  |
| **deviceOSVersion** | beta&nbsp;-&nbsp;**operatingSystemVersion** <br> v1.0 - **operatingSystemVersion** |  |
| **devicePhysicalIds** | beta&nbsp;-&nbsp;**physicalIds** <br> v1.0 - **physicalIds** |  |
| **deviceTrustType** | beta&nbsp;-&nbsp;**trustType** <br> v1.0 - **trustType** |  |
| **dirSyncEnabled** |  beta&nbsp;-&nbsp;**onPremisesSyncEnabled** <br> v1.0 - **onPremisesSyncEnabled** |  |
| **lastDirSyncTime** |  beta&nbsp;-&nbsp;**onPremisesLastSyncDateTime** <br> v1.0 - **onPremisesLastSyncDateTime** |  |

## DirectoryObjectReference property differences

The Azure AD Graph directoryObjectReference resource has been renamed to directoryObjectPartnerReference in Microsoft Graph.  Here are the property differences:

|Azure AD Graph <br>(v1.6) property |Microsoft Graph<br> property|Comments|
|---|---|---|
| **externalContextId** | beta&nbsp;-&nbsp;**externalPartnerTenantId** <br> v1.0 - **externalPartnerTenantId** |  |

## Domain property differences

|Azure AD Graph <br>(v1.6) property |Microsoft Graph<br> property|Comments|
|---|---|---|
| **name** | beta&nbsp;-&nbsp;**id** <br> v1.0 - **id** | In Microsoft Graph, the unique identifier (id) contains the domain name; the `name` property doesn't exist. |
| **forceDeleteState** |  beta&nbsp;-&nbsp;**state** <br> v1.0 - **state** | In Azure AD Graph, there are separate forceDelete and domain state properties.  In Microsoft Graph, all domain states are handled by the state property. |
| **isDefaultForCloudRedirections** | beta&nbsp;-&nbsp;_Not&nbsp;yet&nbsp;available_&nbsp;<br> v1.0 - _Not yet available_ | |

## OAuth2PermissionsGrant property differences

|Azure AD Graph <br>(v1.6) property |Microsoft Graph<br> property|Comments|
|---|---|---|
| **expiryTime** | beta&nbsp;-&nbsp;**expiryTime** <br> v1.0&nbsp;-&nbsp;_Not&nbsp;yet&nbsp;available_ | This property is not used and will likely be removed in Microsoft Graph. |
| **startTime** | beta&nbsp;-&nbsp;**startTime** <br> v1.0&nbsp;-&nbsp;_Not&nbsp;yet&nbsp;available_  | This property is not used and will likely be removed in Microsoft Graph. |

## Policy property differences

Currently the policy resource in Microsoft Graph (only available in preview) looks very similar to Azure AD Graph.  However it will change so that there are named policy types (such as tokenIssuancePolicy or tokenLifetimePolicy), rather than a generic policy resource type.

## ServiceEndpoint property differences

The Azure AD Graph ServiceEndpoint resource is renamed to endpoint in Microsoft Graph.

|Azure AD Graph <br>(v1.6) property |Microsoft Graph<br> property|Comments|
|---|---|---|
| **capability** | beta&nbsp;-&nbsp;**capability**<br> v1.0 - _Not yet available_ | |
| **serviceId** | beta&nbsp;-&nbsp;**providerId**<br> v1.0 - _Not yet available_ | |
| **serviceName** | beta&nbsp;-&nbsp;**providerName**<br> v1.0 - _Not yet available_ | |
| **resourceId** | beta&nbsp;-&nbsp;**providerResourceId**<br> v1.0 - _Not yet available_ | |
| **uri** | beta&nbsp;-&nbsp;**uri**<br> v1.0 - _Not yet available_ | |

## ServicePrincipal property differences

|Azure AD Graph <br>(v1.6) property |Microsoft Graph<br> property|Comments|
|---|---|---|
| **applicationTemplateId** | beta  - _Not yet available_ <br> v1.0  - _Not yet available_ | |
| **appOwnerTenantId** | beta&nbsp;-&nbsp;**appOwnerOrganizationId** <br> v1.0 - _Not yet available_ | |
| **informationalUrls**| beta&nbsp;-&nbsp;_Not yet available_ <br> v1.0 - _Not yet available_ | |
| **preferredSingleSignOnMode** | beta&nbsp;-&nbsp;_Not yet available_ <br> v1.0 - _Not yet available_ | |
| **preferredTokenSigningKeyEndDateTime** | beta&nbsp;-&nbsp;_Not yet available_ <br> v1.0 - _Not yet available_ | |
| **samlSingleSignOnSettings** | beta&nbsp;-&nbsp;_Not yet available_ <br> v1.0 - _Not yet available_ | |
| **servicePrincipalType** | beta&nbsp;-&nbsp;_Not yet available_ <br> v1.0 - _Not yet available_ | |
| **signInAudience** | beta&nbsp;-&nbsp;_Not yet available_ <br> v1.0 - _Not yet available_ | |
| **tokenEncryptionKeyId** | beta&nbsp;-&nbsp;_Not yet available_ <br> v1.0 - _Not yet available_ | |
| **serviceEndpoints** | beta&nbsp;-&nbsp;_Not yet available_ <br> v1.0 - _Not yet available_ | |

## TenantDetails property differences

The Azure AD Graph TenantDetails resource is renamed to organization in Microsoft Graph.  Here are the property differences:

|Azure AD Graph <br>(v1.6) property |Microsoft Graph<br> property|Comments|
|---|---|---|
| **companyLastDirSyncTime** | beta&nbsp;-&nbsp;**onPremisesLastSyncDateTime** <br>v1.0 - **onPremisesLastSyncDateTime** |  |
| **dirSyncEnabled** | beta&nbsp;-&nbsp;**onPremisesSyncEnabled** <br> v1.0 - **onPremisesSyncEnabled** |  |
| **provisoningErrors** | beta&nbsp;-&nbsp;_Not&nbsp;yet&nbsp;available_<br> v1.0 - _Not yet available_ | |
| **telephoneNumber** | beta&nbsp;-&nbsp;**businessPhones** <br> v1.0 - **businessPhones** |  |

## TrustedCasForPasswordlessAuth property differences

The Azure AD Graph TrustedCasForPasswordlessAuth resource has been renamed to certificateBasedAuthConfiguration in Microsoft Graph.  There are no property differences.

## Next Steps

- Learn about [method differences](migrate-azure-ad-graph-method-differences.md) between Azure AD Graph and Microsoft Graph.
- Explore [Microsoft Graph](/graph/overview) concepts and practices.
- Use [Graph Explorer](https://aka.ms/ge) to experiment with Microsoft Graph.
