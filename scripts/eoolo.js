#!/root/.nvm/versions/node/v7.3.0/bin/node

var expr1 = function () {
  return "return value of expr1.";
}

var expr2 = function () {
  console.log("Not Short-circuit evaluation.");
  return "return value of expr2.";
}

console.log(expr1() || expr2());
