---
ms.author: "yiwenwang"
title: "Use the Microsoft Search API in Microsoft Graph to render display layout"
description: "Use the Microsoft Search API in Microsoft Graph to display search results in different ways."
author: "yiwenwang"
localization_priority: Normal
ms.prod: "search"
---

# Use the Microsoft Search API in Microsoft Graph to render display layout (preview)

A search display layout or result type is a rule that causes distinct kinds of search results to be displayed in different ways in search result pages. It consists of the following: 

- One or more characteristics or conditions to compare each search result against, such as the result source or content type of the search result.
- A display template to use for search results that meet the conditions. The display template controls the way in which all results that meet the conditions appear and behave on a search results page. 

The Microsoft Graph Search API provides a renderable response based on [Adaptive Cards](https://adaptivecards.io/). By using the [Adaptive Card template](https://adaptivecards.io/designer), clients can render different search result in different canvases.

Customers can customize their search result type in the [Microsoft 365 admin center](https://admin.microsoft.com/Adminportal/Home#/MicrosoftSearch/resulttypes).

## Request example

The following example shows how to get the display layouts or result templates for rendering the search results by setting the **enableResultTemplate** property to `true` in the request contract.

The reponse shows three search hits, two of them related, with the **resultTemplateId** 1603900360618_5XCBK2OXG, and the other one with the **resultTemplateId** 1603900360618_5XCBK2OXP. These IDs match with one of the keys of the two display layouts contained in the **resultTemplates** dictionary that's included within the response contract. Using the result template IDs, you can determine which display layout to use to render each search result.

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
                "Connectors"
            ],
            "query": {
                "queryString": "*"
            },
            "resultTemplateOptions": {
                "enableResultTemplate": true
            }
        }
    ]
}
```

### Response


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
                            "resultTemplateId": "1603900360618_5XCBK2OXG",
                            "resource": {
                                "@odata.type": "#microsoft.graph.externalItem",
                                "id": "B5B6E9C7-152C-4478-BCCB-CEF053F17397",
                                "Title": "[SM00186] Number of tests - Liquid",
                                "URL": "https://liquid.microsoft.com/Web/Object/Read/scanningtoolwarnings/Requirements/CodeQL.SM00186"
                            }
                        },
                        {
                            "hitId": "85437765-5430-434f-a945-38eceead5b94",
                            "rank": 2,
                            "summary": "",
                            "resultTemplateId": "1603900360618_5XCBK2OXP",
                            "resource": {
                                "@odata.type": "#microsoft.graph.externalItem",
                                "id": "B5B6E9C7-152C-4478-BCCB-CEF053F17398",
                                "Title": "[SM00186] Number of tests - Liquid 2",
                                "URL": "https://liquid.microsoft.com/Web/Object/Read/scanningtoolwarnings/Requirements/CodeQL.SM00186"
                            }
                        },
                        {
                            "hitId": "85437765-b430-434f-a945-38eceead5b95",
                            "rank": 3,
                            "summary": "",
                            "resultTemplateId": "1603900360618_5XCBK2OXG",
                            "resource": {
                                "@odata.type": "#microsoft.graph.externalItem",
                                "id": "B5B6E9C7-152C-4478-BCCB-CEF053F17399",
                                "Title": "[SM00186] Number of tests - Liquid 3",
                                "URL": "https://liquid.microsoft.com/Web/Object/Read/scanningtoolwarnings/Requirements/CodeQL.SM00186"
                            }
                        }
                    ]
                }
            ],
            "resultTemplates": {
                "1603900360618_5XCBK2OXG": {
                    "displayName": "Liquid-3",
                    "body": {
                        "type": "AdaptiveCard",
                        "version": "1.0",
                        "body": [
                            {
                                "type": "ColumnSet",
                                "columns": [
                                    {
                                        "type": "Column",
                                        "width": "auto",
                                        "items": [
                                            {
                                                "type": "Image",
                                                "url": "https://searchuxcdn.azureedge.net/designerapp/images/LiquidLogo.png",
                                                "horizontalAlignment": "Center",
                                                "size": "Small"
                                            }
                                        ],
                                        "horizontalAlignment": "Center"
                                    },
                                    {
                                        "type": "Column",
                                        "width": 10,
                                        "items": [
                                            {
                                                "type": "TextBlock",
                                                "text": "[{Title}]({URL})",
                                                "weight": "Bolder",
                                                "color": "Accent",
                                                "size": "Medium",
                                                "maxLines": 3
                                            },
                                            {
                                                "type": "TextBlock",
                                                "text": "{ResultSnippet}",
                                                "maxLines": 3,
                                                "wrap": true
                                            }
                                        ],
                                        "spacing": "Medium"
                                    }
                                ]
                            }
                        ],
                        "$schema": "http://adaptivecards.io/schemas/adaptive-card.json"
                    }
                },
                "1603900360618_5XCBK2OXP": {
                    "displayName": "Liquid-2",
                    "body": {
                        "type": "AdaptiveCard",
                        "version": "1.0",
                        "body": [
                            {
                                "type": "ColumnSet",
                                "columns": [
                                    {
                                        "type": "Column",
                                        "width": "auto",
                                        "items": [
                                            {
                                                "type": "Image",
                                                "url": "https://searchuxcdn.azureedge.net/designerapp/images/LiquidLogo.png",
                                                "horizontalAlignment": "Center",
                                                "size": "Small"
                                            }
                                        ],
                                        "horizontalAlignment": "Center"
                                    },
                                    {
                                        "type": "Column",
                                        "width": 10,
                                        "items": [
                                            {
                                                "type": "TextBlock",
                                                "text": "[{Title}]({URL})",
                                                "weight": "Bolder",
                                                "color": "Accent",
                                                "size": "Medium",
                                                "maxLines": 3
                                            },
                                            {
                                                "type": "TextBlock",
                                                "text": "{ResultSnippet}",
                                                "maxLines": 3,
                                                "wrap": true
                                            }
                                        ],
                                        "spacing": "Medium"
                                    }
                                ]
                            }
                        ],
                        "$schema": "http://adaptivecards.io/schemas/adaptive-card.json"
                    }
                }
            }
        }
    ]
}

```

