# Single Page Application Rails

## Vendor

Versions récentes et minifiées d'Angularjs, et des extensions animate et route.

## Production

Pour éviter le changement des noms de variables à la compilation, qui casse l'injection de dépendance d'Angular:

/config/environments/production.rb

  config.assets.js_compressor = Uglifier.new(mangle: false)
