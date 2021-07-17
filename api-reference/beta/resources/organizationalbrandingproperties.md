---
title: "organizationalBrandingProperties resource type"
description: "Contains details of the organization's branding."
localization_priority: Normal
author: "AlexanderMars"
ms.prod: "identity-and-sign-in"
doc_type: "resourcePageType"
---

# organizationalBrandingProperties resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

>[!NOTE]
>Adding custom branding requires you to use Azure Active Directory Premium 1, Premium 2, or Basic editions, or to have a Microsoft 365 license. For more information about licensing and editions, see [Sign up for Azure AD Premium](/azure/active-directory/fundamentals/active-directory-get-started-premium).<br><br>Azure AD Premium and Basic editions are available for customers in China using the worldwide instance of Azure Active Directory. Azure AD Premium and Basic editions aren't currently supported in the Azure service operated by 21Vianet in China. For more information, talk to us using the [Azure Active Directory Forum](https://feedback.azure.com/forums/169401-azure-active-directory/).

Contains details about the organization's branding.

Organizations can customize their Azure AD sign-in pages which appear when users sign in to their organization's tenant-specific apps, or when Azure AD identifies the user's tenant from their username. A developer can also read the company's branding information and customize their app experience to tailor it specifically for the signed-in user using their company's branding.

Companies can add different branding based on locale. Locale serves as a key in all requests.

