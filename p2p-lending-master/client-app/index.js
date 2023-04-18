let env = "development";
// let settings = require("./server/config/settings")[env];

const express = require("express");
const app = express();

require("./server/config/express")(app);
require("./server/config/routes")(app);

app.listen(5000, () => console.log("Listening on 5000...."));
// console.log(`Server listening on port ${settings.port}...`);
