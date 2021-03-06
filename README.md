# Teacup Camel to Kebab

[Teacup](https://github.com/goodeggs/teacup) plugin to transform camelCase attribute names to kebab-case.

[![NPM version](http://img.shields.io/npm/v/teacup-camel-to-kebab.svg?style=flat-square)](https://www.npmjs.org/package/teacup-camel-to-kebab)
[![Build Status](http://img.shields.io/travis/goodeggs/teacup-camel-to-kebab.svg?style=flat-square)](https://travis-ci.org/goodeggs/teacup-camel-to-kebab)

If you use camelCase attributes, they render as kebab-case.

```coffee
teacup = require 'teacup'
camelToKebab = require 'teacup-camel-to-kebab'
teacup.use camelToKebab

{render, button} = teacup

console.log render ->
  button
    ngClick: 'executeCallback()',
    myCustomDirective: 'data',
    'Click Me'
# Outputs <button ng-click="executeCallback()" my-custom-directive="data">Click Me</button>
```


## Contributing

```
$ git clone https://github.com/goodeggs/teacup-camel-to-kebab && cd teacup-camel-to-kebab
$ npm install
$ npm test
```
## Code of Conduct

[Code of Conduct](https://github.com/goodeggs/teacup-camel-to-kebab/blob/master/CODE_OF_CONDUCT.md)
for contributing to or participating in this project.

## License

[MIT](https://github.com/goodeggs/teacup-camel-to-kebab/blob/master/LICENSE.md)



_Module scaffold generated by [generator-goodeggs-npm](https://github.com/goodeggs/generator-goodeggs-npm)._
