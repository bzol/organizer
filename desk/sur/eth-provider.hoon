/+  ethereum
|%
+$  url  @ta

+$  local
  $:  =url
  ==
+$  provider
  $:  =url
      kids=?  :: allow stars to receive requests from their planets
      clients=(list @p)
  ==
+$  client
  $:  provider=@p
  ==

+$  mode
  $@  [%local =local]
      [%provider =provider]
      [%client =client]
  ==

+$  action
  $@  :: [%set-local =local]
      :: [%set-provider =provider]
      :: [%set-client =client]
      :: [%request-strict]
      :: [%request-loose]
      [%read-strict reqs=(list proto-read-request:rpc:ethereum)] :: and id?
      :: [%read-loose]
  ==
+$  update
--

:: /lib/ethio questions
:: what is id for?
:: (list [id=(unit @t) req=request:rpc:ethereum]
