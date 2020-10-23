---
title: Business Central API Overview
description: Overview of why you want to integrate your solutions with Business Central APIs.
services: project-madeira
documentationcenter: ''
author: SusanneWindfeldPedersen
localization_priority: Normal
ms.prod: "dynamics-365-business-central"
---

# Dynamics 365 Business Central API overview (preview)
Dynamics 365 Business Central is an all-in-one business management solution that is easy to use and adapt, helping you connect your business and make smarter decisions. It provides an end-to-end view of your business, enabling you to manage your financials, automate and secure your supply chain, sell smarter and improve customer service, keep projects on time and under budget, and optimize your operations.

> [!VIDEO https://www.youtube-nocookie.com/embed/na1kFk53cbk]

## Why integrate with Dynamics 365 Business Central?
By integrating your apps with Dynamics 365 Business Central, you can create experiences that span your business needs. You can create solutions that empower your users to perform key business tasks and functions. You can use Microsoft Graph to access and manage your financials, work with business contacts, create and send sales and purchasing documents, and gain insights from financial reports.

### Synchronize your business applications
Many companies use different, disconnected business applications to manage various functions of the business. Microsoft Graph enables you to connect the data to bring these applications together. This makes it easy to connect your payroll application to employee records, connect your expense application to vendor records, and have your CRM application keep your customer records up to date. Connect your data to keep your applications in sync.

### Create custom apps to manage your business processes
Every business is different and can have specialized business processes. These processes can be streamlined with custom apps tailored to the process. Microsoft Graph makes it easy to integrate these apps with your financial data. Building a sales or field service app that creates sales documents, an expense app that creates purchasing documents, or a payroll app that creates general ledger journals becomes possible, keeping all your documents in your financial system.

### Gain insights from your financial data
Microsoft Graph provides access to your financial reports. Connect BI tools and apps to your balance sheet, cash flow statement, payables and receivables aging reports, and trial balance reports to create BI dashboards and ensure that users have access to the information they need.

## Authorization
Use the Azure AD v2.0 endpoint to authenticate Dynamics 365 Business Central APIs. All APIs require the `Authorization: Bearer {access-token}` request header. For more information about authorization, see [Get access tokens to call Microsoft Graph](./auth/index.yml).

## API reference
Looking for the API reference for this service?

See [Dynamics 365 Business Central API in Microsoft Graph beta](/graph/api/resources/dynamics-graph-reference?view=graph-rest-beta).


## Next steps
Find out more about the [Business Central API and use cases](/graph/api/resources/dynamics-graph-reference?view=graph-rest-beta) supported in Microsoft Graph.