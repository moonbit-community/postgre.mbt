///|
pub const PARSE_COMPLETE_TAG : Byte = b'1'

///|
pub const BIND_COMPLETE_TAG : Byte = b'2'

///|
pub const CLOSE_COMPLETE_TAG : Byte = b'3'

///|
pub const NOTIFICATION_RESPONSE_TAG : Byte = b'A'

///|
pub const COPY_DONE_TAG : Byte = b'c'

///|
pub const COMMAND_COMPLETE_TAG : Byte = b'C'

///|
pub const COPY_DATA_TAG : Byte = b'd'

///|
pub const DATA_ROW_TAG : Byte = b'D'

///|
pub const ERROR_RESPONSE_TAG : Byte = b'E'

///|
pub const COPY_IN_RESPONSE_TAG : Byte = b'G'

///|
pub const COPY_OUT_RESPONSE_TAG : Byte = b'H'

///|
pub const EMPTY_QUERY_RESPONSE_TAG : Byte = b'I'

///|
pub const BACKEND_KEY_DATA_TAG : Byte = b'K'

///|
pub const NO_DATA_TAG : Byte = b'n'

///|
pub const NOTICE_RESPONSE_TAG : Byte = b'N'

///|
pub const AUTHENTICATION_TAG : Byte = b'R'

///|
pub const PORTAL_SUSPENDED_TAG : Byte = b's'

///|
pub const PARAMETER_STATUS_TAG : Byte = b'S'

///|
pub const PARAMETER_DESCRIPTION_TAG : Byte = b't'

///|
pub const ROW_DESCRIPTION_TAG : Byte = b'T'

///|
pub const READY_FOR_QUERY_TAG : Byte = b'Z'

///|
pub enum BackendMessage {
  AuthenticationOk
  AuthenticationKerberosV5
  AuthenticationCleartextPassword
  AuthenticationCryptPassword(String)
  AuthenticationMD5Password(String)
  AuthenticationSCMCredential
  AuthenticationGSS
  AuthenticationGSSContinue(String)
  AuthenticationSSPI
  AuthenticationSASL(Array[String])
  AuthenticationSASLContinue(String)
  AuthenticationSASLFinal(String)
  BackendKeyData(Int, Int)
  BindComplete
  CloseComplete
  CommandComplete(String)
  DataRow(Array[(Int, String)])
  EmptyQueryResponse
  ErrorResponse(Array[(Char, String)])
  NoData
  NoticeResponse(Array[(Char, String)])
  NotificationResponse
  ParameterDescription(Array[Int])
  ParameterStatus(String, String)
  ParseComplete
  ReadyForQuery(Char)
  RowDescription(Array[(String, Int, Int, Int, Int, Int, Int)])
  UnknownMessage(Char, String)
}

///|
pub fn BackendMessage::parse(typ : Char, msg : String) -> Self {
  ...
}
