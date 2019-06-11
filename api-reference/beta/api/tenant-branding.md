---
title: "Add OrganizationalBranding"
description: "Companies can add their organization's logo and custom color schemes to provide a consistent look-and-feel on their Azure Active Directory (Azure AD) sign-in pages. These sign-in pages appear when users sign in to their organization's web-based apps, such as Office 365, which uses Azure AD as their identity provider."
localization_priority: Normal
author: "anchanda"
ms.prod: "organization"
---

### New properties on `organization`

| Property          | Type             | Required | ReadOnly | Description                                                       |
| ----------------- | ---------------- | -------- | -------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `branding` | `collection(organizationalBranding)` | No       | No      | The collection of brandings defining the custom sign-in page properties. |

#### `organizationalBranding`

Organizations can customize their Azure AD sign-in pages, which appear when users sign in to the organization's tenant-specific apps, such as https://outlook.com/contoso.com, or when passing a domain variable, such as https://passwordreset.microsoftonline.com/?whr=contoso.com. Also as an ISV developer, they can read the company's branding information, and customize their app experience and tailor it specifically for the signed-in user, using their company's branding.

Companies can add different branding based on locale. Locale serves as a key in all requests.
>**NOTE**: The custom branding won't immediately appear when users go to sites such as, www.office.com. Instead, users have to enter their username before their customized branding appears.

Note: The entity set will be exposed as property `branding` under organization of type collection(organizationalBranding).(`../organization/{Id}/branding/{locale}`).

##### Properties

