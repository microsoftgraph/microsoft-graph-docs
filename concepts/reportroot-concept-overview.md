# Microsoft Graph reports API overview

Usage reports in the Microsoft 365 admin center enable admins to understand their company's usage across Office 365 services. You can use the reports API in Microsoft Graph to integrate with Office 365 usage reports.

## Why use the reports API?

### Integrate Office 365 usage reporting into your organization's existing reporting solution
Many companies have existing reporting solutions that use a reporting application or web portal. You can use the reports API to incorporate Office 365 usage data into your organization's existing reporting solution so that all IT service reports are in a unified location.  

### Retain usage reports for historical analysis
You can use the reports API to get the data that's available in all usage reports, including organization-level summaries per service, entity-level (user, sites, accounts) usage information for the last 7/30/90/180 days, and daily activity aggregates. This gives you the option to keep historical usage information for as long as required.

## What data can I access by using the reports API?

You can use the reports API to access the data sets listed in the following table.

|Office 365 app|Data set|
|:--------|:--------|
|Microsoft Teams|[Device usage](/graph/api/resources/microsoft_teams_device_usage_reports?view=graph-rest-1.0)<br/>|[User activity](/graph/api/resources/microsoft_teams_user_activity_reports?view=graph-rest-1.0)|
|Office 365 (general) |[Activations](/graph/api/resources/office_365_activations_reports?view=graph-rest-1.0)<br/>[Active users](/graph/api/resources/office_365_active_users_reports?view=graph-rest-1.0)<br/>[Groups activity](/graph/api/resources/office_365_groups_activity_reports?view=graph-rest-1.0)|
|OneDrive |[Activity](/graph/api/resources/onedrive_activity_reports?view=graph-rest-1.0)<br/>[Usage](/graph/api/resources/onedrive_usage_reports?view=graph-rest-1.0)|
|Outlook|[Activity](/graph/api/resources/email_activity_reports?view=graph-rest-1.0)<br/>[App usage](/graph/api/resources/email_app_usage_reports?view=graph-rest-1.0)<br/>[Mailbox usage](/graph/api/resources/mailbox_usage_reports?view=graph-rest-1.0)|
|SharePoint |[Activity](/graph/api/resources/sharepoint_activity_reports?view=graph-rest-1.0)<br/>[Site usage](/graph/api/resources/sharepoint_site_usage_reports?view=graph-rest-1.0)|
|Skype for Business |[Activity](/graph/api/resources/skype_for_business_activity_reports?view=graph-rest-1.0)<br/>[Device usage](/graph/api/resources/skype_for_business_device_usage_reports?view=graph-rest-1.0)<br/>[Device usage](/graph/api/resources/skype_for_business_device_usage_reports?view=graph-rest-1.0)<br/>[Participant activity](/graph/api/resources/skype_for_business_participant_activity_reports?view=graph-rest-1.0)<br/>[Peer to peer activity](/graph/api/resources/skype_for_business_peer_to_peer_activity?view=graph-rest-1.0)|
|Yammer |[Activity](/graph/api/resources/yammer_activity_reports?view=graph-rest-1.0)<br/>[Device usage](/graph/api/resources/yammer_device_usage_reports?view=graph-rest-1.0)<br/>[Groups activity](/graph/api/resources/yammer_groups_activity_reports?view=graph-rest-1.0)|

## API reference
Looking for the API reference for this service?

- [Office 365 usage reports API in Microsoft Graph v1.0](/graph/api/resources/report?view=graph-rest-1.0)
- [Office 365 usage reports API in Microsoft Graph beta](/graph/api/resources/report?view=graph-rest-beta)

## Next steps

* Explore the APIs in the [Graph Explorer](https://developer.microsoft.com/graph/graph-explorer).
* Learn more about how to [use the reports REST API](/graph/api/resources/report?view=graph-rest-1.0).
