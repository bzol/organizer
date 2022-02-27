|%
+$  color [%green %blue %red %yellow %orange %teal]
+$  id  @
+$  name  @t
+$  who  @p
+$  permissions  (set who)
:: json, csv, markdown, a lot of others
+$  attachment  
  $:  id
  $%  *
      @
  ==
+$  attachments  (list attachment)
+$  category  [@t color]
+$  prio
  $%  %high
      %medium
      %low
  ==
+$  type  
  $%  [%task due=@d prio done=?]
      [%cal start=@da end=@da]
      %note
  ==

+$  entry  [title=@t desc=@t attachments permissions category type modified=@da]
+$  entries  (map id entry)

+$  action
  $%  [%add =entry]
      [%toggle =id]
      [%del =id]
      [%retitle =id title=@t]
      [%redesc =id desc=@t]
      [%attach =id =attachment]
      [%delattach =id =attachment]
      [%allow =id =who]
      [%kick =id =who]
      [%recat =id =category]
      [%retype =id =type]
  ==
+$  update
  $%  [%add =id =name]
      [%del =id]
      [%toggle =id]
      [%rename =id =name]
      [%initial =tasks]
  ==
--

::::::::::::::::::::::::::::::::::: feed
:: -  another app for all managing all feeds, like urmail, private messages, channels, rss feeds, all sources really
