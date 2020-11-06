---
title: "Use the Microsoft Graph threat assessment API"
description: "Microsoft Graph lets your app get authorized access to organization's threat assessment data."
localization_priority: Priority
author: "preetikr"
ms.prod: "security"
doc_type: resourcePageType
---

# Use the Microsoft Graph threat assessment API

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The Microsoft Graph threat assessment API helps organizations to assess the threat received by any user in a tenant. This empowers customers to report spam emails, phishing URLs or malware attachments they receive to Microsoft. The policy check result and rescan result can help tenant administrators understand the threat scanning verdict and adjust their organizational policy.

## Authorization

Microsoft Graph controls access to resources via permissions. You must specify the permissions you need in order to access threat assessment resources. Typically, you specify permissions in the Azure Active Directory (Azure AD) portal. For more information, see [Microsoft Graph permissions reference](/graph/permissions-reference) and [Threat assessment permissions](/graph/permissions-reference#threat-assessment-permissions).

## Common use cases

The Microsoft Graph threat assessment API provides methods to list, create, and get threat assessment requests and retrieve the assessment results.

| Use cases | REST resources | See also |
|:----------|:---------------|:---------|
| List, create, and get threat assessment requests | [threatAssessmentRequest](../resources/threatassessmentrequest.md)<br> [mailAssessmentRequest](../resources/mailAssessmentRequest.md)<br> [emailFileAssessmentRequest](../resources/emailFileAssessmentRequest.md)<br> [fileAssessmentRequest](../resources/fileAssessmentRequest.md)<br> [urlAssessmentRequest](../resources/urlAssessmentRequest.md)<br> | [Create threatAssessmentRequest](../api/informationprotection-post-threatassessmentrequests.md)<br> [Get threatAssessmentRequest](../api/threatassessmentrequest-get.md)<br> [List threatAssessmentRequest](../api/informationprotection-list-threatassessmentrequests.md) |
| Get threat assessment results | [threatAssessmentResult](../resources/threatassessmentresult.md) | [Get threatAssessmentResult](../api/threatassessmentrequest-get.md#example-5-expand-threat-assessment-results-for-a-request)|

## Next steps

Threat assessment resources and APIs can open up new ways for you to engage with users and manage their experiences with Microsoft Graph. To learn more:

- Drill down on the [methods](../resources/threatassessmentrequest.md#methods), [properties](../resources/threatassessmentrequest.md#properties), and [relationships](../resources/threatassessmentrequest.md#relationships) of the [threat assessment request](../resources/threatassessmentrequest.md) and [threat asessment result](../resources/threatAssessmentResult.md) resources.
- Try the API in the [Graph Explorer](https://developer.microsoft.com/graph/graph-explorer).


