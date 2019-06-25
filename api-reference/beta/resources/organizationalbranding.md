---
title: "organizationalBranding resource type"
description: "PROVIDE DESCRIPTION HERE"
localization_priority: Normal
author: "anchanda"
ms.prod: "branding"
doc_type: "resourcePageType"
---

# organizationalBranding resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

You can use this API to read a company's [branding](https://docs.microsoft.com/en-us/azure/active-directory/fundamentals/customize-branding) information to customize your app's experience specifically for your signed-in users. You can customize your Azure AD sign-in pages, which appear when users sign in to the your organization's tenant-specific apps, such as https://outlook.com/contoso.com , or when passing a domain variable, such as https://passwordreset.microsoftonline.com/?whr=contoso.com .

You can also add multiple branding based on locale. Locale serves as a key in all requests. Locale is a [ISO-639](https://www.iso.org/standard/4767.html) language code that determines branding language.

NOTE: The custom branding won't immediately appear when users go to sites such as, www.office.com . Instead, users have to enter their username before their customized branding appears.

> [!NOTE]
> Adding custom branding requires you to use Azure Active Directory Premium 1, Premium 2, or Basic editions, or to have an Office 365 license. For more information about licensing and editions, see Sign up for Azure AD Premium.

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [Get organizationalBranding](../api/organization-get-branding.md) | [organizationalBranding](organizationalbranding.md) | List all Brandings associated with organization. |
| [List organizationalBranding](../api/organization-list-brandings.md) | [organizationalBranding](organizationalbranding.md) | Read properties and relationships of organizationalBranding object. |
| [Create](../api/organization-create-brandings.md ) | [organizationalBranding](organizationalbranding.md) | Create organizationalBranding object. |
| [Update](../api/organizationalbranding-update.md) | [organizationalBranding](organizationalbranding.md) | Update organizationalBranding object. |
| [Delete](../api/organizationalbranding-delete.md) | None | Delete organizationalBranding object. |

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|backgroundColor|String|Color that will appear in place of the background image in low-bandwidth connections. The primary color of your banner logo or your organization color is recommended to be used here. Specify this in hexadecimal (for example, white is #FFFFFF).|
|backgroundImage|Stream|Image that appears as the background of the sign in page. .png or .jpg not larger than 1920x1080 and smaller than 300kb.|
|bannerLogo|Stream|A banner version of your company logo which appears appears on the sign-in page. .png or .jpg no larger than 36x245px. We recommend using a transparent image with no padding around the logo.|
|id|String| Id is same as locale property for now. Adding this due to be complient to MSGraph inheritance property. Going forward if we choose to expose functionality to have multiple brandings for one locale, this can be changed to hold different value. '0' for Default.|
|locale|String|Locale serves as Id for the branding. It specifies the language and ISO-639 string value (eg. en-US for English-US). Tenant can have multiple brandings based on locale. The language is automatically set as your default language, set while tenant creation:'0'. Read-only for PATCH|
|signInPageText|String|Text that appears at the bottom of the sign-in box. You can use this to communicate additional information, such as the phone number to your help desk or a legal statement. This text must be Unicode and not exceed 512 characters.|
|squareLogo|Stream|Square version of your company logo. This appears in Windows 10 out-of-box (OOBE) experiences and when Windows Autopilot is enabled for deployment. .png or .jpg no larger than 240x240px and no more than 10kb in size. We recommend using a transparent image with no padding around the logo.|
|usernameHintText|String|	String that shows as the hint in the username textbox on the sign in screen. If guests sign in to your app, we suggest not adding this hint. This text must be Unicode, without links or code, and can't exceed 64 characters.|

## Relationships

None

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.organizationalBranding",
  "baseType": "",
  "keyProperty": "id"
}-->

```json
{
  "backgroundColor": "String",
  "backgroundImage": "Stream",
  "bannerLogo": "Stream",
  "id": "String (identifier)",
  "locale": "String",
  "signInPageText": "String",
  "squareLogo": "Stream",
  "usernameHintText": "String"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "organizationalBranding resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
