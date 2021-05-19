---
title: "Subscribe to change notifications from cloud printing APIs using Microsoft Graph"
description: "Learn how to subscribe to change notifications for print job events by using the Microsoft Graph API."
author: "jahsu"
localization_priority: Priority
ms.prod: "cloud-printing"
ms.custom: scenarios:getting-started
---

# Subscribe to change notifications from cloud printing APIs using Microsoft Graph

Universal Print helps customers move their print infrastructure to the cloud, and is part of a robust ecosystem of partner solutions that offer advanced print functionality. These solutions can become even more powerful when you use the cloud printing APIs in Microsoft Graph to integrate with Universal Print.

Many partner solutions need to process print jobs in real time as they're sent from users' devices to printers, which means they need to be notified when print jobs are available for processing. Universal Print provides hooks for print vendor solutions to be notified as jobs move through the cloud, and APIs that enable management of printers and print jobs.

This article describes how to subscribe to notifications for various print job events.


## Get started with change notifications

Before you can take advantage of change notifications via Microsoft Graph, you must [register your application in Azure](/azure/active-directory/develop/howto-create-service-principal-portal#register-an-application-with-azure-ad-and-create-a-service-principal) and provision your application in the customers Azure Active Directory (Azure AD) tenant. Make sure that the application has the required permission scopes enabled, as described later in this article.


### Notifications and subscriptions

Universal Print currently supports notifications for two scenarios related to print jobs:

* PrintTask is triggered (JobStarted): An application can subscribe to receive notifications when their printTask(hook) is triggered.
For details about how to trigger a task, see [Extending Universal Print to support pull printing](./universal-print-concept-overview.md#extending-universal-print-to-support-pull-printing). Currently, a printTask can be triggered only for a JobStarted event. A JobStarted event is raised when a print job has been successfully created, its payload has been uploaded, and job processing has started.  

* JobFetchable: After the job has started, third-party print applications or Universal Print might do some processing (like converting XPS payload to PDF for a PDF printer). After processing is complete and the payload is ready to be downloaded by a printer, a JobFetchable event is raised for the corresponding print job.

>[!NOTE]
>For listening to the change notifications for JobFetchable event, a **printTaskDefinition** resource is not required.

### Create an application to listen to notifications

For information about how to listen for Microsoft Graph notifications, see [Use change notifications and track changes with Microsoft Graph](/learn/modules/msgraph-changenotifications-trackchanges/) and [Set up notifications for changes in user data – Code Samples](./webhooks.md#code-samples).


### Scopes

To subscribe to notifications for print jobs, applications must have the following permission scopes approved in the customer’s Azure AD tenant: 

* For printTask triggered (JobStarted) event, the permissions listed in [Get taskDefinition](/graph/api/printtaskdefinition-get?view=graph-rest-v1.0&tabs=http%22%20%5Cl%20%22permissions%22%20%5C). 

* For JobFetchable event, the permissions listed in [Create subscription](/graph/api/subscription-post-subscriptions?view=graph-rest-v1.0&tabs=http).

Applications must [generate and use the Azure AD security token](/graph/auth-v2-service?context=graph%2Fapi%2F1.0) in the Microsoft Graph API request header. The security token contains the claims as per the scopes approved for the customer’s Azure AD tenant by its administrator.  


## Create subscription: printTask triggered (JobStarted) event 

Some applications monitor print queues for incoming jobs and want to be notified as soon as there is a valid job in the queue. After they're notified, they can collect the relevant job metadata or even perform modifications in the print job – including aborting the job or redirecting the job from the current print queue to another queue after modifying the job attributes accordingly. 

Before creating a notification for a **printTask**-triggered event, ensure that application has created the following: 

- A [printTaskDefinition](/graph/api/print-post-taskdefinitions?view=graph-rest-v1.0&tabs=http) for the customer’s Azure AD tenant. A single task definition can be associated with one or more printers within the same Azure AD tenant. 

- A [printTaskTrigger](/graph/api/printer-post-tasktriggers?view=graph-rest-v1.0&tabs=http) for each of the printer queues for which the partner wants to receive a notification when a new print job starts. The **printTaskTrigger** needs to be bound to the **printTaskDefinition**. 

>[!NOTE]
>One printer can be associated with only one **printTaskTrigger** and one **printTaskTrigger** can be associated with only one **printTaskDefinition**. However, one **printTaskDefinition** can have one or more **printTaskTriggers** associated with it. 

With the **printTaskDefinition** that exists for customer’s Azure AD tenant, the application can [create a subscription for a printTask triggered (JobStarted) event using the printTaskDefinition](/graph/api/subscription-post-subscriptions?view=graph-rest-v1.0&tabs=http). While creating the subscription:  

* The `resource` field needs to be set as `print/taskDefinitions/{printTaskDefinition ID}/tasks`. 
* The `changeType` field needs to be set as `created`. 
* The `expirationDateTime` field needs to be less than the [maximum expiration time](/graph/api/resources/subscription?view=graph-rest-v1.0#maximum-length-of-subscription-per-resource-type). 

For more details, see [Subscription resource type properties](/graph/api/resources/subscription?view=graph-rest-v1.0#properties).

The following is an example of the request.
<!-- {
  "blockType": "request",
  "name": "create_subscription"
}--> 
```http
POST https://graph.microsoft.com/v1.0/subscriptions 
Content-Type: application/json
{ 
    "changeType":"created", 
    "resource":"print/taskDefinitions/{printTaskDefinition ID}/tasks", 
    "clientState":"secret", 
    "notificationUrl":"{URL for receiving the event – e.g. https://webhookappexample.azurewebsites.net/api/notifications}", 
    "expirationDateTime":"2020-01-30T22:42:09Z" 
} 
```

### Response

The following example shows the response.
<!-- {
  "blockType": "response",
  "truncated": true
} -->
```http
HTTP/1.1 201 Created
Content-Type: application/json
{ 
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#subscriptions/$entity", 
    "id": "{Subscription ID}", 
    "resource": "print/taskDefinitions/{printTaskDefinition ID}/tasks", 
    "applicationId": "{application ID}", 
    "changeType": "created", 
    "clientState": "secret", 
    "notificationUrl": "{URL for receiving the event – e.g. https://webhookappexample.azurewebsites.net/api/notifications}", 
    "notificationQueryOptions": null, 
    "lifecycleNotificationUrl": null, 
    "expirationDateTime": "2020-12-30T22:42:09Z", 
    "creatorId": "{Creator ID}", 
    "includeResourceData": null, 
    "latestSupportedTlsVersion": "v1_2", 
    "encryptionCertificate": null, 
    "encryptionCertificateId": null 
}
```


## Create subscription: JobFetchable event 
Some cloud applications need to download print jobs from Universal Print when they are ready. Because these applications running in the cloud are not behind the customer's firewall, they can use Microsoft Graph change notifications to be notified when a print job is ready to be downloaded.

>[!NOTE]
>Print jobs can't be modified when they enter the JobFetchable state.
A JobFetchable notification needs to be created for each printer queue. While creating the subscription:
* The `resource` field needs to be set as 'print/printers/{printer id}/jobs'. 
* The `changeType` field needs to be set as `updated`. 
* The `notificationQueryOptions` field needs to be set as `$filter = isFetchable eq true`. 
* The `expirationDateTime` field needs to be less than the [maximum expiration time](/graph/api/resources/subscription?view=graph-rest-v1.0#maximum-length-of-subscription-per-resource-type). 

For more details, see [Subscription resource type properties](/graph/api/resources/subscription?view=graph-rest-v1.0#properties).

The following is an example of the request.
<!-- {
  "blockType": "request",
  "name": "create_subscription"
}--> 
```http
POST https://graph.microsoft.com/v1.0/subscriptions
Content-Type: application/json
{
    "changeType":"updated",
    "resource":"print/printers/{printer id}/jobs",
    "notificationQueryOptions": "$filter = isFetchable eq true", 
    "notificationUrl":"{URL for receiving the event – e.g. https://webhookappexample.azurewebsites.net/api/notifications}",
    "expirationDateTime":"2020-12-30T22:42:09Z",
    "clientState":"mysecret"
} 
```

### Response

The following example shows the response.
<!-- {
  "blockType": "response",
  "truncated": true
} -->
```http
HTTP/1.1 201 Created
Content-Type: application/json
{ 
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#subscriptions/$entity", 
    "id": "{Subscription ID}", 
    "resource": "print/printers/{printer ID}/jobs", 
    "applicationId": "{Application ID}", 
    "changeType": "updated", 
    "clientState": "mysecret", 
    "notificationUrl": "{URL for receiving the event – e.g. https://webhookappexample.azurewebsites.net/api/notifications}", 
    "notificationQueryOptions": "$filter = isFetchable eq true", 
    "lifecycleNotificationUrl": null, 
    "expirationDateTime": "2020-12-30T22:42:09Z", 
    "creatorId": "{Creator ID}", 
    "includeResourceData": null, 
    "latestSupportedTlsVersion": "v1_2", 
    "encryptionCertificate": null, 
    "encryptionCertificateId": null
}
```


## Renewing a notification subscription

Microsoft Graph has a limit on the expiration time. For details, see [maximum expiration time](/graph/api/resources/subscription?view=graph-rest-v1.0#maximum-length-of-subscription-per-resource-type). To continue receiving notifications, the subscription needs to be renewed periodically by using the [Update subscription API](/graph/api/subscription-update?view=graph-rest-v1.0&tabs=http). 

## Other operations on notification subscriptions 

Applications can [get](/graph/api/subscription-get?view=graph-rest-v1.0&tabs=http) details of the subscription or can [delete](/graph/api/subscription-delete?view=graph-rest-v1.0&tabs=http) a subscription when required. For details, see [Use the Microsoft Graph API to get change notifications](/graph/api/resources/webhooks?view=graph-rest-v1.0).


## FAQs
### How does Microsoft Graph validate notification URLs?
Microsoft Graph validates the notification endpoint provided in the **notificationUrl** property of the subscription request before creating the subscription.
For details, see [Notification endpoint validation](./webhooks.md#notification-endpoint-validation).

### What are applications expected to do after receiving a change notification?
Applications should process and acknowledge every change notification they receive. For details, see [Processing the change notification](./webhooks.md#processing-the-change-notification).

### How can I get a list of active subscriptions?
For details about how to retrieve a list of webhook subscriptions, see [List subscriptions](/graph/api/subscription-list?view=graph-rest-v1.0&tabs=http).


## See also

- To learn more about the cloud printing API in Microsoft Graph, see [Universal Print cloud printing API overview](/graph/universal-print-concept-overview). 
- For suggestions or feedback about the cloud printing API in Microsoft Graph, visit the [Universal Print tech community](https://aka.ms/community/UniversalPrint).
