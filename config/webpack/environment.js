const { environment } = require('@rails/webpacker')
const merge = require('webpack-merge')

const generateScopedName = (localName, resourcePath) => {
  const [filename, parent, type] = resourcePath
    .replace('.module.css', '')
    .split('/')
    .reverse()

  const filePart = [type, parent, filename === 'styles' ? null : filename]
    .filter(str => str)
    .join('-')

  const selector = [filePart, type.startsWith(localName) ? null : localName]
    .filter(str => str)
    .join('__')

  return selector
}

const myCssLoaderOptions = {
  modules: true,
  sourceMap: true,
  getLocalIdent: (context, localIdentName, localName, options) => {
    return generateScopedName(localName, context.resourcePath)
  },
}

const CSSLoader = environment.loaders
  .get('moduleCss')
  .use.find(el => el.loader === 'css-loader')

CSSLoader.options = merge(CSSLoader.options, myCssLoaderOptions)
module.exports = environment
