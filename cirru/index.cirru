
doctype

html
  head
    title "Origami UI"
    meta (:charset utf-8)
    meta (:name description)
      :content "A personal UI collection for single page apps."
    link (:rel stylesheet) (:href css/style.css)
    link (:rel icon) (:type image/png) (:href png/origami.png)
    @if (@ inDev) $ @block
      link (:rel stylesheet) (:href css/dev.css)
    @if (@ inBuild) $ @block
      link (:rel stylesheet) (:href css/build.css)

  body
    a (:target _blank)
      :href https://github.com/jiyinyiyong/origami-ui
      img#fork-me (:src http://jiyinyiyong.u.qiniudn.com/fork-me.png)
    .title
      = Origami UI
    .description
      = A personal UI collection for single page apps.