## Web component example

The following example shows how to use Adaptive Card templating to render search results.

> [!IMPORTANT] 
> 
> This example uses a version of Adaptive Card templating earlier than the **May 2020 release**. For more details, see:
> - [Adaptive Card templating](/adaptive-cards/templating/)
> - [Adaptive Card templating SDK](/adaptive-cards/templating/sdk)


<!-- markdownlint-disable MD024 -->
```HTML
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <title>Adaptive Cards Example</title>

    <script src="https://unpkg.com/markdown-it@8.4.0/dist/markdown-it.js"></script>
    <script src="https://unpkg.com/adaptivecards/dist/adaptivecards.min.js"></script>

    <script src="https://unpkg.com/adaptivecards-templating@0.1.0-alpha1/dist/adaptivecards-templating.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.6.0.js"
        integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>

    <style type="text/css">
        #exampleDiv {
            border: solid 1px black;
        }
    </style>

    <script type="text/javascript">

       function renderCard() {
            var mockdata = this.getMockData();
            var renderTemplates = [];

            // Convert object to map
            var templateDictionary = new Map(Object.entries( mockdata.value[0].resultTemplates));

            for (let hit of mockdata.value[0].hitsContainers[0].hits) {
                renderTemplates.push(this.renderACT(hit, templateDictionary));
            }

            for(let template of renderTemplates){
                document.getElementById('exampleDiv').appendChild(template);
            }
        }

        function renderACT(hit, templateDictionary) {
            var templateId = hit.resultTemplateId;
            // Define a template payload
            var templatePayload = templateDictionary.get(templateId).body;
            var template = new ACData.Template(templatePayload);

            // Expand the template with your `$root` data object.
            // This binds it to the data and produces the final Adaptive Card payload

            console.log(hit.resource);

            // Create a data binding context, and set its $root property to the
            // data object to bind the template to
            var context = new ACData.EvaluationContext();
            context.$root = hit.resource;

            console.log(context);
            var card = template.expand(context);
            // OPTIONAL: Render the card (requires that the adaptivecards library be loaded)

            var adaptiveCard = new AdaptiveCards.AdaptiveCard();
            adaptiveCard.parse(card);
            return adaptiveCard.render();
        }

        function getMockData() {
            return {
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
                                        "resultTemplateId": "1603900360618_5XCBK2OXG",
                                        "resource": {
                                            "@odata.type": "#microsoft.graph.externalItem",
                                            "id": "B5B6E9C7-152C-4478-BCCB-CEF053F17397",
                                            "Title": "[SM00186] Number of tests - Liquid",
                                            "URL": "https://liquid.microsoft.com/Web/Object/Read/scanningtoolwarnings/Requirements/CodeQL.SM00186"
                                        }
                                    },
                                    {
                                        "hitId": "85437765-5430-434f-a945-38eceead5b94",
                                        "rank": 2,
                                        "summary": "",
                                        "resultTemplateId": "1603900360618_5XCBK2OXP",
                                        "resource": {
                                            "@odata.type": "#microsoft.graph.externalItem",
                                            "id": "B5B6E9C7-152C-4478-BCCB-CEF053F17398",
                                            "Title": "[SM00186] Number of tests - Liquid 2",
                                            "URL": "https://liquid.microsoft.com/Web/Object/Read/scanningtoolwarnings/Requirements/CodeQL.SM00186"
                                        }
                                    },
                                    {
                                        "hitId": "85437765-b430-434f-a945-38eceead5b95",
                                        "rank": 3,
                                        "summary": "",
                                        "resultTemplateId": "1603900360618_5XCBK2OXG",
                                        "resource": {
                                            "@odata.type": "#microsoft.graph.externalItem",
                                            "id": "B5B6E9C7-152C-4478-BCCB-CEF053F17399",
                                            "Title": "[SM00186] Number of tests - Liquid 3",
                                            "URL": "https://liquid.microsoft.com/Web/Object/Read/scanningtoolwarnings/Requirements/CodeQL.SM00186"
                                        }
                                    }
                                ]
                            }
                        ],
                        "resultTemplates": {
                            "1603900360618_5XCBK2OXG": {
                                "displayName": "Liquid-3",
                                "body": {
                                    "type": "AdaptiveCard",
                                    "version": "1.0",
                                    "body": [
                                        {
                                            "type": "ColumnSet",
                                            "columns": [
                                                {
                                                    "type": "Column",
                                                    "width": "auto",
                                                    "items": [
                                                        {
                                                            "type": "Image",
                                                            "url": "https://searchuxcdn.azureedge.net/designerapp/images/LiquidLogo.png",
                                                            "horizontalAlignment": "Center",
                                                            "size": "Small"
                                                        }
                                                    ],
                                                    "horizontalAlignment": "Center"
                                                },
                                                {
                                                    "type": "Column",
                                                    "width": 10,
                                                    "items": [
                                                        {
                                                            "type": "TextBlock",
                                                            "text": "[{Title}]({URL})",
                                                            "weight": "Bolder",
                                                            "color": "Accent",
                                                            "size": "Medium",
                                                            "maxLines": 3
                                                        },
                                                        {
                                                            "type": "TextBlock",
                                                            "text": "{ResultSnippet}",
                                                            "maxLines": 3,
                                                            "wrap": true
                                                        }
                                                    ],
                                                    "spacing": "Medium"
                                                }
                                            ]
                                        }
                                    ],
                                    "$schema": "http://adaptivecards.io/schemas/adaptive-card.json"
                                }
                            },
                            "1603900360618_5XCBK2OXP": {
                                "displayName": "Liquid-2",
                                "body": {
                                    "type": "AdaptiveCard",
                                    "version": "1.0",
                                    "body": [
                                        {
                                            "type": "ColumnSet",
                                            "columns": [
                                                {
                                                    "type": "Column",
                                                    "width": "auto",
                                                    "items": [
                                                        {
                                                            "type": "Image",
                                                            "url": "https://searchuxcdn.azureedge.net/designerapp/images/LiquidLogo.png",
                                                            "horizontalAlignment": "Center",
                                                            "size": "Small"
                                                        }
                                                    ],
                                                    "horizontalAlignment": "Center"
                                                },
                                                {
                                                    "type": "Column",
                                                    "width": 10,
                                                    "items": [
                                                        {
                                                            "type": "TextBlock",
                                                            "text": "[{Title}]({URL})",
                                                            "weight": "Bolder",
                                                            "color": "Accent",
                                                            "size": "Medium",
                                                            "maxLines": 3
                                                        },
                                                        {
                                                            "type": "TextBlock",
                                                            "text": "{ResultSnippet}",
                                                            "maxLines": 3,
                                                            "wrap": true
                                                        }
                                                    ],
                                                    "spacing": "Medium"
                                                }
                                            ]
                                        }
                                    ],
                                    "$schema": "http://adaptivecards.io/schemas/adaptive-card.json"
                                }
                            }
                        }
                    }
                ]
            }

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
