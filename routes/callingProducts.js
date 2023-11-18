// Imports HTTP methods
const axios = require("axios").default;
const express = require("express");
const router = express.Router();

let searchURL = "http://localhost:8024/product";

let getProduct = async () => {
  try {
    let response = await axios.get(searchURL, { responseType: "json" });
    console.log(`Use Async/Await`);
    console.log(`The number of results: ${response.data.data.length}`);
    return response.data;
  } catch (error) {
    console.error(error);
    return { error: true };
  }
};      

router.get("/", async (req, res) => {
  res.json(await getProduct());
});

module.exports = router;