---
title: Get pdfDocument | Microsoft Docs
description: Gets a PDF document on a salesQuote in Dynamics 365 Business Central.
services: project-madeira
documentationcenter: ''
author: SusanneWindfeldPedersen
localization_priority: Normal
ms.prod: "dynamics-365-business-central"
---

# Get pdfDocument
Retrieve a PDF print-out of the corresponding document as binary content for Dynamics 365 Business Central.

> [!NOTE]  
> To generate a document in the supported local language, you must specify `Accept-Language` in the Request header, for example `Accept-Language: nl-NL` for Dutch.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type |Permissions (from least to most privileged)|
|:---------------|:------------------------------------------|
|Delegated (work or school account)|Financials.ReadWrite.All |
|Delegated (personal Microsoft account|Not supported.|
|Application|Financials.ReadWrite.All|

## HTTP request
The following example gets a link to the content of the PDF:

```
GET /businesscentral/api/v1.0/companies({id})/salesQuote({quoteId})/pdfDocument
GET /businesscentral/api/v1.0/companies({id})/salesInvoice({salesInvoiceId})/pdfDocument
GET /businesscentral/api/v1.0/companies({id})/salesCreditMemo(salesCreditMemoId})/pdfDocument
GET /businesscentral/api/v1.0/companies({id})/purchaseInvoide({purchaseInvoiceId})/pdfDocument

```

## Request headers

|Header|Value|
|------|-----|
|Authorization  |Bearer {token}. Required. |

## Request body
Do not supply a request body for this method.

## Response
If successful, this method returns a ```200 OK``` response code and a link to the PDF document in the response body.

## Example

**Request**
Here is an example of the request.

```json
GET https://api.businesscentral.dynamics.com/v1.0/api/v1.0/companies({id})/salesQuotes({quoteId})/pdfDocument
```

**Response**
Here is an example of the response.

> [!NOTE]  
> The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.

```json
{

    "@odata.context":"http://api.businesscentral.dynamics.com/v1.0/api/v1.0/$metadata#companies('CRONUS%20International%20Ltd.')/salesQuotes(94913756-80e9-47bc-995a-048a655b8cdd)/pdfDocument",
    "value":
    [
        {
            "@odata.etag":"W/\"JzQ0O0tQNUdjaUtZcU8rcUNCQTdXOUxIZVEwalA0clhjSmlXU1pqWjQ4RFczd2s9MTswMDsn\"",
            "id":"94913756-80e9-47bc-995a-048a655b8cdd",
            "content@odata.mediaReadLink":"http:// api.businesscentral.dynamics.com/v1.0/pi/v1.0/companies(name='CRONUS%20International%20Ltd.')/salesQuotes(94913756-80e9-47bc-995a-048a655b8cdd)/pdfDocument(94913756-80e9-47bc-995a-048a655b8cdd)/content"
        }
    ]
}
```

## HTTP request
The following example gets the actual PDF document:
`GET /businesscentral/api/v1.0/companies({companyid})/salesQuotes({quoteId})/pdfDocument({invoiceid})/content`

## Request headers

|Header|Value|
|------|-----|
|Authorization  |Bearer {token}. Required. |

## Request body
Do not supply a request body for this method.

## Response
If successful, this method returns a `200 OK` response code and the PDF document in the response body.

## Example

**Request**
Here is an example of the request.

```
GET https://api.businesscentral.dynamics.com/v1.0/api/v1.0/companies({companyid})/salesQuotes({quoteId})/pdfDocument({id})/content
```

**Response** 
The PDF document in binary format.
