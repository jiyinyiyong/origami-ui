#!/usr/bin/env coffee
project = 'repo/origami-ui'

require 'shelljs/make'
path = require 'path'
mission = require 'mission'

mission.time()

target.folder = ->
  mission.tree
    '.gitignore': ''
    'README.md': ''
    js: {}
    build: {}
    cirru: {'index.cirru': ''}
    coffee: {'main.coffee': ''}
    css: {'style.css': ''}

cirru = (data) ->
  mission.cirruHtml
    file: 'index.cirru'
    from: 'cirru/'
    to: './'
    extname: '.html'
    data: data

target.dev = ->
  cirru inDev: yes

target.build = ->
  cirru inBuild: yes

target.watch = ->
  station = mission.reload()

  mission.watch
    files: ['cirru/', 'coffee/']
    trigger: (filepath, extname) ->
      switch extname
        when '.cirru'
          cirru inDev: yes
          station.reload project

target.patch = ->
  mission.bump
    files: ['package.json', 'bower.json']
    options:
      at: 'patch'

target.rsync = ->
  target.build()
  mission.rsync
    file: './'
    dest: 'tiye:~/repo/origami-ui'
    options:
      exclude: [
        'node_modules/'
        'bower_components/'
        'coffee'
        'README.md'
        'js'
        '.git/'
        'png/*.jpg'
      ]