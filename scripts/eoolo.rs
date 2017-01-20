fn main() {
    println!("{}", expr1() || expr2());
}

fn expr1() -> bool {
    println!("method expr1");
    return true;
}

fn expr2() -> bool {
    println!("method expr2");
    return true;
}
