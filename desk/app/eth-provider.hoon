/-  eth-provider
/+  default-agent, dbug
|%
+$  versioned-state
  $%  state-0
  ==
+$  state-0  [%0 =mode:eth-provider]
+$  card  card:agent:gall
--
%-  agent:dbug
=|  state-0
=*  state  -
^-  agent:gall
|_  =bowl:gall
+*  this  .
    def   ~(. (default-agent this %.n) bowl)
::
++  on-init
  ^-  (quip card _this)
  `this
::
++  on-save
  ^-  vase
  !>(state)
::
++  on-load
  |=  old-state=vase
  ^-  (quip card _this)
  =/  old  !<(versioned-state old-state)
  ?-  -.old
    %0  `this(state old)
  ==
::
++  on-poke
  |=  [=mark =vase]
  ^-  (quip card _this)
  |^
  ?>  =(src.bowl our.bowl)
  ?+    mark  (on-poke:def mark vase)
      %provider-action
    =^  cards  state
      (handle-poke !<(action:org vase))
    [cards this]
  ==
  ++  handle-poke
    |=  =action:eth-provider
    ^-  (quip card _state)
    ?-    -.action
        %read-strict
      :_  %=  state  
          ==
      :: :~  :*  %give  %fact  ~[/updates]  %org-update
      ::         !>(`update:org`[%add nextid entry.action])
      ~
          ==
      ==
    ==
  --
::
++  on-watch  on-watch:def
  :: |=  =path
  :: ^-  (quip card _this)
  :: ?+    path  (on-watch:def path)
  ::     [%updates ~]
  ::   ?>  =(src.bowl our.bowl)
  ::   :_  this
  ::   :~  [%give %fact ~ %org-update !>(`update:org`initial+entries)]
  ::   ==
  :: ==
::
++  on-leave  on-leave:def
++  on-peek   on-peek:def
++  on-agent  on-agent:def
++  on-arvo   on-arvo:def
++  on-fail   on-fail:def
--
