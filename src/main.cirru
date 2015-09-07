
var
  React $ require :react

require :../style/main.css

var
  Page $ React.createFactory $ require :./page

React.render (Page) document.body
