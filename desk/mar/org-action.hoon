/-  org
=,  dejs:format
|_  =action:org
++  grab
  |%
  ++  noun  action:org
  ++  json  |*  jon=*
    ^-  action:org
    =/  parsed
      %-  %-  ot
      :~  
          :-  %action  so
          :-  %params
          %-  ot
          :~  
            [titl+so]
            [text+so]
            [%categories (ar so)]
            [%permissions (ar so)]
            [%attachments (ar so)]
            :-  %type
            %-  of
            :~  
              :-  %task
              %-  ot
              :~
                :: [type+so]
                [due+di]
                [prio+so]
                [done+bo]
              ==
              :-  %cal
              %-  ot
              :~
                :: [type+so]
                [start+so]
                :: [prio+so]
                :: [done+bo]
              ==
              :: :-  %note  so
            ==
            :: %-  ot
            ::   :~
            ::     [type+so]
            ::     [due+di]
            ::     [prio+so]
            ::     [done+bo]
            ::   ==
          ==
      ==
      jon

    =/  command
    ?:  =(&1.parsed 'add')
      %add
    %add

    =/  prio
    ?:  =(&9.parsed 'high')
      %high
    ?:  =(&9.parsed 'medium')
      %medium
    ?:  =(&9.parsed 'low')
      %low
    %high

    =/  type
    ?:  =(&7.parsed 'task')
      [%task due=&8.parsed prio |9.parsed]
    ?:  =(&7.parsed 'cal')
      [%cal start=~2021.9.1 end=~2021.9.1 recur=~d10]
    :: ?:  =(&7.parsed 'note')
    ::   %note
    [%task due=~2021.9.1 %high %.n]

    `action:org`[command &2.parsed &3.parsed ~ ~ ~ type]
    :: [%test 13]
  --
++  grow
  |%
  ++  noun  action
  --
++  grad  %noun
--
