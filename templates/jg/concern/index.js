/* requires
      containerPath
      queryName
      containerClass
      queryName

 */

const cc = require('change-case')
const inflection = require('inflection')
const srcPath = require('../../../.hygen').helpers.src

module.exports = {
  params: ({ args }) => {
    const pascal = cc.pascal(args.name)
    const camel = cc.camel(pascal)

    args.isList = !!args.list ? 'List' : ''

    args.plural = inflection.pluralize(camel)
    const name = pascal + args.isList

    args.className = name
    args.queryName = cc.upper(`get_${name}`)
    args.dataName = camel

    args.containerPath = srcPath('concerns', camel, 'container')
    args.queryPath = srcPath('concerns', camel, 'query')
    args.shapePath = srcPath('concerns', camel, 'shape')
    args.utilsPath = srcPath('concerns', camel, 'utils')

    args.dataName = `${camel}Data`
    args.normalizeDataListName = `normalize${camel}{List}`
    return args
  },
}
