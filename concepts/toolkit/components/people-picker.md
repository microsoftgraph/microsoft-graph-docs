---
title: "People-Picker component"
description: "You can use the mgt-people-picker web component to search for a specified number of people and render the list of results via Microsoft Graph."
localization_priority: Normal
author: vogtn
---

# People-Picker component in the Microsoft Graph Toolkit

You can use the `mgt-people-picker` web component to search for people and/or groups. By default, the component will search for all people and users in the organization, but you can change the behavior to also search for groups, or only groups. You can also filter the search to a specific group.

## Example

The following example shows the `mgt-people-picker` component. Start searching for a name to see the results render and use the code editor to see how [properties](#properties) change the behavior of the component.

<iframe src="https://mgt.dev/iframe.html?id=components-mgt-people-picker--people-picker&source=docs" height="450"></iframe>

[Open this example in mgt.dev](https://mgt.dev/?path=/story/components-mgt-people-picker--people-picker&source=docs)

## Properties

By default, the `mgt-people-picker` component fetches people from the `/me/people` and `/users` endpoints. Use the following attributes to change this behavior.

| Attribute | Property | Description                                                                                                                                                                            |
| -------- | --------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| show-max | showMax   | A number value to indicate the maximum number of people to show. the default value is 6.                                                                                             |
| group-id    | groupId     | A string value that belongs to a Microsoft Graph defined group for further filtering of the search results.                                                                            |
| type     | type      | The type of entities to search for. Available options are: `person`, `group`, `any`. Default value is `person`. This attribute has no effect if `group-id` property is set.                                                                            |
| group-type     | groupType      | The group type to search for. Available options are: `unified`, `security`, `mailenabledsecurity`, `distribution`, `any`. Default value is `any`. This attribute has no effect if the `type` property is set to `person`.                                                                           |
|  selected-people  | selectedPeople     | An array of selected people. Set this value to select people programmatically.|
| people   | people    | An array of people found and rendered in the search result |
| default-selected-user-ids | defaultSelectedUserIds | When provided a string of comma-separated Microsoft Graph user IDs, the component renders the respective users as selected upon initialization.

The following is a `show-max` example.

```html
<mgt-people-picker show-max="4"> </mgt-people-picker>
```

## Selected people

The selected people section of the component renders each person chosen by the developer or user. 

![mgt-people-picker](./images/selected-people.png)

You can populate selected people data by doing one of the following:

- Setting the `selectedPeople` property directly, as shown in the following example.  

    ```javascript
    // personObject = User or Person from Microsoft Graph
    document.querySelector('mgt-people-picker').selectedPeople.push(personObject);
    ```

- Using the `selectUsersById()` method, which accepts an array of Microsoft graph [user ids](/graph/api/resources/users?view=graph-rest-1.0) to find associated user details for selection.

     >**Note:** If no user is found for an `id`, no data will be rendered for that `id`.

    ```javascript
    // id = Mirosoft graph User "id"
    document.querySelector('mgt-people-picker').selectUsersById(["id","id"])
    ```

## Events

The following events are fired from the component.

| Event | Description |
| --- | --- |
| `selectionChanged` | The user added or removed a person from the list of selected/picked people.|

## CSS custom properties

The `mgt-people-picker` component defines the following CSS custom properties.

```css
mgt-people-picker {
    --input-border: 2px rgba(255, 255, 255, 0.5) solid; /* sets all input area border */

      /* OR individual input border sides */
    --input-border-bottom: 2px rgba(255, 255, 255, 0.5) solid;
    --input-border-right: 2px rgba(255, 255, 255, 0.5) solid;
    --input-border-left: 2px rgba(255, 255, 255, 0.5) solid;
    --input-border-top: 2px rgba(255, 255, 255, 0.5) solid;

    --input-background-color: #1f1f1f; /* input area background color */
    --input-hover-color: #008394; /* input area border hover color */
    --input-focus-color: #0f78d4; /* input area border focus color */

    --dropdown-background-color: #1f1f1f; /* selection area background color */
    --dropdown-item-hover-background: #333d47; /* person background color on hover */
    
    --selected-person-background-color: #f1f1f1; /* person item background color */
    
    --font-color: white; /* input area border focus color */
    --placeholder-default-color: #f1f1f1; /* placeholder text color default*/
    --placeholder-focus-color: rgba(255, 255, 255, 0.8); /* placeholder text focus color */
}
```

## Templates

 `mgt-people-picker` supports several [templates](../templates.md) that you can use to replace certain parts of the component. To specify a template, include a `<template>` element inside a component and set the `data-type` value to one of the following.

| Data type | Data context | Description |
| --- | --- | --- |
| default | null: no data | The template used to override the rendering of the entire component.
| loading | null: no data | The template used to render the state of picker while request to graph is being made. |
| error | null: no data | The template used if user search returns no users. |
| no-data | null: no data | An alternative template used if user search returns no users. |
| selected-person | person: The person details object | The template to render selected people. |
| person | person: The person details object | The template to render people in the dropdown. |

The following examples shows how to use the `error` template.

```html
<mgt-people-picker>
  <template data-type="error">
    <p>Sorry, no people were found</p>
  </template>
</mgt-people-picker>
```

## Microsoft Graph permissions

This component uses the following Microsoft Graph APIs and permissions.

| API                                                                                                              | Permission  |
| ---------------------------------------------------------------------------------------------------------------- | ----------- |
| [/me/people](/graph/api/user-list-people?view=graph-rest-1.0)                    | People.Read        |
| [/users](/graph/api/user-list?view=graph-rest-1.0)  | User.ReadBasic.All |
| [/groups](/group-list?view=graph-rest-beta)  | Group.Read.All |
| [/groups/\${groupId}/members](/graph/api/group-list-members?view=graph-rest-1.0) | User.ReadBasic.All        |
| [/users/${userPrincipleName} ](/graph/api/user-get?view=graph-rest-1.0)  | User.Read |

## Authentication

The control uses the global authentication provider described in the [authentication documentation](./../providers.md).

## Extend for more control

For more complex scenarios or a truly custom UX, this component exposes several `protected render*` methods for override in component extensions.

| Method | Description |
| - | - |
| renderInput | Renders the input text box. |
| renderSelectedPeople | Renders the selected people tokens. |
| renderSelectedPerson | Renders an individual person token. |
| renderFlyout | Renders the flyout chrome. |
| renderFlyoutContent | Renders the appropriate state in the results flyout. |
| renderLoading | Renders the loading state. |
| renderNoData | Renders the state when no results are found for the search query. |
| renderSearchResults | Renders the list of search results. |
| renderPersonResult | Renders an individual person search result. |