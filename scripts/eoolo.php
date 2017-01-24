#!/root/.phpenv/shims/php
<?php

function expr1()
{
  return "return value of expr1.";
}

function expr2()
{
  echo "Not Short-circuit evaluation.";
  return "return value of expr2.";
}

var_dump(expr1() || expr2());
