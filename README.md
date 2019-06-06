# Single Page Application Rails

## Vendor

Versions récentes et minifiées d'Angularjs, et des extensions animate et route.

## Javascript

L'application doit être démarrée avant le chargement des controllers:

```js
//= require_self
//= require_tree ./application
```

## HTML

Le layout application (app/views/layouts/application.html.erb) présente plusieurs points importants.

1. L'instanciation d'application avec un nom, un contrôleur global et un cloak.

```html
<html ng-app="application" ng-cloak ng-controller="ApplicationController">
```

2. La base pour le routage
```html
<base href="/">
```

3. La balise noscript pour le SEO et en cas de non-interprétation du javascript

```html
<noscript>
  <%= yield %>
</noscript>
```

4. La balise ng-view avec le fade, pour les instanciations avec transitions

```html
<div ng-view class="fade"></div>
```

5. Le chargement automatique des templates angular

```html
<% Dir['app/views/**/*.template.erb'].each do |path| %>
  <% template = path.remove('app/views/').remove('.template.erb') %>
  <script type="text/ng-template" id="<%= template %>">
    <%= render file: "#{template}.template.erb" %>
  </script>
<% end %>
```

## Production

Pour éviter le changement des noms de variables à la compilation, qui casse l'injection de dépendance d'Angular:

/config/environments/production.rb

    config.assets.js_compressor = Uglifier.new(mangle: false)
