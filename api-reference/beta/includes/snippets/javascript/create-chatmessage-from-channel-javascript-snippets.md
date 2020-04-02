---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const chatMessage = {
    subject: null,
    body: {
        contentType: "html",
        content: "<attachment id=\"74d20c7f34aa4a7fb74e2b30004247c5\"></attachment>"
    },
    attachments: [
        {
            id: "74d20c7f34aa4a7fb74e2b30004247c5",
            contentType: "application/vnd.microsoft.card.thumbnail",
            contentUrl: null,
            content: {\r\n  \"title\: \This is an example of posting a card\",\r\n  \"subtitle\: \<h3>This is the subtitle</h3>\",\r\n  \"text\: \Here is some body text. <br>\\r\\nAnd a <a href=\\\"http://microsoft.com/\\\">hyperlink</a>. <br>\\r\\nAnd below that is some buttons:\",\r\n  \"buttons\: [\r\n    {\r\n      \type\: \messageBack\",\r\n      \"title\: \Login to FakeBot\",\r\n      \"text\: \login\",\r\n      \"displayText\: \login\",\r\n      \"value\: \"login\"\r\n    }\r\n  ]\r\n}",
            name: null,
            thumbnailUrl: null
        }
    ]
};

let res = await client.api('/teams/{id}/channels/{id}/messages')
	.version('beta')
	.post(chatMessage);

```