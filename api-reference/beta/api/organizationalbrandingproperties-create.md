---
title: "Create organizationalBrandingProperties"
description: "Create organization branding."
localization_priority: Normal
author: "AlexanderMars"
ms.prod: "identity-and-sign-in"
doc_type: "apiPageType"
---

# Create organizationalBrandingProperties

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create an [organizationalBrandingProperties](../resources/organizationalbrandingproperties.md) object. This creates the default branding and optionally a localized branding at the same time. The default branding is loaded when a localized branding set isn't configured for the user's browser language.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged) |
|:---------------------------------------|:--------------------------------------------|
| Delegated (work or school account)     | Organization.ReadWrite.All |
| Delegated (personal Microsoft account) | Not supported. |
| Application                            | Not supported. |

## HTTP request

A branding is created for an organization, if one does not already exist, using PUT or PATCH.

If branding is already configured, PUT will overwrite all existing values regardless of what's in the request body. PATCH will only overite the values that are included in the request body, leaving the values not included unchanged.

The **id** property is ignored on PUT/PATCH to the /branding singleton. If Content-Language is not specified, the default branding is created, which corresponds to an **id** of `und`. If Content-Language is specified, branding is created for that locale.
<!-- { "blockType": "ignored" } -->

```http
PUT /organization/{tenant id}/branding
PATCH /organization/{tenant id}/branding
```

## Optional query parameters

This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

| Name      |Description|
|:----------|:----------|
| Authorization | Bearer {token}. Required. |
| Content-Type  | application/json. Required.  |
| Content-Language  | Locale. Optional.  |

## Request body

In the request body, supply a JSON representation of [organizationalBrandingProperties](../resources/organizationalbrandingproperties.md) object. The following table lists the properties that are required when you create the default branding.

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|backgroundColor|String|Color that will appear in place of the background image in low-bandwidth connections. The primary color of your banner logo or your organization color is recommended to be used here. Specify this in hexadecimal (for example, white is #FFFFFF).|
|backgroundImage|Stream| Image that appears as the background of the sign in page. Allowed types are PNG or JPEG no larger than 1920 x 1080 pixels, and smaller than 300kb. A smaller image will reduce bandwidth requirements and make page loads more performant. |
|bannerLogo|Stream| A banner version of your company logo which appears appears on the sign-in page. Allowed types are PNG or JPEG no larger than 36 × 245 pixels. We recommend using a transparent image with no padding around the logo. |
|signInPageText|String|Text that appears at the bottom of the sign-in box. You can use this to communicate additional information, such as the phone number to your help desk or a legal statement. This text must be Unicode and not exceed 1024 characters.|
|squareLogo|Stream| Square version of your company logo that appears in Windows 10 out-of-box experiences (OOBE) and when Windows Autopilot is enabled for deployment. Allowed types are PNG or JPEG no larger than 240 ⅹ 240 pixels and no more than 10 KB in size. We recommend using a transparent image with no padding around the logo. |
|usernameHintText|String|String that shows as the hint in the username textbox on the sign in screen. This text must be Unicode, without links or code, and can't exceed 64 characters.|
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

## Response

If successful, this method returns a `201 Created` response code and the created [organizationalBrandingProperties](../resources/organizationalbrandingproperties.md) object in the response body.

## Examples

The following example creates default branding and localization for en-US.

### Request

The following is an example of the request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_organizationalbrandingproperties_1"
}-->

```http
PUT https://graph.microsoft.com/beta/organization/d69179bf-f4a4-41a9-a9de-249c0f2efb1d/branding
Content-Type: application/json
Content-Language: en-US

{
    "backgroundColor":"#FFFF33",
    "signInPageText":"Welcome",
    "usernameHintText":"hint"
}
```
# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-organizationalbrandingproperties-1-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-organizationalbrandingproperties-1-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Objective-C](#tab/objc)
[!INCLUDE [sample-code](../includes/snippets/objc/get-organizationalbrandingproperties-1-objc-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-organizationalbrandingproperties-1-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---


### Response

The following is an example of the response.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.organizationalBrandingProperties"
} -->

```http
HTTP/1.1 201 Created
Content-Type: application/json
Content-Language: en-US

{
    "backgroundColor":"#FFFF33",
    "backgroundImage@odata.mediaContentType":"image/*",
    "backgroundImage@odata.mediaReadLink": "https://graph.microsoft.com/beta/organization/d69179bf-f4a4-41a9-a9de-249c0f2efb1d/branding/backgroundImage",
    "backgroundImage@odata.mediaEditLink": "https://graph.microsoft.com/beta/organization/d69179bf-f4a4-41a9-a9de-249c0f2efb1d/branding/localizations/en-US/backgroundImage",
    "backgroundImageRelativeUrl": null,
    "bannerLogo@odata.mediaContentType":"image/*",
    "bannerLogo@odata.mediaReadLink": "https://graph.microsoft.com/beta/organization/d69179bf-f4a4-41a9-a9de-249c0f2efb1d/branding/bannerLogo",
    "bannerLogo@odata.mediaEditLink": "https://graph.microsoft.com/beta/organization/d69179bf-f4a4-41a9-a9de-249c0f2efb1d/branding/localizations/en-US/bannerLogo",
    "bannerLogoRelativeUrl": null,
    "cdnList": [
        "aadcdn.msftauthimages.net",
        "aadcdn.msauthimages.net"
    ],
    "id": "und",
    "signInPageText":"Welcome",
    "squareLogo@odata.mediaContentType":"image/*",
    "squareLogo@odata.mediaReadLink": "https://graph.microsoft.com/beta/organization/d69179bf-f4a4-41a9-a9de-249c0f2efb1d/branding/squareLogo",
    "squareLogo@odata.mediaEditLink": "https://graph.microsoft.com/beta/organization/d69179bf-f4a4-41a9-a9de-249c0f2efb1d/branding/localizations/en-US/squareLogo",
    "squareLogoRelativeUrl": null,
    "usernameHintText":"hint",
    "customAccountResetCredentialsUrl":null,
    "customCannotAccessYourAccountText":null,
    "customCannotAccessYourAccountUrl":null,
    "customForgotMyPasswordText":null,
    "customPrivacyAndCookiesText":null,
    "customPrivacyAndCookiesUrl":null,
    "customResetItNowText":null,
    "customTermsofUseText":null,  
    "customTermsofUseUrl":null,
    "favicon":null,
    "faviconRelativeUrl":null,
    "headerBackgroundColor":null,
    "loginPageTextVisibilitySettings":{
        "hideCannotAccessYourAccount":false,
        "hideTermsOfUse":false,
        "hidePrivacyAndCookies": true,
        "hideForgotMyPassword": false,
        "hideResetItNow":true
    }  
}
```

In this case, the default branding object is set. Localized branding for en-US is also set due to the Content-Language in the header, even though the en-US branding set is not returned in the response. Note that Content-Language in the request is optional, and if not present, will only set default branding.

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Get organizationalBrandingProperties",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
