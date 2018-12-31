// my-generator/my-action/index.js
const cc = require('change-case')
const srcPath = require('../../../.hygen').helpers.src

const partTypes = { page: 'pages', pane: 'panes', styled: 'components' }

module.exports = {
  params: ({ args }) => {
    const pascal = cc.pascal(args.name)
    const camel = cc.camel(pascal)

    args.styleName = pascal
    args.partType = Object.keys(partTypes).find(partType => args[partType])
    args.parentName = args[args.partType]
    args.partPath = srcPath(args.partType, args.parentName, `${camel}.js`)

    args.partName = args.parentName + pascal

    args.cssPath = srcPath(
      args.partType,
      args.parentName,
      `${args.partType}.module.css`,
    )

    return args
  },
}
