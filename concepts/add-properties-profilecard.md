---
title: "Customize the profile card using the profile API in Microsoft Graph (preview)"
description: "This article describes how you can customize the profile card by making additional attributes visible, or adding custom attributes."
author: "PollyNincevic"
localization\_priority: Priority
ms.prod: "users"
ms.custom: scenarios:getting-started
---

# Add additional properties to the profile card using the profile card API in Microsoft Graph (preview)

On the [profile card](https://support.office.com/article/profile-cards-in-office-365-e80f931f-5fc4-4a59-ba6e-c1e35a85b501) in Microsoft 365, you can find information about users that is stored and maintained by your organization, for example **Job title** or **Office location**.

Use the [profileCardProperty](/graph/api/resources/profilecardproperty?view=graph-rest-beta) resource to show additional properties from Azure AD on profile cards for an organization, by:

* Making additional attributes visible
* Adding custom attributes

Additional properties will display in the **Contact** section of the profile card in Microsoft 365.

> [!NOTE]
> Operations on the **profileCardProperty** resource that use delegated permissions require the signed-in user to have a tenant administrator or global administrator role.

## Make additional attributes visible

You can make the following attributes from Azure Active Directory (Azure AD) visible on users' profile cards. These attributes are *not case-sensitive*:

* `UserPrincipalName`
* `Fax`
* `StreetAddress`
* `PostalCode`
* `StateOrProvince`
* `Alias`

The following table shows how the Azure AD attributes correspond with properties of the Microsoft Graph [user](/graph/api/resources/user?view=graph-rest-beta) entity.

| Azure AD attribute | User entity property |
| ------------------ | -------------------- |
| UserPrincipalName | userPrincipalName |
| Fax | faxNumber |
| StreetAddress | streetAddress |
| PostalCode | postalCode |
| StateOrProvince | state |
| Alias | mailNickname |

You can add any of these attributes to the profile card by configuring your [organization settings](/graph/api/resources/organizationsettings?view=graph-rest-beta) and adding the attribute as the **directoryPropertyName** property of a **profileCardProperty** in Microsoft Graph. When you make additional attributes visible, you must use the property names for `en-us`. You don't have to add localized values. The additional properties will automatically be shown in the language settings that the user has specified for Microsoft 365.

> [!IMPORTANT]
> When adding an attribute to profile card, it takes up to 24 hours for the addition to be displayed.

## Example

The following example displays the `Alias` attribute on the profile card.

``` http
POST https://graph.microsoft.com/beta/organization/{tenantid}/settings/profileCardProperties
Content-Type: application/json

{
  "directoryPropertyName": "Alias"
}
```

If successful, the response returns a `201 OK` response code and a **profileCardProperty** object in the response body. The value for the `Alias` attribute would be displayed on a user's profile card.

``` http
HTTP/1.1 201 OK
Content-type: application/json

{
  "directoryPropertyName": "Alias",
  "annotations": []
}
```

## Adding custom attributes

You can add any of the 15 Azure AD [custom extension attributes](/graph/api/resources/onpremisesextensionattributes?view=graph-rest-beta) to users' profile cards by configuring your organization settings and [adding the corresponding value as a profileCardProperty](/graph/api/organizationsettings-post-profilecardproperties?view=graph-rest-beta) in Microsoft Graph. You can add one **profileCardProperty** resource at a time.

It takes up to 24 hours for the changes to show on profile cards.

Custom properties are not searchable and can't be used to search for people across Microsoft apps and services.

The following table shows how the Azure AD custom extension attribute names correspond to the supported values for the **directoryPropertyName** property of the [profileCardProperty](/graph/api/resources/profilecardproperty?view=graph-rest-beta) resource. These Azure AD custom extension attribute names are *not case-sensitive*:

| Azure AD custom extension attribute | Value to specify as directoryPropertyName |
| ----------------------------------- | ----------------------------------------- |
| extensionAttribute1 | customAttribute1 |
| extensionAttribute2 | customAttribute2 |
| extensionAttribute3 | customAttribute3 |
| extensionAttribute4 | customAttribute4 |
| extensionAttribute5 | customAttribute5 |
| extensionAttribute6 | customAttribute6 |
| extensionAttribute7 | customAttribute7 |
| extensionAttribute8 | customAttribute8 |
| extensionAttribute9 | customAttribute9 |
| extensionAttribute10 | customAttribute10 |
| extensionAttribute11 | customAttribute11 |
| extensionAttribute12 | customAttribute12 |
| extensionAttribute13 | customAttribute13 |
| extensionAttribute14 | customAttribute14 |
| extensionAttribute15 | customAttribute15 |

## Example

The following example adds the first Azure AD custom extension attribute to the profile card, using the display name **Cost center**. For users that have set their language settings to German, the display name will be **Kostenstelle**.

``` http
POST https://graph.microsoft.com/beta/organization/{tenantid}/settings/profileCardProperties
Content-Type: application/json

{
  "directoryPropertyName": "customAttribute1",
  "annotations": [
    {
      "displayName": "Cost center",
      "localizations": [
        {
          "languageTag": "de",
          "displayName": "Kostenstelle"
        }
      ]
    }
  ]
}
```

If a language is not supported, the property name will be shown with the default value.

If successful, the response returns a `201 OK` response code and a **profileCardProperty** object in the response body. In this example you can assume that the profile card displays **Kostenstelle** for all users that have set their language settings to German on the profile card. For all other users, **Cost center** will be displayed on the profile card.

``` http
HTTP/1.1 201 OK
Content-type: application/json

{
  "directoryPropertyName": "customAttribute1",
  "annotations": [
    {
      "displayName": "Cost center",
      "localizations": [
        {
          "languageTag": "de",
          "displayName": "Kostenstelle"
        }
      ]
    }
  ]
}
```

## See also

- [Find your Microsoft 365 tenant ID](/onedrive/find-your-office-365-tenant-id)
- [onPremisesExtensionAttributes resource type](/graph/api/resources/onpremisesextensionattributes?view=graph-rest-beta)
- [User resource type](/graph/api/resources/user?view=graph-rest-beta)
- [Graph Explorer](https://developer.microsoft.com/graph/graph-explorer)
- [Get profileCardProperty](/graph/api/profilecardproperty-get?view=graph-rest-beta)
