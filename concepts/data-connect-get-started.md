---
title: "Get started with Microsoft Graph Data Connect"
description: "Before you can use Microsoft Graph Data Connect, a Microsoft 365 administrator must take two actions, both of which enable the ability for the admin to control data movement through Privileged Access Management (PAM). "
author: "fercobo-msft"
localization_priority: Priority
ms.prod: "data-connect"
---

# Get started with Microsoft Graph Data Connect

## Prerequisites

Before you can use Microsoft Graph Data Connect, a Microsoft 365 administrator must take two actions, both of which enable the ability for the admin to control data movement through Privileged Access Management (PAM).

1. Give consent to opt in to Microsoft Graph Data Connect through the Microsoft 365 Admin Portal, on the **Org settings** page within the **Microsoft 365 admin center**. This will allow data movement requests to Microsoft Azure (that is, keep full control over the data, but allow Azure resources to access it). No data is transferred unless approval for a specific pipeline is provided later.
1. Set a mail-enabled security group or distribution list within the Microsoft 365 subscription. Make sure that the approver group is not empty. Only the users in the group can approve data movement requests.

## Start building your Data Connect application

You are now ready to start building your first Data Connect application. For detailed step-by-step instructions, see the [Build your first Microsoft Graph Data Connect application tutorial](data-connect-quickstart.yml).

## See also

- [Microsoft Graph Data Connect FAQ](data-connect-faq.md)
