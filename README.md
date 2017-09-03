# Improvements

* Client side: would use a framework like react and add testing. This was the fastest solution.
* Would include perhaps the client side code in the same repo and make two folders but well I just started this way - not so much harm. It's clean anyway.
* Weather serializer: handle nils in case there's any.
* Not sure what's the best convention for returning a nil result from JSON - let the serializer handle it or the controller - could've researched this a bit. Controller was easier for what I already had coded.
* Delete excessive files in Rails / unused or unnecessary code.
* weather_service.rb: not sure if the constant OPTIONS there or somewhere more suitable, especially the ENV variable being extracted there. Perhaps in config.