>**Note:** Branding is exposed as a property under organization with a collection of locale-specific localizations. **organizationalBrandingProperties** is an abstract class which defines properties for **organizationalBranding**.

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [Create](../api/organizationalbrandingproperties-create.md) | [organizationalBrandingProperties](organizationalbrandingproperties.md) | Create organizational branding with organizationalBrandingProperties object. |
| [Get](../api/organizationalbrandingproperties-get.md) | [organizationalBrandingProperties](organizationalbrandingproperties.md) | Read properties and relationships of organizationalBrandingProperties object. |
| [Update](../api/organizationalbrandingproperties-update.md) | [organizationalBrandingProperties](organizationalbrandingproperties.md) | Update organizationalBrandingProperties object. |
| [Delete](../api/organizationalbrandingproperties-delete.md) | None | Delete organizationalBrandingProperties object. |

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|backgroundColor|String| Color that will appear in place of the background image in low-bandwidth connections. The primary color of your banner logo or your organization color is recommended for use here. Specify this in hexadecimal (for example, white is #FFFFFF). |
|backgroundImage|Stream| Image that appears as the background of the sign in page. Allowed types are PNG or JPEG not smaller than 300 kb and not larger than 1920 × 1080 pixels. A smaller image will reduce bandwidth requirements and make page loads more performant. |
|backgroundImageRelativeUrl|String| A read-only, relative link of the **backgroundImage** property served via a CDN provider. Combine it with one value of the **cdnList** property to form the absolute URL. If the current CDN provider is down or responds with an error code, try with a different value of the **cdnList** property. |
|bannerLogo|Stream| A banner version of your company logo which appears appears on the sign-in page. Allowed types are PNG or JPEG no larger than 36 × 245 pixels. We recommend using a transparent image with no padding around the logo. |
|bannerLogoRelativeUrl |String|A read-only, relative link of the **bannerLogo** property served via a CDN provider. Combine it with one value of the **cdnList** property to form the absolute URL. If the current CDN provider is down or responds with an error code, try with a different value of the **cdnList** property. |
|cdnList |Collection(String)|A list of base URLs for all the CDN providers that are being used to serve the given image. Several CDN providers are used at the same time for high availability of read requests. For read requests, use the CDN version of the image properties for reduced latency and high availability. |
|id|String| Inherited from microsoft.graph.entity. It is the locale specified in ISO 639 standard. For example, `en-us` or `en` for English. Going forward if we expose functionality to have multiple brandings for one locale, this can be changed. Note that **id** for the default branding is always `und` until we have keyless singletons. Read-only. |
|signInPageText|String| Text that appears at the bottom of the sign-in box. You can use this to communicate additional information, such as the phone number to your help desk or a legal statement. This text must be Unicode and not exceed 1024 characters. |
|squareLogo|Stream| Square version of your company logo that appears in Windows 10 out-of-box experiences (OOBE) and when Windows Autopilot is enabled for deployment. Allowed types are PNG or JPEG no larger than 240 ⅹ 240 pixels and no more than 10 KB in size. We recommend using a transparent image with no padding around the logo. |
|squareLogoRelativeUrl |String|A read-only, relative link of the **squareLogo** property served via a CDN provider. Combine it with one value of the **cdnList** property to form the absolute URL. If the current CDN provider is down or responds with an error code, try with a different value of the **cdnList** property. |
|usernameHintText|String| String that shows as the hint in the username textbox on the sign in screen. This text must be Unicode, without links or code, and can't exceed 64 characters. |
|customAccountResetCredentialsUrl|String| String of custom URL for reseting account credentials.This text must be Unicode and not exceed 128 characters.|
|customCannotAcessYourAccountText|String| String to replace the display text for the "Cannot access your account” hyperlink  inside of the sign-in form.This text must be Unicode and not exceed 256 characters.|
|customCannotAcessYourAccountUrl|String| String of custom URL to “Common URL“ field to replace Microsoft Self-Service Password Reset (SSPR) solution hyperlink.This text must be Unicode and not exceed 128 characters.|
|customForgotMyPasswordText|String| String to replace the default display text of "Forgot my password" hyperlink inside of the sign-in form. This text must be Unicode and not exceed 256 characters.|
|customPrivacyAndCookiesText|Edm.String|String to replace a default value of the Privacy and Cookies URL display text in the footer.This text must be Unicode and not exceed 256 characters.|
|customPrivacyAndCookiesUrl|String|String of custom URL to replace the default value of the Privacy and Cookies Url in the footer.This text must be Unicode and not exceed 128 characters.|
|customResetItNowText|String|String to replace the display text for the password reset solution hyperlink.This text must be Unicode and not exceed 256 characters.|
|customTermsofUseText|String|String to replace the display text for the Terms of Use” hyperlink in the footer. This text must be Unicode and not exceed 256 characters.|
|customTermsOfUseUrl|String| String of custom URL to replace the default value of the Terms of Use URL in the footer. This text must be Unicode and not exceed 128characters.|
|favicon|Stream| A custom browser icon (favicon) to replace a default “Microsoft logo” value utilizing AAD Company Branding blade.|
|faviconRelativeUrl|String| A read-only, relative link of the **favicon** property served via a CDN provider. Combine it with one value of the **cdnList** property to form the absolute URL. If the current CDN provider is down or responds with an error code, try with a different value of the **cdnList** property.|
|headerBackgroundColor|String| String containing RGB color that will enable admins customize the color of the header|
|loginPageTextVisibilitySettings|Microsoft.graph.loginPageTextVisibilitySettings|This is a complex type that represents the various texts that can be hidden on the login page for a tenant|

## Relationships

None

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.organizationalBrandingProperties",
  "keyProperty": "id"
}-->

```json
{
  "backgroundColor": "String",
  "backgroundImage": "Stream",
  "backgroundImageRelativeUrl": "String",
  "bannerLogo": "Stream",
  "bannerLogoRelativeUrl": "String",
  "cdnList": "Collection (String)",
  "id": "String (identifier)",
  "signInPageText": "String",
  "squareLogo": "Stream",
  "squareLogoRelativeUrl": "String",
  "usernameHintText": "String",
  "customAccountResetCredentialsUrl": "String",
  "customCannotAccessYourAccountText": "String",
  "customCannotAccessYourAccountUrl": "String",
  "customForgotMyPasswordText": "String",
  "customPrivacyAndCookiesText": "String",
  "customPrivacyAndCookiesUrl": "String",
  "customResetItNowText": "String",
  "customTermsOfUseText": "String",
  "customTermsOfUseUrl": "String",
  "favicon": "Stream",
  "faviconRelativeUrl": "String",
  "headerBackgroundColor": "String",
  "loginPageTextVisibilitySettings": "Microsoft.graph.loginPageTextVisibilitySettings"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "organizationalBrandingProperties resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
