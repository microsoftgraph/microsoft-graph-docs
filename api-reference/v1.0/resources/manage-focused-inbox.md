---
title: "Manage Focused Inbox"
description: "Focused Inbox allows you to view important messages in the `Focused` tab of the Inbox, and the rest of the Inbox messages in the `Other` tab. The classification system "
localization_priority: Normal
author: "svpsiva"
ms.prod: ""
doc_type: conceptualPageType
---

# Manage Focused Inbox

Namespace: microsoft.graph

Focused Inbox allows you to view important messages in the `Focused` tab of the Inbox, and the rest of the Inbox messages in the `Other` tab. The classification system
initially organizes Inbox messages in a default way. You can correct and train the system over time through the user interface or programmatically. The more you use it,
the better the system can infer which incoming message as important.

At the programmatic level, the Focused Inbox REST API works on the specified user's messages, and supports an **inferenceClassification** property for each message.
The possible values are `Focused` and `Other`, which indicate whether the user
considers that message as, respectively, more important and less important. To correct how the system classifies a message,
[update the inferenceClassification property of that message](../api/message-update.md). Over time, these corrections also train the message classification system.

The Focused Inbox REST API also lets you create overrides. Each override, represented by an
[inferenceClassificationOverride](../resources/inferenceclassificationoverride.md) instance, is an instruction for the
classification system to always designate messages from a specific sender in a consistent way
(i.e., always as "Focused" or always as "Other"), regardless of any previously learned approach. You can [create](../api/inferenceclassification-post-overrides.md),
[list](../api/inferenceclassification-list-overrides.md), [update](../api/inferenceclassificationoverride-update.md) and [delete](../api/inferenceclassificationoverride-delete.md)
overrides for the specified user. That user's overrides, if any, are accessible in an **inferenceClassification** navigation
property, which is a collection of **inferenceClassificationOverride** instances. Overrides allow a
user more control over the classification of incoming messages, and build greater trust of the classification system.

Note that the classification system learns and applies classification only on incoming messages in the Inbox. Messages in other folders are by default "Focused".
Setting up an override affects future messages arriving in the Inbox; the override doesn't modify the **inferenceClassification** property in existing messages in any folder
including the Inbox.

## Focused Inbox API

**Training the message classification system**

[Update the inferenceClassification property of a message](../api/message-update.md)


**Using overrides to classify consistently per sender**

[Create an override for a sender](../api/inferenceclassification-post-overrides.md) | [List all user overrides](../api/inferenceclassification-list-overrides.md) |

[Update an override for a sender](../api/inferenceclassificationoverride-update.md) | [Delete a sender override](../api/inferenceclassificationoverride-delete.md)

