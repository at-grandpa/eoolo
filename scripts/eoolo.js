#!/root/.nvm/versions/node/v7.3.0/bin/node

var expr1 = function () {
  console.log("method expr1");
  return "return expr1";
}

var expr2 = function () {
  console.log("method expr2");
  return "return expr2";
}

console.log(expr1() || expr2());
