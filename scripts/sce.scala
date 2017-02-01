object Sce {
  def main(args: Array[String]): Unit = {
    println(expr1() || expr2())
  }
  def expr1(): Boolean = {
    return true
  }
  def expr2(): Boolean = {
    println("Not Short-circuit evaluation.")
    return true
  }
}
