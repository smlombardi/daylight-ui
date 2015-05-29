module.exports =

  apply: ->

    root = document.documentElement

    setLayoutMode = (layoutMode) ->
      root.setAttribute('theme-daylight-ui-layoutmode', layoutMode.toLowerCase())

    atom.config.onDidChange 'daylight-ui.layoutMode', ->
      setLayoutMode(atom.config.get('daylight-ui.layoutMode'))

    setLayoutMode(atom.config.get('daylight-ui.layoutMode'))
