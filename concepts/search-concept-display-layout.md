---
ms.author: "yiwenwang"
title: "Use the Microsoft Search API in Microsoft Graph to render display layout"
description: "We provide display layout in Microsoft Graph Search API, which help our clients rendering the different search results"
author: "yiwenwang"
localization_priority: Normal
ms.prod: "search"
---

# Use Display Layout provided in Microsoft Graph Search API to render search results (preview)

A search result type is a rule that causes distinct kinds of search results to be displayed in different ways in Search Result Pages. It consists of the following: 

- One or more characteristics or conditions to compare each search result against, such as the result source or content type of the search result.
- A display template to use for search results that meet the conditions. The display template controls the way in which all results that meet the conditions appear and behave on a search results page. 

Microsoft Graph Search API provided a renderable response based on [Adaptive Card](https://adaptivecards.io/). By using [Adaptive Card Template](https://adaptivecards.io/designer), Clients can render different search result in different kinds of platform.
Clients can custominize their search result type in [Microsoft Office365 Admin Center](https://admin.microsoft.com/Adminportal/Home#/MicrosoftSearch/resulttypes).

## Example 1: Sample Request

### Request

```HTTP
POST https://graph.microsoft.com/v1.0/search/query
Content-Type: application/json

{
    "requests": [
        {
            "entityTypes": [
                "externalItem"
            ],
            "contentSources": [
                "Connectors",
            ],
            "query": {
                "queryString": "*"
            },
            "enableDisplayLayout":true
        }
    ]
}
```

### Response

The following is an example of the response, which contains one message that matches the search criterion.

```HTTP
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#Collection(microsoft.graph.searchResponse)",
    "value": [
        {
            "searchTerms": [],
            "hitsContainers": [
                {
                    "total": 1201701,
                    "moreResultsAvailable": true,
                    "hits": [
                        {
                            "hitId": "85437765-b430-434f-a945-38eceead5b93",
                            "rank": 1,
                            "summary": "",
                            "resource": {
							    "@odata.type" : "#microsoft.graph.externalItem",
                                "id" : "B5B6E9C7-152C-4478-BCCB-CEF053F17397",
								"Title" : "[SM00186] Number of tests - Liquid",
								"URL": "https://liquid.microsoft.com/Web/Object/Read/scanningtoolwarnings/Requirements/CodeQL.SM00186"
								"displayLayoutOption": {
                                  "layoutName": "Liquid",
                                  "layoutId": "1603900360618_5XCBK2OXG"
								}
								}
						},
						
						{
                            "hitId": "85437765-5430-434f-a945-38eceead5b94",
                            "rank": 2,
                            "summary": "",
                            "resource": {
							    "@odata.type" : "#microsoft.graph.externalItem",
                                "id" : "B5B6E9C7-152C-4478-BCCB-CEF053F17398",
								"Title" : "[SM00186] Number of tests - Liquid 2",
								"URL": "https://liquid.microsoft.com/Web/Object/Read/scanningtoolwarnings/Requirements/CodeQL.SM00186"
								"displayLayoutOption": {
                                  "layoutName": "Liquid-2",
                                  "layoutId": "1603900360618_5XCBK2OXP"
								}
								}
						},
						
						                        {
                            "hitId": "85437765-b430-434f-a945-38eceead5b95",
                            "rank": 3,
                            "summary": "",
                            "resource": {
							    "@odata.type" : "#microsoft.graph.externalItem",
                                "id" : "B5B6E9C7-152C-4478-BCCB-CEF053F17399",
								"Title" : "[SM00186] Number of tests - Liquid 3",
								"URL": "https://liquid.microsoft.com/Web/Object/Read/scanningtoolwarnings/Requirements/CodeQL.SM00186"
								"displayLayoutOption": {
                                  "layoutName": "Liquid-3",
                                  "layoutId": "1603900360618_5XCBK2OXG"
								}
								}
						},
						
					]
		        }
		    ],
		"displayLayouts": [
            {
                "layoutId": "1603900360618_5XCBK2OXG",
                "layoutBody": "{\"type\":\"AdaptiveCard\",\"version\":\"1.0\",\"body\":[{\"type\":\"ColumnSet\",\"columns\":[{\"type\":\"Column\",\"width\":\"auto\",\"items\":[{\"type\":\"Image\",\"url\":\"https://searchuxcdn.azureedge.net/designerapp/images/LiquidLogo.png\",\"horizontalAlignment\":\"Center\",\"size\":\"Small\"}],\"horizontalAlignment\":\"Center\"},{\"type\":\"Column\",\"width\":10,\"items\":[{\"type\":\"TextBlock\",\"text\":\"[{Title}]({URL})\",\"weight\":\"Bolder\",\"color\":\"Accent\",\"size\":\"Medium\",\"maxLines\":3},{\"type\":\"TextBlock\",\"text\":\"{ResultSnippet}\",\"maxLines\":3,\"wrap\":true}],\"spacing\":\"Medium\"}]}],\"$schema\":\"http://adaptivecards.io/schemas/adaptive-card.json\"}",
                "lastModifiedTime": "2/12/2021 7:20:02 AM +00:00"
            },
				  
			{
                "layoutId": "1603900360618_5XCBK2OXP",
                "LayoutBody": "{\"type\":\"AdaptiveCard\",\"version\":\"1.0\",\"body\":[{\"type\":\"ColumnSet\",\"columns\":[{\"type\":\"Column\",\"width\":\"auto\",\"items\":[{\"type\":\"Image\",\"url\":\"https://searchuxcdn.azureedge.net/designerapp/images/LiquidLogo.png\",\"horizontalAlignment\":\"Center\",\"size\":\"Small\"}],\"horizontalAlignment\":\"Center\"},{\"type\":\"Column\",\"width\":10,\"items\":[{\"type\":\"TextBlock\",\"text\":\"[{Title}]({URL})\",\"weight\":\"Bolder\",\"color\":\"Accent\",\"size\":\"Medium\",\"maxLines\":3},{\"type\":\"TextBlock\",\"text\":\"{ResultSnippet}\",\"maxLines\":3,\"wrap\":true}],\"spacing\":\"Medium\"}]}],\"$schema\":\"http://adaptivecards.io/schemas/adaptive-card.json\"}",
                "lastModifiedTime": "2/12/2021 7:25:02 AM +00:00"
            }
		]
        }
    ]
}

```

## Example 2: Using ACT rendering pages

Using AdaptiveCardTemplating for the result rendering.

We're excited to share a preview of new tools that will help you **create**, **reuse**, and **share** Adaptive Cards. 

> [!IMPORTANT] 
> 
> **Breaking changes** in the **May 2020 Release Candidate**
>
> The templating release candidate includes some minor breaking changes that you should be aware of if you've been using the older packages. See below for details.


### Breaking changes as of May 2020

1. The binding syntax changed from `{...}` to `${...}`. 
    * For Example: `"text": "Hello {name}"` becomes `"text": "Hello ${name}"`
2. The JavaScript API no longer contains an `EvaluationContext` object. Simply pass your data to the `expand` function. Please see the [SDK page](https://docs.microsoft.com/adaptive-cards/templating/sdk) for full details.
3. The .NET API was redesigned to more closely match the JavaScript API. Please see the [SDK page](https://docs.microsoft.com/adaptive-cards/templating/sdk) for full details.

### Rendering for web component
> [!IMPORTANT] 
> 
> The version used in Microsoft Graph Search API based on the ACT version before **May 2020 Release**


<!-- markdownlint-disable MD024 -->
### Sample WebComponent

```HTML
<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="utf-8" />
	<title>Adaptive Cards Example</title>

	<script src="https://unpkg.com/markdown-it@8.4.0/dist/markdown-it.js"></script>
    <script src="https://unpkg.com/adaptivecards/dist/adaptivecards.min.js"></script>

	<script src="https://unpkg.com/adaptivecards-templating@0.1.0-alpha1/dist/adaptivecards-templating.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>

	<style type="text/css">
		#exampleDiv {
			border: solid 1px black;
		}
	</style>

	<script type="text/javascript">
	
	function renderCard() {
            // Define a template payload
			var layoutBodyStr = "{\"type\":\"AdaptiveCard\",\"version\":\"1.0\",\"body\":[{\"type\":\"ColumnSet\",\"columns\":[{\"type\":\"Column\",\"width\":\"auto\",\"items\":[{\"type\":\"Image\",\"url\":\"https://searchuxcdn.azureedge.net/designerapp/images/BingWikiLogo.png\",\"size\":\"Small\",\"horizontalAlignment\":\"Center\",\"altText\":\"Not available\",\"mimeType\":\"image/png\"}],\"height\":\"stretch\"},{\"type\":\"Column\",\"width\":8,\"items\":[{\"type\":\"TextBlock\",\"text\":\"[{Title}]({URL})\",\"color\":\"Accent\",\"size\":\"Medium\",\"weight\":\"Bolder\"},{\"type\":\"TextBlock\",\"text\":\"{RevisionUser} modified {{DATE({RevisionTimestamp})}}\",\"spacing\":\"Small\"},{\"type\":\"TextBlock\",\"text\":\"{ResultSnippet}\",\"wrap\":true,\"maxLines\":3,\"spacing\":\"Medium\"}],\"horizontalAlignment\":\"Center\",\"spacing\":\"Medium\"}]}],\"$schema\":\"http://adaptivecards.io/schemas/adaptive-card.json\"}";
			var templatePayload = JSON.parse(layoutBodyStr);
            
            // Create a Template instance from the template payload
            var template = new ACData.Template(templatePayload);

            // Create a data binding context, and set its $root property to the
            // data object to bind the template to
            var context = new ACData.EvaluationContext();
            context.$root = {
								"URL": "https://www.owiki.ms//wiki/Monthly_Engineering_Reviews",
								"Title": "Monthly Engineering Reviews",
								"RevisionUser": "Shparee@microsoft.com",
								"RevisionTimestamp": "2021-01-21T03:31:05Z",
								"HitHighlightedProperties": ""
            };

            // "Expand" the template - this generates the final Adaptive Card,
            // ready to render
            var card = template.expand(context);

            // Render the card
			var adaptiveCard = new AdaptiveCards.AdaptiveCard();
			adaptiveCard.parse(card);

			document.getElementById('exampleDiv').appendChild(adaptiveCard.render());
		}
		
	</script>

</head>

<body onload="renderCard()">
	<h1>Adaptive Cards Data Binding Example</h1>
	<div id="exampleDiv"></div>
</body>
</html>
```

## Next steps

- [Use the Microsoft Search API](/graph/api/resources/search-api-overview)