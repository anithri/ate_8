// my-generator/my-action/index.js
const cc = require('change-case')

module.exports = {
  params: ({ args }) => {
    args.isList = !!args.list ? 'List' : ''
    const name = cc.pascal(args.name) + args.isList

    args.className = name
    args.queryName = cc.upper(`to_${cc.snake(name)}`)
    args.dataName = cc.snake(name)
    return args
  },
}
