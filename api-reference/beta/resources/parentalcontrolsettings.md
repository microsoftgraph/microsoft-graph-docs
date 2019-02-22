---
title: "parentalControlSettings resource type"
description: "Specifies parental control settings for an application. These settings control the consent experience."
localization_priority: Normal
---

# parentalControlSettings resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Specifies parental control settings for an application. These settings control the consent experience.

## Properties

| Property | Type | Description |
:---------------|:--------|:----------|
|countriesBlockedForMinors|String collection| Specifies the [two-letter ISO country codes](https://www.iso.org/iso-3166-country-codes.html). Access to the application will be blocked for minors from the countries specified in this list.|
|legalAgeGroupRule| String | Specifies the legal age group rule that applies to users of the app. Can be set to one of the following values: <table><tr><th>Value</th><th>Description</th></tr><tr><td>Allow</td><td>Default. Enforces the legal minimum. This means parental consent is required for minors in the European Union and Korea.</td></tr><tr><td>RequireConsentForPrivacyServices</td><td>Enforces the user to specify date of birth to comply with COPPA rules. </td></tr><tr><td>RequireConsentForMinors</td><td>Requires parental consent for ages below 18, regardless of country minor rules.</td></tr><tr><td>RequireConsentForKids</td><td>Requires parental consent for ages below 14, regardless of country minor rules.</td></tr><tr><td>BlockMinors</td><td>Blocks minors from using the app.</td></tr></table> |

## JSON representation
Here is a JSON representation of the resource.

```json
{
  "countriesBlockedForMinors": [ "String" ],
  "legalAgeGroupRule": "String"
}

```
<!--
{
  "type": "#page.annotation",
  "suppressions": [
    "Error: /api-reference/beta/resources/parentalcontrolsettings.md:\r\n      Exception processing links.\r\n    System.ArgumentException: Link Definition was null. Link text: !INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)\r\n      at ApiDoctor.Validation.DocFile.get_LinkDestinations()\r\n      at ApiDoctor.Validation.DocSet.ValidateLinks(Boolean includeWarnings, String[] relativePathForFiles, IssueLogger issues, Boolean requireFilenameCaseMatch, Boolean printOrphanedFiles)"
  ]
}
-->
