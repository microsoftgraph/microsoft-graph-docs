---
title: "Excel workbooks and charts API overview"
description: "Excel is an indispensable productivity tool. Users across all industries and job functions embrace it as a tool for storing, tracking, and manipulating all kinds of data. It's used for everything from simple task tracking and data management, to complex calculations and professional reporting. You can use the Excel REST API in Microsoft Graph to extend the value of your data, calculations, reporting, and dashboards."
localization_priority: Priority
author: "lumine2008"
ms.prod: "excel"
ms.custom: scenarios:getting-started
---

# Excel workbooks and charts API overview

Excel is an indispensable productivity tool. Users across all industries and job functions embrace it as a tool for storing, tracking, and manipulating all kinds of data. It's used for everything from simple task tracking and data management, to complex calculations and professional reporting. You can use the Excel REST API in Microsoft Graph to extend the value of your data, calculations, reporting, and dashboards.

> [!VIDEO https://www.youtube-nocookie.com/embed/I1rSkJww2Dk]

## Why integrate with Excel?

You can use Microsoft Graph to allow web and mobile applications to read and modify Excel workbooks stored in OneDrive, SharePoint, or other supported storage platforms.

### Perform calculations

Users love the ease with which they can perform deep and complex calculations within Excel. You can now access Excel’s powerful calculation engine with instant results. For example, a mortgage calculator can take advantage of the PMT function from Excel by making a simple API call that includes principal, rate and number of payments. Excel does all the difficult work and returns the monthly payment instantly. With more than 300 Excel worksheet functions currently available, you have full access to the breadth of formulas supported by Excel today. Complex business models don’t need to be rebuilt repeatedly. Developers can program Excel to perform those calculations instantly and retrieve the results with simple API calls.

### Generate reports and analyze results

Excel is a flexible reporting and analysis tool, from simple data tables to complex professional dashboards. Today, we give you full access to all of Excel’s reporting features, making Excel an online reporting service within Microsoft 365. Imagine any of the reporting scenarios users create and rely on today pulled into a custom app to create professional charts or analyze large sets of data intelligently, seamlessly blending Excel into those customized experiences.

### Store and track data

Excel is also a great tool to store and track data. If your information is stored in a workbook, that data is available to any app that integrates with Microsoft 365. Its contents are available to read from custom solutions, and those solutions can use Excel for data storage.

>**Note:** The Excel REST API supports only Office Open XML file formatted workbooks (files with the`.xlsx` extension). The `.xls` extension workbooks are not supported. 

### Using the Excel REST API
You can use Microsoft Graph to allow web and mobile applications to read and modify Excel workbooks stored in OneDrive, SharePoint, or other supported storage platforms. The `Workbook` (or Excel file) resource contains all the other Excel resources through relationships. You can access a workbook through the Drive API by identifying the location of the file in the URL. For example:

`https://graph.microsoft.com/{version}/me/drive/items/{id}/workbook/`

`https://graph.microsoft.com/{version}/me/drive/root:/{item-path}:/workbook/`

You can access a set of Excel objects (such as Table, Range, or Chart) by using standard REST APIs to perform create, read, update, and delete (CRUD) operations on the workbook.

## API reference
Looking for the API reference for this service?

- [Excel API in Microsoft Graph v1.0](/graph/api/resources/excel?view=graph-rest-1.0)
- [Excel API in Microsoft Graph beta](/graph/api/resources/excel?view=graph-rest-beta)

## Next steps

* [Manage sessions in Excel with Microsoft Graph](excel-manage-sessions.md)
* [Write to an Excel workbook using Microsoft Graph](excel-write-to-workbook.md)
* [Use workbook functions in Excel with Microsoft Graph](excel-use-functions.md)
* [Update a range’s format in Excel with Microsoft Graph](excel-update-range-format.md)
* [Display a chart image in Excel with Microsoft Graph](excel-display-chart-image.md)
* [Use the Excel REST API](/graph/api/resources/excel?view=graph-rest-1.0)
