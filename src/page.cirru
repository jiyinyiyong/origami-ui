
var
  React $ require :react

var
  a $ React.createFactory :a
  div $ React.createFactory :div
  img $ React.createFactory :img
  span $ React.createFactory :span
  input $ React.createFactory :input
  textarea $ React.createFactory :textarea

var tag $ \ (className (children))
  div ({} (:className className)) (... children)

= module.exports $ React.createClass $ {}
  :displayName :app-page

  :render $ \ ()
    tag :app-page
      tag :demo-board
        tag ":heading level-1" ":Origami UI"
        tag :line ":A personal UI collection for small single page apps."
        a ({} (:href :https://github.com/origami-ui/origami-ui/)) ":GitHub repo"
        img $ {} (:className ":is-block page-logo")
          :src :http://origami-ui.org/logo/origami-ui.png

      tag :demo-board
        tag ":heading level-1" :Headings
        tag ":divider is-horizontal"
        tag ":heading level-1" ":Heading Level 1"
        tag ":heading level-2" ":Heading Level 2"
        tag ":heading level-3" ":Heading Level 3"

      tag :demo-board
        tag ":heading level-1" :Lines
        tag :line ":Regular line"
        tag ":line is-minor" ":Minor line"

      tag :demo-board
        tag ":heading level-1" :Buttons
        tag :line
          tag ":button is-attract" ":Attract button"
          tag ":button is-danger" ":Danger button"
          tag ":button is-minor" ":Minor button"

      tag :demo-board
        tag ":heading level-1" :Forms
        tag :line
          span null ":This is an input:"
          input ({} (:placeholder :placeholder))
        textarea ({} (:placeholder :placeholder))
        tag :line
          span null ":Disabled input"
          input ({} (:placeholder :Disabled) (:disabled true))
        tag :line ":Disabled textarea"
        textarea ({} (:placeholder :Disabled) (:disabled true))
