$(document).on "ready page:load", ->
  $("#map_asset").tokenInput("http://shell.loopj.com/tokeninput/tvshows.php"
    prePopulate: [
      {id: 123, name: "Slurms MacKenzie"},
      {id: 555, name: "Bob Hoskins"},
      {id: 9000, name: "Kriss Akabusi"}
    ]
  )