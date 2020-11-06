---
title: "Property differences between Azure AD Graph and Microsoft Graph"
description: "Describes property differences between Azure AD Graph resources (entities) and Microsoft Graph, in order to help migrate apps accordingly."
author: "dkershaw10"
localization_priority: Normal
ms.prod: "azure-active-directory"
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
| **deletedTimestamp**| beta  &nbsp;-&nbsp; **deletedDateTime** <br> v1.0 &nbsp;-&nbsp; **deletedDateTime** | |
| **dirSyncEnabled** | beta &nbsp;-&nbsp;**onPremisesSyncEnabled** <br> v1.0 &nbsp;-&nbsp; **onPremisesSyncEnabled** | |
| **facsimileTelephoneNumber** | beta  &nbsp;-&nbsp; **faxNumber** <br> v1.0 &nbsp;-&nbsp; **faxNumber** | |
| **immutableId** | beta &nbsp;-&nbsp;**onPremisesImmutableId** <br> v1.0 &nbsp;-&nbsp; **onPremisesImmutableId**  | |
| **isCompromised** | beta  &nbsp;-&nbsp; _Not available_ <br> v1.0 &nbsp;-&nbsp; _Not available_ | The Microsoft Graph [identity protection](/graph/api/resources/identityprotection-root?view=graph-rest-beta) API provides more sophisticated functionality. |
| **lastDirSyncDateTime** | beta &nbsp;-&nbsp;**onPremisesLastSyncDateTime** <br> v1.0 &nbsp;-&nbsp; **onPremisesLastSyncDateTime** | |
| **mobile** | beta  &nbsp;-&nbsp; **mobilePhone** <br> v1.0 &nbsp;-&nbsp; **mobilePhone** | |
| **provisioningErrors** | beta &nbsp;-&nbsp; _Not available_ <br> v1.0 &nbsp;-&nbsp; _Not available_ | This property and its information is deprecated.  However, a new property describing any AD Connect related provisioning errors can be found in **onPremisesProvisioningErrors** |
| **refreshTokensValidFromDateTime** | beta&nbsp;-&nbsp;**signinSessionsValidFromDateTime**<br>v1.0&nbsp;-&nbsp;**signinSessionsValidFromDateTime** | |
| **signinNames** | beta &nbsp;-&nbsp; **identities/signInType** <br> v1.0 &nbsp;-&nbsp; **identities/signInType** | This property is now part of the [objectIdentity](/graph/api/resources/objectIdentity?view=graph-rest-1.0) resource.|
| **telephoneNumber** | beta  &nbsp;-&nbsp; **businessPhones** <br> v1.0 &nbsp;-&nbsp; **businessPhones** | |
| **thumbnailPhoto** | beta  &nbsp;-&nbsp; **photo**, photos <br> v1.0 &nbsp;-&nbsp; **photo**, photos | The Azure AD thumbnail photo is not available through Microsoft Graph.  Use the [photo API](/graph/api/resources/profilephoto?view=graph-rest-1.0) instead. |
| **userIdentities** | beta &nbsp;-&nbsp; **identities** <br> v1.0 &nbsp;-&nbsp; **identities** | See [objectIdentity](/graph/api/resources/objectIdentity?view=graph-rest-1.0) resource type for more details.|
| **userState** | beta  &nbsp;-&nbsp; **externalUserState** <br> v1.0 &nbsp;-&nbsp; **externalUserState** | |
| **userStateChangedOn** | beta&nbsp;-&nbsp;**externalUserStateChangeDateTime**<br>v1.0&nbsp;-&nbsp;**externalUserStateChangeDateTime** | |

## Group property differences

|Azure AD Graph <br>(v1.6) property |Microsoft Graph<br> property|Comments|
|---|---|---|
| **dirSyncEnabled** | beta &nbsp;-&nbsp;**onPremisesSyncEnabled** <br> v1.0 &nbsp;-&nbsp; **onPremisesSyncEnabled** | |
| **immutableId** | beta &nbsp;-&nbsp;**onPremisesImmutableId** <br> v1.0 &nbsp;-&nbsp; **onPremisesImmutableId** | |
| **lastDirSyncDateTime** | beta&nbsp;-&nbsp;**onPremisesLastSyncDateTime**<br>v1.0&nbsp;-&nbsp;**onPremisesLastSyncDateTime** | |
| **provisioningErrors** | beta &nbsp;-&nbsp; _Not available_ <br> v1.0 &nbsp;-&nbsp; _Not available_ | This property and its information is deprecated.  However, a new property describing any AD Connect related provisioning errors can be found in **onPremisesProvisioningErrors** |