|Property|Type|Required|ReadOnly|Description|
|-|-|-|-|-|
|`id`|`Edm.String`|Yes|False|Id is same as locale property for now. Adding this due to be complient to MSGraph inheritance property. Going forward if we choose to expose functionality to have multiple brandings for one locale, this can be changed to hold different value. '0' for Default.|
|`locale`|`Edm.String`|Yes|False|Locale serves as Id for the branding. It specifies the language and ISO-639 string value (eg. en-US for English-US). Tenant can have multiple brandings based on locale. The language is automatically set as your default language, set while tenant creation:'0'. Read-only for PATCH|
|`backgroundColor`|`Edm.String`|No|False|Color that will appear in place of the background image in low-bandwidth connections. The primary color of your banner logo or your organization color is recommended to be used here. Specify this in hexadecimal (for example, white is #FFFFFF).|
|`bannerLogo`|`Edm.Stream`|No|False|A banner version of your company logo which appears appears on the sign-in page. .png or .jpg no larger than 36x245px. We recommend using a transparent image with no padding around the logo.|
|`signInPageText`|`Edm.String`|No|False|Text that appears at the bottom of the sign-in box. You can use this to communicate additional information, such as the phone number to your help desk or a legal statement. This text must be Unicode and not exceed 512 characters.|
|`backgroundImage`|`Edm.Stream`|No|False|Image that appears as the background of the sign in page. .png or .jpg not larger than 1920x1080 and smaller than 300kb.|
|`squareLogo`|`Edm.Stream`|No|False|Square version of your company logo. This appears in Windows 10 out-of-box (OOBE) experiences and when Windows Autopilot is enabled for deployment. .png or .jpg no larger than 240x240px and no more than 10kb in size. We recommend using a transparent image with no padding around the logo.|
|`usernameHintText`|`Edm.String`|No|False|String that shows as the hint in the username textbox on the sign in screen. If guests sign in to your app, we suggest not adding this hint. This text must be Unicode, without links or code, and can't exceed 64 characters.|

##### Supported functionality

> _Fill in the following table with the supported operations and any additional notes._

|Operation|Supported|Method        |Success   |Notes               |
|---------|:-------:|--------------|----------|--------------------|
|List     |✓       |`GET`         |`200`     |                    |
|Get      |✓       |`GET`         |`200`     |                    |
|Create   |✓       |`POST`        |`201`     |                    |
|Update   |✓       |`PATCH`/`PUT` |`204`     |                    |
|Delete   |✓       |`DELETE`      |`204`     |                    |

##### Supported query patterns

| Pattern                | Supported | Syntax                                 | Notes                                                                                                                                                                                                         |
| ---------------------- | :-------: | -------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Server-side pagination | ✓         | `@odata.nextLink`                      |                                                                                                                                                            |
| Filter                 | X         | `/branding?$filter=backgroundColor eq '#FFF0'` | Listing of branding entity is not supported|

## Error conditions and messages

|Scenario|Method|Code|Message|
|--------|------|----|-------|
|Invalid locale value|POST,PUT,PATCH,DELETE|400|Invalid value specified for property 'locale' of resource 'branding'.|
|Duplicate locale|POST,PATCH|400|Another object with the same value for property locale already exists
|User doesn't have appropriate permission scope|All|403|Your account does not have access to this report or data. Please contact your global administrator to request access.|
|Locale not Found|GET|404|Resource not found for the segment 'organizationalBranding'|
|No locale specified while creating|POST|500|Encountered an internal server error|
|User is using edition that doesn't expose tenant branding feature|POST,PUT,PATCH|403|Tenant Branding requires Azure AD Basic or above edition. Please upgrade your edition to use this feature. Refer https://azure.microsoft.com/en-us/pricing/details/active-directory/ for pricing information.|

## Permissions scopes

### API re-uses existing Graph permissions

|Type|Permission|Notes|
|-|-|-|
|Read|`Organization.Read.All`, `User.Read`, `User.Read.All`, `User.ReadBasic.All`| Tenant Users can read|
|Write|`Organization.ReadWrite.All`| Users with write permissions can update.|

## Example REST operations

### Use case:  Get organizationalBranding

#### Request

```http
GET https://graph.microsoft.com/beta/organization/d69179bf-f4a4-41a9-a9de-249c0f2efb1d/branding/en
```

#### Response

```json
HTTP/1.1 200 OK
{
  "backgroundColor":"#FFFF33",
  "signInPageText":"Ankita's company",
  "id":"en",
  "backgroundImage@odata.mediaContentType":"image/*",
  "backgroundImage@odata.mediaEditLink":"https://graph.microsoft.com/beta/organization/d69179bf-f4a4-41a9-a9de-249c0f2efb1d/branding/en/bannerLogo",
  "locale":"en",
  "usernameHintText":"name"
}
```

### Use case: Create organizationalBranding

#### Request

```http
POST https://graph.microsoft.com/beta/organization/d69179bf-f4a4-41a9-a9de-249c0f2efb1d/branding
{
    "locale" : "en-US",
    "backgroundColor":"#FFFF33"
}
```

#### Response

```json
HTTP/1.1 201 OK
{
  "backgroundColor":"#FFFF33",
  "signInPageText":"",
  "id":"en-US",
  "locale":"en-US",
  "usernameHintText":""
}
```

### Use case: Adding/Updating BannerLogo for organizationalBranding

#### Request

```http
PUT https://graph.microsoft.com/beta/organization/d69179bf-f4a4-41a9-a9de-249c0f2efb1d/branding/en/bannerLogo/
```

Content-Type: image/jpeg

Binary data for the image

#### Response

```json
HTTP/1.1 204 NO CONTENT
```

### Use case:  Update organizationalBranding

#### Request

```http
PATCH
https://graph.microsoft.com/beta/organization/d69179bf-f4a4-41a9-a9de-249c0f2efb1d/branding/en
{
    "backgroundColor":"#FFFF00"
}
```

#### Response

```json
HTTP/1.1 204 NO CONTENT
{
}
```

### Use case:  Delete locale for organizationalBranding

#### Request

```http
DELETE https://graph.microsoft.com/beta/organization/d69179bf-f4a4-41a9-a9de-249c0f2efb1d/branding/en
```

#### Response

```json
HTTP/1.1 204 NO CONTENT
```

### Use case:  Delete BannerLogo for organizationalBranding

#### Request

```http
DELETE https://graph.microsoft.com/v1.0/organization/d69179bf-f4a4-41a9-a9de-249c0f2efb1d/branding/en/bannerLogo
```

#### Response

```json
HTTP/1.1 204 NO CONTENT
```

### Use case:  Get Null BannerLogo for organizationalBranding

#### Request

```http
GET https://graph.microsoft.com/beta/organization/d69179bf-f4a4-41a9-a9de-249c0f2efb1d/branding/en/bannerLogo
```

#### Response

```json
HTTP/1.1 204 NO CONTENT
```

## CLI and PowerShell

No new cmdlets
