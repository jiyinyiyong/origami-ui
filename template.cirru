
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
        meta $ object (:charset :utf-8)
        link $ object (:rel :icon)
          :href :http://origami-ui.org/logo/origami-icon.png
        link $ object (:rel :stylesheet)
          :href :style/main.css
        script $ object (:src data.vendor) (:defer true)
        script $ object (:src data.main) (:defer true)
      body null
        React.renderToString (Page)
