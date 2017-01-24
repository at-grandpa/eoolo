fn main() {
    println!("{}", expr1() || expr2());
}

fn expr1() -> bool {
    return true;
}

fn expr2() -> bool {
    println!("Not Short-circuit evaluation.");
    return true;
}
