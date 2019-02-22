---
title: "Integrate Microsoft Graph Security API alerts with IBM QRadar SIEM using Azure Monitor"
description: "The Microsoft Graph Security providers can be managed through a single REST endpoint. This endpoint can be configured to Azure Monitor, which supports connectors to several SIEM products. The instructions in Steps 1 and 2 of this article refer to all Azure Monitor connectors that support consumption via event hubs. This article describes the end-to-end integration of the QRadar SIEM connector."
author: "preetikr"
localization_priority: Priority
ms.prod: "security"
---

# Integrate Microsoft Graph Security API alerts with IBM QRadar SIEM using Azure Monitor

The Microsoft Graph Security providers can be managed through a single REST endpoint. This endpoint can be configured to [Azure Monitor](https://docs.microsoft.com/en-us/azure/monitoring-and-diagnostics/), which supports connectors to several SIEM products. The instructions in Steps 1 and 2 of this article refer to all Azure Monitor connectors that support consumption via event hubs. This article describes the end-to-end integration of the [QRadar](https://www.ibm.com/us-en/marketplace/ibm-qradar-siem) SIEM connector.

The integration process involves the following steps:

1. [Set up Azure event hub to receive security alerts for your tenant](#step-1-set-up-an-event-hubs-namespace-in-azure-to-receive-security-alerts-for-your-tenant).
2. [Configure Azure Monitor to send security alerts from your tenant to the event hub](#step-2-configure-azure-monitor-to-send-security-alerts-from-your-tenant-to-the-event-hub).
3. [Download and install the QRadar to consume security alerts](#step-3-download-and-install-the-qradar-to-consume-security-alerts).

After you complete these steps, your IBM QRadar will consume security alerts from all the Microsoft Graph integrated security products for which your tenant is licensed. Any new security products that you license will also send alerts through this connection, in the same schema with no further integration work needed.

## Step 1: Set up an Event Hubs namespace in Azure to receive security alerts for your tenant

To begin, you need to create a [Microsoft Azure Event Hubs](https://docs.microsoft.com/en-us/azure/event-hubs/) namespace and event hub. This namespace and event hub is the destination for all your organization’s security alerts. An Event Hubs namespace is a logical grouping of event hubs that share the same access policy. Note a few details about the Event Hubs namespace and event hubs that you create:

- We recommend using a Standard Event Hubs namespace, particularly if you are sending other Azure monitoring data through these same event hubs.
- Typically, only one throughput unit is necessary. If you need to scale up as your usage increases, you can always manually increase the number of throughput units for the namespace later or enable auto inflation.
- The number of throughput units allows you to increase throughput scale for your event hubs. The number of partitions allows you to parallelize consumption across many consumers. A single partition can do up to 20MBps, or approximately 20,000 messages per second. Depending on the tool consuming the data, it may or may not support consuming from multiple partitions. If you're not sure about the number of partitions to set, we recommend starting with four partitions.
- We recommend that you set message retention on your event hub to 7 days. If your consuming tool goes down for more than a day, this ensures that the tool can pick up where it left off (for events up to 7 days old).
- We recommend using the default consumer group for your event hub. You don't need to create other consumer groups or use a separate consumer group unless you plan to have two different tools consume the same data from the same event hub.
- Typically, port 5671 and 5672 must be opened on the machine consuming data from the event hub.

Also see the [Azure Event Hubs FAQ](https://docs.microsoft.com/en-us/azure/event-hubs/event-hubs-faq).

1. Log on to the [Azure portal](https://portal.azure.com/) and choose **Create a resource** at the top left of the screen.

    ![Create resource image](images/create-resource.png)

2. Select **Internet of Things** and choose **Event Hubs**.

    ![event hubs image](images/event-hubs.png)

3. In **Create namespace**, enter a namespace name. After making sure the namespace name is available, choose the pricing tier (Basic or Standard). Also, choose an Azure subscription, resource group, and location in which to create the resource. Choose **Create** to create the namespace. You might have to wait a few minutes for the system to fully provision the resources.

    ![create namespace image](images/create-namespace.png)

## Step 2: Configure Azure Monitor to send security alerts from your tenant to the event hub

Enabling the streaming of your organization’s security alerts through Azure Monitor is done one time for your entire Azure Active Directory (Azure AD) tenant. All Microsoft Graph Security API licensed and enabled products will begin sending security alerts to Azure Monitor, streaming data to consuming applications. Any additional Microsoft Graph Security API-enabled products licensed and deployed by your organization will automatically stream security alerts through this same Azure Monitor configuration. No further integration work is needed from the organization.

Security alerts are highly privileged data typically viewable only by security response personnel and global administrators within an organization. For this reason, the steps required to configure the integration of a tenant’s security alerts with SIEM systems require an Azure AD Global Administrator account. This account is only needed one time, during setup, to request your organization’s security alerts be sent to Azure Monitor.

> **Note:** Currently, the Azure Monitor Diagnostic settings blade does not support configuration of tenant-level resources. Microsoft Graph Security API alerts are a tenant-level resource, which requires using the Azure Resource Manager API to configure Azure Monitor to support consumption of your organization’s security alerts.

1. In your Azure subscription (can be found under "All services"), register "microsoft.insights" (Azure Monitor) as a resource provider.  
 > **Note:** Do not register "Microsoft.SecurityGraph" (Microsoft Graph Security API) as a resource provider in your Azure subscription, as “Microsoft.SecurityGraph” is a tenant-level resource as explained above. Tenant level configuration will be part of #6 below.

2. To configure Azure Monitor using the Azure Resource Manager API, obtain the [ARMClient](https://github.com/projectkudu/ARMClient) tool. This tool will be used to send REST API calls to the Azure portal from a command line.

3. Prepare a diagnostic setting request JSON file like the following:

    ``` json
    {
      "location": "",
      "properties": {
        "name": "securityApiAlerts",
        "serviceBusRuleId": "/subscriptions/SUBSCRIPTION_ID/resourceGroups/RESOURCE_GROUP/providers/Microsoft.EventHub/namespaces/EVENT_HUB_NAMESPACE/authorizationrules/RootManageSharedAccessKey",
        "logs": [
          {
            "category": "Alert",
            "enabled": true,
            "retentionPolicy": {
              "enabled": true,
              "days": 7
            }
          }
        ]
      }
    }
    ```

  Replace the values in the JSON file as follows:

  * **SUBSCRIPTION_ID** is the Subscription ID of the Azure subscription hosting the resource group and event hub namespace where you will be sending security alerts from your organization.
  * **RESOURCE_GROUP** is the resource group containing the event hub namespace where you will be sending security alerts from your organization.
  * **EVENT_HUB_NAMESPACE** is the event hub namespace where you will be sending security alerts from your organization.
  * **“days”:** is the number of days you want to retain messages in your event hub.
  
&nbsp;

4. Save the file as JSON to the directory where you will invoke ARMClient.exe. For example, name the file **AzMonConfig.json.**

5. Run the following command to sigh in to the ARMClient tool. You will need to be using Global Administrator account credentials.

    ``` shell
    ARMClient.exe login
    ```

6. Run the following command to configure Azure Monitor to send security alerts to your event hub namespace. This will automatically provision an event hub within the namespace and start the flow of security alerts into the event hub. Ensure that the setting name (in this example, **securityApiAlerts**) matches the setting name you specified in the JSON file for the **name** field.

    ``` shell
    ARMClient.exe put https://management.azure.com/providers/Microsoft.SecurityGraph/diagnosticSettings/securityApiAlerts?api-version=2017-04-01-preview  @".\AzMonConfig.json"
    ```

7. To verify the settings were applied correctly, run this command and verify that the output matches your JSON file settings.

    ``` shell
    ARMClient.exe get https://management.azure.com/providers/Microsoft.SecurityGraph/diagnosticSettings/securityApiAlerts?api-version=2017-04-01-preview
    ```

8. Exit the ARMClient tool. You have now completed the configuration of Azure Monitor to send security alerts from your tenant to event hub.

## Step 3: Download and install the QRadar to consume security alerts

1. Download and install [IBM QRadar](https://www.ibm.com/us-en/marketplace/ibm-qradar-siem). **Version 7.2.8 with Patch 7 or higher is required** to read events from a Microsoft Azure Event Hub.
2. Follow the steps in [Configuring Microsoft Azure Event Hubs to communicate with IBM QRadar](https://www.ibm.com/support/knowledgecenter/SS42VS_DSM/t_dsm_guide_microsoft_azure_enable_event_hubs.html) to configure your event hub.
3. Finally, follow the steps in [Configuring QRadar to collect events from Microsoft Azure Event Hubs by using the Microsoft Azure Event Hubs protocol](https://www.ibm.com/support/knowledgecenter/SS42VS_DSM/t_logsource_microsoft_azure_event_hubs.html) to begin surfacing security alerts.
  
 > **Note:** Microsoft Azure integration with IBM QRadar supports the events listed in [Microsoft Azure DSM specifications](https://www.ibm.com/support/knowledgecenter/SS42VS_DSM/c_dsm_guide_microsoft_azure_DSM_specs.html). We are currently working with IBM QRadar to add complete support for Microsoft Graph Security API alerts. Currently, you will be able to receive the Microsoft Security Graph API alerts and view them in your IBM QRadar console. You can use [DSM editor](https://www.ibm.com/support/knowledgecenter/SS42VS_7.2.8/com.ibm.qradar.doc/c_qradar_adm_dsm_ed_overview.html) to enable parsing Microsoft Security Graph API alerts.  
