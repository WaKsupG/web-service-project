let express = require("express"),
  mysql = require("mysql2"), // https://www.npmjs.com/package/mysql2
  cors = require("cors"),
  router = express.Router();

router.use(express.json());
router.use(
  express.urlencoded({
    extended: true,
  })
);

const dotenv = require("dotenv");
dotenv.config();

let whiteList = ["http://localhost:8023", "http://localhost:8024"];

let corsOptions = {
  origin: whiteList,
  methods: "GET,POST,PUT,DELETE",
};

//router.use(cors());

// create the connection to database
let dbConn = mysql.createConnection({
  host: process.env.host,
  user: process.env.DB_user,
  password: process.env.DB_pass,
  database: process.env.DB_name,
});

//Cross-Origin Resource Sharing (CORS) is a mechanism that uses additional HTTP headers to tell browsers to give a web application running at one origin, access to selected resources from a different origin. A web application executes a cross-origin HTTP request when it requests a resource that has a different origin (domain, protocol, or port) from its own.
router.use(cors(corsOptions));

// default route
router.get("/", function (req, res) {
    return res.send({ error: true, message: "hello this is admin page" });
  });

// Retrieve all products from the database
router.get("/product", function (req, res) {
    // res.header("Access-Control-Allow-Origin", "http://localhost:3200")
    // res.header("Access-Control-Allow-Methods", "GET")
    dbConn.query("SELECT * FROM graphics_cards", function (error, results) {
      if (error)
        return res.send({
          error: true,
          message: "Product not found.",
        });
      return res.send({ error: false, data: results, message: "Found." });
    });
  });

// Retrieve graphics_cards with brand
router.get("/product/:brand", function (req, res) {
    let product_id = req.params.brand;
    if (!product_id) {
      return res.send({ error: true, message: "Please provide brand." });
    }
  
    //let sql = `SELECT * FROM graphics_cards WHERE band LIKE '%${product_id}%'`
    dbConn.query("SELECT * FROM graphics_cards WHERE brand=?",product_id,function (error, results) {
        if (error || results.length === 0)
          return res.send({
            error: true,
            message: "Brand is not found.",
          });
        return res.send({
          error: false,
          data: results,
          message: "Brand retrieved",
        });
      }
    );
  });


// Add a new graphics_cards
router.post("/product", function (req, res) {
    let new_product = req.body;
    console.log(new_product);
  
    if (!new_product) {
      return res.send({
        error: true,
        message: "Please provide GPA information",
      });
    }
  
    dbConn.query(
      "INSERT INTO graphics_cards SET ? ",
      new_product,
      function (error, results) {
        if (error)
          return res.send({
            error: true,
            message: "The GPA cannot be inserted.",
          });
        return res.send({
          error: false,
          data: results.affectedRows,
          message: "New GPA has been created successfully.",
        });
      }
    );
  });

//  Update graphics_cards with band
router.put("/product", function (req, res) {
    let product_id = req.body.gpa_model;
    let graphics_cards = req.body;
  
    if (!product_id || !graphics_cards) {
      return res.send({
        error: true,
        message: "The graphics_cards information is required.",
      });
    }
  
    dbConn.query(
      "UPDATE graphics_cards SET ? WHERE gpu_model = ?",
      [graphics_cards, product_id],
      function (error, results) {
        if (error)
          return res.send({
            error: graphics_cards,
            message: "The graphics_cards cannot be updated.",
          });
        return res.send({
          error: false,
          data: results.affectedRows,
          message: "graphics_cards has been updated successfully.",
        });
      }
    );
  });

//  Delete graphics_cards by brand
router.delete("/product", function (req, res) {
    let product_id = req.body.products_id;
  
    if (!product_id) {
      return res.send({ error: true, message: "Please provide graphics_cards id" });
    }
    dbConn.query(
      "DELETE FROM graphics_cards WHERE products_id = ?",
      [product_id],
      function (error, results) {
        if (error)
          return res.send({
            error: true,
            message: "The graphics_cards cannot be deleted.",
          });
        return res.send({
          error: false,
          data: results.affectedRows,
          message: "graphics_cards has been deleted successfully.",
        });
      }
    );
  });

module.exports = router;