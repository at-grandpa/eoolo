#!/root/.phpenv/shims/php
<?php

function expr1()
{
  echo "method expr1\n";
  return "return expr1";
}

function expr2()
{
  echo "method expr2\n";
  return "return expr2";
}

var_dump(expr1() || expr2());
