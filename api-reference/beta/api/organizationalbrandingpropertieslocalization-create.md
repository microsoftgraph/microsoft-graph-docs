---
title: "Create localized organizationalBrandingProperties"
description: "Create organization branding for a specific locale."
localization_priority: Normal
author: "AlexanderMars"
ms.prod: "identity-and-sign-in"
doc_type: "apiPageType"
---

# Create localized organizationalBrandingProperties

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create an [organizationalBrandingProperties](../resources/organizationalbrandingproperties.md) object for a specific locale.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged) |
|:---------------------------------------|:--------------------------------------------|
| Delegated (work or school account)     | Organization.ReadWrite.All |
| Delegated (personal Microsoft account) | Not supported. |
| Application                            | Not supported. |

## HTTP request

POST to branding/localizations to create a new localization. The id specified in the body is the locale for the localization. If no id is specified, then the value of the Content-Language header, if specified, is used as the id. If no id and no Content-Language header is specified, then an error is returned.
<!-- { "blockType": "ignored" } -->

```http
POST /organization/{tenant id}/branding/localizations
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

In the request body, supply the values for relevant fields that should be updated. Existing properties that are not included in the request body will maintain their previous values or be recalculated based on changes to other property values. For best performance, don't include existing values that haven't changed.

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
|id|String|Locale to create branding for|

## Response

If successful, this method returns a `201 CREATED` response code and the created [organizationalBrandingProperties](../resources/organizationalbrandingproperties.md) object in the response body.

## Examples

The following example creates a branding localization for French (fr).

### Request

The following is an example of the request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_organizationalbrandingproperties_7"
}-->

```http
POST https://graph.microsoft.com/beta/organization/d69179bf-f4a4-41a9-a9de-249c0f2efb1d/branding/localizations
Content-Type: application/json

{
    "backgroundColor":"#00000F",
    "id": "fr"
}
```
# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-organizationalbrandingproperties-7-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-organizationalbrandingproperties-7-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Objective-C](#tab/objc)
[!INCLUDE [sample-code](../includes/snippets/objc/get-organizationalbrandingproperties-7-objc-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-organizationalbrandingproperties-7-java-snippets.md)]
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

{
    "backgroundColor":"#00000F",
    "backgroundImage@odata.mediaContentType":"image/*",
    "backgroundImage@odata.mediaReadLink": null,
    "backgroundImage@odata.mediaEditLink": "https://graph.microsoft.com/beta/organization/d69179bf-f4a4-41a9-a9de-249c0f2efb1d/branding/localizations/fr/backgroundImage",
    "backgroundImageRelativeUrl": null,
    "bannerLogo@odata.mediaContentType":"image/*",
    "bannerLogo@odata.mediaReadLink": null,
    "bannerLogo@odata.mediaEditLink": "https://graph.microsoft.com/beta/organization/d69179bf-f4a4-41a9-a9de-249c0f2efb1d/branding/localizations/fr/bannerLogo",
    "bannerLogoRelativeUrl": null,
    "id": "fr",
    "squareLogo@odata.mediaContentType":"image/*",
    "squareLogo@odata.mediaReadLink": null,
    "squareLogo@odata.mediaEditLink": "https://graph.microsoft.com/beta/organization/d69179bf-f4a4-41a9-a9de-249c0f2efb1d/branding/localizations/fr/squareLogo",
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
The **mediaEditLink** specifies where the localized media is written. The mediaReadLink is null because no media has been set for the localization.

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Get organizationalBrandingProperties",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
