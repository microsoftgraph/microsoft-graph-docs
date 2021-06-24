---
title: "Use the Microsoft Search API in Microsoft Graph to request spelling corrections"
description: "You can use the Microsoft Search API to get the spelling suggestion or spelling modification for search query."
author: "nmoreau"
localization_priority: Normal
ms.prod: "search"
---

# Use the Microsoft Search API in Microsoft Graph to request spelling correction (preview)

You can use the Microsoft Search API to request spelling corrections to handle mismatches between typos in user queries and correct words in matched contents. To request spelling corrections, specify the following properties in the **queryAlterationOptions** property of request body of the [query](/graph/api/search-query?view=graph-rest-beta&preserve-view=true) method:

- **enableSuggestion** to enable/disable spelling suggestions for the user query. You can pass `true` to get the suggested spelling correction information for typos in the user query.

- **enableModification** to enable/disable spelling modifications for the user query. You can pass `true` to get the search results for the corrected query *when there are no results* for the original query with typos, and get the corresponding correction information.

The priority of spelling modification is higher than spelling suggestion if they are both enabled.

All the user query strings should be the same to enable spelling corrections for searches of multiple entities.

## Example 1: Request spelling suggestions

The following example queries **listItem** resources that contain the string "accountt" and requests a spelling suggestion for the query.

The response contains [alterationResponse](/graph/api/resources/alterationResponse?view=graph-rest-beta&preserve-view=true) objects for the spelling suggestion.

### Request

```HTTP
POST https://graph.microsoft.com/beta/search/query
Content-Type: application/json

{
    "requests": [
        {
            "entityTypes": [
                "listItem"
            ],
            "query": {
                "queryString": "accountt"
            },
            "from": 0,
            "size": 25
        }
    ],
    "queryAlterationOptions": {
        "enableSuggestion": true,
        "enableModification": false
    }
}
```

### Response

```HTTP
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#Collection(microsoft.graph.searchResponse)",
    "value": [
        {
            "searchTerms": [
                "accountt"
            ],
            "hitsContainers": [
                {
                    "total": 0,
                    "moreResultsAvailable": false
                }
            ]
        }
    ],
    "queryAlterationResponse": {
        "@odata.type": "#microsoft.substrateSearch.alterationResponse",
        "originalQueryString": "accountt",
        "queryAlteration": {
            "@odata.type": "#microsoft.substrateSearch.searchAlteration",
            "alteredQueryString": "account",
            "alteredHighlightedQueryString": "account",
            "alteredQueryTokens": [
                {
                    "offset": 0,
                    "length": 8,
                    "suggestion": "account"
                }
            ]
        },
        "queryAlterationType": "Suggestion"
    }
}
```

## Example 2: Request spelling modifications

The following example queries **listItem** resources that contain the string "accountt" and requests a spelling modification for the query.

In this example, there are no results for original query with typo "accountt". The response contains results related to corrected string "account" and [alterationResponse](/graph/api/resources/alterationResponse?view=graph-rest-beta&preserve-view=true) objects for the spelling modification.

### Request

```HTTP
POST https://graph.microsoft.com/beta/search/query
Content-Type: application/json

{
    "requests": [
        {
            "entityTypes": [
                "listItem"
            ],
            "query": {
                "queryString": "accountt"
            },
            "from": 0,
            "size": 25
        }
    ],
    "queryAlterationOptions": {
        "enableSuggestion": true,
        "enableModification": true
    }
}
```

### Response

```HTTP
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#Collection(microsoft.graph.searchResponse)",
    "value": [
        {
            "searchTerms": [
                "account"
            ],
            "hitsContainers": [
                {
                    "total": 1,
                    "moreResultsAvailable": false,
                    "hits": [
                        {
                            "hitId": "FlULeN/ui/1GjLx1rUfio5UAAEl",
                            "rank": 1,
                            "summary": "",
                            "resource": {
                                "@odata.type": "#microsoft.graph.listItem",
                                "createdDateTime": "2019-06-10T06:37:43Z",
                                "lastModifiedDateTime": "2019-06-10T06:37:43Z",
                                "name": "web_part_test_long Notebook",
                                "webUrl": "https://contoso.sharepoint.com/sites/contoso-team/Lists/Issue tracker list/DispForm.aspx?ID=1",
                                "sharepointIds": {
                                    "listId": "33498de0-d695-4d23-ac26-e1bf95a3206e",
                                    "listItemId": "13"
                                },
                                "createdBy": {
                                    "user": {
                                        "displayName": "System Account"
                                    }
                                },
                                "lastModifiedBy": {
                                    "user": {
                                        "displayName": "System Account"
                                    }
                                },
                                "parentReference": {
                                    "sharepointIds": {
                                        "listId": "da61a2b0-4120-4a3f-812b-0fc0d79bf16b"
                                    },
                                    "siteId": "m365x231305.sharepoint.com,5724d91f-650c-4810-83cc-61a8818917d6,c3ba25dc-2c9f-48cb-83be-74cdf68ea5a0"
                                }
                            }
                        }
                    ]
                }
            ]
        }
    ],
    "queryAlterationResponse": {
        "@odata.type": "#microsoft.substrateSearch.alterationResponse",
        "originalQueryString": "accountt",
        "queryAlteration": {
            "@odata.type": "#microsoft.substrateSearch.searchAlteration",
            "alteredQueryString": "account",
            "alteredHighlightedQueryString": "account",
            "alteredQueryTokens": [
                {
                    "offset": 0,
                    "length": 8,
                    "suggestion": "account"
                }
            ]
        },
        "queryAlterationType": "Modification"
    }
}
```

## Known limitations

Spelling correction is only supported for the following resources: **message**, **event**, **site**, **drive**, **driveItem**, **list**, **listItem** and **externalItem**.

## Next steps

- [Use the Microsoft Search API to query data](/graph/api/resources/search-api-overview?view=graph-rest-beta&preserve-view=true)
