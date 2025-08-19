///|
async fn @socket.TCP::write_cstr(self : Self, bytes : Bytes) -> Unit raise {
  self.write(bytes)
  self.write(b"\x00")
}


pub async fn startup_message(
  parameters : ArrayView[(String, String)],
  conn : @socket.TCP,
) -> Unit raise {
  conn.write(b"\x00\x03\x00\x00")
  // TODO
  conn.write(b"\x00")
}