## Application property differences

| Azure AD Graph <br>(v1.6) property | Microsoft Graph<br> property                                                                                                                          | Comments                                                                                                                                                                                                                                                                                                                     |
|------------------------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| **acceptMappedClaims**             | beta &nbsp;-&nbsp;**api/acceptMappedClaims** <br> v1.0 &nbsp;-&nbsp; **api/acceptMappedClaims**                                                       | acceptMappedClaims is now part of the new api resource.                                                                                                                                                                                                                                                                      |
| **availableToOtherTenants**        | beta &nbsp;-&nbsp; **signInAudience** <br> v1.0 &nbsp;-&nbsp; **signInAudience**                                                                      |                                                                                                                                                                                                                                                                                                                              |
| **errorUrl**                       | beta &nbsp;-&nbsp;_not available_ <br> v1.0 &nbsp;-&nbsp;  _not available_                                                                            | This property is deprecated.                                                                                                                                                                                                                                                                                                 |
| **homepage**                       | beta &nbsp;-&nbsp;**web/homePageUrl** <br> v1.0 &nbsp;-&nbsp; **web/homePageUrl**                                                                     | homepage is now part of the new web resource.                                                                                                                                                                                                                                                                                |
| **informationalUrls**              | beta &nbsp;-&nbsp;**info** <br> v1.0 &nbsp;-&nbsp; **info**                                                                                           |                                                                                                                                                                                                                                                                                                                              |
| **knownClientApplications**        | beta&nbsp;-&nbsp;**api/knownClientApplications** <br> v1.0 &nbsp;-&nbsp;**api/knownClientApplications**                                               | knownClientApplications is now part of the new api resource.                                                                                                                                                                                                                                                                 |
| **logoutUrl**                      | beta &nbsp;-&nbsp;**web/logoutUrl** <br> v1.0 &nbsp;-&nbsp; **web/logoutUrl**                                                                         | logoutUrl is now part of the web resource.                                                                                                                                                                                                                                                                                   |
| **logoUrl**                        | beta &nbsp;-&nbsp;**info/logoUrl** <br> v1.0 &nbsp;-&nbsp; **info/logoUrl**                                                                           | logoUrl is now part of the new info resource.                                                                                                                                                                                                                                                                                |
| **mainLogo**                       | beta &nbsp;-&nbsp;**logo** <br> v1.0 &nbsp;-&nbsp;  **logo**                                                                                          |                                                                                                                                                                                                                                                                                                                              |
| **oauth2AllowIdTokenImplicitFlow** | beta&nbsp;-&nbsp;**web/implicitGrantSettings/enableIdTokenIssuance**<br>v1.0 &nbsp;-&nbsp;**web/implicitGrantSettings/enableIdTokenIssuance**         | Renamed, and now part of the new implicitGrantSettings resource.                                                                                                                                                                                                                                                             |
| **oauth2AllowImplicitFlow**        | beta&nbsp;-&nbsp;**web/implicitGrantSettings/enableAccessTokenIssuance**<br>v1.0 &nbsp;-&nbsp;**web/implicitGrantSettings/enableAccessTokenIssuance** | Renamed, and now part of the new implicitGrantSettings resource.                                                                                                                                                                                                                                                             |
| **oauth2AllowUrlPathMatching**     | beta &nbsp;-&nbsp;_not available_ <br> v1.0 &nbsp;-&nbsp;  _not available_                                                                            | This property is deprecated.                                                                                                                                                                                                                                                                                                 |
| **oauth2Permissions**              | beta&nbsp;-&nbsp;**api/oauth2PermissionScopes**<br> v1.0 &nbsp;-&nbsp;**api/oauth2PermissionScopes**                                                  | Renamed and now part of the new api resource.                                                                                                                                                                                                                                                                                |
| **publicClient**                   | beta &nbsp;-&nbsp; **isFallbackPublicClient** <br> v1.0 &nbsp;-&nbsp; **isFallbackPublicClient**                                                      | This property now has a new meaning &nbsp;-&nbsp; it contains the public client settings like redirectUris. Determining whether the app is a public or confidential client or not is now done automatically, with the isFallbackPublicClient property handling the one special case that cannot be determined automatically. |
| **recordConsentConditions**        | beta &nbsp;-&nbsp;_not available_ <br> v1.0 &nbsp;-&nbsp;  _not available_                                                                            | This property is deprecated.                                                                                                                                                                                                                                                                                                 |
| **replyUrls**                      | beta&nbsp;-&nbsp;**web/redirectUris**, **publicClient/redirectUris**<br> v1.0 &nbsp;-&nbsp;**web/redirectUris**, **publicClient/redirectUris**        | As well as being renamed, redirectUris is now part of the new web and publicClient resources. This allows developers to use specific URIs for their web and public clients (such as an installed application on a desktop device).                                                                                           |
| **samlMetadataUrl**                | beta  &nbsp;-&nbsp; _Not yet available_  <br> v1.0 &nbsp;-&nbsp; _Not yet available_                                                                  |                                                                                                                                                                                                                                                                                                                              |
| **serviceEndpoints**               | beta  &nbsp;-&nbsp; _Not available_  <br> v1.0 &nbsp;-&nbsp; _Not available_                                                                          | This property is deprecated, but is planned for servicePrincipal.                                                                                                                                                                                                                                                            |

