/* required values
      cssFile
      cssPath
      cssSelector
      pageClass
      pageImportPath
      pagePath
      pageRoute
      routePath
 */
const cc = require('change-case')
const srcPath = require('../../../.hygen').helpers.src

const CSS_FILE_NAME = 'styles.module.css'

module.exports = {
  params: ({ args }) => {
    const pascal = cc.pascal(args.name)
    const camel = cc.camel(pascal)

    args.routePath = 'pages/index.js'
    args.cssFile = './' + CSS_FILE_NAME
    args.cssPath = srcPath('pages', pascal, CSS_FILE_NAME)
    args.cssSelector = 'page'
    args.pageClass = pascal + 'Page'
    args.pageImportPath = srcPath('pages', pascal)
    args.pagePath = args.pageImportPath + '/index.js'
    args.pageRoute = `/${args.pageRoute || camel}`

    console.log('args', args)
    return args
  },
}
