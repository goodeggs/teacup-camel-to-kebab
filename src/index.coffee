kebabulate = (camelString) ->
  camelString.replace /([A-Z])/g, ($1) -> "-#{$1.toLowerCase()}"

module.exports = (options) ->
  (teacup) ->
    teacup.renderAttrWithoutKebabulate = teacup.renderAttr
    teacup.renderAttr = (name, value) ->
      teacup.renderAttrWithoutKebabulate kebabulate(name), value
