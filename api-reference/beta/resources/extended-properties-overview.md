# Outlook extended properties overview

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

Extended properties allow storing custom data and specifically serve as a fallback mechanism for apps to access 
custom data for Outlook MAPI properties when these properties are _not already exposed in the Microsoft Graph API metadata_. 
You can use extended properties REST API to store or get such custom data in the following user resources:

- [message](../resources/message.md)
- [mailFolder](../resources/mailfolder.md)
- [event](../resources/event.md)
- [calendar](../resources/calendar.md)
- [contact](../resources/contact.md)
- [contactFolder](../resources/contactfolder.md)
- [Outlook task](../resources/outlooktask.md)
- [Outlook task folder](../resources/outlooktaskfolder.md) 

Or, in the following Office 365 group resources:

- group [event](../resources/event.md)
- group [calendar](../resources/calendar.md)
- group [post](../resources/post.md) 

## Use extended properties or open extensions?

In most common scenarios, you should be able to use open extensions (represented by [openTypeExtension](../resources/opentypeextension.md), formerly known as 
Office 365 data extensions) to store and access custom data for resource instances in a user's mailbox. Use extended properties only if you
need to access custom data for Outlook MAPI properties that are not already exposed in the 
[Microsoft Graph API metadata](http://developer.microsoft.com/en-us/graph/docs/overview/call_api).

## Types of extended properties

Depending on whether you intend to store a single or multiple values (of the same type) in an extended property, you can 
create an extended property as a [singleValueLegacyExtendedProperty](../resources/singleValueLegacyExtendedProperty.md), 
or [multiValueLegacyExtendedProperty](../resources/multiValueLegacyExtendedProperty.md).

Each of these types identifies the property by its **id** and stores data in **value**. 

You can use **id** to get a specific resource instance together with that extended property, or filter on 
a single-value extended property to get all the instances that have that property. 

**Note** You cannot use the REST API to get all the extended properties of a specific instance in one call.
  

## id Formats

When creating a single-value or multi-value extended property, you can specify **id** in one of two formats, 
based on either a string name or numeric identifier, and on the actual type of value or values of the property. 
The next 2 tables below describe the supported formats to specify single and multi-value extended properties. {_type_} represents the type of the value or values of the property. Shown in the examples are string, integer, and arrays of these types.

Since extended properties are in most cases inter-operating with defined MAPI properties not exposed in the 
Microsoft Graph API metadata, for simplicity, the format you choose should reflect whether the corresponding MAPI 
property uses a character string or numeric value in its [MAPI property identifier](https://msdn.microsoft.com/en-us/library/office/cc815528.aspx).
You can find information about mapping an extended property to an existing MAPI property, such as the property identifier and GUID, 
in \[MS-OXPROPS\] Microsoft Corporation, ["Exchange Server Protocols Master Property List"](https://msdn.microsoft.com/en-us/library/cc433490%28v=exchg.80%29.aspx).

**Note** After you have chosen one format for the **id**, you should access that extended property by only that format.


**Valid id formats for single-value extended properties**

|**Format**|**Example**|**Description**|
|:---------|:----------|:--------------|
| "{_type_} {_guid_} **Name** {_name_}" | ```"String {8ECCC264-6880-4EBE-992F-8888D2EEAA1D} Name TestProperty"``` | Identifies a property by the namespace (the GUID) it belongs to, and a name.         |
| "{_type_} {_guid_} **Id** {_id_}"     | ```"Integer {8ECCC264-6880-4EBE-992F-8888D2EEAA1D} Id 0x8012"```        | Identifies a property by the namespace (the GUID) it belongs to, and an identifier.  |

**Valid id formats for multi-value extended properties**

|**Format**|**Example**|**Description**|
|:---------|:----------|:--------------|
| "{_type_} {_guid_} **Name** {_name_}" | ```"StringArray {8ECCC264-6880-4EBE-992F-8888D2EEAA1D} Name TestProperty"``` | Identifies a property by namespace (the GUID) and name.         |
| "{_type_} {_guid_} **Id** {_id_}"     | ```"IntegerArray {8ECCC264-6880-4EBE-992F-8888D2EEAA1D} Id 0x8013"```        | Identifies a property by namespace (the GUID) and identifier.   |

## REST API operations
 
Single-value extended property operations:

- [Create an extended property in a new or existing resource instance](../api/singlevaluelegacyextendedproperty_post_singlevalueextendedproperties.md)
- [Get one or a collection of resource instances with an extended property using `$expand` or `$filter`](../api/singlevaluelegacyextendedproperty_get.md)

Multi-value extended property operations:

- [Create an extended property in a new or existing resource instance](../api/multivaluelegacyextendedproperty_post_multivalueextendedproperties.md)
- [Get a resource instance with an extended property using `$expand`](../api/multivaluelegacyextendedproperty_get.md)

