|%
+$  id  @
+$  who
  $:  @p
  $@  %r
      %w
      %rw
  ==
+$  prio
  $?  %high
      %medium
      %low
  ==
+$  attachment
  $?  *
      @
  ==
+$  category  @t
+$  categories  (list category)
+$  permissions  (list who)
+$  attachments  (list attachment)
+$  type
  $%  [%task due=@da prio done=?]
      [%cal start=@da end=@da recur=@dr] 
      :: [%note @t]
  ==
+$  entry
  $:  =id
      title=@t
      text=@t
      =categories
      =permissions
      =attachments
      =type
  ==
+$  friends  (set who)
+$  entries  (list entry)

+$  action
  $%  
      :: [%add-view =view]
      [%add =entry]
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
  $%  [%add =entry]
      [%test =id]
      :: [%del =id]
      :: [%toggle =id]
      :: [%rename =id =name]
      [%initial =entries]
  ==
--