## AppRoleAssignment differences

|Azure AD Graph <br>(v1.6) property |Microsoft Graph<br> property|Comments|
|---|---|---|
| **creationTimestamp** | beta &nbsp;-&nbsp;**creationTimestamp** <br> v1.0 &nbsp;-&nbsp;**createdDateTime** | |
| **id** | beta &nbsp;-&nbsp;**appRoleId** <br> v1.0 &nbsp;-&nbsp;**appRoleId** | |

## Contact property differences

The Azure AD Graph Contact resource has been renamed to orgContact in Microsoft Graph.  Here are the property differences:

|Azure AD Graph <br>(v1.6) property |Microsoft Graph<br> property|Comments|
|---|---|---|
| **city** | beta&nbsp;-&nbsp;**addresses (city)** <br> v1.0 &nbsp;-&nbsp; **addresses (city)**  | The city property is part of the addresses resource collection. |
| **country** | beta&nbsp;-&nbsp;**addresses**&nbsp;**(countryOrRegion)**<br> v1.0&nbsp;-&nbsp;**addresses**&nbsp;**(countryOrRegion)**  | The countryOrRegion property is part of the addresses resource collection. |
| **dirSyncEnabled** | beta &nbsp;-&nbsp;**onPremisesSyncEnabled** <br> v1.0 &nbsp;-&nbsp;**onPremisesSyncEnabled**   | |
| **facsimileTelephoneNumber** | beta&nbsp;-&nbsp;**phones**&nbsp;**(businessFax)** <br> v1.0 &nbsp;-&nbsp;**phones**&nbsp;**(businessFax)** | Now part of the phones collection, which supports mobile, business, and businessFax. |
| **physicalDeliveryOfficeName** | beta &nbsp;-&nbsp;**officeLocation** <br> v1.0 &nbsp;-&nbsp; **officeLocation** | |
| **postalCode** | beta&nbsp;-&nbsp;**addresses**&nbsp;**(postalCode)**<br> v1.0 &nbsp;-&nbsp;**addresses**&nbsp;**(postalCode)** | The postalCode property is part of the addresses resource collection. |
| **provisioningErrors** | beta &nbsp;-&nbsp; not available <br> v1.0 &nbsp;-&nbsp; not available | This property and its information is deprecated.  However, a new property describing any AD Connect related provisioning errors can be found in **onPremisesProvisioningErrors**. Currently this is only available in beta. |
| **sipProxyAddress** |  beta &nbsp;-&nbsp;**imAddresses**<br> v1.0 &nbsp;-&nbsp;**imAddresses**  | |
| **state** | beta &nbsp;-&nbsp;**addresses**&nbsp;**(state)**<br> v1.0 &nbsp;-&nbsp; **addresses**&nbsp;**(state)**  | The state property is part of the addresses resource collection. |
| **streetAddress** | beta &nbsp;-&nbsp;**addresses**&nbsp;**(street)**<br> v1.0 &nbsp;-&nbsp;**addresses**&nbsp;**(street)**  | The street property is part of the addresses resource collection. |
| **telephoneNumber** | beta&nbsp;-&nbsp;**phones**&nbsp;**(business)** <br> v1.0 &nbsp;-&nbsp;**phones**&nbsp;**(business)** | Now part of the phones collection, which supports mobile, business, and businessFax. |
| **thumbnailPhoto** | beta &nbsp;-&nbsp;_Not&nbsp;yet&nbsp;available_&nbsp;<br> v1.0 &nbsp;-&nbsp; _Not yet available_ | |

## Contract property differences

|Azure AD Graph <br>(v1.6) property |Microsoft Graph<br> property|Comments|
|---|---|---|
| **customerContextId** | beta &nbsp;-&nbsp;**customerId** <br> v1.0 &nbsp;-&nbsp; **customerId**  |  |

