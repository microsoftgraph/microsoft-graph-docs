# filter resource type

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

Determines which objects should be provisioned to the application. For example, you might want to only provision users that are located in the US. When a scoping filter is present, objects that do not satisfy the filter will be skipped during synchronization.

Filter is part of [object mapping](synchronization_objectMapping.md). It consists of several sets of filter groups, and each filter group holds one or more clauses. An object is considered in scope for the group (the group is evaluated to `true`) only if all the clauses of the group are evaluated to `true`.

An object is considered in scope for the group set (group set is evaluated to `true`) if any of the groups in the set is evaluated to `true`.

For more information, see [Attribute-based application provisioning with scoping filters](https://docs.microsoft.com/en-us/azure/active-directory/active-directory-saas-scoping-filters)

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|categoryFilterGroups|[filterGroup](synchronization_filtergroup.md) collection|`*Experimental*` Filter group set used to decide whether given object belongs and should be processed as part of this object mapping. An object is considered in scope *if ANY of the groups in the collection is evaluated to `true`*.|
|groups|[filterGroup](synchronization_filtergroup.md) collection|Filter group set used to decide whether given object is in scope for provisioning. **This is the filter which should be used in most cases**. If an object used to satisfy this filter at a given moment, and then the object or the filter was changed so that filter is not satisfied any longer, such object *will get de-provisioned". An object is considered in scope *if ANY of the groups in the collection is evaluated to `true`*.|
|inputFilterGroups|[filterGroup](synchronization_filtergroup.md) collection|`*Experimental*` Filter group set used to filter out objects at the early stage of reading them from the directory. If an object doesn't satisfy this filter it will not be processed further. Important to understand is that if an object used to satisfy this filter at a given moment, and then the object or the filter was changed so that filter is no longer satisfied, such object *will NOT get de-provisioned*. An object is considered in scope *if ANY of the groups in the collection is evaluated to `true`*. |

## JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.filter"
}-->

```json
{
  "categoryFilterGroups": [{"@odata.type": "microsoft.graph.filterGroup"}],
  "groups": [{"@odata.type": "microsoft.graph.filterGroup"}],
  "inputFilterGroups": [{"@odata.type": "microsoft.graph.filterGroup"}]
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "filter resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->