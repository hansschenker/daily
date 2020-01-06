// import path from "path";
// import { readFile } from "fs";
const path = require("path");
const fs = require("fs");
const items = [];
const pathName = path.resolve("daily.txt");
console.log(pathName);

const dailyTxt = fs.readFile(pathName, (err, data) => {
  const text = data.toString();
  const lines = text.split("\r\n");
  // console.log("data:", lines);
  for (let index = 0; index < lines.length; index++) {
    const line = lines[index];
    if (line.indexOf(",") > 0) {
      const item = {};
      const fields = line.split(",");
      if (fields[0]) {
        item.title = fields[0];
      }
      if (fields[1]) {
        item.description = fields[1];
      }
      if (fields[2]) {
        item.url = fields[2];
      }
      items.push(item);
    } // line.indexOf(",") > 0
  }
  let newText = "";
  items.forEach(item => {
    newText =
      newText +
      item.title +
      "     " +
      item.description +
      "     " +
      item.url +
      "\nl";
  });
  // console.log("items:", items);
  fs.writeFileSync(path.resolve("daily-titled.txt"), newText);
  // console.log("items length:", items.length);
});
