/-  org
=>
|%
++  create-entry  |=  entry=*
  [%s 'foo']
    :: %-  pairs
    :: :~  
    ::   ['title' %s title]
    :: ==
--
|_  =update:org
++  grab
  |%
  ++  noun  update:org
  --
++  grow
  |%
  ++  noun  update
  :: ++  json  ~&  title.update  [%s 'foo']
  ++  json  
    ^-  ^json
    =,  enjs:format
    :: =/  title  &3.update
    :: ~&  ^-  entry:org  +>.update
    :: =/  test  +>-.update
    :: ~&  !<  @t  !>  title

    :: =/  payload  +.update
    =*  payload  +.update
    ~&  '==============================================='
    :: ~&  `(map @ entry:org)`payload
    ?+  -.update  [%s 'default response']
      %initial
    ~&  +.update
    ~&  ~(tap by payload)
    :: ~&  ~(tap by (malt (limo ~[a+1 b+2 c+3])))
    :: [%a(~(run by +.update) |=(k=entry:org [%s 'foo']))]
    [%s 'initial']
      %add
    [%s 'add']
      :: %test
    :: [%s 'foo']
    ==

    :: [%s 'foo']
      


    :: ['test' %s 'foo']
    :: ==
  --
++  grad  %noun
--