## Device property differences

|Azure AD Graph <br>(v1.6) property |Microsoft Graph<br> property|Comments|
|---|---|---|
| **approximateLastLogonTimestamp** | beta&nbsp;-&nbsp;**approximateLastSignInDateTime** <br> v1.0 &nbsp;-&nbsp; **approximateLastSignInDateTime** |  |
| **complianceExpiryTime** | beta&nbsp;-&nbsp;**complianceExpirationDateTime** <br> v1.0 &nbsp;-&nbsp; **complianceExpirationDateTime** |  |
| **deviceObjectVersion** |  beta&nbsp;-&nbsp;**deviceVersion** <br> v1.0 &nbsp;-&nbsp; **deviceVersion** |  |
| **deviceOSType** | beta&nbsp;-&nbsp;**operatingSystem** <br> v1.0 &nbsp;-&nbsp; **operatingSystem** |  |
| **deviceOSVersion** | beta&nbsp;-&nbsp;**operatingSystemVersion** <br> v1.0 &nbsp;-&nbsp; **operatingSystemVersion** |  |
| **devicePhysicalIds** | beta&nbsp;-&nbsp;**physicalIds** <br> v1.0 &nbsp;-&nbsp; **physicalIds** |  |
| **deviceTrustType** | beta&nbsp;-&nbsp;**trustType** <br> v1.0 &nbsp;-&nbsp; **trustType** |  |
| **dirSyncEnabled** |  beta&nbsp;-&nbsp;**onPremisesSyncEnabled** <br> v1.0 &nbsp;-&nbsp; **onPremisesSyncEnabled** |  |
| **lastDirSyncTime** |  beta&nbsp;-&nbsp;**onPremisesLastSyncDateTime** <br> v1.0 &nbsp;-&nbsp; **onPremisesLastSyncDateTime** |  |

## DirectoryObjectReference property differences

The Azure AD Graph directoryObjectReference resource has been renamed to directoryObjectPartnerReference in Microsoft Graph.  Here are the property differences:

|Azure AD Graph <br>(v1.6) property |Microsoft Graph<br> property|Comments|
|---|---|---|
| **externalContextId** | beta&nbsp;-&nbsp;**externalPartnerTenantId** <br> v1.0 &nbsp;-&nbsp; **externalPartnerTenantId** |  |

## Domain property differences

|Azure AD Graph <br>(v1.6) property |Microsoft Graph<br> property|Comments|
|---|---|---|
| **name** | beta&nbsp;-&nbsp;**id** <br> v1.0 &nbsp;-&nbsp; **id** | In Microsoft Graph, the unique identifier (id) contains the domain name; the `name` property doesn't exist. |
| **forceDeleteState** |  beta&nbsp;-&nbsp;**state** <br> v1.0 &nbsp;-&nbsp; **state** | In Azure AD Graph, there are separate forceDelete and domain state properties.  In Microsoft Graph, all domain states are handled by the state property. |
| **isDefaultForCloudRedirections** | beta&nbsp;-&nbsp;_Not&nbsp;yet&nbsp;available_&nbsp;<br> v1.0 &nbsp;-&nbsp; _Not yet available_ | |

## OAuth2PermissionsGrant property differences

|Azure AD Graph <br>(v1.6) property |Microsoft Graph<br> property|Comments|
|---|---|---|
| **expiryTime** | beta&nbsp;-&nbsp;**expiryTime** <br> v1.0&nbsp;-&nbsp;_Removed_ | This property is not used and is removed in Microsoft Graph v1.0. |
| **startTime** | beta&nbsp;-&nbsp;**startTime** <br> v1.0&nbsp;-&nbsp;_Removed_  | This property is not used and is removed in Microsoft Graph v1.0. |

## Policy property differences

In Microsoft Graph there are named policy types (such as tokenIssuancePolicy or tokenLifetimePolicy), rather than a generic policy resource type. More details are available in the [policy overview](/graph/api/resources/policy-overview?view=graph-rest-1.0).

## ServiceEndpoint property differences

The Azure AD Graph ServiceEndpoint resource is renamed to endpoint in Microsoft Graph.

|Azure AD Graph <br>(v1.6) property |Microsoft Graph<br> property|Comments|
|---|---|---|
| **serviceId** | beta&nbsp;-&nbsp;**providerId**<br> v1.0 &nbsp;-&nbsp;**providerId** | |
| **serviceName** | beta&nbsp;-&nbsp;**providerName**<br> v1.0 &nbsp;-&nbsp;**providerName** | |
| **resourceId** | beta&nbsp;-&nbsp;**providerResourceId**<br> v1.0 &nbsp;-&nbsp;**providerResourceId** | |

