---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const sitePage = {
    name: "Events.aspx",
    title: "Team Events",
    publishingState: {
        level: "checkedOut",
        versionId: "0.1"
    },
    webParts: [
        {
            type: "rte",
            innerHTML: "<p>Here are the team's upcoming events:</p>"
        },
        {
            type: "d1d91016-032f-456d-98a4-721247c305e8",
            data: {
                title: "Events",
                description: "Display upcoming events",
                serverProcessedContent: {
                    htmlStrings: {},
                    searchablePlainTexts: {
                        title: ""
                    },
                    imageSources: {},
                    links: {
                        baseUrl: "https://www.contoso.com/sites/Engineering"
                    },
                    componentDependencies: {
                        layoutComponentId: "8ac0c53c-e8d0-4e3e-87d0-7449eb0d4027"
                    }
                },
                dataVersion: "1.0",
                properties: {
                    selectedListId: "032e08ab-89b0-4d8f-bc10-73094233615c",
                    selectedCategory: "",
                    dateRangeOption: 0,
                    startDate: "",
                    endDate: "",
                    isOnSeeAllPage: false,
                    layoutId: "FilmStrip",
                    dataProviderId: "Event",
                    webId: "0764c419-1ecc-4126-ba32-0c25ae0fffe8",
                    siteId: "6b4ffc7a-cfc2-4a76-903a-1cc3686dee23"
                }
            }
        }
    ]
};

let res = await client.api('/sites/{site-id}/pages')
	.version('beta')
	.post(sitePage);

```