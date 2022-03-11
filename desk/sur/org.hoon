|%
+$  id  @
+$  who
  $:  @p
  $@  %r
      %w
      %rw
  ==
+$  resids  (list id)
+$  permissions  (set who)
+$  channel
  $%  *
      @
  ==
+$  file
  $%  *
      @
  ==
+$  entry
  $%  [%task title=@t desc=@t resids due=@d prio done=?]
      [%cal title=@t desc=@t resids start=@da end=@da recur=@dr]
      [%note title=@t text=@t resids]
+$  resource
  $%  channel
      file
      entry :: task/cal/note
  ==
+$  categories  (set @t)
+$  prio
  $%  %high
      %medium
      %low
  ==
+$  type
  $%
    :: singular means that can only contain only 1 note or cal or task
    :: multi is a view for items
    %singular
    %multi
  ==
+$  style  @ud
+$  view  [title=@t style resids categories permissions]

+$  friends  (set who) :: can add new items, maybe different permissions for items and views
+$  views  (map id view)
+$  items  (map id item)

+$  action
  $%  [%add-view =view]
      :: [%add-resource =entry]
      :: [%pair entryid=id resid=id]

      :: [%update =id =entry]
      :: [%toggle =id]
      :: [%attach =id =attachment]
      :: [%delattach =id =attachment]
      :: [%retitle =id title=@t]
      :: [%allow =id =who]
      :: [%kick =id =who]
      [%test =id]
  ==
+$  update
  $%  [%add =id =entry]
      [%test =id]
      [%test2 =id]
      :: [%del =id]
      :: [%toggle =id]
      :: [%rename =id =name]
      [%initial =entries]
  ==
--

:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

:: Views should have a 'style' attribute, where you can store information
:: about how a given view should be displayed

:: +$  resource  :: json, csv, markdown, html, text from rss feeds and a lot of others $%  *
::       @
::       :: task, cal, note, bookmark, md, csv,
::       :: channel, rss, urmail, groups channel, DMs
::       :: %channel: ability to have a channel (urmail/groups) that you
::       :: can link to an entry, with channel you only store a reference
::       :: to resources on other agents
::       :: %resource
::       :: %
::   ==

:: created and modified date: should we store them?

:: double permission: are you in permissions list and do you have
:: permission for a given resource or entry, and are they read or write
:: permissions?

