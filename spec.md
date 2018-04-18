# Specifications for the CLI Assessment

Specs:
- [x] Have a CLI for interfacing with the application
  - Running ./bin/run after installing the gem successfuly runs the app.
- [X] Pull data from an external source
  - The app scrapes data from http://store.steampowered.com/
  - CSS selectors used are "#tab_topsellers_content a", ".tab_item_name", and ".discount_final_price".
- [X] Implement both list and detail views
  - Main menu brings up list of top 30 best-selling games.
  - Entering 1-30 selects game from list to view prices.
