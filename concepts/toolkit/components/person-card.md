---
title: "Person-Card component in the Microsoft Graph Toolkit"
description: "A Person-Card component is a component to display more information relating to a person."
localization_priority: Normal
author: vogtn
---

# Person-Card component in the Microsoft Graph Toolkit

A Person-Card component is a responsive component to display more information related to a person. It is generally used as a flyout on the `mgt-person` component.

For more information about the `mgt-person` component, see [mgt-person docs](./person.md).

## Example

The following example shows the use of the `mgt-person-card` component with a `mgt-person` component. Hover over the person to see the Person Card and use the code editor to see how [properties](#properties) change the behavior of the component.
  
<iframe src="https://mgt.dev/iframe.html?id=components-mgt-person-card--person-card-hover&source=docs" height="400"></iframe>

[Open this example in mgt.dev](https://mgt.dev/?path=/story/components-mgt-person-card--person-card-hover&source=docs)

## Setup for Teams integrations

The Person-Card component allows the user to contact the target person, including via Teams chat. If using the component inside a Teams tab app, you can ensure that the component deep links directly to chat instead of opening a browser window by setting the `microsoftTeamsLib` in `TeamsProvider`.

If the Person-Card component is unable to detect the Teams lib, the component will attempt to open the Teams web client instead.

```ts
import * as MicrosoftTeams from "@microsoft/teams-js/dist/MicrosoftTeams";
import {TeamsHelper} from '@microsoft/mgt';

TeamsHelper.microsoftTeamsLib = MicrosoftTeams;
```

For more information about the `TeamsProvider` provider, see [Microsoft Teams provider](../providers/teams.md).

## Properties

By default, the `mgt-person` component will pass the person details to the `mgt-person-card` component. However, you can use these attributes to change this when templating the `mgt-person` component or when using the `mgt-person-card` component as a standalone component.

| Attribute         | Type                     | Description                                                                           |
| ---------------- | -------------------------------- | ------------------------------------------------------------------------------------- |
| person-details | MicrosoftGraph.User <br> MicrosoftGraph.Person <br> MicrosoftGraph.Contact | Person object as defined by Microsoft Graph, containing details related to the user. |
| person-image   | png/jpg/svg                    | Image related to the person displayed in the card.                                   |
| inherit-details   | None.                  | Allows person-card to walk parent tree for `mgt-person` component to use the same `person-details` and `person-image` data.                      |
| user-id | string | Allows developers to supply user-id to retrive data shown on person-card component |
| person-query | string | Allows developers to supply person-query to retrive data shown on person-card component |


## Templates

The Person-Card component uses [templates](../templates.md) that allow you to add or replace portions of the component. To specify a template, include a `<template>` element inside of a component and set the `data-type` value to one of the following.

| Data type | Data context | Description |
| - | - | - |
| no-data | null | The template used when no data is available.
| default | `person`: The person details object <br> `personImage`: The URL of the image | The default template replaces the entire component with your own. |
| person-details | `person`: The person details object | The template used to render the top part of the person card. |
| contact-details | `person`: The person details object | The template used to override the contact details part of the additional details container. |
| additional-details | `person`: The person details object <br> `personImage`: the URL of the image | The template used to add custom content to the additional details container. |

For example, you can use a template to customize the component attached to the `mgt-person` component and a template to add additional details in the card. 

```html
    <mgt-person person-query="me" show-name show-email person-card="hover">
      <template data-type="person-card">
        <mgt-person-card inherit-details>
          <template data-type="additional-details">
            <h3>Stuffed Animal Friends:</h3>
            <ul>
              <li>Giraffe</li>
              <li>lion</li>
              <li>Rabbit</li>
            </ul>
          </template>
        </mgt-person-card>
      </template>
    </mgt-person>

```

## CSS custom properties

The `mgt-person-card` component defines the following CSS custom properties. To use these properties, you must define the selector as the parent `mgt-person` element. 

```css
mgt-person {
  --person-card-display-name-font-size: 40px;
  --person-card-display-name-color: #ffffff;
  --person-card-title-font-size: 20px;
  --person-card-title-color: #ffffff;
  --person-card-subtitle-font-size: 10px;
  --person-card-subtitle-color: #ffffff;
  --person-card-details-title-font-size: 10px;
  --person-card-details-title-color: #b3bf0a;
  --person-card-details-item-font-size: 20px;
  --person-card-details-item-color: #3abf0a;
  --person-card-background-color: #000000;
}
```

To learn more, see [styling components](../style.md).

## Global component configuration

The `MgtPersonCard` class exposes a static `config` object that configures all person card components in the application.

The following example shows how to use the config object.

```ts
import { MgtPersonCard } from `@microsoft/mgt`;

MgtPersonCard.config.useContactApis = false;
```

The following properties are available on the config object:

| Property | Description |
| ------------ | ------------- |
| useContactApis | `boolean` - Whether the person card component can use the Microsoft Graph Contact API to search for contact details and photos - default is `true`.  |

## Microsoft Graph permissions

This component uses the [Person component](./person.md) to display the user and inherits all permissions. 

## Authentication

The Person-Card control uses the global authentication provider described in the [authentication documentation](./../providers.md). 

## Extend for more control

For more complex scenarios or a truly custom UX, this component exposes several `protected render*` methods for override in component extensions.

| Method | Description |
| - | - |
| renderNoData | Renders a state when no person data is available. | 
| renderPersonDetails | Renders the main body of the person card (image, name, icons). |
| renderPersonImage | Renders the image part of the person details. |
| renderPersonName | Renders the name part of the person details. |
| renderPersonTitle | Renders the title part of the person details. |
| renderPersonSubtitle | Renders the subtitle part of the person details. |
| renderContactIcons | Renders the contact icons part of the person details. |
| renderExpandedDetailsButton | Renders the button to show the expanded details. |
| renderExpandedDetails | Renders the content in the expanded details container. |
| renderContactDetails | Renders the contact details part of the expanded details. |
| renderAdditionalDetails | Renders the additional details part of the expanded details. |
