|%
+$  color [%green %blue %red %yellow %orange %teal]
+$  id  @
+$  name  @t
+$  desc  @t
+$  who  @p
+$  permissions  (set who)
+$  attachment  :: json, csv, markdown, a lot of others
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

+$  entry  [=title desc attachments permissions category modified=@da type]
+$  entries  (map id entry)

+$  action
  $%  [%add =entry]
      [%update =id =entry]
      [%toggle =id]
      [%attach =id =attachment]
      [%delattach =id =attachment]
      [%rename =id =name]
      [%allow =id =who]
      [%kick =id =who]
  ==
+$  update
  $%  [%add =id =name]
      [%del =id]
      [%toggle =id]
      [%rename =id =name]
      [%initial =tasks]
  ==
--
:: text: should be any type of mark, like csv, md? text or texts?
:: category: id, name, color (example: work, chores, social, fun, date,
::   misc.), subcategory? tags instead of category?

:: entry: name, description, attachments, permissions, category, date, type

:: type
::   task: due date, priority
::   cal : start and finish time
::   note: nothing

::::::::::::::::::::::::::::::::::: feed
:: -  another app for all managing all feeds, like urmail, private messages, channels, rss feeds, all sources really

