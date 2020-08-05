---
title: "Get started with Microsoft Graph data connect"
description: "Before you can use Microsoft Graph data connect, a Microsoft 365 administrator must take two actions, both of which enable the ability for the admin to control data movement through Privileged Access Management (PAM). "
author: "ajacks-msft"
localization_priority: Priority
ms.prod: "data-connect"
---

# Get started with Microsoft Graph data connect

Before you can use Microsoft Graph data connect, a Microsoft 365 administrator must take two actions, both of which enable the ability for the admin to control data movement through Privileged Access Management (PAM). 

1. Give consent to opt in to Microsoft Graph data connect through the Microsoft 365 Admin Portal, on the **Services & add-ins** page. This will allow data movement requests to Microsoft Azure (that is, keep full control over the data, but allow Azure resources to access it). No data is transferred unless approval for a specific pipeline is provided later.
2. Set a mail-enabled security group or distribution list within the Microsoft 365 subscription. Make sure that the approver group is not empty. Only the users in the group can approve data movement requests.

## Next steps

Congratulations! You're now ready to start building intelligent applications with Azure tooling. For detailed step-by-step instructions, see the [Microsoft Graph data connect training module](https://github.com/microsoftgraph/msgraph-training-dataconnect/blob/master/Lab.md). For more information about the capabilities that Microsoft Graph data connect provides, see [datasets, regions, and sinks](data-connect-datasets.md) or [user selection and filtering](data-connect-filtering.md) that data connect supports.
