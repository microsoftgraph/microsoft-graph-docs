---
title: "Get Started with the Microsoft Graph Toolkit"
description: "Get started using the Microsoft Toolkit in your application."
localization_priority: Normal
author: elisenyang
---

# Get started with the Microsoft Graph Toolkit

The Microsoft Graph Toolkit can easily be included in your web application, SharePoint web part, or Microsoft Teams tab. The components are built on existing web standards and are compatible with any web framework and modern browser. This topic describes how to get started using the Microsoft Graph Toolkit in your project.

> [!VIDEO https://www.youtube-nocookie.com/embed/oZCGb2MMxa0]

You can use the Microsoft Graph Toolkit in your application by referencing the loader directly (via unpkg), or by installing the npm package.

## Use via mgt-loader

To use the toolkit via mgt-loader, see the following example.

```html
<script src="https://unpkg.com/@microsoft/mgt/dist/bundle/mgt-loader.js"></script>
```

You can then start using the components in your HTML page. The following is a full working example with the MSAL provider.

```html
<script src="https://unpkg.com/@microsoft/mgt/dist/bundle/mgt-loader.js"></script>
<mgt-msal-provider client-id="[CLIENT-ID]"></mgt-msal-provider>
<mgt-login></mgt-login>

<!-- <script>
    // alternatively, you can set the provider in code and provide more options
    mgt.Providers.globalProvider = new mgt.MsalProvider({clientId: '[CLIENT-ID]'});
</script> -->
```

> **Note:** MSAL requires the page to be hosted in a web server for the authentication redirects. If you're just getting started and want to play around, you can use [live server](https://marketplace.visualstudio.com/items?itemName=ritwickdey.LiveServer) in Visual Studio Code.

## Use via NPM (es6 modules)

By using the es6 modules, you have full control of the bundling process and you can bundle only the code you need for your site. First, add the npm package:

```bash
npm install @microsoft/mgt
```

Now you can reference all components at the page you are using:

```html
<script src="node_modules/@microsoft/mgt/dist/es6/components.js"></script>
```

Or, just reference the component you need and avoid loading everything else:

```html
<script src="node_modules/@microsoft/mgt/dist/es6/components/mgt-login/mgt-login.js"></script>
```

Similarly, to add a provider, you can add it as a component:

```html
<script src="node_modules/@microsoft/mgt/dist/es6/components/providers/mgt-msal-provider.js"></script>

<mgt-msal-provider client-id="[CLIENT-ID]"></mgt-msal-provider>
```

Or, add it in your code:

```html
<script type="module">
  import { Providers, MsalProvider } from '@microsoft/mgt';

  Providers.globalProvider = new MsalProvider({ clientId: '[CLIENT-ID]' });
</script>
```

## Providers

The components work best when used with a [provider](./providers.md). The provider exposes authentication and APIs that the components use to call Microsoft Graph.

The toolkit contains providers for [MSAL](./providers/msal.md), [SharePoint](./providers/sharepoint.md), and [Teams](./providers/teams.md). You can also use your own authentication logic by creating a [custom provider](./providers/custom.md), or using the [ProxyProvider](./providers/proxy.md) with your own backend authentication. 

## Polyfills

If you're using the es6 modules from the npm package, make sure to include polyfills in your project as they are not included automatically. To learn more, see [polyfills](https://www.webcomponents.org/polyfills).

If you're using the mgt-loader.js script from the bundle on unpkg, the polyfills are already included.


## Using the components with React, Angular, and other frameworks

Web components are based on several web standards and can be used with any framework you're already using. However, not all frameworks handle web components the same way. To learn more about the considerations that might apply depending on your framework, see the [Custom Elements Everywhere](https://custom-elements-everywhere.com/) project.

The following sections provide a quick overview of using the Microsoft Graph Toolkit components with React and Angular.

### React

React passes all data to Custom Elements in the form of HTML attributes. For primitive data this is fine, but it does not work when passing rich data, like objects or arrays. In those cases you will need to use a `ref` to pass in the object.

Ex:

```jsx
// import all the components
import '@microsoft/mgt';

class App extends Component {
  render() {
    return <mgt-person show-name ref={el => (el.personDetails = { displayName: 'Nikola Metulev' })} />;
  }
}
```

Because React implements its own synthetic event system, it cannot listen for DOM events coming from custom elements without the use of a workaround. You will need to use a `ref` to reference the toolkit components and manually attach event listeners with addEventListener, as shown in the following example.

```jsx
// you can just import a single component
import '@microsoft/mgt/dist/es6/components/mgt-login/mgt-login.js';

class App extends Component {
  render() {
    return <mgt-login ref="loginComponent" />;
  }

  componentDidMount() {
    this.refs.loginComponent.addEventListener('loginCompleted', e => {
      // handle event
    });
  }
}
```

#### React, Typescript, and TSX

A known issue can occur when you use custom elements with React and Typescript. Typescript will throw an error when trying to use a component in tsx. The workaround is to define the custom element in your code, as shown.

```ts
declare global {
  namespace JSX {
    interface IntrinsicElements {
      'mgt-login': any;
    }
  }
}
```

You can then use it in your tsx as `<mgt-login></mgt-login>`.

### Angular

Angular's default binding syntax will always set properties on an element. This works well for rich data, like objects and arrays, and also works well for primitive values.

To use custom elements, first, enable custom elements in your `app.module.ts` by adding the `CUSTOM_ELEMENT_SCHEMA` to the `@NgModule() decorator`, as shown in the following example.

```ts
import { BrowserModule } from '@angular/platform-browser';
import { NgModule, CUSTOM_ELEMENTS_SCHEMA } from '@angular/core';

import { AppComponent } from './app.component';

@NgModule({
  declarations: [AppComponent],
  imports: [BrowserModule],
  schemas: [CUSTOM_ELEMENTS_SCHEMA],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule {}
```

You can then import the component you'd like to use in your component \*.ts file.

```ts
import { Component } from '@angular/core';
import '@microsoft/mgt/dist/es6/components/mgt-person/mgt-person';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css']
})
export class AppComponent {
  person = {
    displayName: 'Nikola Metulev'
  };
}
```

Finally, use the component as you normally would in your template.

```html
<mgt-person [personDetails]="person" show-name></mgt-person>
```
