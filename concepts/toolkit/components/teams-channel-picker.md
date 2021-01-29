---
title: "Microsoft Teams Channel Picker component in the Microsoft Graph Toolkit"
description: "You can use mgt-teams-channel-picker to search for channels and teams associated with the user from the Microsoft Graph."
localization_priority: Normal
author: vogtn
---

# Microsoft Teams Channel Picker component in the Microsoft Graph Toolkit

A you can use the `mgt-teams-channel-picker` component to enable searches for Microsoft Teams channels associated with a user. The component can search all teams the user has joined, and each channel in those teams. 

## Example

The following example shows the `mgt-teams-channel-picker` component. Start searching for a channel or team to see the results render.

<iframe src="https://mgt.dev/iframe.html?id=components-mgt-teams-channel-picker--teams-channel-picker&source=docs" height="450"></iframe>

[Open this example in mgt.dev](https://mgt.dev/?path=/story/components-mgt-teams-channel-picker--teams-channel-picker&source=docs)

## Getting the selected channel

Use the `selectedItem` property to retrieve the currently selected channel and parent team. This value will be null if no channel has been selected. `selectedItem` contains two properties: `channel` ([MicrosoftGraph.Channel](/graph/api/resources/channel)) and `team` ([MicrosoftGraph.Team](/graph/api/resources/team)).

```javascript
const channelPicker = document.querySelector('mgt-teams-channel-picker');
console.log(channelPicker.selectedItem.channel);
console.log(channelPicker.selectedItem.team);
```

## Selecting a channel

Use the `selectChannelById(channelId: string)` method to programmatically select a channel.

> **Note:** the Teams channel picker only supports single channel selection.

```javascript
const channelPicker = document.querySelector('mgt-teams-channel-picker');
const channelId = 'some-channel-id';
channelPicker.selectChannelById(channelId);
```

> **Note:** The provided channel (and subsequent ID) must belong to a team that the authenticated user has joined. 


## CSS custom properties

The `mgt-teams-channel-picker` component defines the following CSS custom properties.

```css
mgt-teams-channel-picker {
    --input-border: 2px rgba(255, 255, 255, 0.5) solid; /* sets all input area border */

      /* OR individual input border sides */
    --input-border-bottom: 2px rgba(255, 255, 255, 0.5) solid;
    --input-border-right: 2px rgba(255, 255, 255, 0.5) solid;
    --input-border-left: 2px rgba(255, 255, 255, 0.5) solid;
    --input-border-top: 2px rgba(255, 255, 255, 0.5) solid;

    --input-background-color: #1f1f1f; /* input area background color */
    --input-border-color--hover: #008394; /* input area border hover color */
    --input-border-color--focus: #0f78d4; /* input area border focus color */

    --dropdown-background-color: #1f1f1f; /* channel background color */
    --dropdown-item-hover-background: #333d47; /* channel or team hover background */
    --dropdown-item-selected-background: #0F78D4; /* selected channel background color */

    --color: white; /* input area border focus color */
    --arrow-fill: #ffffff;
    --placeholder-color: #f1f1f1; /* placeholder text color */
    --placeholder-color--focus: rgba(255, 255, 255, 0.8); /* place holder text focus color */
}
```

## Events
| Event | Detail | Description |
| --- | --- | --- |
| selectionChanged | The detail contains the currently selected item  of `{channel : `[MicrosoftGraph.Channel](/graph/api/resources/channel)`, team: `[MicrosoftGraph.Team](/graph/api/resources/team)`}` | Fired when user makes a change in selection of a channel. |

## Templates

 `mgt-teams-channel-picker` supports several [templates](../customize-components/templates.md) that you can use to replace certain parts of the component. To specify a template, include a `<template>` element inside a component and set the `data-type` value to one of the following.

| Data type | Data context | Description |
| --- | --- | --- |
| loading | null: no data | The template used to render the state of the picker while the request to Microsoft Graph is being made. |
| error | null: no data| The template used if user search returns no users. |


The following example shows how to use the `error` template.

```html
<mgt-teams-channel-picker>
  <template data-type="error">
    <p>Sorry, no Teams or Channels were found</p>
  </template>
</mgt-teams-channel-picker>
```

## Microsoft Graph permissions

This component uses the following Microsoft Graph APIs and permissions.

| API                                                                                                              | Permission  |
| ---------------------------------------------------------------------------------------------------------------- | ----------- |
| [/me/joinedTeams](/graph/api/user-list-joinedteams)                    | User.Read.All        |
| [/teams/${id}/channels](/graph/api/channel-list) | Group.Read.All        |

## Authentication

The control uses the global authentication provider described in the [authentication documentation](../providers/providers.md).

## Extend for more control

For more complex scenarios or a truly custom UX, this component exposes several `protected render*` methods for override in component extensions:

| Method | Description |
| - | - |
| renderSelected | Renders the selected team and channel in the input box. |
| renderInput | Renders the input box. |
| renderDropdown | Renders the dropdown. |
| renderDropdownList | Renders the items in the dropdown recursively. |
| renderItem | Renders a team or a channel in the dropdown list. |
| renderHighlightedText | Renders the channel text, highlighting the input query. |
| renderLoading | Renders the loading dropdown state. |
| renderError | Renders the dropdown error state. |
