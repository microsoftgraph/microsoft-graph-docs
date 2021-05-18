<!-- markdownlint-disable MD002 MD041 -->

Microsoft Graph Data Connect augments Microsoft Graph’s transactional model with an intelligent way to access rich data at scale. The data covers how workers communicate, collaborate, and manage their time across all the applications and services in Microsoft 365. Ideal for big data and machine learning, Data Connect allows you to develop applications for analytics, intelligence, and business process optimization by extending Microsoft 365 data into Azure. By integrating in this way, you'll be able to take advantage of the vast suite of compute, storage in Azure while staying compliant with industry standards and keeping your data secure.

![This image explains the applied data controls between Microsoft 365 data into the Azure cloud, as well as the output data.](images/data-connect-mgdc-capabilities.png)

Microsoft Graph Data Connect uses Azure Data Factory to copy Microsoft 365 data to your application’s storage at configurable intervals. It also provides a set of tools to streamline the delivery of this data to Microsoft Azure, letting you access the most applicable development and hosting tools available. Data Connect also grants a more granular control and consent model: you can manage data, see who is accessing it, and request specific properties of an entity. This enhances the Microsoft Graph model, which grants or denies applications access to entire entities.

You can use Data Connect to enable machine learning scenarios for your organization.. In these scenarios, you can create applications that provide valuable information to your stakeholders, train machine learning models, and even perform forecasting based on large amounts of acquired data.

## Get started

In this tutorial, you will be creating your first Microsoft Graph Data Connect application. Exciting, right? We think so too! To get started, you'll need to set up a few things first.

### Prerequisites

To complete this lab, you will need the following subscriptions or licenses.

1. **Microsoft 365 tenancy**
  
   - If you do not have one, you get one (for free) by signing up to the [Microsoft 365 Developer Program](https://developer.microsoft.com/microsoft-365/dev-program).
   - Multiple Microsoft 365 users with emails sent and received.
   - Access to at least two accounts that meet the following requirements:
      - Must have the **Global administrator** role assigned.
      - Must have access to the Microsoft 365 Admin Center.

1. **Microsoft Azure subscription**
  
   - If you do not have one, you can get one (for free) in our [Azure website](https://azure.microsoft.com/free/).
   - The account used to sign in must have the **Global administrator** role granted to it.
   - The Azure subscription must be in the same tenant as the Microsoft 365 tenant, as Graph Data Connect will only export data to an Azure subscription in the same tenant, not across tenants.
   - Your Microsoft 365 and Azure tenants must be in the same Microsoft Azure Active Directory tenancy.

1. Make sure you have [Visual Studio](https://visualstudio.microsoft.com/vs/) installed on your development machine.

> [!NOTE]
> The screenshots and examples used in this lab are from an Microsoft 365 test tenant with sample email from test users. You can use your own Microsoft 365 tenant to perform the same steps. No data is written to Microsoft 365. A copy of email data is extracted from all users in an Microsoft 365 tenant and copied to an Azure Blob Storage account that you maintain control over who has access to the data within the Azure Blob Storage.
