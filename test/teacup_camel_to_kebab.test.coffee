camelToKebab = require '..'
{Teacup} = require 'teacup'
assert = require 'assert'

describe 'teacup-camel-to-kebab', ->
  beforeEach ->
    @teacup = new Teacup()

  describe 'before its plugged in', ->
    it 'renders camelCase attributes noramlly', ->
      assert.equal(
        @teacup.render => @teacup.div 'camelAttr': 'lump'
        '<div camelAttr="lump"></div>'
      )

  describe 'after its plugged in', ->
    beforeEach ->
      @teacup.use camelToKebab()

    it 'transforms camelCase to kebab case', ->
      assert.equal(
        @teacup.render => @teacup.div 'camelAttr': 'lump'
        '<div camel-attr="lump"></div>'
      )
