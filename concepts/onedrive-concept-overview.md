# OneDrive file storage API overview

OneDrive is the files hub in Office 365.

People work with files across a variety of apps -- Microsoft Teams, SharePoint Team Sites, Groups, and more.
OneDrive lets users access their files no matter where they are stored, and the OneDrive API in Microsoft Graph lets you use a single API to do it.

Files that belong to a team are typically stored in a [SharePoint][] document library.
Office 365 groups, Microsoft Teams, and SharePoint team sites all use document libraries for their file storage.
Files and folders in a library can be accessed by anyone in the team as well as shared with other people and groups.

Files that belong to a user are typically in their personal drive.
Personal files start out private to the owner, but can also be shared with others.

## Why integrate with OneDrive file storage in the cloud?

### Tap into an ecosystem with billions of files

OneDrive users can access their files from any device, online or offline, and share files with people inside or outside their organization.
OneDrive enables real-time co-authoring in familiar apps like Word, Excel, and PowerPoint.
Files light up with rich thumbnails for hundreds formats, video streaming, search, analytics, and more, powered by the Microsoft Graph.
Data in OneDrive is protected with advanced encryption, compliance, and security features that customers trust.

OneDrive's flexibility lets users collaborate on files however it works best for them.
Users can share links to files in their personal drives, copy or move files to team drives, or even attach OneDrive files to mail messages in Outlook.

With over 500 million devices running the OneDrive app and over 85% of the Fortune 500 having OneDrive for Business, integrating your app with OneDrive lets you connect with millions of consumers, students, and business users and engage with customers where they already do their work everyday.

### Store your app's files in a powerful cloud

When you store your files in OneDrive, your app can leverage the features of Microsoft's cloud and your users can access their files anywhere.
Use the [file picker][] SDK to quickly open, download, save, or share files stored in OneDrive from within your own app, using the same experience OneDrive users are familiar with.
Get metadata about selected files directly from the picker, or use Microsoft Graph APIs to interact more deeply with files.
Use [special folders][] to work with files in well-known locations like `Documents` and `Camera Roll`, or give your app its own personal folder.

### Bring your app straight to users within OneDrive

OneDrive customers can use or launch your app directly from within OneDrive to open, edit, or preview files.
Use OneDrive's [file handler][] extensions to provide icons and previews for your own custom file extensions, add your app to the 'New' button or even add your own custom actions to the menu bar to launch your app.

### Work with content in formats your app understands

OneDrive lets your app get file content in the most convenient format for you.
Your app can display custom-sized [thumbnails][] for hundreds of different file formats.
You can download files in a variety of alternative [formats][], like PDF.
You can even embed OneDrive's own file previewers within your own app using the [preview][] API (beta).

### Work with file content and metadata without downloading the binary

Microsoft Graph lets you access rich content through REST APIs without having to download the binary.
Explore extracted metadata from [photo][], [audio][], and [video][] files.
Use the [Excel API][] to work directly with the raw data stored in an Excel workbook.
Use the [Notes API][] to access the contents of OneNote notebooks.

### React to file changes

With [webhooks][], your app can get notified when files changes so you can quickly react.
Use the [delta API][] to see what changed since the last time your app synchronized with the cloud.

## Next steps

Find out more about [using the OneDrive API][Drive API] in Microsoft Graph v1.0.

[SharePoint]: sharepoint-concept-overview.md
[file picker]: https://dev.onedrive.com/sdk/js-v72/js-picker-overview.htm
[file handler]: https://docs.microsoft.com/onedrive/developer/file-handlers
[special folders]: https://developer.microsoft.com/en-us/graph/docs/api-reference/v1.0/api/drive_get_specialfolder
[Notes API]: https://developer.microsoft.com/en-us/graph/docs/concepts/integrate_with_onenote
[Excel API]: https://developer.microsoft.com/en-us/graph/docs/api-reference/v1.0/resources/excel
[REST API]: https://developer.microsoft.com/en-us/graph/docs/api-reference/v1.0/resources/onedrive
[delta API]: https://developer.microsoft.com/en-us/graph/docs/api-reference/v1.0/api/driveitem_delta
[video]: https://developer.microsoft.com/en-us/graph/docs/api-reference/v1.0/resources/video
[photo]: https://developer.microsoft.com/en-us/graph/docs/api-reference/v1.0/resources/photo
[audio]: https://developer.microsoft.com/en-us/graph/docs/api-reference/v1.0/resources/audio
[formats]: https://developer.microsoft.com/en-us/graph/docs/api-reference/v1.0/api/driveitem_get_content_format
[thumbnails]: https://developer.microsoft.com/en-us/graph/docs/api-reference/v1.0/api/driveitem_list_thumbnails
[preview]: https://developer.microsoft.com/en-us/graph/docs/api-reference/beta/api/driveitem_preview
[webhooks]: https://developer.microsoft.com/en-us/graph/docs/api-reference/v1.0/resources/webhooks
[Drive API]: https://developer.microsoft.com/en-us/graph/docs/api-reference/v1.0/resources/onedrive
