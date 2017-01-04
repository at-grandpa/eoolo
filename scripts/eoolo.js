#!/root/.nvm/versions/node/v7.3.0/bin/node

var expr1 = function () {
  console.log("expr1");
  return false;
}

var expr2 = function () {
  console.log("expr2");
  return true;
}

console.log(expr1() && expr2());
