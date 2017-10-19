# messageRule resource type

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

A rule that applies to messages in the Inbox of a user.

In Outlook, you can set up rules for incoming messages in the Inbox to carry out specific actions upon certain conditions. 

Programmatically, you can access rules through the **messageRules** navigation property of the Inbox [folder](mailfolder.md). 
Each rule is represented by this **messageRule** resource, available rule actions are represented by the [messageRuleActions](messageruleactions.md) complex type, 
and available rule conditions and exceptions are represented by the [messageRulePredicates](messagerulepredicates.md) complex type.


## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
| actions | [messageRuleActions](messageruleactions.md) | Actions to be taken on a message when the corresponding conditions are fulfilled. |
| conditions | [messageRulePredicates](messagerulepredicates.md) | Conditions that when fulfilled, will trigger the corresponding actions for that rule. |
| displayName | String | The display name of the rule. |
| exceptions | [messageRulePredicates](messagerulepredicates.md) | Exception conditions for the rule. |
| hasError | Boolean | Indicates whether the rule is in an error condition. Read-only. |
| id |String|The unique identifier of the rule. Read-only.|
| isEnabled | Boolean | Indicates whether the rule is enabled to be applied to messages. |
| isReadOnly | Boolean | Indicates if the rule is read-only and cannot be modified or deleted by the rules REST API. |
| sequence | Int32 | Indicates the order in which the rule is executed, among other rules. |


## JSON representation
Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [
   ],
  "@odata.type": "microsoft.graph.messageRule"
}-->

```json
{
  "actions": {"@odata.type": "microsoft.graph.messageRuleActions"},
  "conditions": {"@odata.type": "microsoft.graph.messageRulePredicates"},
  "displayName": "String",
  "exceptions": {"@odata.type": "microsoft.graph.messageRulePredicates"},
  "hasError": "Boolean",
  "id": "String",
  "isEnabled": "Boolean",
  "isReadOnly": "Boolean",
  "sequence": "Int32"
}

```

## Methods
| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[List rules](../api/mailfolder_list_messagerules.md) | [messageRule](messagerule.md) collection |Get all the **messageRule** objects defined for the user's Inbox.|
|[Get rule](../api/messagerule_get.md) | [messageRule](messagerule.md) |Read the properties and relationships of a **messageRule** object.|
|[Create](../api/mailfolder_post_messagerules.md) | [messageRule](messagerule.md) |Create a **messageRule** object by specifying a set of conditions and actions.|
|[Update](../api/messagerule_update.md) | [messageRule](messagerule.md) |Change writable properties on a **messageRule** object and save the changes. |
|[Delete](../api/messagerule_delete.md) | None |Delete the specified **messageRule** object. |

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "messageRule resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->