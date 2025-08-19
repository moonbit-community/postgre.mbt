///|
async fn @socket.TCP::write_cstr(self : Self, bytes : Bytes) -> Unit raise {
  self.write(bytes)
  self.write(b"\x00")
}

///|
pub async fn startup_message(
  parameters : ArrayView[(String, String)],
  conn : @socket.TCP,
) -> Unit raise {
  conn.write(b"\x00\x03\x00\x00")
  for pair in parameters {
    let key = @encoding.encode(pair.0, encoding=UTF8)
    let value = @encoding.encode(pair.1, encoding=UTF8)
    conn.write_cstr(key)
    conn.write_cstr(value)
  }
  conn.write(b"\x00")
}
