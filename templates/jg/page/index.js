const cc = require('change-case')
const srcPath = require('../../../.hygen').helpers.src

module.exports = {
  params: ({ args }) => {
    const pascal = cc.pascal(args.name)
    const camel = cc.camel(pascal)

    args.routePath = args.routePath || `/${cc.snake(pascal)}`
    args.baseName = pascal
    args.pagePath = srcPath('pages', pascal, 'index.js')
    args.dirName = pascal
    args.stylesName = camel
    args.pageName = pascal + 'Page'
    args.container = args.container || false

    args.shapeName = null
    args.shapePath = null

    args.contained = null
    args.containerName = null
    args.containerPath = null

    args.panePath = null
    args.simplePath = srcPath('panes', pascal, 'index.js')
    args.stylesPath = srcPath('panes', pascal, 'pane.module.css')

    if (args.container) {
      const pascalContainer = cc.pascal(args.container)
      const camelContainer = cc.camel(pascalContainer)

      args.panePath = args.simplePath
      args.simplePath = null

      args.shapeName = camelContainer + 'Shape'
      args.shapePath = `concerns/${pascalContainer}/shape`

      args.contained = camelContainer
      args.containerName = pascalContainer + 'Container'
      args.containerPath = `concerns/${pascalContainer}/container`
    }
    console.log('args', args)
    return args
  },
}
