const sourcePaths = {
  components: 'client/components/',
  concerns: 'client/concerns/',
  pages: 'client/pages/',
  panes: 'client/panes/',
}

const extRegex = /^\./

const pathTo = (source, ...parts) => {
  if (parts.slice(-1)[0].match(extRegex)) {
    const ext = parts.pop()
    parts[parts.length - 1] = parts[parts.length - 1] + ext
  }
  return sourcePaths[source] + parts.join('/')
}

module.exports = {
  helpers: {
    src: pathTo,
  }
}
