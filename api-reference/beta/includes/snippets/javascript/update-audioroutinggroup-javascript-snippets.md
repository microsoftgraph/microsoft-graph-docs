---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const audioRoutingGroup = {
  id: 'oneToOne',
  routingMode: 'oneToOne',
  sources: [
    '632899f8-2ea1-4604-8413-27bd2892079f'
  ],
  receivers: [
    '550fae72-d251-43ec-868c-373732c2704f',
    '72f988bf-86f1-41af-91ab-2d7cd011db47'
  ]
};

await client.api('/communications/calls/{id}/audioRoutingGroups/{id}')
	.version('beta')
	.update(audioRoutingGroup);

```