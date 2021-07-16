"use strict";

const express = require("express");
const jsonGraphqlExpress = require("json-graphql-server").default;
const serverless = require("serverless-http");
const fetch = require("node-fetch");

module.exports.handler = async (event, context) => {
  const app = express();

  const data = await fetch(
    "https://github.com/rawkode/rawkode/releases/download/blox/data.json"
  ).then((result) => result.json());

  console.log(data);
  app.use("/", jsonGraphqlExpress(data));

  return await serverless(app)(event, context);
};
