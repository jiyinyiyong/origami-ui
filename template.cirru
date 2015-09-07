
var
  stir $ require :stir-template
  React $ require :react
  (object~ html head title meta link script body div) stir

var
  Page $ React.createFactory $ require :./src/page

= module.exports $ \ (data)
  return $ stir.render
    stir.doctype
    html null
      head null
        title null ":Origami UI"
        meta $ {} (:charset :utf-8)
        link $ {} (:rel :icon)
          :href :http://origami-ui.org/logo/origami-icon.png
        cond data.dev undefined
          link $ {} (:rel :stylesheet)
            :href data.style
        script $ {} (:src data.vendor) (:defer true)
        script $ {} (:src data.main) (:defer true)
      body null
        React.renderToString (Page)
