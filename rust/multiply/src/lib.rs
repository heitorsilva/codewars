#[allow(dead_code)]
fn multiply(a:i32, b:i32) -> i32 {
  a * b
}

#[test]
fn returns_expected() {
  assert_eq!(multiply(1, 1), 1);
  assert_eq!(multiply(2, 1), 2);
  assert_eq!(multiply(3, 5), 15);
  assert_eq!(multiply(6, 7), 42);
  assert_eq!(multiply(12, 9), 108);
}
