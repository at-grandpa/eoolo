#!/root/.phpenv/shims/php
<?php

function expr1()
{
  echo "print expr1\n";
  return "return expr1";
}

function expr2()
{
  echo "print expr2\n";
  return "return expr2";
}

var_dump(expr1() || expr2());
