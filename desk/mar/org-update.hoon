/-  org
|_  =update:org
++  grab
  |%
  ++  noun  update:org
  --
++  grow
  |%
  ++  noun  update
  :: ++  json  ~&  title.update  [%s 'foo']
  ++  json  ::|*  =update:org
    :: =,  enjs:format
    :: =/  title  &3.update
    :: ~&  ^-  entry:org  +>.update
    :: =/  test  +>-.update
    :: ~&  !<  @t  !>  title

    %-  pairs:enjs:format
    :~  
    :: ['test' %s title]

    ['test' %s 'foo']
    ==
  --
++  grad  %noun
--
