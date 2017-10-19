# Get YammerGroupsActivity report

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

Retrieve the Yammer groups activity report. The response will be a .csv file in a binary stream.

> **Note:** For information about how to view the Yammer groups activity report, see [Office 365 Reports - Yammer groups activity](https://support.office.com/client/Yammer-groups-activity-report-94dd92ec-ea73-43c6-b51f-2a11fd78aa31).

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](../../../concepts/permissions_reference.md).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) | Not supported.    |
|Delegated (personal Microsoft account) | Not supported.    |
|Application | Reports.Read.All |

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
GET /reports/YammerGroupsActivity(view=view-value, period=period-value, date=date-value)/content
```

## Request headers

| Name       | Description|
|:---------------|:----------|
| Authorization  | Bearer {token}. Required. |

## Request body

In the request URL, provide following query parameters with values.

| Parameter   | Type|Description|
|:---------------|:--------|:----------|
|view|ViewType|An enumeration type, used to determine the type of information that the current report should return. Cannot be null.|
|period|PeriodType|An enumeration type, used to specify the aggregate type.|
|date|String|Specifies the day to a view of the users that performed an activity on that day. Must have a format of YYYY-MM-DD. Only available for the last 30 days and is ignored unless view type is **Detail**.|

The following **ViewType** values are available in this report:

- Detail
- Groups
- Activity

The following **PeriodType** values are available in this report:

- D7
- D30
- D90
- D180

> **Note:** When the view type value is **Detail**, the *period* parameter will be ignored. For other view types, the *date* parameter will be ignored.

> If you call with a **Detail** view type along with a **PeriodType**, the return data is a list of all users that are licensed for the product with their respective last activity date.

## Response

If successful, this method returns a `302 Found` response that redirects to a pre-authenticated download URL for the report.

To download the contents of the file, your application will need to follow the `Location` header in the response.
Many HTTP client libraries will automatically follow the 302 redirection and start downloading the file immedately.

Pre-authenticated download URLs are only valid for a short period of time (a few minutes) and do not require an `Authorization` header to download.

## Example

The following example shows how to call this API.

##### Request

The following is an example of the request.
<!-- {
  "blockType": "request",
  "name": "reportroot_yammergroupsactivity"
}-->

```http
GET https://graph.microsoft.com/beta/reports/YammerGroupsActivity(view='Detail',period='D7')/content
```

##### Response

The following is an example of the response.

<!-- { "blockType": "ignored" } -->

```http
HTTP/1.1 302 Found
Content-Type: text/plain
Location: https://reports.office.com/data/download/odffer_eYRg4sXTiKqggV6eXU0t__XDezYGO-NQw
```

Follow the 302 redirection and the downloading CSV file will have the schema as follows.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "stream"
} -->

```http
HTTP/1.1 200 OK
Content-Type: text/plain

ContentDate,Group name,Deleted,Group admin,Last activity date (UTC),Type,O365 connected,Members,Posted,Read,Liked,Reporting period in days
```

### Other valid requests

<!-- { "blockType": "ignored" } -->

```http
GET https://graph.microsoft.com/beta/reports/YammerGroupsActivity(view='Detail',date='2017-02-02')/content
GET https://graph.microsoft.com/beta/reports/YammerGroupsActivity(view='Groups',period='D7')/content
GET https://graph.microsoft.com/beta/reports/YammerGroupsActivity(view='Activity',period='D7')/content
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "ReportRoot: YammerGroupsActivity",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
