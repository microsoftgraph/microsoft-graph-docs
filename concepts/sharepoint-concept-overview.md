# SharePoint sites and content API overview

SharePoint is your mobile, intelligent intranet. With SharePoint, users can share and manage content, knowledge, and applications to empower teamwork, find information, and collaborate across an organization. You can use the SharePoint REST API in Microsoft Graph to integrate your solutions with SharePoint sites and content.

## Why integrate with SharePoint sites and content?

SharePoint sites power team collaboration and communication. Office 365 groups, Microsoft Teams, and portals are all based on SharePoint, so you can use Microsoft Graph to access data no matter where it's kept. Use the SharePoint API in Microsoft Graph to access:

- Team sites that store the content that users collaborate on with their coworkers.
- Communication sites and portals where users publish rich content pages to share across the organization.

### Unleash your data with SharePoint lists

[Lists][list] are the foundation for data storage in SharePoint.
[Create lists][create] to store a variety of business data, from a simple customer contact list to a custom business application, fronted with PowerApps.
When you use [columns][] to define your schema, SharePoint can protect the integrity of your data as well as enable  rich indexing, querying, and search capabilities.

### Bring the power of lists to your team's files

SharePoint stores files in a special [list type][] called a document library.
You can use the [OneDrive API][] to work with a library as a [drive][], or the SharePoint API to work with it as a [list][].
Just like a regular list, you can extend the schema of a Document Library to support your business needs with custom columns.

### Light up your app with your users' SharePoint intranet data

With Microsoft Graph, you can surface your users' most important data within your app.
Keep things fresh by [querying][] the list that stores your users' data.
[Create][] your own lists for your app and let users access your data in other SharePoint experiences, or keep things hidden.

### Use Microsoft Graph to extend SharePoint

As a platform, SharePoint provides several models for extension and integration:

- The [SharePoint Framework][] provides a way to build web parts using client-side technologies and open source tooling that can be hosted on SharePoint pages.
- [SharePoint Add-ins][] are self-contained extensions that can be added to a SharePoint site without the need for custom code to run on the server.

When your app runs within a SharePoint page, you can easily use Microsoft Graph to access data across Office 365.

To learn about these models in more detail, visit the [SharePoint Dev Center][] or the [SharePoint Developer Docs][].

## Next steps

Get started with SharePoint in Microsoft Graph by learning more about [working with sites][SharePoint].

[list]: ../api-reference/v1.0/resources/list.md
[columns]: ../api-reference/v1.0/resources/columndefinition.md
[list type]: ../api-reference/v1.0/resources/listinfo.md
[create]: ../api-reference/v1.0/api/list_create.md
[querying]: ../api-reference/v1.0/api/listitem_get.md
[drive]: ../api-reference/v1.0/resources/drive.md
[OneDrive API]: https://developer.microsoft.com/en-us/graph/docs/api-reference/v1.0/resources/onedrive
[SharePoint Framework]: https://docs.microsoft.com/sharepoint/dev/spfx/sharepoint-framework-overview
[SharePoint Add-ins]: https://docs.microsoft.com/sharepoint/dev/sp-add-ins/sharepoint-add-ins
[SharePoint Dev Center]: https://developer.microsoft.com/sharepoint
[SharePoint Developer Docs]: http://aka.ms/spdev-docs
[SharePoint]: https://developer.microsoft.com/graph/docs/api-reference/v1.0/resources/sharepoint
