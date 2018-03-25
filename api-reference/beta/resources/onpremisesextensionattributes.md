# onPremisesExtensionAttributes resource type

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

The **onPremisesExtensionAttributes** property of the [user](user.md) entity contains fifteen custom extension attribute properties. For an **onPremisesSyncEnabled** user, this set of properties is mastered in on-premises Active Directory and synchronized to Azure AD, and is read-only. For a cloud-only user (where **onPremisesSyncEnabled** is false), these properties may be set during creation or update.


## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|extensionAttribute1|String| First customizable extension attribute. |
|extensionAttribute2|String| Second customizable extension attribute. |
|extensionAttribute3|String| Third customizable extension attribute. |
|extensionAttribute4|String| Fourth customizable extension attribute. |
|extensionAttribute5|String| Fifth customizable extension attribute. |
|extensionAttribute6|String| Sixth customizable extension attribute. |
|extensionAttribute7|String| Seventh customizable extension attribute. |
|extensionAttribute8|String| Eighth customizable extension attribute. |
|extensionAttribute9|String| Ninth customizable extension attribute. |
|extensionAttribute10|String| Tenth customizable extension attribute. |
|extensionAttribute11|String| Eleventh customizable extension attribute. |
|extensionAttribute12|String| Twelfth customizable extension attribute. |
|extensionAttribute13|String| Thirteenth customizable extension attribute. |
|extensionAttribute14|String| Fourteenth customizable extension attribute. |
|extensionAttribute15|String| Fifteenth customizable extension attribute. |

## JSON representation

Here is a JSON representation of the resource

```json
{
      "extensionAttribute1": "string",
      "extensionAttribute2": "string",
      "extensionAttribute3": "string",
      "extensionAttribute4": "string",
      "extensionAttribute5": "string",
      "extensionAttribute6": "string",
      "extensionAttribute7": "string",
      "extensionAttribute8": "string",
      "extensionAttribute9": "string",
      "extensionAttribute10": "string",
      "extensionAttribute11": "string",
      "extensionAttribute12": "string",
      "extensionAttribute13": "string",
      "extensionAttribute14": "string",
      "extensionAttribute15": "string"
  }

```