## ServicePrincipal property differences

|Azure AD Graph <br>(v1.6) property |Microsoft Graph<br> property|Comments|
|---|---|---|
| **appOwnerTenantId** | beta&nbsp;-&nbsp;**appOwnerOrganizationId** <br> v1.0 &nbsp;-&nbsp;**appOwnerOrganizationId** | Renamed. |
| **informationalUrls**| beta &nbsp;-&nbsp;**info** <br> v1.0 &nbsp;-&nbsp; **info** | |
| **oauth2Permissions** | beta  &nbsp;-&nbsp;**publishedPermissionScopes** <br> v1.0  &nbsp;-&nbsp;**oauth2PermissionScopes** | Renamed. |
| **preferredTokenSigningKeyEndDateTime** | beta&nbsp;-&nbsp;_Not yet available_ <br> v1.0 &nbsp;- _Not yet available_ | |
| **signInAudience** | beta&nbsp;-&nbsp;_Not yet available_ <br> v1.0 &nbsp;- _Not yet available_ | |
| **serviceEndpoints** | beta&nbsp;-&nbsp;**endpoint** <br> v1.0 &nbsp;-&nbsp;**endpoint** | Renamed. |

## TenantDetails property differences

The Azure AD Graph TenantDetails resource is renamed to organization in Microsoft Graph.  Here are the property differences:

|Azure AD Graph <br>(v1.6) property |Microsoft Graph<br> property|Comments|
|---|---|---|
| **companyLastDirSyncTime** | beta&nbsp;-&nbsp;**onPremisesLastSyncDateTime** <br> v1.0&nbsp;-&nbsp;**onPremisesLastSyncDateTime** |  |
| **dirSyncEnabled** | beta&nbsp;-&nbsp;**onPremisesSyncEnabled** <br> v1.0 &nbsp;-&nbsp; **onPremisesSyncEnabled** |  |
| **provisioningErrors** | beta&nbsp;-&nbsp;_Not available_ <br> v1.0&nbsp;-&nbsp;_Not available_ | This property and its information is deprecated.|
| **telephoneNumber** | beta&nbsp;-&nbsp;**businessPhones** <br> v1.0&nbsp;-&nbsp;**businessPhones** |  |

## TrustedCasForPasswordlessAuth property differences

The Azure AD Graph TrustedCasForPasswordlessAuth resource has been renamed to [certificateBasedAuthConfiguration](/graph/api/resources/certificatebasedauthconfiguration?view=graph-rest-beta), and is only available in the Microsoft Graph beta endpoint. There are no property differences; however, there are differences in the **certificateAuthority** resource type used by the **certificateAuthorities** property.

### CertificateAuthorityInformation

The Azure AD Graph CertificateAuthorityInformation is renamed to **certificateAuthority** in Microsoft Graph. The following are the property differences.

|Azure AD Graph <br>(v1.6) property |Microsoft Graph<br> property|Comments|
|---|---|---|
| **authorityType** | beta&nbsp;-&nbsp;**isRootAuthority**<br> v1.0 &nbsp;-&nbsp;**isRootAuthority** | This property's type has also changed into a Boolean. Previously this property had to be set to either "RootAuthority" or "IntermediateAuthority". Setting the new property to **true** is equivalent to "RootAuthority". |
| **crlDistributionPoint** | beta&nbsp;-&nbsp;**certificateRevocationListUrl** <br> v1.0&nbsp;-&nbsp;**certificateRevocationListUrl** | |
| **deltaCrlDistributionPoint** | beta&nbsp;-&nbsp;**deltaCertificateRevocationListUrl** <br> v1.0&nbsp;-&nbsp;**deltaCertificateRevocationListUrl** | |
| **trustedCertificate** | beta&nbsp;-&nbsp;**certificate** <br> v1.0&nbsp;-&nbsp;**deltaCertificateRevocationListUrl** | |
| **trustedIssuer** | beta&nbsp;-&nbsp;**issuer**<br> v1.0&nbsp;-&nbsp;**issuer** | |
| **trustedIssuerSki** | beta&nbsp;-&nbsp;**issuerSki**<br> v1.0 &nbsp;-&nbsp;**issuerSki** | |

## Next Steps

- Learn about [method differences](migrate-azure-ad-graph-method-differences.md) between Azure AD Graph and Microsoft Graph.
- Review the [checklist](migrate-azure-ad-graph-planning-checklist.md) again.

