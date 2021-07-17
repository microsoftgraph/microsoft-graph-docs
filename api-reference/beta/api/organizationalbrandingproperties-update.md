---
title: "Update organizationalBrandingProperties"
description: "Update the properties of an organizationalBrandingProperties object."
localization_priority: Normal
author: "AlexanderMars"
ms.prod: "identity-and-sign-in"
doc_type: "apiPageType"
---

# Update organizationalBrandingProperties

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of an [organizationalBrandingProperties](../resources/organizationalbrandingproperties.md) object.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged) |
|:---------------------------------------|:--------------------------------------------|
| Delegated (work or school account)     | Organization.ReadWrite.All |
| Delegated (personal Microsoft account) | Not supported. |
| Application                            | Not supported. |

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
PATCH /organization/{tenant id}/branding
PUT /organization/{tenant id}/branding
```

## Request headers

| Name       | Description|
|:-----------|:-----------|
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

The **id** property is ignored when passed in.

## Response

If successful, this method returns a `204 OK` response code.

## Examples
### Example 1: Update default branding
If the branding already exists, `PATCH` will replace only the specified properties, leaving unspecified properties unchanged. 
#### Request

The following is an example of the request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "update_organizationalbrandingproperties_1"
}-->

```http
PATCH https://graph.microsoft.com/beta/organization/d69179bf-f4a4-41a9-a9de-249c0f2efb1d/branding
Content-Type: application/json

{
    "signInPageText":"Default",
    "usernameHintText":"DefaultHint"
}
```
# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/update-organizationalbrandingproperties-1-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/update-organizationalbrandingproperties-1-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Objective-C](#tab/objc)
[!INCLUDE [sample-code](../includes/snippets/objc/update-organizationalbrandingproperties-1-objc-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/update-organizationalbrandingproperties-1-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---


#### Response
The following is an example of the response.

<!-- {
  "blockType": "response"
} -->

```http
HTTP/1.1 204 OK
```

In this case, the values of the default branding are updated but no values are changed on any localization.

### Example 2: Update bannerLogo for default branding
The following request updates the banner logo for the default branding.
#### Request

The following is an example of the request.

<!-- {
  "blockType": "request",
  "name": "update_organizationalbrandingproperties_2"
}-->

```http
PATCH https://graph.microsoft.com/beta/organization/d69179bf-f4a4-41a9-a9de-249c0f2efb1d/branding/bannerLogo
Content-Type: image/jpeg

<Image>
```

#### Response
The following is an example of the response.

<!-- {
  "blockType": "response"
} -->

```http
HTTP/1.1 204 No Content
```

### Example 3: Update localized branding
If **Content-Language** header is specified, the localization associated with **Content-Language** is first created if it doesn't already exist, and then updated using the specified values. The default branding is not changed.
#### Request

The following is an example of the request.
<!-- {
  "blockType": "request",
  "name": "update_organizationalbrandingproperties_3"
}-->

```http
PATCH https://graph.microsoft.com/beta/organization/d69179bf-f4a4-41a9-a9de-249c0f2efb1d/branding
Content-Type: application/json
Content-Language: fr

{
    "backgroundColor":"#FFFF33"
}
```

#### Response
The following is an example of the response.

<!-- {
  "blockType": "response"
} -->

```http
HTTP/1.1 204 No Content
```

Following this request, the `fr` localization is updated with the new value of **backgroundColor**, but no change is made to the default branding.

### Example 4: Replace default branding and all localizations
If the branding already exists, `PUT` will replace the default branding and any localizations.
#### Request

The following is an example of the request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "update_organizationalbrandingproperties_4"
}-->

```http
PUT https://graph.microsoft.com/beta/organization/d69179bf-f4a4-41a9-a9de-249c0f2efb1d/branding
Content-Type: application/json
Content-Language: fr

{
    "backgroundColor":"#FFFF33"
}
```
# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/update-organizationalbrandingproperties-4-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/update-organizationalbrandingproperties-4-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Objective-C](#tab/objc)
[!INCLUDE [sample-code](../includes/snippets/objc/update-organizationalbrandingproperties-4-objc-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/update-organizationalbrandingproperties-4-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---


#### Response
The following is an example of the response.

<!-- {
  "blockType": "response"
} -->

```http
HTTP/1.1 204 No Content
```

Following this request, the default branding has only the **backgroundColor** specified and has exactly one localization with the **id** `fr`, also with the **backgroundColor** set.
<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Update organizationalbrandingproperties",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
