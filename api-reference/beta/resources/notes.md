# onenote resource type

The entry point for OneNote resources.

All calls to the OneNote service through the Microsoft Graph API use this service root URL:

```
https://graph.microsoft.com/{version}/{location}/onenote/ 
```

The location can be user notebooks on Office 365 and consumer OneDrive and group notebooks on Office 365. SharePoint site-hosted notebooks is currently not supported. 

**User notebooks** To access personal notebooks on consumer OneDrive or OneDrive for Business, use one of the following URLs:

```
https://graph.microsoft.com/{version}/me/onenote/{notebooks | sections | sectionGroups | pages} 
https://graph.microsoft.com/{version}/users/{userPrincipalName}/onenote/{notebooks | sections | sectionGroups | pages} 
https://graph.microsoft.com/{version}/users/{id}/onenote/{notebooks | sections | sectionGroups | pages} 
```

**Group notebooks** To access notebooks that are owned by a group, use the following service root URL:

```
https://graph.microsoft.com/{version}/groups/{id}/onenote/{notebooks | sections | sectionGroups | pages} 
```

The following permission scopes provide levels of access to OneNote notebooks. Choosing permission scopes depends both on the location of the notebooks you're targeting and your app's functionality. 

**Scopes for personal notebooks in consumer OneDrive or OneDrive for Business that are owned by the current user**

| Scope | Permission in Azure portal | Description |
|:-------|:------|:------|
| Notes.Create | Create users' OneNote notebooks | Can view the titles of your OneNote notebooks and sections; create new notebooks, sections and pages. |
| Notes.Read | Read users' OneNote notebooks | Can read your OneNote notebooks. |
| Notes.ReadWrite | Read and write users' OneNote notebooks | Can read, share and modify your OneNote notebooks. |

**Scopes for personal notebooks shared by other users and group notebooks that the current user can access**

| Scope | Permission in Azure portal | Description |
|:-------|:------|:------|
| Notes.Read.All | Read all OneNote notebooks that the user can access | Can read all the OneNote notebooks that the signed-in user has access to. |
| Notes.ReadWrite.All | Read and write all OneNote notebooks that the user can access | Can read, share and modify all the OneNote notebooks that the signed-in user has access to. |

**Note:** Accessing SharePoint site notebooks through the Graph API is currently not supported.

<!-- {
  "blockType": "resource",
  "optionalProperties": [
    "notebooks",
    "pages",
    "resources",
    "sectionGroups",
    "sections"
  ],
  "@odata.type": "microsoft.graph.notes"
}-->

## Relationships
| Relationship | Type	|Description|
|:---------------|:--------|:----------|
|notebooks|[Notebook](notebook.md) collection|The collection of OneNote notebooks that are owned by the user or group. Read-only. Nullable.|
|operations|[Operation](notesoperation.md) collection |The status of OneNote operations. Getting an operations collection is not supported, but you can get the status of long-running operations if the `Operation-Location` header is returned in the response. Read-only. Nullable.|
|pages|[Page](page.md) collection|The pages in all OneNote notebooks that are owned by the user or group.  Read-only. Nullable.|
|resources|[Resource](resource.md) collection |The image and other file resources in OneNote pages. Getting a resources collection is not supported, but you can [get the binary content of a specific resource](resource.md). Read-only. Nullable.|
|sectionGroups|[SectionGroup](sectiongroup.md) collection|The section groups in all OneNote notebooks that are owned by the user or group.  Read-only. Nullable.|
|sections|[Section](section.md) collection|The sections in all OneNote notebooks that are owned by the user or group.  Read-only. Nullable.|


## Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Create notebook](../api/notes_post_notebooks.md) |[Notebook](notebook.md)| Create a notebook by posting to the notebooks collection.|
|[List notebooks](../api/notes_list_notebooks.md) |[Notebook](notebook.md) collection| Get a collection of notebooks.|
|[Create page](../api/notes_post_pages.md) |[Page](page.md)| Create a page by posting to the pages collection.|
|[List pages](../api/notes_list_pages.md) |[Page](page.md) collection| Get a collection of pages.|
|[List section groups](../api/notes_list_sectiongroups.md) |[SectionGroup](sectiongroup.md) collection| Get a collection of section groups.|
|[List sections](../api/notes_list_sections.md) |[Section](section.md) collection| Get a collection of sections.|

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "notes resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
