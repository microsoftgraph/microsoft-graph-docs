---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const informationProtectionContentLabel = {
    contentInfo: {
        @odata.type: "#microsoft.graph.contentInfo",
        format@odata.type: "#microsoft.graph.contentFormat",
        format: "default",
        identifier: null,
        state@odata.type: "#microsoft.graph.contentState",
        state: "rest",
        metadata@odata.type: "#Collection(microsoft.graph.keyValuePair)",
        metadata: [
            {
                @odata.type: "#microsoft.graph.keyValuePair",
                name: "MSIP_Label_722a5300-ac39-4c9a-88e3-f54c46676417_Enabled",
                value: "True"
            },
            {
                @odata.type: "#microsoft.graph.keyValuePair",
                name: "MSIP_Label_722a5300-ac39-4c9a-88e3-f54c46676417_Method",
                value: "Standard"
            },
            {
                @odata.type: "#microsoft.graph.keyValuePair",
                name: "MSIP_Label_722a5300-ac39-4c9a-88e3-f54c46676417_SetDate",
                value: "1/1/0001 12:00:00 AM"
            },
            {
                @odata.type: "#microsoft.graph.keyValuePair",
                name: "MSIP_Label_722a5300-ac39-4c9a-88e3-f54c46676417_SiteId",
                value: "cfa4cf1d-a337-4481-aa99-19d8f3d63f7c"
            },
            {
                @odata.type: "#microsoft.graph.keyValuePair",
                name: "MSIP_Label_722a5300-ac39-4c9a-88e3-f54c46676417_Name",
                value: "Top Secret"
            },
            {
                @odata.type: "#microsoft.graph.keyValuePair",
                name: "MSIP_Label_722a5300-ac39-4c9a-88e3-f54c46676417_ContentBits",
                value: "0"
            },
            {
                @odata.type: "#microsoft.graph.keyValuePair",
                name: "MSIP_Label_722a5300-ac39-4c9a-88e3-f54c46676417_ActionId",
                value: "00000000-0000-0000-0000-000000000000"
            }
        ]
    }
};

let res = await client.api('/informationProtection/policy/labels/extractLabel')
	.version('beta')
	.post(informationProtectionContentLabel);

```