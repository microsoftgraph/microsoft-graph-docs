---
title: "Universal Print API overview"
description: "Universal Print is a modern print solution that organizations can use to manage their print infrastructure through cloud services from Microsoft."
author: "braedenp-msft"
localization_priority: Priority
ms.prod: "universal-print"
ms.custom: scenarios:getting-started
---

# Universal Print API overview

Universal Print is a modern print solution that organizations can use to manage their print infrastructure through cloud services from Microsoft.

![Screenshot of the Universal Print Azure portal home page](images/universal-print-portal-homepage.png)

## Why use Universal Print?

Universal Print moves key Windows Server print functionality to the Microsoft 365 cloud, so organizations no longer need on-premises print servers and do not need to install printer drivers on devices. In addition, Universal Print adds key functionality like security groups for printer access, location-based printer discovery, and a rich administrator experience.

As organizations adopt Universal Print, organizations and independent software vendors (ISVs) can use the Universal Print API in Microsoft Graph to build and extend applications to support new scenarios.

### Print documents from web and mobile applications

Moving print infrastructure to the cloud enables printing documents directly from web and mobile applications.

To get started with the Universal Print API:

1. [Create a print job](/graph/api/printer-post-jobs?view=graph-rest-beta) and store the resulting document ID.
2. [Upload document data](/graph/api/printdocument-uploaddata?view=graph-rest-beta) to the document.
3. [Start the print job](/graph/api/printjob-startprintjob?view=graph-rest-beta).

### Manage printers

Keeping track of an organization's printers, printer configurations, and printer usage is a complex task. The Universal Print API enables integration in all three areas.

* **Keep an eye on printer status, configurations, and availability** by using [List printers](/graph/api/print-list-printers?view=graph-rest-beta) and [printerStatus](/graph/api/resources/printerstatus?view=graph-rest-beta).

* **See who's using your printers and how much they're printing** by using the reporting APIs:
  * [List dailyPrintUsageSummariesByUser](/graph/api/reportroot-list-dailyprintusagesummariesbyuser?view=graph-rest-beta)
  * [List monthlyPrintUsageSummariesByUser](/graph/api/reportroot-list-monthlyprintusagesummariesbyuser?view=graph-rest-beta)
  * [List dailyPrintUsageSummariesByPrinter](/graph/api/reportroot-list-dailyprintusagesummariesbyprinter?view=graph-rest-beta)
  * [List monthlyPrintUsageSummariesByPrinter](/graph/api/reportroot-list-monthlyprintusagesummariesbyprinter?view=graph-rest-beta)

* **Configure user permissions** by modifying user and group membership on printers:
  * [List allowedUsers](/graph/api/printer-list-allowedusers?view=graph-rest-beta)
  * [Add allowedUser](/graph/api/printer-post-allowedusers?view=graph-rest-beta)
  * [Remove allowedUser](/graph/api/printer-delete-alloweduser?view=graph-rest-beta)
  * [List allowedGroups](/graph/api/printer-list-allowedgroups?view=graph-rest-beta)
  * [Add allowedGroup](/graph/api/printer-post-allowedgroups?view=graph-rest-beta)
  * [Remove allowedGroup](/graph/api/printer-delete-allowedgroup?view=graph-rest-beta)

### Seamlessly replace or update printer hardware

Printers are not visible to users until they are [shared](/graph/api/print-post-printershares?view=graph-rest-beta), providing administrators fine-grained control over which printer hardware is available at a given time.

Sharing a printer creates a [printerShare](/graph/api/resources/printershare?view=graph-rest-beta) resource that can be updated at any time to point to a different printer, making it easy to replace broken printer hardware or take printers offline for maintenance.

To use this in your application, use [Update printerShare](/graph/api/printershare-update?view=graph-rest-beta) to update the printerShare's `printer` reference.

## API reference
Looking for the API reference for this service?

- [Universal Print API in Microsoft Graph beta](/graph/api/resources/print?view=graph-rest-beta)

## See also

- [What is Universal Print](https://docs.microsoft.com/universal-print/fundamentals/universal-print-whatis)
- We'd love to hear your feedback about the Universal Print APIs over at [UserVoice](https://microsoftgraph.uservoice.com/forums/920506-microsoft-graph-feature-requests)!
