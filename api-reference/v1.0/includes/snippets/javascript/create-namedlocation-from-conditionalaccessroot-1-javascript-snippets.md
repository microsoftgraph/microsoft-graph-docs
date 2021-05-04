---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const namedLocation = {
    '@odata.type': '#microsoft.graph.ipNamedLocation',
    displayName: 'Untrusted IP named location',
    isTrusted: false,
    ipRanges: [
        {
            '@odata.type': '#microsoft.graph.iPv4CidrRange',
            cidrAddress: '12.34.221.11/22'
        },
        {
            '@odata.type': '#microsoft.graph.iPv6CidrRange',
            cidrAddress: '2001:0:9d38:90d6:0:0:0:0/63'
        }
    ]
};

await client.api('/identity/conditionalAccess/namedLocations')
	.post(namedLocation);

```