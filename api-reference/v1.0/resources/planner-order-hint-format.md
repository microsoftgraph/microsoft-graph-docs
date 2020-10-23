---
title: "Using order hints in Planner"
description: "`)"
author: "TarkanSevilmis"
localization_priority: Normal
ms.prod: "planner"
doc_type: conceptualPageType
---

# Using order hints in Planner

Namespace: microsoft.graph

Objects in Planner identify their sort order by order hints. The order hint values are strings. The clients can sort the strings based on ordinal value of characters in them to identify the order of items. The characters are compared from the beginning of the string, until a difference is encountered in the ordinal values of characters, or one string ends, in which case the shorter string would be sorted before the longer. The values can contain any character between ordinals 32 (space) and 126 (`~`)

As an example, an item with order hint `a` (ordinal value 97) would be placed before another item with order hint `z` (ordinal value 122). An item with order hint `abc` (ordinal values 97, 98, 99), would be placed before another item with order hint `abd` (ordinal values 97, 98, 100). An item with order hint `a` would be placed before another item with order hint `ab` since all existing characters are the same, and `a` is shorter.

The values for all order hints are calculated by the service. The client can reorder items by specifying the order hint for the item that got moved between two items with by setting the order hint to the following value: `<previous order hint> <next order hint>!`, where `<previous order hint>` is to be replaced by the order hint of the item that comes before the new desired location, and `<next order hint>` is to be replaced by the order hint of the item that comes after the new desired location. There is a space character between these order hint values, and the entire value is suffixed with `!`. If either item isn't present, empty string should be used instead. This value can also be composed of previous calculations, and can be used in the client to sort items exactly like service returned order hints. Once the client sends these values in an update, the service will calculate a short value that sorts in the desired location.

**Please note** that in the following examples the actual order hint values are surrounded in single quote characters (`'`) for clarity, however these are not part of the data, and must not be sent to the service.
 
As an example, consider the following list of sorted order hints:

1. Item 1 (Order Hint: `'5637'`)
2. Item 2 (Order Hint: `'adhg'`)

Placing an Item 3 before Item 1, then placing item 4 between Item 1 and Item 2, and then placing item 5 after Item 2, would create the following order hints on the client. 

1. Item 3 (Order Hint: `' 5637!'`)
2. Item 1 (Order Hint: `'5637'`)
3. Item 4 (Order Hint: `'5637 adhg!'`)
4. Item 2 (Order Hint: `'adhg'`)
5. Item 5 (Order Hint: `'adhg !'`)

Then, moving item 1 to the end of the list would generate:

1. Item 3 (Order Hint: `' 5637!'`)
2. Item 4 (Order Hint: `'5637 adhg!'`)
3. Item 2 (Order Hint: `'adhg'`)
4. Item 5 (Order Hint: `'adhg !'`)
5. Item 1 (Order Hint: `'adhg ! !'`)

Finally moving Item 5 between Item 3 and Item 4 would generate:

1. Item 3 (Order Hint: `' 5637!'`)
2. Item 5 (Order Hint: `' 5637! 5637 adhg!!'`)
3. Item 4 (Order Hint: `'5637 adhg!'`)
4. Item 2 (Order Hint: `'adhg'`)
5. Item 1 (Order Hint: `'adhg ! !'`)

Once these changes to order hint values are sent to the service in patch requests, the service will calculate proper values that keep the order intended by the client. The client can obtain the values immediate if `return=representation` preference is specified in the `PATCH` requests. The values for the case above may look like the following (the actual values may differ). 

1. Item 3 (Order Hint: `'432b'`)
2. Item 5 (Order Hint: `'6F"#'`)
3. Item 4 (Order Hint: `'7A$6'`)
4. Item 2 (Order Hint: `'adhg'`)
5. Item 1 (Order Hint: `'de5%'`)

Order Hints can be specified for creating the first item in the list as `!`, since neither a previous or a next item exists in that case, however this is unnecessary, as the service will auto-generate values for all order hint values on items if they are not specified during creation of the item. Following example illustrates the order hints should be used when placing items in a previously empty list.
Add the first item:

1. Item 1 (Order Hint: `' !'`)

Add the second item to top:

1. Item 2 (Order Hint: `'  !!'`)
2. Item 1 (Order Hint: `' !'`)

Add the third item to bottom:

1. Item 2 (Order Hint: `'  !!'`)
2. Item 1 (Order Hint: `' !'`)
3. Item 3 (Order Hint: `' ! !'`)








