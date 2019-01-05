/* requires
      containerPath
      queryName
      containerClass
      queryName

 */

const cc = require('change-case')
const inflection = require('inflection')

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
    return args
  },
}
