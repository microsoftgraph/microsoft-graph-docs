---
title: "Outlook extended properties overview"
description: "Extended properties allow storing custom data and specifically serve as a fallback mechanism for apps to access "
localization_priority: Priority
author: "svpsiva"
ms.prod: "outlook"
doc_type: conceptualPageType
---

# Outlook extended properties overview

Namespace: microsoft.graph

Extended properties allow storing custom data and specifically serve as a fallback mechanism for apps to access
custom data for Outlook MAPI properties when these properties are _not already exposed in the Microsoft Graph API metadata_.
You can use extended properties REST API to store or get such custom data in the following user resources:

- [message](../resources/message.md)
- [mailFolder](../resources/mailfolder.md)
- [event](../resources/event.md)
- [calendar](../resources/calendar.md)
- [contact](../resources/contact.md)
- [contactFolder](../resources/contactfolder.md)

Or, in the following Microsoft 365 group resources:

- group [event](../resources/event.md)
- group [calendar](../resources/calendar.md)
- group [post](../resources/post.md)

## Use extended properties or open extensions?

In most common scenarios, you should be able to use open extensions (represented by [openTypeExtension](../resources/opentypeextension.md), formerly known as
Office 365 data extensions) to store and access custom data for resource instances in a user's mailbox. Use extended properties only if you
need to access custom data for Outlook MAPI properties that are not already exposed in the
[Microsoft Graph API metadata](../index.md).

## Types of extended properties

Depending on whether you intend to store a single or multiple values (of the same type) in an extended property, you can
create an extended property as a [singleValueLegacyExtendedProperty](../resources/singlevaluelegacyextendedproperty.md),
or [multiValueLegacyExtendedProperty](../resources/multivaluelegacyextendedproperty.md).

Each of these types identifies the property by its **id** and stores data in **value**.

You can use **id** to get a specific resource instance together with that extended property, or filter on
a single-value extended property to get all the instances that have that property.

**Note** You cannot use the REST API to get all the extended properties of a specific instance in one call.


### id formats

You can specify **id** of an extended property in one of three formats:

- As a named property, identified by the extended property type, namespace, and a string name.
- As a named property, identified by the extended property type, namespace, and a numeric identifier.
- In a proptag format, identified by the extended property type and a [MAPI property tag](/office/client-developer/outlook/mapi/mapi-property-tags).

The next 2 tables describe these formats as applied to single and multi-value extended properties. {_type_} represents the type of the value or values of the extended property. Shown in the examples are string, integer, and arrays of these types.

**Valid id formats for single-value extended properties**

|**Format**|**Example**|**Description**|
|:---------|:----------|:--------------|
| "{_type_} {_guid_} **Name** {_name_}" | ```"String {8ECCC264-6880-4EBE-992F-8888D2EEAA1D} Name TestProperty"``` | Identifies a property by the namespace (the GUID) it belongs to, and a string name.         |
| "{_type_} {_guid_} **Id** {_id_}"     | ```"Integer {8ECCC264-6880-4EBE-992F-8888D2EEAA1D} Id 0x8012"```        | Identifies a property by the namespace (the GUID) it belongs to, and a numeric identifier.  |
| "{_type_} {_proptag_}"                    | ```"String 0x4001001E"```                                           | Identifies a pre-defined property by its property tag. |

**Valid id formats for multi-value extended properties**

|**Format**|**Example**|**Description**|
|:---------|:----------|:--------------|
| "{_type_} {_guid_} **Name** {_name_}" | ```"StringArray {8ECCC264-6880-4EBE-992F-8888D2EEAA1D} Name TestProperty"``` | Identifies a property by the namespace (the GUID) and a string name.         |
| "{_type_} {_guid_} **Id** {_id_}"     | ```"IntegerArray {8ECCC264-6880-4EBE-992F-8888D2EEAA1D} Id 0x8013"```        | Identifies a property by the namespace (the GUID) and a numeric identifier.   |
| "{_type_} {_proptag_}"                    | ```"StringArray 0x4002101E"```                                           | Identifies a pre-defined property by its property tag. |


Use either of the named property formats to define a single-value or multi-value extended property as a custom property. Among the two formats, the first one that takes a string name (**Name**) is the preferred format for ease of reference. Named properties have their [property identifiers](/office/client-developer/outlook/mapi/mapi-property-identifier-overview) in the 0x8000-0xfffe range.

Use the proptag format to access properties predefined by MAPI, or by a client or server, and that have not already been exposed in Microsoft Graph. These properties have property identifiers in the 0x0001-0x7fff range. Do not try to define a custom property using the proptag format.

You can find information about mapping an extended property to an existing MAPI property, such as the property identifier and GUID,
in \[MS-OXPROPS\] Microsoft Corporation, ["Exchange Server Protocols Master Property List"](/openspecs/exchange_server_protocols/ms-oxprops/f6ab1613-aefe-447d-a49c-18217230b148).

**Note** After you have chosen one format for the **id**, you should access that extended property by only that format.

### REST API operations

Single-value extended property operations:

- [Create an extended property in a new or existing resource instance](../api/singlevaluelegacyextendedproperty-post-singlevalueextendedproperties.md)
- [Get one or a collection of resource instances with an extended property using `$expand` or `$filter`](../api/singlevaluelegacyextendedproperty-get.md)

Multi-value extended property operations:

- [Create an extended property in a new or existing resource instance](../api/multivaluelegacyextendedproperty-post-multivalueextendedproperties.md)
- [Get a resource instance with an extended property using `$expand`](../api/multivaluelegacyextendedproperty-get.md)