const cc = require('change-case')
const inflection = require('inflection')
const { src: srcPath } = require('../../../.hygen').helpers

module.exports = {
  params: ({ args }) => {
    console.log(args)
    const camel = cc.camel(args.name)
    const pascal = cc.pascal(args.name)
    const SCREAMING = cc.upper(cc.snake(args.name))
    return {
      ...args,
      containerName: `${pascal}Container`,
      idName: `${camel}Id`,
      varName: camel,
      listVarName: inflection.pluralize(camel),
      QUERY_NAME: `GET_${SCREAMING}`,
      FRAGMENT_NAME: `${SCREAMING}_FRAGMENT`,
      fragmentName: `${camel}Fragment`,
      LIST_QUERY_NAME: `GET_${SCREAMING}_LIST`,
      LIST_FRAGMENT_NAME: `${SCREAMING}_LIST_FRAGMENT`,
      listFragmentName: `${camel}ListFragment`,
      shapeName: `${camel}Shape`,
      listShapeName: `${camel}ListShape`,
      parseName: `parse${pascal}`,
      listParseName: `parse${pascal}List`,
      mkPath: (...parts) => srcPath('concerns', camel, ...parts),
      graphQLName: pascal,
    }
  },
}
