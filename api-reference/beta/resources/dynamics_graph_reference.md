---
title: Working with Dynamics 365 Business Central resources in Microsoft Graph 
description: API documentation for integration with Microsoft Graph
services: project-madeira
documentationcenter: ''
author: SusanneWindfeldPedersen

ms.service: dynamics365-businesscentral
ms.topic: get-started-article
ms.devlang: na
ms.tgt_pltfrm: na
ms.workload: na
ms.date: 09/20/2018
ms.author: solsen

---
# Working with Dynamics 365 Business Central resources in Microsoft Graph
You can use Microsoft Graph to connect and integrate your web service or SaaS solution with Microsoft Dynamics 365 Business Central. With Microsoft Graph, you can build apps that get authorized access to and integrate seamlessly with Microsoft Dynamics 365 Business Central data.

## Authorization
Use the Azure AD v2.0 endpoint to authenticate Dynamics 365 Business Central APIs. All APIs require the `Authorization: Bearer {access-token}` request header. For more information about authorization, see [Get access tokens to call Microsoft Graph](https://developer.microsoft.com/en-us/graph/docs/concepts/auth_overview).

## Common Dynamics 365 Business Central scenarios
The Dynamics 365 Business Central API allows you to read and modify business data through apps that are connected and integrated through a single endpoint. Use the API to, for example, get access to [customer](../resources/dynamics_customer.md) and [vendor](../resources/dynamics_vendor.md) information, view [cash flow statements](../resources/dynamics_cashflowstatement.md), or [view overdue payments](../resources/dynamics_agedaccountspayable.md).

## Next steps
The Microsoft Graph Business Central API can open up new ways for you to engage with users.

+ [Dynamics 365 Business Central Overview](../../../concepts/dynamics-business-central-concept-overview.md).
+ Try the [Graph Explorer](https://developer.microsoft.com/en-us/graph/graph-explorer).

<!--
|For Resource Type |See                                                 |
|:-----------------|:---------------------------------------------------|
|account resource type|[account](../resources/dynamics_account.md)|
|aged accounts receivable resource type|[agedAccountsReceivable](../resources/dynamics_agedaccountsreceivable.md)|
|aged accounts payable resource type|[agedAccountsPayable](../resources/dynamics_agedaccountspayable.md)|
|balance sheet resource type|[balanceSheet](../resources/dynamics_balancesheet.md)|
|cash flow statement resource type|[cashFlowStatement](../resources/dynamics_cashflowstatement.md)|
|companies resource type|[companies](../resources/dynamics_companies.md)|
|companyInformation resource type|[companyInformation](../resources/dynamics_companyinformation.md)|
|countriesRegions resource type|[countriesRegions](../resources/dynamics_countriesregions.md)|
|currencies resource type|[currencies](../resources/dynamics_currencies.md)|
|customer resource type|[customer](../resources/dynamics_customer.md)|
|customerPaymentJournal resource type|[customerPaymentsJournal](../resources/dynamics_customerpaymentsjournal.md)|
|customerPayment resource type|[customerPayment](../resources/dynamics_customerpayment.md)|
|dimension resource type|[dimension](../resources/dynamics_dimension.md)|
|dimensionValue resource type|[dimensionValue](../resources/dynamics_dimensionvalue.md)
|employee resource type|[employee](../resources/dynamics_employee.md)|
|generalLedgerEntries resource type|[generalLedgerEntries](../resources/dynamics_generalLedgerEntries.md)|
|item resource type|[item](../resources/dynamics_item.md)|
|itemCategories resource type|[itemCategories](../resources/dynamics_itemcategories.md)|
|income statement resource type|[incomeStatement](../resources/dynamics_incomestatement.md)|
|IRS1099 resource type|[irs1099](../resources/dynamics_irs1099.md)|
|journal resource type|[journal](../resources/dynamics_journal.md)|
|journalLine resource type|[journalLine](../resources/dynamics_journalline.md)|
|paymentMethods resource type|[paymentMethods](../resources/dynamics_paymentmethods.md)|
|paymentTerms resource type|[paymentTerms](../resources/dynamics_paymentterms.md)|
|retained earnings statement resource type|[retainedEarningsStatement](../resources/dynamics_retainedearningsstatement.md)|
|shipmentMethods resource type|[shipmentMethods](../resources/dynamics_shipmentmethods.md)|
|taxGroups resource type|[taxGroups](../resources/dynamics_taxGroups.md)|
|taxArea resource type|[taxAreas](..resources/dynamics_taxarea.md)|
|trial balance resource type|[trialBalance](../resources/dynamics_trialbalance.md)|
|unitsOfMeasure resource type|[unitsOfMeasure](../resources/dynamics_unitsofmeasure.md)|
|vendor resource type|[vendor](../resources/dynamics_vendor.md)|
-->