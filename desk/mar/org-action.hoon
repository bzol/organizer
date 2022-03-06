/-  org
|_  =action:org
++  grab
  |%
  ++  noun  action:org
  ++  json  |*  jon=*  
    ^-  action:org
    =,  dejs:format
    =/  parsed   
      %-  %-  ot
      :~  
          [%action so]
          :-  %params
          %-  ot
          :~  
            [id+ni]
          ==
      ==
      jon
    ~&  parsed

    =/  action  -.parsed
    =/  payload  +.parsed

    ?:  =(action 'test')
      [%test +.parsed]
    ?:  =(action 'test2')
      [%test 'half2']
  --
++  grow
  |%
  ++  noun  action
  --
++  grad  %noun
--
