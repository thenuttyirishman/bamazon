// Sql require
var mysql = require("mysql");
// Inquirer require
var inquirer = require('inquirer');
// Creating an sql connection
var connection = mysql.createConnection({
  host: "localhost",

  // My Port
  port: 3306,

  // Username
  user: "root",

  // Password
  password: "WaW920338",
  database: "bamazon_DB"
});

connection.connect(function (err) {
  if (err) throw err;
  console.log("connected as id " + connection.threadId);
});

showProducts()
buyProducts()
function showProducts() {
  connection.query("SELECT * FROM products", function (err, res) {
    if (err) throw err;
    console.log(res);
  })
};

function buyProducts() {
  inquirer
    .prompt([
      {
        type: "input",

        name: "id",

        message: "Welcome to my store! Please enter the item ID for the items you would like to purchase."
      },

      {
        type: "input",

        name: "quantity",

        message: "How many items would you like to purchase?"
      }

    ])
    .then(answers => {
      connection.query("SELECT * FROM products WHERE item_id =" + answers.id, function (err, res) {
        if (err) throw err;
        console.log(res[0].price);
      })
    });
}

