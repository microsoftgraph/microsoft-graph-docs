---
title: "Create localized organizationalBrandingProperties"
description: "Create organization branding for a specific locale."
localization_priority: Normal
author: "kexia"
ms.prod: "microsoft-identity-platform"
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
POST /organization/{id}/branding/localizations
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
|backgroundImage|Stream|Image that appears as the background of the sign in page. .png or .jpg not larger than 1920x1080 and smaller than 300kb. A smaller image will reduce bandwidth requirements and make page loads more performant.|
|bannerLogo|Stream|A banner version of your company logo which appears appears on the sign-in page. .png or .jpg no larger than 36x245px. We recommend using a transparent image with no padding around the logo.|
|signInPageText|String|Text that appears at the bottom of the sign-in box. You can use this to communicate additional information, such as the phone number to your help desk or a legal statement. This text must be Unicode and not exceed 1024 characters.|
|squareLogo|Stream|Square version of your company logo. This appears in Windows 10 out-of-box (OOBE) experiences and when Windows Autopilot is enabled for deployment. .png or .jpg no larger than 240x240px and no more than 10kb in size. We recommend using a transparent image with no padding around the logo.|
|usernameHintText|String|String that shows as the hint in the username textbox on the sign in screen. This text must be Unicode, without links or code, and can't exceed 64 characters.|
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
  "name": "get_organizationalbrandingproperties"
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
[!INCLUDE [sample-code](../includes/snippets/csharp/get-organizationalbrandingproperties-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-organizationalbrandingproperties-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Objective-C](#tab/objc)
[!INCLUDE [sample-code](../includes/snippets/objc/get-organizationalbrandingproperties-objc-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-organizationalbrandingproperties-java-snippets.md)]
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
    "bannerLogo@odata.mediaContentType":"image/*",
    "bannerLogo@odata.mediaReadLink": null,
    "bannerLogo@odata.mediaEditLink": "https://graph.microsoft.com/beta/organization/d69179bf-f4a4-41a9-a9de-249c0f2efb1d/branding/localizations/fr/bannerLogo",
    "id": "fr",
    "squareLogo@odata.mediaContentType":"image/*",
    "squareLogo@odata.mediaReadLink": null,
    "squareLogo@odata.mediaEditLink": "https://graph.microsoft.com/beta/organization/d69179bf-f4a4-41a9-a9de-249c0f2efb1d/branding/localizations/fr/squareLogo"
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
