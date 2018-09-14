# ServiceHostedMediaConfig resource type

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

The ServiceMediaConfig type.

## Properties

| Property                    | Type                                                        | Description                                       |
| :-------------------------- | :---------------------------------------------------------- | :-------------------------------------------------|
| preFetchMedia               | [mediaInfo](mediaInfo.md) collection                        | The list of media to pre-fetch.                   |
| removeFromDefaultAudioGroup | Boolean                                                     | Remove self participant from default audio group. |

## JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.serviceHostedMediaConfig"
}-->

```json
{
  "preFetchMedia": [{"@odata.type": "microsoft.graph.mediaInfo"}],
  "removeFromDefaultAudioGroup": true
}
```

## Example

``` json
{
    "@odata.type": "#microsoft.graph.serviceMediaConfig",
    "preFetchMedia": [
        {
            "url": "https://cdn.contoso.com/beep.wav",
            "id": "1D6DE2D4-CD51-4309-8DAA-70768651088E",
        },
        {
            "url": "https://cdn.contoso.com/cool.wav",
            "id": "1D6DE2D4-CD51-4309-8DAA-70768651088F",
        }
    ]
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "serviceHostedMediaConfig resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
