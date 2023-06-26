//
// This file was auto-generated using the following command:
//
// jai ./generate.jai
//



HAVE_STD_MAP_EMPLACE :: 1;

HAVE_LIBXML2 :: 1;

SIZEOF_INT_P :: 8;

SIZEOF_TIME_T :: 8;

HAVE__EXIT :: 1;

HAVE_DECL_INITGROUPS :: 0;

HAVE_FCNTL_H :: 1;

HAVE_INTTYPES_H :: 1;

HAVE_LIMITS_H :: 1;

HAVE_TIME_H :: 1;

NGHTTP2_VERSION :: "1.54.0";

NGHTTP2_VERSION_NUM :: 0x013600;

NGHTTP2_PROTO_VERSION_ID :: "h2";

NGHTTP2_PROTO_VERSION_ID_LEN :: 2;

NGHTTP2_PROTO_ALPN :: "\x2h2";

NGHTTP2_CLEARTEXT_PROTO_VERSION_ID :: "h2c";

NGHTTP2_CLEARTEXT_PROTO_VERSION_ID_LEN :: 3;

NGHTTP2_VERSION_AGE :: 1;

NGHTTP2_DEFAULT_WEIGHT :: 16;

NGHTTP2_MAX_WEIGHT :: 256;

NGHTTP2_MIN_WEIGHT :: 1;

NGHTTP2_MAX_WINDOW_SIZE :: cast(s32)((1 << 31) - 1);

NGHTTP2_INITIAL_WINDOW_SIZE :: (1 << 16) - 1;

NGHTTP2_INITIAL_CONNECTION_WINDOW_SIZE :: (1 << 16) - 1;

NGHTTP2_DEFAULT_HEADER_TABLE_SIZE :: 1 << 12;

NGHTTP2_CLIENT_MAGIC :: "PRI * HTTP/2.0\r\n\r\nSM\r\n\r\n";

NGHTTP2_CLIENT_MAGIC_LEN :: 24;

NGHTTP2_DEFAULT_MAX_SETTINGS :: 32;

NGHTTP2_INITIAL_MAX_CONCURRENT_STREAMS :: (1 << 31) - 1;

NGHTTP2_EXTPRI_DEFAULT_URGENCY :: 3;

NGHTTP2_EXTPRI_URGENCY_HIGH :: 0;

NGHTTP2_EXTPRI_URGENCY_LOW :: 7;

NGHTTP2_EXTPRI_URGENCY_LEVELS :: NGHTTP2_EXTPRI_URGENCY_LOW + 1;

nghttp2_session :: struct {}

/**
* @struct
*
* This struct is what `nghttp2_version()` returns.  It holds
* information about the particular nghttp2 version.
*/
nghttp2_info :: struct {
    /**
    * Age of this struct.  This instance of nghttp2 sets it to
    * :macro:`NGHTTP2_VERSION_AGE` but a future version may bump it and
    * add more struct fields at the bottom
    */
    age:         s32;

    /**
    * the :macro:`NGHTTP2_VERSION_NUM` number (since age ==1)
    */
    version_num: s32;

    /**
    * points to the :macro:`NGHTTP2_VERSION` string (since age ==1)
    */
    version_str: *u8;

    /**
    * points to the :macro:`NGHTTP2_PROTO_VERSION_ID` string this
    * instance implements (since age ==1)
    */
    proto_str:   *u8;
}

/**
* @enum
*
* Error codes used in this library.  The code range is [-999, -500],
* inclusive. The following values are defined:
*/
nghttp2_error :: enum s32 {
    INVALID_ARGUMENT           :: -501;

    BUFFER_ERROR               :: -502;

    UNSUPPORTED_VERSION        :: -503;

    WOULDBLOCK                 :: -504;

    PROTO                      :: -505;

    INVALID_FRAME              :: -506;

    EOF                        :: -507;

    DEFERRED                   :: -508;

    STREAM_ID_NOT_AVAILABLE    :: -509;

    STREAM_CLOSED              :: -510;

    STREAM_CLOSING             :: -511;

    STREAM_SHUT_WR             :: -512;

    INVALID_STREAM_ID          :: -513;

    INVALID_STREAM_STATE       :: -514;

    DEFERRED_DATA_EXIST        :: -515;

    START_STREAM_NOT_ALLOWED   :: -516;

    GOAWAY_ALREADY_SENT        :: -517;

    INVALID_HEADER_BLOCK       :: -518;

    INVALID_STATE              :: -519;

    TEMPORAL_CALLBACK_FAILURE  :: -521;

    FRAME_SIZE_ERROR           :: -522;

    HEADER_COMP                :: -523;

    FLOW_CONTROL               :: -524;

    INSUFF_BUFSIZE             :: -525;

    PAUSE                      :: -526;

    TOO_MANY_INFLIGHT_SETTINGS :: -527;

    PUSH_DISABLED              :: -528;

    DATA_EXIST                 :: -529;

    SESSION_CLOSING            :: -530;

    HTTP_HEADER                :: -531;

    HTTP_MESSAGING             :: -532;

    REFUSED_STREAM             :: -533;

    INTERNAL                   :: -534;

    CANCEL                     :: -535;

    SETTINGS_EXPECTED          :: -536;

    TOO_MANY_SETTINGS          :: -537;

    FATAL                      :: -900;

    NOMEM                      :: -901;

    CALLBACK_FAILURE           :: -902;

    BAD_CLIENT_MAGIC           :: -903;

    FLOODED                    :: -904;

    NGHTTP2_ERR_INVALID_ARGUMENT           :: INVALID_ARGUMENT;

    NGHTTP2_ERR_BUFFER_ERROR               :: BUFFER_ERROR;

    NGHTTP2_ERR_UNSUPPORTED_VERSION        :: UNSUPPORTED_VERSION;

    NGHTTP2_ERR_WOULDBLOCK                 :: WOULDBLOCK;

    NGHTTP2_ERR_PROTO                      :: PROTO;

    NGHTTP2_ERR_INVALID_FRAME              :: INVALID_FRAME;

    NGHTTP2_ERR_EOF                        :: EOF;

    NGHTTP2_ERR_DEFERRED                   :: DEFERRED;

    NGHTTP2_ERR_STREAM_ID_NOT_AVAILABLE    :: STREAM_ID_NOT_AVAILABLE;

    NGHTTP2_ERR_STREAM_CLOSED              :: STREAM_CLOSED;

    NGHTTP2_ERR_STREAM_CLOSING             :: STREAM_CLOSING;

    NGHTTP2_ERR_STREAM_SHUT_WR             :: STREAM_SHUT_WR;

    NGHTTP2_ERR_INVALID_STREAM_ID          :: INVALID_STREAM_ID;

    NGHTTP2_ERR_INVALID_STREAM_STATE       :: INVALID_STREAM_STATE;

    NGHTTP2_ERR_DEFERRED_DATA_EXIST        :: DEFERRED_DATA_EXIST;

    NGHTTP2_ERR_START_STREAM_NOT_ALLOWED   :: START_STREAM_NOT_ALLOWED;

    NGHTTP2_ERR_GOAWAY_ALREADY_SENT        :: GOAWAY_ALREADY_SENT;

    NGHTTP2_ERR_INVALID_HEADER_BLOCK       :: INVALID_HEADER_BLOCK;

    NGHTTP2_ERR_INVALID_STATE              :: INVALID_STATE;

    NGHTTP2_ERR_TEMPORAL_CALLBACK_FAILURE  :: TEMPORAL_CALLBACK_FAILURE;

    NGHTTP2_ERR_FRAME_SIZE_ERROR           :: FRAME_SIZE_ERROR;

    NGHTTP2_ERR_HEADER_COMP                :: HEADER_COMP;

    NGHTTP2_ERR_FLOW_CONTROL               :: FLOW_CONTROL;

    NGHTTP2_ERR_INSUFF_BUFSIZE             :: INSUFF_BUFSIZE;

    NGHTTP2_ERR_PAUSE                      :: PAUSE;

    NGHTTP2_ERR_TOO_MANY_INFLIGHT_SETTINGS :: TOO_MANY_INFLIGHT_SETTINGS;

    NGHTTP2_ERR_PUSH_DISABLED              :: PUSH_DISABLED;

    NGHTTP2_ERR_DATA_EXIST                 :: DATA_EXIST;

    NGHTTP2_ERR_SESSION_CLOSING            :: SESSION_CLOSING;

    NGHTTP2_ERR_HTTP_HEADER                :: HTTP_HEADER;

    NGHTTP2_ERR_HTTP_MESSAGING             :: HTTP_MESSAGING;

    NGHTTP2_ERR_REFUSED_STREAM             :: REFUSED_STREAM;

    NGHTTP2_ERR_INTERNAL                   :: INTERNAL;

    NGHTTP2_ERR_CANCEL                     :: CANCEL;

    NGHTTP2_ERR_SETTINGS_EXPECTED          :: SETTINGS_EXPECTED;

    NGHTTP2_ERR_TOO_MANY_SETTINGS          :: TOO_MANY_SETTINGS;

    NGHTTP2_ERR_FATAL                      :: FATAL;

    NGHTTP2_ERR_NOMEM                      :: NOMEM;

    NGHTTP2_ERR_CALLBACK_FAILURE           :: CALLBACK_FAILURE;

    NGHTTP2_ERR_BAD_CLIENT_MAGIC           :: BAD_CLIENT_MAGIC;

    NGHTTP2_ERR_FLOODED                    :: FLOODED;
}

/**
* @struct
*
* The object representing single contiguous buffer.
*/
nghttp2_vec :: struct {
    /**
    * The pointer to the buffer.
    */
    base: *u8;

    /**
    * The length of the buffer.
    */
    len:  size_t;
}

nghttp2_rcbuf :: struct {}

/**
* @function
*
* Increments the reference count of |rcbuf| by 1.
*/
nghttp2_rcbuf_incref :: (rcbuf: *nghttp2_rcbuf) -> void #foreign nghttp2;

/**
* @function
*
* Decrements the reference count of |rcbuf| by 1.  If the reference
* count becomes zero, the object pointed by |rcbuf| will be freed.
* In this case, application must not use |rcbuf| again.
*/
nghttp2_rcbuf_decref :: (rcbuf: *nghttp2_rcbuf) -> void #foreign nghttp2;

/**
* @function
*
* Returns the underlying buffer managed by |rcbuf|.
*/
nghttp2_rcbuf_get_buf :: (rcbuf: *nghttp2_rcbuf) -> nghttp2_vec #foreign nghttp2;

/**
* @function
*
* Returns nonzero if the underlying buffer is statically allocated,
* and 0 otherwise. This can be useful for language bindings that wish
* to avoid creating duplicate strings for these buffers.
*/
nghttp2_rcbuf_is_static :: (rcbuf: *nghttp2_rcbuf) -> s32 #foreign nghttp2;

/**
* @enum
*
* The flags for header field name/value pair.
*/
nghttp2_nv_flag :: enum s32 {
    NONE          :: 0;

    NO_INDEX      :: 1;

    NO_COPY_NAME  :: 2;

    NO_COPY_VALUE :: 4;

    NGHTTP2_NV_FLAG_NONE          :: NONE;

    NGHTTP2_NV_FLAG_NO_INDEX      :: NO_INDEX;

    NGHTTP2_NV_FLAG_NO_COPY_NAME  :: NO_COPY_NAME;

    NGHTTP2_NV_FLAG_NO_COPY_VALUE :: NO_COPY_VALUE;
}

/**
* @struct
*
* The name/value pair, which mainly used to represent header fields.
*/
nghttp2_nv :: struct {
    /**
    * The |name| byte string.  If this struct is presented from library
    * (e.g., :type:`nghttp2_on_frame_recv_callback`), |name| is
    * guaranteed to be NULL-terminated.  For some callbacks
    * (:type:`nghttp2_before_frame_send_callback`,
    * :type:`nghttp2_on_frame_send_callback`, and
    * :type:`nghttp2_on_frame_not_send_callback`), it may not be
    * NULL-terminated if header field is passed from application with
    * the flag :enum:`nghttp2_nv_flag.NGHTTP2_NV_FLAG_NO_COPY_NAME`).
    * When application is constructing this struct, |name| is not
    * required to be NULL-terminated.
    */
    name:     *u8;

    /**
    * The |value| byte string.  If this struct is presented from
    * library (e.g., :type:`nghttp2_on_frame_recv_callback`), |value|
    * is guaranteed to be NULL-terminated.  For some callbacks
    * (:type:`nghttp2_before_frame_send_callback`,
    * :type:`nghttp2_on_frame_send_callback`, and
    * :type:`nghttp2_on_frame_not_send_callback`), it may not be
    * NULL-terminated if header field is passed from application with
    * the flag :enum:`nghttp2_nv_flag.NGHTTP2_NV_FLAG_NO_COPY_VALUE`).
    * When application is constructing this struct, |value| is not
    * required to be NULL-terminated.
    */
    value:    *u8;

    /**
    * The length of the |name|, excluding terminating NULL.
    */
    namelen:  size_t;

    /**
    * The length of the |value|, excluding terminating NULL.
    */
    valuelen: size_t;

    /**
    * Bitwise OR of one or more of :type:`nghttp2_nv_flag`.
    */
    flags:    u8;
}

/**
* @enum
*
* The frame types in HTTP/2 specification.
*/
nghttp2_frame_type :: enum s32 {
    DATA            :: 0;

    HEADERS         :: 1;

    PRIORITY        :: 2;

    RST_STREAM      :: 3;

    SETTINGS        :: 4;

    PUSH_PROMISE    :: 5;

    PING            :: 6;

    GOAWAY          :: 7;

    WINDOW_UPDATE   :: 8;

    CONTINUATION    :: 9;

    ALTSVC          :: 10;

    ORIGIN          :: 12;

    PRIORITY_UPDATE :: 16;

    NGHTTP2_DATA            :: DATA;

    NGHTTP2_HEADERS         :: HEADERS;

    NGHTTP2_PRIORITY        :: PRIORITY;

    NGHTTP2_RST_STREAM      :: RST_STREAM;

    NGHTTP2_SETTINGS        :: SETTINGS;

    NGHTTP2_PUSH_PROMISE    :: PUSH_PROMISE;

    NGHTTP2_PING            :: PING;

    NGHTTP2_GOAWAY          :: GOAWAY;

    NGHTTP2_WINDOW_UPDATE   :: WINDOW_UPDATE;

    NGHTTP2_CONTINUATION    :: CONTINUATION;

    NGHTTP2_ALTSVC          :: ALTSVC;

    NGHTTP2_ORIGIN          :: ORIGIN;

    NGHTTP2_PRIORITY_UPDATE :: PRIORITY_UPDATE;
}

/**
* @enum
*
* The flags for HTTP/2 frames.  This enum defines all flags for all
* frames.
*/
nghttp2_flag :: enum s32 {
    NONE        :: 0;

    END_STREAM  :: 1;

    END_HEADERS :: 4;

    ACK         :: 1;

    PADDED      :: 8;

    PRIORITY    :: 32;

    NGHTTP2_FLAG_NONE        :: NONE;

    NGHTTP2_FLAG_END_STREAM  :: END_STREAM;

    NGHTTP2_FLAG_END_HEADERS :: END_HEADERS;

    NGHTTP2_FLAG_ACK         :: ACK;

    NGHTTP2_FLAG_PADDED      :: PADDED;

    NGHTTP2_FLAG_PRIORITY    :: PRIORITY;
}

/**
* @enum
* The SETTINGS ID.
*/
nghttp2_settings_id :: enum s32 {
    HEADER_TABLE_SIZE       :: 1;

    ENABLE_PUSH             :: 2;

    MAX_CONCURRENT_STREAMS  :: 3;

    INITIAL_WINDOW_SIZE     :: 4;

    MAX_FRAME_SIZE          :: 5;

    MAX_HEADER_LIST_SIZE    :: 6;

    ENABLE_CONNECT_PROTOCOL :: 8;

    NO_RFC7540_PRIORITIES   :: 9;

    NGHTTP2_SETTINGS_HEADER_TABLE_SIZE       :: HEADER_TABLE_SIZE;

    NGHTTP2_SETTINGS_ENABLE_PUSH             :: ENABLE_PUSH;

    NGHTTP2_SETTINGS_MAX_CONCURRENT_STREAMS  :: MAX_CONCURRENT_STREAMS;

    NGHTTP2_SETTINGS_INITIAL_WINDOW_SIZE     :: INITIAL_WINDOW_SIZE;

    NGHTTP2_SETTINGS_MAX_FRAME_SIZE          :: MAX_FRAME_SIZE;

    NGHTTP2_SETTINGS_MAX_HEADER_LIST_SIZE    :: MAX_HEADER_LIST_SIZE;

    NGHTTP2_SETTINGS_ENABLE_CONNECT_PROTOCOL :: ENABLE_CONNECT_PROTOCOL;

    NGHTTP2_SETTINGS_NO_RFC7540_PRIORITIES   :: NO_RFC7540_PRIORITIES;
}

/**
* @enum
* The status codes for the RST_STREAM and GOAWAY frames.
*/
nghttp2_error_code :: enum s32 {
    NO_ERROR            :: 0;

    PROTOCOL_ERROR      :: 1;

    INTERNAL_ERROR      :: 2;

    FLOW_CONTROL_ERROR  :: 3;

    SETTINGS_TIMEOUT    :: 4;

    STREAM_CLOSED       :: 5;

    FRAME_SIZE_ERROR    :: 6;

    REFUSED_STREAM      :: 7;

    CANCEL              :: 8;

    COMPRESSION_ERROR   :: 9;

    CONNECT_ERROR       :: 10;

    ENHANCE_YOUR_CALM   :: 11;

    INADEQUATE_SECURITY :: 12;

    HTTP_1_1_REQUIRED   :: 13;

    NGHTTP2_NO_ERROR            :: NO_ERROR;

    NGHTTP2_PROTOCOL_ERROR      :: PROTOCOL_ERROR;

    NGHTTP2_INTERNAL_ERROR      :: INTERNAL_ERROR;

    NGHTTP2_FLOW_CONTROL_ERROR  :: FLOW_CONTROL_ERROR;

    NGHTTP2_SETTINGS_TIMEOUT    :: SETTINGS_TIMEOUT;

    NGHTTP2_STREAM_CLOSED       :: STREAM_CLOSED;

    NGHTTP2_FRAME_SIZE_ERROR    :: FRAME_SIZE_ERROR;

    NGHTTP2_REFUSED_STREAM      :: REFUSED_STREAM;

    NGHTTP2_CANCEL              :: CANCEL;

    NGHTTP2_COMPRESSION_ERROR   :: COMPRESSION_ERROR;

    NGHTTP2_CONNECT_ERROR       :: CONNECT_ERROR;

    NGHTTP2_ENHANCE_YOUR_CALM   :: ENHANCE_YOUR_CALM;

    NGHTTP2_INADEQUATE_SECURITY :: INADEQUATE_SECURITY;

    NGHTTP2_HTTP_1_1_REQUIRED   :: HTTP_1_1_REQUIRED;
}

/**
* @struct
* The frame header.
*/
nghttp2_frame_hd :: struct {
    /**
    * The length field of this frame, excluding frame header.
    */
    length:    size_t;

    /**
    * The stream identifier (aka, stream ID)
    */
    stream_id: s32;

    /**
    * The type of this frame.  See `nghttp2_frame_type`.
    */
    type:      u8;

    /**
    * The flags.
    */
    flags:     u8;

    /**
    * Reserved bit in frame header.  Currently, this is always set to 0
    * and application should not expect something useful in here.
    */
    reserved:  u8;
}

/**
* @union
*
* This union represents the some kind of data source passed to
* :type:`nghttp2_data_source_read_callback`.
*/
nghttp2_data_source :: union {
    /**
    * The integer field, suitable for a file descriptor.
    */
    fd:  s32;

    /**
    * The pointer to an arbitrary object.
    */
    ptr: *void;
}

/**
* @enum
*
* The flags used to set in |data_flags| output parameter in
* :type:`nghttp2_data_source_read_callback`.
*/
nghttp2_data_flag :: enum s32 {
    NONE          :: 0;

    EOF           :: 1;

    NO_END_STREAM :: 2;

    NO_COPY       :: 4;

    NGHTTP2_DATA_FLAG_NONE          :: NONE;

    NGHTTP2_DATA_FLAG_EOF           :: EOF;

    NGHTTP2_DATA_FLAG_NO_END_STREAM :: NO_END_STREAM;

    NGHTTP2_DATA_FLAG_NO_COPY       :: NO_COPY;
}

/**
* @functypedef
*
* Callback function invoked when the library wants to read data from
* the |source|.  The read data is sent in the stream |stream_id|.
* The implementation of this function must read at most |length|
* bytes of data from |source| (or possibly other places) and store
* them in |buf| and return number of data stored in |buf|.  If EOF is
* reached, set :enum:`nghttp2_data_flag.NGHTTP2_DATA_FLAG_EOF` flag
* in |*data_flags|.
*
* Sometime it is desirable to avoid copying data into |buf| and let
* application to send data directly.  To achieve this, set
* :enum:`nghttp2_data_flag.NGHTTP2_DATA_FLAG_NO_COPY` to
* |*data_flags| (and possibly other flags, just like when we do
* copy), and return the number of bytes to send without copying data
* into |buf|.  The library, seeing
* :enum:`nghttp2_data_flag.NGHTTP2_DATA_FLAG_NO_COPY`, will invoke
* :type:`nghttp2_send_data_callback`.  The application must send
* complete DATA frame in that callback.
*
* If this callback is set by `nghttp2_submit_request()`,
* `nghttp2_submit_response()` or `nghttp2_submit_headers()` and
* `nghttp2_submit_data()` with flag parameter
* :enum:`nghttp2_flag.NGHTTP2_FLAG_END_STREAM` set, and
* :enum:`nghttp2_data_flag.NGHTTP2_DATA_FLAG_EOF` flag is set to
* |*data_flags|, DATA frame will have END_STREAM flag set.  Usually,
* this is expected behaviour and all are fine.  One exception is send
* trailer fields.  You cannot send trailer fields after sending frame
* with END_STREAM set.  To avoid this problem, one can set
* :enum:`nghttp2_data_flag.NGHTTP2_DATA_FLAG_NO_END_STREAM` along
* with :enum:`nghttp2_data_flag.NGHTTP2_DATA_FLAG_EOF` to signal the
* library not to set END_STREAM in DATA frame.  Then application can
* use `nghttp2_submit_trailer()` to send trailer fields.
* `nghttp2_submit_trailer()` can be called inside this callback.
*
* If the application wants to postpone DATA frames (e.g.,
* asynchronous I/O, or reading data blocks for long time), it is
* achieved by returning :enum:`nghttp2_error.NGHTTP2_ERR_DEFERRED`
* without reading any data in this invocation.  The library removes
* DATA frame from the outgoing queue temporarily.  To move back
* deferred DATA frame to outgoing queue, call
* `nghttp2_session_resume_data()`.
*
* By default, |length| is limited to 16KiB at maximum.  If peer
* allows larger frames, application can enlarge transmission buffer
* size.  See :type:`nghttp2_data_source_read_length_callback` for
* more details.
*
* If the application just wants to return from
* `nghttp2_session_send()` or `nghttp2_session_mem_send()` without
* sending anything, return :enum:`nghttp2_error.NGHTTP2_ERR_PAUSE`.
*
* In case of error, there are 2 choices. Returning
* :enum:`nghttp2_error.NGHTTP2_ERR_TEMPORAL_CALLBACK_FAILURE` will
* close the stream by issuing RST_STREAM with
* :enum:`nghttp2_error_code.NGHTTP2_INTERNAL_ERROR`.  If a different
* error code is desirable, use `nghttp2_submit_rst_stream()` with a
* desired error code and then return
* :enum:`nghttp2_error.NGHTTP2_ERR_TEMPORAL_CALLBACK_FAILURE`.
* Returning :enum:`nghttp2_error.NGHTTP2_ERR_CALLBACK_FAILURE` will
* signal the entire session failure.
*/
nghttp2_data_source_read_callback :: #type (session: *nghttp2_session, stream_id: s32, buf: *u8, length: size_t, data_flags: *u32, source: *nghttp2_data_source, user_data: *void) -> s32 #c_call;

/**
* @struct
*
* This struct represents the data source and the way to read a chunk
* of data from it.
*/
nghttp2_data_provider :: struct {
    /**
    * The data source.
    */
    source:        nghttp2_data_source;

    /**
    * The callback function to read a chunk of data from the |source|.
    */
    read_callback: nghttp2_data_source_read_callback;
}

/**
* @struct
*
* The DATA frame.  The received data is delivered via
* :type:`nghttp2_on_data_chunk_recv_callback`.
*/
nghttp2_data :: struct {
    hd:     nghttp2_frame_hd;

    /**
    * The length of the padding in this frame.  This includes PAD_HIGH
    * and PAD_LOW.
    */
    padlen: size_t;
}

/**
* @enum
*
* The category of HEADERS, which indicates the role of the frame.  In
* HTTP/2 spec, request, response, push response and other arbitrary
* headers (e.g., trailer fields) are all called just HEADERS.  To
* give the application the role of incoming HEADERS frame, we define
* several categories.
*/
nghttp2_headers_category :: enum s32 {
    REQUEST       :: 0;

    RESPONSE      :: 1;

    PUSH_RESPONSE :: 2;

    HEADERS       :: 3;

    NGHTTP2_HCAT_REQUEST       :: REQUEST;

    NGHTTP2_HCAT_RESPONSE      :: RESPONSE;

    NGHTTP2_HCAT_PUSH_RESPONSE :: PUSH_RESPONSE;

    NGHTTP2_HCAT_HEADERS       :: HEADERS;
}

/**
* @struct
*
* The structure to specify stream dependency.
*/
nghttp2_priority_spec :: struct {
    /**
    * The stream ID of the stream to depend on.  Specifying 0 makes
    * stream not depend any other stream.
    */
    stream_id: s32;

    /**
    * The weight of this dependency.
    */
    weight:    s32;

    /**
    * nonzero means exclusive dependency
    */
    exclusive: u8;
}

/**
* @struct
*
* The HEADERS frame.  It has the following members:
*/
nghttp2_headers :: struct {
    /**
    * The frame header.
    */
    hd:       nghttp2_frame_hd;

    /**
    * The length of the padding in this frame.  This includes PAD_HIGH
    * and PAD_LOW.
    */
    padlen:   size_t;

    /**
    * The priority specification
    */
    pri_spec: nghttp2_priority_spec;

    /**
    * The name/value pairs.
    */
    nva:      *nghttp2_nv;

    /**
    * The number of name/value pairs in |nva|.
    */
    nvlen:    size_t;

    /**
    * The category of this HEADERS frame.
    */
    cat:      nghttp2_headers_category;
}

/**
* @struct
*
* The PRIORITY frame.  It has the following members:
*/
nghttp2_priority :: struct {
    /**
    * The frame header.
    */
    hd:       nghttp2_frame_hd;

    /**
    * The priority specification.
    */
    pri_spec: nghttp2_priority_spec;
}

/**
* @struct
*
* The RST_STREAM frame.  It has the following members:
*/
nghttp2_rst_stream :: struct {
    /**
    * The frame header.
    */
    hd:         nghttp2_frame_hd;

    /**
    * The error code.  See :type:`nghttp2_error_code`.
    */
    error_code: u32;
}

/**
* @struct
*
* The SETTINGS ID/Value pair.  It has the following members:
*/
nghttp2_settings_entry :: struct {
    /**
    * The SETTINGS ID.  See :type:`nghttp2_settings_id`.
    */
    settings_id: s32;

    /**
    * The value of this entry.
    */
    value:       u32;
}

/**
* @struct
*
* The SETTINGS frame.  It has the following members:
*/
nghttp2_settings :: struct {
    /**
    * The frame header.
    */
    hd:  nghttp2_frame_hd;

    /**
    * The number of SETTINGS ID/Value pairs in |iv|.
    */
    niv: size_t;

    /**
    * The pointer to the array of SETTINGS ID/Value pair.
    */
    iv:  *nghttp2_settings_entry;
}

/**
* @struct
*
* The PUSH_PROMISE frame.  It has the following members:
*/
nghttp2_push_promise :: struct {
    /**
    * The frame header.
    */
    hd:                 nghttp2_frame_hd;

    /**
    * The length of the padding in this frame.  This includes PAD_HIGH
    * and PAD_LOW.
    */
    padlen:             size_t;

    /**
    * The name/value pairs.
    */
    nva:                *nghttp2_nv;

    /**
    * The number of name/value pairs in |nva|.
    */
    nvlen:              size_t;

    /**
    * The promised stream ID
    */
    promised_stream_id: s32;

    /**
    * Reserved bit.  Currently this is always set to 0 and application
    * should not expect something useful in here.
    */
    reserved:           u8;
}

/**
* @struct
*
* The PING frame.  It has the following members:
*/
nghttp2_ping :: struct {
    /**
    * The frame header.
    */
    hd:          nghttp2_frame_hd;

    /**
    * The opaque data
    */
    opaque_data: [8] u8;
}

/**
* @struct
*
* The GOAWAY frame.  It has the following members:
*/
nghttp2_goaway :: struct {
    /**
    * The frame header.
    */
    hd:              nghttp2_frame_hd;

    /**
    * The last stream stream ID.
    */
    last_stream_id:  s32;

    /**
    * The error code.  See :type:`nghttp2_error_code`.
    */
    error_code:      u32;

    /**
    * The additional debug data
    */
    opaque_data:     *u8;

    /**
    * The length of |opaque_data| member.
    */
    opaque_data_len: size_t;

    /**
    * Reserved bit.  Currently this is always set to 0 and application
    * should not expect something useful in here.
    */
    reserved:        u8;
}

/**
* @struct
*
* The WINDOW_UPDATE frame.  It has the following members:
*/
nghttp2_window_update :: struct {
    /**
    * The frame header.
    */
    hd:                    nghttp2_frame_hd;

    /**
    * The window size increment.
    */
    window_size_increment: s32;

    /**
    * Reserved bit.  Currently this is always set to 0 and application
    * should not expect something useful in here.
    */
    reserved:              u8;
}

/**
* @struct
*
* The extension frame.  It has following members:
*/
nghttp2_extension :: struct {
    /**
    * The frame header.
    */
    hd:      nghttp2_frame_hd;

    /**
    * The pointer to extension payload.  The exact pointer type is
    * determined by hd.type.
    *
    * Currently, no extension is supported.  This is a place holder for
    * the future extensions.
    */
    payload: *void;
}

/**
* @union
*
* This union includes all frames to pass them to various function
* calls as nghttp2_frame type.  The CONTINUATION frame is omitted
* from here because the library deals with it internally.
*/
nghttp2_frame :: union {
    /**
    * The frame header, which is convenient to inspect frame header.
    */
    hd:            nghttp2_frame_hd;

    /**
    * The DATA frame.
    */
    data:          nghttp2_data;

    /**
    * The HEADERS frame.
    */
    headers:       nghttp2_headers;

    /**
    * The PRIORITY frame.
    */
    priority:      nghttp2_priority;

    /**
    * The RST_STREAM frame.
    */
    rst_stream:    nghttp2_rst_stream;

    /**
    * The SETTINGS frame.
    */
    settings:      nghttp2_settings;

    /**
    * The PUSH_PROMISE frame.
    */
    push_promise:  nghttp2_push_promise;

    /**
    * The PING frame.
    */
    ping:          nghttp2_ping;

    /**
    * The GOAWAY frame.
    */
    goaway:        nghttp2_goaway;

    /**
    * The WINDOW_UPDATE frame.
    */
    window_update: nghttp2_window_update;

    /**
    * The extension frame.
    */
    ext:           nghttp2_extension;
}

/**
* @functypedef
*
* Callback function invoked when |session| wants to send data to the
* remote peer.  The implementation of this function must send at most
* |length| bytes of data stored in |data|.  The |flags| is currently
* not used and always 0. It must return the number of bytes sent if
* it succeeds.  If it cannot send any single byte without blocking,
* it must return :enum:`nghttp2_error.NGHTTP2_ERR_WOULDBLOCK`.  For
* other errors, it must return
* :enum:`nghttp2_error.NGHTTP2_ERR_CALLBACK_FAILURE`.  The
* |user_data| pointer is the third argument passed in to the call to
* `nghttp2_session_client_new()` or `nghttp2_session_server_new()`.
*
* This callback is required if the application uses
* `nghttp2_session_send()` to send data to the remote endpoint.  If
* the application uses solely `nghttp2_session_mem_send()` instead,
* this callback function is unnecessary.
*
* To set this callback to :type:`nghttp2_session_callbacks`, use
* `nghttp2_session_callbacks_set_send_callback()`.
*
* .. note::
*
*   The |length| may be very small.  If that is the case, and
*   application disables Nagle algorithm (``TCP_NODELAY``), then just
*   writing |data| to the network stack leads to very small packet,
*   and it is very inefficient.  An application should be responsible
*   to buffer up small chunks of data as necessary to avoid this
*   situation.
*/
nghttp2_send_callback :: #type (session: *nghttp2_session, data: *u8, length: size_t, flags: s32, user_data: *void) -> s32 #c_call;

/**
* @functypedef
*
* Callback function invoked when
* :enum:`nghttp2_data_flag.NGHTTP2_DATA_FLAG_NO_COPY` is used in
* :type:`nghttp2_data_source_read_callback` to send complete DATA
* frame.
*
* The |frame| is a DATA frame to send.  The |framehd| is the
* serialized frame header (9 bytes). The |length| is the length of
* application data to send (this does not include padding).  The
* |source| is the same pointer passed to
* :type:`nghttp2_data_source_read_callback`.
*
* The application first must send frame header |framehd| of length 9
* bytes.  If ``frame->data.padlen > 0``, send 1 byte of value
* ``frame->data.padlen - 1``.  Then send exactly |length| bytes of
* application data.  Finally, if ``frame->data.padlen > 1``, send
* ``frame->data.padlen - 1`` bytes of zero as padding.
*
* The application has to send complete DATA frame in this callback.
* If all data were written successfully, return 0.
*
* If it cannot send any data at all, just return
* :enum:`nghttp2_error.NGHTTP2_ERR_WOULDBLOCK`; the library will call
* this callback with the same parameters later (It is recommended to
* send complete DATA frame at once in this function to deal with
* error; if partial frame data has already sent, it is impossible to
* send another data in that state, and all we can do is tear down
* connection).  When data is fully processed, but application wants
* to make `nghttp2_session_mem_send()` or `nghttp2_session_send()`
* return immediately without processing next frames, return
* :enum:`nghttp2_error.NGHTTP2_ERR_PAUSE`.  If application decided to
* reset this stream, return
* :enum:`nghttp2_error.NGHTTP2_ERR_TEMPORAL_CALLBACK_FAILURE`, then
* the library will send RST_STREAM with INTERNAL_ERROR as error code.
* The application can also return
* :enum:`nghttp2_error.NGHTTP2_ERR_CALLBACK_FAILURE`, which will
* result in connection closure.  Returning any other value is treated
* as :enum:`nghttp2_error.NGHTTP2_ERR_CALLBACK_FAILURE` is returned.
*/
nghttp2_send_data_callback :: #type (session: *nghttp2_session, frame: *nghttp2_frame, framehd: *u8, length: size_t, source: *nghttp2_data_source, user_data: *void) -> s32 #c_call;

/**
* @functypedef
*
* Callback function invoked when |session| wants to receive data from
* the remote peer.  The implementation of this function must read at
* most |length| bytes of data and store it in |buf|.  The |flags| is
* currently not used and always 0.  It must return the number of
* bytes written in |buf| if it succeeds.  If it cannot read any
* single byte without blocking, it must return
* :enum:`nghttp2_error.NGHTTP2_ERR_WOULDBLOCK`.  If it gets EOF
* before it reads any single byte, it must return
* :enum:`nghttp2_error.NGHTTP2_ERR_EOF`.  For other errors, it must
* return :enum:`nghttp2_error.NGHTTP2_ERR_CALLBACK_FAILURE`.
* Returning 0 is treated as
* :enum:`nghttp2_error.NGHTTP2_ERR_WOULDBLOCK`.  The |user_data|
* pointer is the third argument passed in to the call to
* `nghttp2_session_client_new()` or `nghttp2_session_server_new()`.
*
* This callback is required if the application uses
* `nghttp2_session_recv()` to receive data from the remote endpoint.
* If the application uses solely `nghttp2_session_mem_recv()`
* instead, this callback function is unnecessary.
*
* To set this callback to :type:`nghttp2_session_callbacks`, use
* `nghttp2_session_callbacks_set_recv_callback()`.
*/
nghttp2_recv_callback :: #type (session: *nghttp2_session, buf: *u8, length: size_t, flags: s32, user_data: *void) -> s32 #c_call;

/**
* @functypedef
*
* Callback function invoked by `nghttp2_session_recv()` and
* `nghttp2_session_mem_recv()` when a frame is received.  The
* |user_data| pointer is the third argument passed in to the call to
* `nghttp2_session_client_new()` or `nghttp2_session_server_new()`.
*
* If frame is HEADERS or PUSH_PROMISE, the ``nva`` and ``nvlen``
* member of their data structure are always ``NULL`` and 0
* respectively.  The header name/value pairs are emitted via
* :type:`nghttp2_on_header_callback`.
*
* Only HEADERS and DATA frame can signal the end of incoming data.
* If ``frame->hd.flags & NGHTTP2_FLAG_END_STREAM`` is nonzero, the
* |frame| is the last frame from the remote peer in this stream.
*
* This callback won't be called for CONTINUATION frames.
* HEADERS/PUSH_PROMISE + CONTINUATIONs are treated as single frame.
*
* The implementation of this function must return 0 if it succeeds.
* If nonzero value is returned, it is treated as fatal error and
* `nghttp2_session_recv()` and `nghttp2_session_mem_recv()` functions
* immediately return
* :enum:`nghttp2_error.NGHTTP2_ERR_CALLBACK_FAILURE`.
*
* To set this callback to :type:`nghttp2_session_callbacks`, use
* `nghttp2_session_callbacks_set_on_frame_recv_callback()`.
*/
nghttp2_on_frame_recv_callback :: #type (session: *nghttp2_session, frame: *nghttp2_frame, user_data: *void) -> s32 #c_call;

/**
* @functypedef
*
* Callback function invoked by `nghttp2_session_recv()` and
* `nghttp2_session_mem_recv()` when an invalid non-DATA frame is
* received.  The error is indicated by the |lib_error_code|, which is
* one of the values defined in :type:`nghttp2_error`.  When this
* callback function is invoked, the library automatically submits
* either RST_STREAM or GOAWAY frame.  The |user_data| pointer is the
* third argument passed in to the call to
* `nghttp2_session_client_new()` or `nghttp2_session_server_new()`.
*
* If frame is HEADERS or PUSH_PROMISE, the ``nva`` and ``nvlen``
* member of their data structure are always ``NULL`` and 0
* respectively.
*
* The implementation of this function must return 0 if it succeeds.
* If nonzero is returned, it is treated as fatal error and
* `nghttp2_session_recv()` and `nghttp2_session_mem_recv()` functions
* immediately return
* :enum:`nghttp2_error.NGHTTP2_ERR_CALLBACK_FAILURE`.
*
* To set this callback to :type:`nghttp2_session_callbacks`, use
* `nghttp2_session_callbacks_set_on_invalid_frame_recv_callback()`.
*/
nghttp2_on_invalid_frame_recv_callback :: #type (session: *nghttp2_session, frame: *nghttp2_frame, lib_error_code: s32, user_data: *void) -> s32 #c_call;

/**
* @functypedef
*
* Callback function invoked when a chunk of data in DATA frame is
* received.  The |stream_id| is the stream ID this DATA frame belongs
* to.  The |flags| is the flags of DATA frame which this data chunk
* is contained.  ``(flags & NGHTTP2_FLAG_END_STREAM) != 0`` does not
* necessarily mean this chunk of data is the last one in the stream.
* You should use :type:`nghttp2_on_frame_recv_callback` to know all
* data frames are received.  The |user_data| pointer is the third
* argument passed in to the call to `nghttp2_session_client_new()` or
* `nghttp2_session_server_new()`.
*
* If the application uses `nghttp2_session_mem_recv()`, it can return
* :enum:`nghttp2_error.NGHTTP2_ERR_PAUSE` to make
* `nghttp2_session_mem_recv()` return without processing further
* input bytes.  The memory by pointed by the |data| is retained until
* `nghttp2_session_mem_recv()` or `nghttp2_session_recv()` is called.
* The application must retain the input bytes which was used to
* produce the |data| parameter, because it may refer to the memory
* region included in the input bytes.
*
* The implementation of this function must return 0 if it succeeds.
* If nonzero is returned, it is treated as fatal error, and
* `nghttp2_session_recv()` and `nghttp2_session_mem_recv()` functions
* immediately return
* :enum:`nghttp2_error.NGHTTP2_ERR_CALLBACK_FAILURE`.
*
* To set this callback to :type:`nghttp2_session_callbacks`, use
* `nghttp2_session_callbacks_set_on_data_chunk_recv_callback()`.
*/
nghttp2_on_data_chunk_recv_callback :: #type (session: *nghttp2_session, flags: u8, stream_id: s32, data: *u8, len: size_t, user_data: *void) -> s32 #c_call;

/**
* @functypedef
*
* Callback function invoked just before the non-DATA frame |frame| is
* sent.  The |user_data| pointer is the third argument passed in to
* the call to `nghttp2_session_client_new()` or
* `nghttp2_session_server_new()`.
*
* The implementation of this function must return 0 if it succeeds.
* It can also return :enum:`nghttp2_error.NGHTTP2_ERR_CANCEL` to
* cancel the transmission of the given frame.
*
* If there is a fatal error while executing this callback, the
* implementation should return
* :enum:`nghttp2_error.NGHTTP2_ERR_CALLBACK_FAILURE`, which makes
* `nghttp2_session_send()` and `nghttp2_session_mem_send()` functions
* immediately return
* :enum:`nghttp2_error.NGHTTP2_ERR_CALLBACK_FAILURE`.
*
* If the other value is returned, it is treated as if
* :enum:`nghttp2_error.NGHTTP2_ERR_CALLBACK_FAILURE` is returned.
* But the implementation should not rely on this since the library
* may define new return value to extend its capability.
*
* To set this callback to :type:`nghttp2_session_callbacks`, use
* `nghttp2_session_callbacks_set_before_frame_send_callback()`.
*/
nghttp2_before_frame_send_callback :: #type (session: *nghttp2_session, frame: *nghttp2_frame, user_data: *void) -> s32 #c_call;

/**
* @functypedef
*
* Callback function invoked after the frame |frame| is sent.  The
* |user_data| pointer is the third argument passed in to the call to
* `nghttp2_session_client_new()` or `nghttp2_session_server_new()`.
*
* The implementation of this function must return 0 if it succeeds.
* If nonzero is returned, it is treated as fatal error and
* `nghttp2_session_send()` and `nghttp2_session_mem_send()` functions
* immediately return
* :enum:`nghttp2_error.NGHTTP2_ERR_CALLBACK_FAILURE`.
*
* To set this callback to :type:`nghttp2_session_callbacks`, use
* `nghttp2_session_callbacks_set_on_frame_send_callback()`.
*/
nghttp2_on_frame_send_callback :: #type (session: *nghttp2_session, frame: *nghttp2_frame, user_data: *void) -> s32 #c_call;

/**
* @functypedef
*
* Callback function invoked after the non-DATA frame |frame| is not
* sent because of the error.  The error is indicated by the
* |lib_error_code|, which is one of the values defined in
* :type:`nghttp2_error`.  The |user_data| pointer is the third
* argument passed in to the call to `nghttp2_session_client_new()` or
* `nghttp2_session_server_new()`.
*
* The implementation of this function must return 0 if it succeeds.
* If nonzero is returned, it is treated as fatal error and
* `nghttp2_session_send()` and `nghttp2_session_mem_send()` functions
* immediately return
* :enum:`nghttp2_error.NGHTTP2_ERR_CALLBACK_FAILURE`.
*
* `nghttp2_session_get_stream_user_data()` can be used to get
* associated data.
*
* To set this callback to :type:`nghttp2_session_callbacks`, use
* `nghttp2_session_callbacks_set_on_frame_not_send_callback()`.
*/
nghttp2_on_frame_not_send_callback :: #type (session: *nghttp2_session, frame: *nghttp2_frame, lib_error_code: s32, user_data: *void) -> s32 #c_call;

/**
* @functypedef
*
* Callback function invoked when the stream |stream_id| is closed.
* The reason of closure is indicated by the |error_code|.  The
* |error_code| is usually one of :enum:`nghttp2_error_code`, but that
* is not guaranteed.  The stream_user_data, which was specified in
* `nghttp2_submit_request()` or `nghttp2_submit_headers()`, is still
* available in this function.  The |user_data| pointer is the third
* argument passed in to the call to `nghttp2_session_client_new()` or
* `nghttp2_session_server_new()`.
*
* This function is also called for a stream in reserved state.
*
* The implementation of this function must return 0 if it succeeds.
* If nonzero is returned, it is treated as fatal error and
* `nghttp2_session_recv()`, `nghttp2_session_mem_recv()`,
* `nghttp2_session_send()`, and `nghttp2_session_mem_send()`
* functions immediately return
* :enum:`nghttp2_error.NGHTTP2_ERR_CALLBACK_FAILURE`.
*
* To set this callback to :type:`nghttp2_session_callbacks`, use
* `nghttp2_session_callbacks_set_on_stream_close_callback()`.
*/
nghttp2_on_stream_close_callback :: #type (session: *nghttp2_session, stream_id: s32, error_code: u32, user_data: *void) -> s32 #c_call;

/**
* @functypedef
*
* Callback function invoked when the reception of header block in
* HEADERS or PUSH_PROMISE is started.  Each header name/value pair
* will be emitted by :type:`nghttp2_on_header_callback`.
*
* The ``frame->hd.flags`` may not have
* :enum:`nghttp2_flag.NGHTTP2_FLAG_END_HEADERS` flag set, which
* indicates that one or more CONTINUATION frames are involved.  But
* the application does not need to care about that because the header
* name/value pairs are emitted transparently regardless of
* CONTINUATION frames.
*
* The server applications probably create an object to store
* information about new stream if ``frame->hd.type ==
* NGHTTP2_HEADERS`` and ``frame->headers.cat ==
* NGHTTP2_HCAT_REQUEST``.  If |session| is configured as server side,
* ``frame->headers.cat`` is either ``NGHTTP2_HCAT_REQUEST``
* containing request headers or ``NGHTTP2_HCAT_HEADERS`` containing
* trailer fields and never get PUSH_PROMISE in this callback.
*
* For the client applications, ``frame->hd.type`` is either
* ``NGHTTP2_HEADERS`` or ``NGHTTP2_PUSH_PROMISE``.  In case of
* ``NGHTTP2_HEADERS``, ``frame->headers.cat ==
* NGHTTP2_HCAT_RESPONSE`` means that it is the first response
* headers, but it may be non-final response which is indicated by 1xx
* status code.  In this case, there may be zero or more HEADERS frame
* with ``frame->headers.cat == NGHTTP2_HCAT_HEADERS`` which has
* non-final response code and finally client gets exactly one HEADERS
* frame with ``frame->headers.cat == NGHTTP2_HCAT_HEADERS``
* containing final response headers (non-1xx status code).  The
* trailer fields also has ``frame->headers.cat ==
* NGHTTP2_HCAT_HEADERS`` which does not contain any status code.
*
* Returning
* :enum:`nghttp2_error.NGHTTP2_ERR_TEMPORAL_CALLBACK_FAILURE` will
* close the stream (promised stream if frame is PUSH_PROMISE) by
* issuing RST_STREAM with
* :enum:`nghttp2_error_code.NGHTTP2_INTERNAL_ERROR`.  In this case,
* :type:`nghttp2_on_header_callback` and
* :type:`nghttp2_on_frame_recv_callback` will not be invoked.  If a
* different error code is desirable, use
* `nghttp2_submit_rst_stream()` with a desired error code and then
* return :enum:`nghttp2_error.NGHTTP2_ERR_TEMPORAL_CALLBACK_FAILURE`.
* Again, use ``frame->push_promise.promised_stream_id`` as stream_id
* parameter in `nghttp2_submit_rst_stream()` if frame is
* PUSH_PROMISE.
*
* The implementation of this function must return 0 if it succeeds.
* It can return
* :enum:`nghttp2_error.NGHTTP2_ERR_TEMPORAL_CALLBACK_FAILURE` to
* reset the stream (promised stream if frame is PUSH_PROMISE).  For
* critical errors, it must return
* :enum:`nghttp2_error.NGHTTP2_ERR_CALLBACK_FAILURE`.  If the other
* value is returned, it is treated as if
* :enum:`nghttp2_error.NGHTTP2_ERR_CALLBACK_FAILURE` is returned.  If
* :enum:`nghttp2_error.NGHTTP2_ERR_CALLBACK_FAILURE` is returned,
* `nghttp2_session_mem_recv()` function will immediately return
* :enum:`nghttp2_error.NGHTTP2_ERR_CALLBACK_FAILURE`.
*
* To set this callback to :type:`nghttp2_session_callbacks`, use
* `nghttp2_session_callbacks_set_on_begin_headers_callback()`.
*/
nghttp2_on_begin_headers_callback :: #type (session: *nghttp2_session, frame: *nghttp2_frame, user_data: *void) -> s32 #c_call;

/**
* @functypedef
*
* Callback function invoked when a header name/value pair is received
* for the |frame|.  The |name| of length |namelen| is header name.
* The |value| of length |valuelen| is header value.  The |flags| is
* bitwise OR of one or more of :type:`nghttp2_nv_flag`.
*
* If :enum:`nghttp2_nv_flag.NGHTTP2_NV_FLAG_NO_INDEX` is set in
* |flags|, the receiver must not index this name/value pair when
* forwarding it to the next hop.  More specifically, "Literal Header
* Field never Indexed" representation must be used in HPACK encoding.
*
* When this callback is invoked, ``frame->hd.type`` is either
* :enum:`nghttp2_frame_type.NGHTTP2_HEADERS` or
* :enum:`nghttp2_frame_type.NGHTTP2_PUSH_PROMISE`.  After all header
* name/value pairs are processed with this callback, and no error has
* been detected, :type:`nghttp2_on_frame_recv_callback` will be
* invoked.  If there is an error in decompression,
* :type:`nghttp2_on_frame_recv_callback` for the |frame| will not be
* invoked.
*
* Both |name| and |value| are guaranteed to be NULL-terminated.  The
* |namelen| and |valuelen| do not include terminal NULL.  If
* `nghttp2_option_set_no_http_messaging()` is used with nonzero
* value, NULL character may be included in |name| or |value| before
* terminating NULL.
*
* Please note that unless `nghttp2_option_set_no_http_messaging()` is
* used, nghttp2 library does perform validation against the |name|
* and the |value| using `nghttp2_check_header_name()` and
* `nghttp2_check_header_value()`.  In addition to this, nghttp2
* performs validation based on HTTP Messaging rule, which is briefly
* explained in :ref:`http-messaging` section.
*
* If the application uses `nghttp2_session_mem_recv()`, it can return
* :enum:`nghttp2_error.NGHTTP2_ERR_PAUSE` to make
* `nghttp2_session_mem_recv()` return without processing further
* input bytes.  The memory pointed by |frame|, |name| and |value|
* parameters are retained until `nghttp2_session_mem_recv()` or
* `nghttp2_session_recv()` is called.  The application must retain
* the input bytes which was used to produce these parameters, because
* it may refer to the memory region included in the input bytes.
*
* Returning
* :enum:`nghttp2_error.NGHTTP2_ERR_TEMPORAL_CALLBACK_FAILURE` will
* close the stream (promised stream if frame is PUSH_PROMISE) by
* issuing RST_STREAM with
* :enum:`nghttp2_error_code.NGHTTP2_INTERNAL_ERROR`.  In this case,
* :type:`nghttp2_on_header_callback` and
* :type:`nghttp2_on_frame_recv_callback` will not be invoked.  If a
* different error code is desirable, use
* `nghttp2_submit_rst_stream()` with a desired error code and then
* return :enum:`nghttp2_error.NGHTTP2_ERR_TEMPORAL_CALLBACK_FAILURE`.
* Again, use ``frame->push_promise.promised_stream_id`` as stream_id
* parameter in `nghttp2_submit_rst_stream()` if frame is
* PUSH_PROMISE.
*
* The implementation of this function must return 0 if it succeeds.
* It may return :enum:`nghttp2_error.NGHTTP2_ERR_PAUSE` or
* :enum:`nghttp2_error.NGHTTP2_ERR_TEMPORAL_CALLBACK_FAILURE`.  For
* other critical failures, it must return
* :enum:`nghttp2_error.NGHTTP2_ERR_CALLBACK_FAILURE`.  If the other
* nonzero value is returned, it is treated as
* :enum:`nghttp2_error.NGHTTP2_ERR_CALLBACK_FAILURE`.  If
* :enum:`nghttp2_error.NGHTTP2_ERR_CALLBACK_FAILURE` is returned,
* `nghttp2_session_recv()` and `nghttp2_session_mem_recv()` functions
* immediately return
* :enum:`nghttp2_error.NGHTTP2_ERR_CALLBACK_FAILURE`.
*
* To set this callback to :type:`nghttp2_session_callbacks`, use
* `nghttp2_session_callbacks_set_on_header_callback()`.
*
* .. warning::
*
*   Application should properly limit the total buffer size to store
*   incoming header fields.  Without it, peer may send large number
*   of header fields or large header fields to cause out of memory in
*   local endpoint.  Due to how HPACK works, peer can do this
*   effectively without using much memory on their own.
*/
nghttp2_on_header_callback :: #type (session: *nghttp2_session, frame: *nghttp2_frame, name: *u8, namelen: size_t, value: *u8, valuelen: size_t, flags: u8, user_data: *void) -> s32 #c_call;

/**
* @functypedef
*
* Callback function invoked when a header name/value pair is received
* for the |frame|.  The |name| is header name.  The |value| is header
* value.  The |flags| is bitwise OR of one or more of
* :type:`nghttp2_nv_flag`.
*
* This callback behaves like :type:`nghttp2_on_header_callback`,
* except that |name| and |value| are stored in reference counted
* buffer.  If application wishes to keep these references without
* copying them, use `nghttp2_rcbuf_incref()` to increment their
* reference count.  It is the application's responsibility to call
* `nghttp2_rcbuf_decref()` if they called `nghttp2_rcbuf_incref()` so
* as not to leak memory.  If the |session| is created by
* `nghttp2_session_server_new3()` or `nghttp2_session_client_new3()`,
* the function to free memory is the one belongs to the mem
* parameter.  As long as this free function alives, |name| and
* |value| can live after |session| was destroyed.
*/
nghttp2_on_header_callback2 :: #type (session: *nghttp2_session, frame: *nghttp2_frame, name: *nghttp2_rcbuf, value: *nghttp2_rcbuf, flags: u8, user_data: *void) -> s32 #c_call;

/**
* @functypedef
*
* Callback function invoked when a invalid header name/value pair is
* received for the |frame|.
*
* The parameter and behaviour are similar to
* :type:`nghttp2_on_header_callback`.  The difference is that this
* callback is only invoked when a invalid header name/value pair is
* received which is treated as stream error if this callback is not
* set.  Only invalid regular header field are passed to this
* callback.  In other words, invalid pseudo header field is not
* passed to this callback.  Also header fields which includes upper
* cased latter are also treated as error without passing them to this
* callback.
*
* This callback is only considered if HTTP messaging validation is
* turned on (which is on by default, see
* `nghttp2_option_set_no_http_messaging()`).
*
* With this callback, application inspects the incoming invalid
* field, and it also can reset stream from this callback by returning
* :enum:`nghttp2_error.NGHTTP2_ERR_TEMPORAL_CALLBACK_FAILURE`.  By
* default, the error code is
* :enum:`nghttp2_error_code.NGHTTP2_PROTOCOL_ERROR`.  To change the
* error code, call `nghttp2_submit_rst_stream()` with the error code
* of choice in addition to returning
* :enum:`nghttp2_error.NGHTTP2_ERR_TEMPORAL_CALLBACK_FAILURE`.
*
* If 0 is returned, the header field is ignored, and the stream is
* not reset.
*/
nghttp2_on_invalid_header_callback :: #type (session: *nghttp2_session, frame: *nghttp2_frame, name: *u8, namelen: size_t, value: *u8, valuelen: size_t, flags: u8, user_data: *void) -> s32 #c_call;

/**
* @functypedef
*
* Callback function invoked when a invalid header name/value pair is
* received for the |frame|.
*
* The parameter and behaviour are similar to
* :type:`nghttp2_on_header_callback2`.  The difference is that this
* callback is only invoked when a invalid header name/value pair is
* received which is silently ignored if this callback is not set.
* Only invalid regular header field are passed to this callback.  In
* other words, invalid pseudo header field is not passed to this
* callback.  Also header fields which includes upper cased latter are
* also treated as error without passing them to this callback.
*
* This callback is only considered if HTTP messaging validation is
* turned on (which is on by default, see
* `nghttp2_option_set_no_http_messaging()`).
*
* With this callback, application inspects the incoming invalid
* field, and it also can reset stream from this callback by returning
* :enum:`nghttp2_error.NGHTTP2_ERR_TEMPORAL_CALLBACK_FAILURE`.  By
* default, the error code is
* :enum:`nghttp2_error_code.NGHTTP2_INTERNAL_ERROR`.  To change the
* error code, call `nghttp2_submit_rst_stream()` with the error code
* of choice in addition to returning
* :enum:`nghttp2_error.NGHTTP2_ERR_TEMPORAL_CALLBACK_FAILURE`.
*/
nghttp2_on_invalid_header_callback2 :: #type (session: *nghttp2_session, frame: *nghttp2_frame, name: *nghttp2_rcbuf, value: *nghttp2_rcbuf, flags: u8, user_data: *void) -> s32 #c_call;

/**
* @functypedef
*
* Callback function invoked when the library asks application how
* many padding bytes are required for the transmission of the
* |frame|.  The application must choose the total length of payload
* including padded bytes in range [frame->hd.length, max_payloadlen],
* inclusive.  Choosing number not in this range will be treated as
* :enum:`nghttp2_error.NGHTTP2_ERR_CALLBACK_FAILURE`.  Returning
* ``frame->hd.length`` means no padding is added.  Returning
* :enum:`nghttp2_error.NGHTTP2_ERR_CALLBACK_FAILURE` will make
* `nghttp2_session_send()` and `nghttp2_session_mem_send()` functions
* immediately return
* :enum:`nghttp2_error.NGHTTP2_ERR_CALLBACK_FAILURE`.
*
* To set this callback to :type:`nghttp2_session_callbacks`, use
* `nghttp2_session_callbacks_set_select_padding_callback()`.
*/
nghttp2_select_padding_callback :: #type (session: *nghttp2_session, frame: *nghttp2_frame, max_payloadlen: size_t, user_data: *void) -> s32 #c_call;

/**
* @functypedef
*
* Callback function invoked when library wants to get max length of
* data to send data to the remote peer.  The implementation of this
* function should return a value in the following range.  [1,
* min(|session_remote_window_size|, |stream_remote_window_size|,
* |remote_max_frame_size|)].  If a value greater than this range is
* returned than the max allow value will be used.  Returning a value
* smaller than this range is treated as
* :enum:`nghttp2_error.NGHTTP2_ERR_CALLBACK_FAILURE`.  The
* |frame_type| is provided for future extensibility and identifies
* the type of frame (see :type:`nghttp2_frame_type`) for which to get
* the length for.  Currently supported frame types are:
* :enum:`nghttp2_frame_type.NGHTTP2_DATA`.
*
* This callback can be used to control the length in bytes for which
* :type:`nghttp2_data_source_read_callback` is allowed to send to the
* remote endpoint.  This callback is optional.  Returning
* :enum:`nghttp2_error.NGHTTP2_ERR_CALLBACK_FAILURE` will signal the
* entire session failure.
*
* To set this callback to :type:`nghttp2_session_callbacks`, use
* `nghttp2_session_callbacks_set_data_source_read_length_callback()`.
*/
nghttp2_data_source_read_length_callback :: #type (session: *nghttp2_session, frame_type: u8, stream_id: s32, session_remote_window_size: s32, stream_remote_window_size: s32, remote_max_frame_size: u32, user_data: *void) -> s32 #c_call;

/**
* @functypedef
*
* Callback function invoked when a frame header is received.  The
* |hd| points to received frame header.
*
* Unlike :type:`nghttp2_on_frame_recv_callback`, this callback will
* also be called when frame header of CONTINUATION frame is received.
*
* If both :type:`nghttp2_on_begin_frame_callback` and
* :type:`nghttp2_on_begin_headers_callback` are set and HEADERS or
* PUSH_PROMISE is received, :type:`nghttp2_on_begin_frame_callback`
* will be called first.
*
* The implementation of this function must return 0 if it succeeds.
* If nonzero value is returned, it is treated as fatal error and
* `nghttp2_session_recv()` and `nghttp2_session_mem_recv()` functions
* immediately return
* :enum:`nghttp2_error.NGHTTP2_ERR_CALLBACK_FAILURE`.
*
* To set this callback to :type:`nghttp2_session_callbacks`, use
* `nghttp2_session_callbacks_set_on_begin_frame_callback()`.
*/
nghttp2_on_begin_frame_callback :: #type (session: *nghttp2_session, hd: *nghttp2_frame_hd, user_data: *void) -> s32 #c_call;

/**
* @functypedef
*
* Callback function invoked when chunk of extension frame payload is
* received.  The |hd| points to frame header.  The received
* chunk is |data| of length |len|.
*
* The implementation of this function must return 0 if it succeeds.
*
* To abort processing this extension frame, return
* :enum:`nghttp2_error.NGHTTP2_ERR_CANCEL`.
*
* If fatal error occurred, application should return
* :enum:`nghttp2_error.NGHTTP2_ERR_CALLBACK_FAILURE`.  In this case,
* `nghttp2_session_recv()` and `nghttp2_session_mem_recv()` functions
* immediately return
* :enum:`nghttp2_error.NGHTTP2_ERR_CALLBACK_FAILURE`.  If the other
* values are returned, currently they are treated as
* :enum:`nghttp2_error.NGHTTP2_ERR_CALLBACK_FAILURE`.
*/
nghttp2_on_extension_chunk_recv_callback :: #type (session: *nghttp2_session, hd: *nghttp2_frame_hd, data: *u8, len: size_t, user_data: *void) -> s32 #c_call;

/**
* @functypedef
*
* Callback function invoked when library asks the application to
* unpack extension payload from its wire format.  The extension
* payload has been passed to the application using
* :type:`nghttp2_on_extension_chunk_recv_callback`.  The frame header
* is already unpacked by the library and provided as |hd|.
*
* To receive extension frames, the application must tell desired
* extension frame type to the library using
* `nghttp2_option_set_user_recv_extension_type()`.
*
* The implementation of this function may store the pointer to the
* created object as a result of unpacking in |*payload|, and returns
* 0.  The pointer stored in |*payload| is opaque to the library, and
* the library does not own its pointer.  |*payload| is initialized as
* ``NULL``.  The |*payload| is available as ``frame->ext.payload`` in
* :type:`nghttp2_on_frame_recv_callback`.  Therefore if application
* can free that memory inside :type:`nghttp2_on_frame_recv_callback`
* callback.  Of course, application has a liberty not ot use
* |*payload|, and do its own mechanism to process extension frames.
*
* To abort processing this extension frame, return
* :enum:`nghttp2_error.NGHTTP2_ERR_CANCEL`.
*
* If fatal error occurred, application should return
* :enum:`nghttp2_error.NGHTTP2_ERR_CALLBACK_FAILURE`.  In this case,
* `nghttp2_session_recv()` and `nghttp2_session_mem_recv()` functions
* immediately return
* :enum:`nghttp2_error.NGHTTP2_ERR_CALLBACK_FAILURE`.  If the other
* values are returned, currently they are treated as
* :enum:`nghttp2_error.NGHTTP2_ERR_CALLBACK_FAILURE`.
*/
nghttp2_unpack_extension_callback :: #type (session: *nghttp2_session, payload: **void, hd: *nghttp2_frame_hd, user_data: *void) -> s32 #c_call;

/**
* @functypedef
*
* Callback function invoked when library asks the application to pack
* extension payload in its wire format.  The frame header will be
* packed by library.  Application must pack payload only.
* ``frame->ext.payload`` is the object passed to
* `nghttp2_submit_extension()` as payload parameter.  Application
* must pack extension payload to the |buf| of its capacity |len|
* bytes.  The |len| is at least 16KiB.
*
* The implementation of this function should return the number of
* bytes written into |buf| when it succeeds.
*
* To abort processing this extension frame, return
* :enum:`nghttp2_error.NGHTTP2_ERR_CANCEL`, and
* :type:`nghttp2_on_frame_not_send_callback` will be invoked.
*
* If fatal error occurred, application should return
* :enum:`nghttp2_error.NGHTTP2_ERR_CALLBACK_FAILURE`.  In this case,
* `nghttp2_session_send()` and `nghttp2_session_mem_send()` functions
* immediately return
* :enum:`nghttp2_error.NGHTTP2_ERR_CALLBACK_FAILURE`.  If the other
* values are returned, currently they are treated as
* :enum:`nghttp2_error.NGHTTP2_ERR_CALLBACK_FAILURE`.  If the return
* value is strictly larger than |len|, it is treated as
* :enum:`nghttp2_error.NGHTTP2_ERR_CALLBACK_FAILURE`.
*/
nghttp2_pack_extension_callback :: #type (session: *nghttp2_session, buf: *u8, len: size_t, frame: *nghttp2_frame, user_data: *void) -> s32 #c_call;

/**
* @functypedef
*
* Callback function invoked when library provides the error message
* intended for human consumption.  This callback is solely for
* debugging purpose.  The |msg| is typically NULL-terminated string
* of length |len|.  |len| does not include the sentinel NULL
* character.
*
* This function is deprecated.  The new application should use
* :type:`nghttp2_error_callback2`.
*
* The format of error message may change between nghttp2 library
* versions.  The application should not depend on the particular
* format.
*
* Normally, application should return 0 from this callback.  If fatal
* error occurred while doing something in this callback, application
* should return :enum:`nghttp2_error.NGHTTP2_ERR_CALLBACK_FAILURE`.
* In this case, library will return immediately with return value
* :enum:`nghttp2_error.NGHTTP2_ERR_CALLBACK_FAILURE`.  Currently, if
* nonzero value is returned from this callback, they are treated as
* :enum:`nghttp2_error.NGHTTP2_ERR_CALLBACK_FAILURE`, but application
* should not rely on this details.
*/
nghttp2_error_callback :: #type (session: *nghttp2_session, msg: *u8, len: size_t, user_data: *void) -> s32 #c_call;

/**
* @functypedef
*
* Callback function invoked when library provides the error code, and
* message.  This callback is solely for debugging purpose.
* |lib_error_code| is one of error code defined in
* :enum:`nghttp2_error`.  The |msg| is typically NULL-terminated
* string of length |len|, and intended for human consumption.  |len|
* does not include the sentinel NULL character.
*
* The format of error message may change between nghttp2 library
* versions.  The application should not depend on the particular
* format.
*
* Normally, application should return 0 from this callback.  If fatal
* error occurred while doing something in this callback, application
* should return :enum:`nghttp2_error.NGHTTP2_ERR_CALLBACK_FAILURE`.
* In this case, library will return immediately with return value
* :enum:`nghttp2_error.NGHTTP2_ERR_CALLBACK_FAILURE`.  Currently, if
* nonzero value is returned from this callback, they are treated as
* :enum:`nghttp2_error.NGHTTP2_ERR_CALLBACK_FAILURE`, but application
* should not rely on this details.
*/
nghttp2_error_callback2 :: #type (session: *nghttp2_session, lib_error_code: s32, msg: *u8, len: size_t, user_data: *void) -> s32 #c_call;

nghttp2_session_callbacks :: struct {}

/**
* @function
*
* Initializes |*callbacks_ptr| with NULL values.
*
* The initialized object can be used when initializing multiple
* :type:`nghttp2_session` objects.
*
* When the application finished using this object, it can use
* `nghttp2_session_callbacks_del()` to free its memory.
*
* This function returns 0 if it succeeds, or one of the following
* negative error codes:
*
* :enum:`nghttp2_error.NGHTTP2_ERR_NOMEM`
*     Out of memory.
*/
nghttp2_session_callbacks_new :: (callbacks_ptr: **nghttp2_session_callbacks) -> s32 #foreign nghttp2;

/**
* @function
*
* Frees any resources allocated for |callbacks|.  If |callbacks| is
* ``NULL``, this function does nothing.
*/
nghttp2_session_callbacks_del :: (callbacks: *nghttp2_session_callbacks) -> void #foreign nghttp2;

/**
* @function
*
* Sets callback function invoked when a session wants to send data to
* the remote peer.  This callback is not necessary if the application
* uses solely `nghttp2_session_mem_send()` to serialize data to
* transmit.
*/
nghttp2_session_callbacks_set_send_callback :: (cbs: *nghttp2_session_callbacks, send_callback: nghttp2_send_callback) -> void #foreign nghttp2;

/**
* @function
*
* Sets callback function invoked when the a session wants to receive
* data from the remote peer.  This callback is not necessary if the
* application uses solely `nghttp2_session_mem_recv()` to process
* received data.
*/
nghttp2_session_callbacks_set_recv_callback :: (cbs: *nghttp2_session_callbacks, recv_callback: nghttp2_recv_callback) -> void #foreign nghttp2;

/**
* @function
*
* Sets callback function invoked by `nghttp2_session_recv()` and
* `nghttp2_session_mem_recv()` when a frame is received.
*/
nghttp2_session_callbacks_set_on_frame_recv_callback :: (cbs: *nghttp2_session_callbacks, on_frame_recv_callback: nghttp2_on_frame_recv_callback) -> void #foreign nghttp2;

/**
* @function
*
* Sets callback function invoked by `nghttp2_session_recv()` and
* `nghttp2_session_mem_recv()` when an invalid non-DATA frame is
* received.
*/
nghttp2_session_callbacks_set_on_invalid_frame_recv_callback :: (cbs: *nghttp2_session_callbacks, on_invalid_frame_recv_callback: nghttp2_on_invalid_frame_recv_callback) -> void #foreign nghttp2;

/**
* @function
*
* Sets callback function invoked when a chunk of data in DATA frame
* is received.
*/
nghttp2_session_callbacks_set_on_data_chunk_recv_callback :: (cbs: *nghttp2_session_callbacks, on_data_chunk_recv_callback: nghttp2_on_data_chunk_recv_callback) -> void #foreign nghttp2;

/**
* @function
*
* Sets callback function invoked before a non-DATA frame is sent.
*/
nghttp2_session_callbacks_set_before_frame_send_callback :: (cbs: *nghttp2_session_callbacks, before_frame_send_callback: nghttp2_before_frame_send_callback) -> void #foreign nghttp2;

/**
* @function
*
* Sets callback function invoked after a frame is sent.
*/
nghttp2_session_callbacks_set_on_frame_send_callback :: (cbs: *nghttp2_session_callbacks, on_frame_send_callback: nghttp2_on_frame_send_callback) -> void #foreign nghttp2;

/**
* @function
*
* Sets callback function invoked when a non-DATA frame is not sent
* because of an error.
*/
nghttp2_session_callbacks_set_on_frame_not_send_callback :: (cbs: *nghttp2_session_callbacks, on_frame_not_send_callback: nghttp2_on_frame_not_send_callback) -> void #foreign nghttp2;

/**
* @function
*
* Sets callback function invoked when the stream is closed.
*/
nghttp2_session_callbacks_set_on_stream_close_callback :: (cbs: *nghttp2_session_callbacks, on_stream_close_callback: nghttp2_on_stream_close_callback) -> void #foreign nghttp2;

/**
* @function
*
* Sets callback function invoked when the reception of header block
* in HEADERS or PUSH_PROMISE is started.
*/
nghttp2_session_callbacks_set_on_begin_headers_callback :: (cbs: *nghttp2_session_callbacks, on_begin_headers_callback: nghttp2_on_begin_headers_callback) -> void #foreign nghttp2;

/**
* @function
*
* Sets callback function invoked when a header name/value pair is
* received.  If both
* `nghttp2_session_callbacks_set_on_header_callback()` and
* `nghttp2_session_callbacks_set_on_header_callback2()` are used to
* set callbacks, the latter has the precedence.
*/
nghttp2_session_callbacks_set_on_header_callback :: (cbs: *nghttp2_session_callbacks, on_header_callback: nghttp2_on_header_callback) -> void #foreign nghttp2;

/**
* @function
*
* Sets callback function invoked when a header name/value pair is
* received.
*/
nghttp2_session_callbacks_set_on_header_callback2 :: (cbs: *nghttp2_session_callbacks, on_header_callback2: nghttp2_on_header_callback2) -> void #foreign nghttp2;

/**
* @function
*
* Sets callback function invoked when a invalid header name/value
* pair is received.  If both
* `nghttp2_session_callbacks_set_on_invalid_header_callback()` and
* `nghttp2_session_callbacks_set_on_invalid_header_callback2()` are
* used to set callbacks, the latter takes the precedence.
*/
nghttp2_session_callbacks_set_on_invalid_header_callback :: (cbs: *nghttp2_session_callbacks, on_invalid_header_callback: nghttp2_on_invalid_header_callback) -> void #foreign nghttp2;

/**
* @function
*
* Sets callback function invoked when a invalid header name/value
* pair is received.
*/
nghttp2_session_callbacks_set_on_invalid_header_callback2 :: (cbs: *nghttp2_session_callbacks, on_invalid_header_callback2: nghttp2_on_invalid_header_callback2) -> void #foreign nghttp2;

/**
* @function
*
* Sets callback function invoked when the library asks application
* how many padding bytes are required for the transmission of the
* given frame.
*/
nghttp2_session_callbacks_set_select_padding_callback :: (cbs: *nghttp2_session_callbacks, select_padding_callback: nghttp2_select_padding_callback) -> void #foreign nghttp2;

/**
* @function
*
* Sets callback function determine the length allowed in
* :type:`nghttp2_data_source_read_callback`.
*/
nghttp2_session_callbacks_set_data_source_read_length_callback :: (cbs: *nghttp2_session_callbacks, data_source_read_length_callback: nghttp2_data_source_read_length_callback) -> void #foreign nghttp2;

/**
* @function
*
* Sets callback function invoked when a frame header is received.
*/
nghttp2_session_callbacks_set_on_begin_frame_callback :: (cbs: *nghttp2_session_callbacks, on_begin_frame_callback: nghttp2_on_begin_frame_callback) -> void #foreign nghttp2;

/**
* @function
*
* Sets callback function invoked when
* :enum:`nghttp2_data_flag.NGHTTP2_DATA_FLAG_NO_COPY` is used in
* :type:`nghttp2_data_source_read_callback` to avoid data copy.
*/
nghttp2_session_callbacks_set_send_data_callback :: (cbs: *nghttp2_session_callbacks, send_data_callback: nghttp2_send_data_callback) -> void #foreign nghttp2;

/**
* @function
*
* Sets callback function invoked when the library asks the
* application to pack extension frame payload in wire format.
*/
nghttp2_session_callbacks_set_pack_extension_callback :: (cbs: *nghttp2_session_callbacks, pack_extension_callback: nghttp2_pack_extension_callback) -> void #foreign nghttp2;

/**
* @function
*
* Sets callback function invoked when the library asks the
* application to unpack extension frame payload from wire format.
*/
nghttp2_session_callbacks_set_unpack_extension_callback :: (cbs: *nghttp2_session_callbacks, unpack_extension_callback: nghttp2_unpack_extension_callback) -> void #foreign nghttp2;

/**
* @function
*
* Sets callback function invoked when chunk of extension frame
* payload is received.
*/
nghttp2_session_callbacks_set_on_extension_chunk_recv_callback :: (cbs: *nghttp2_session_callbacks, on_extension_chunk_recv_callback: nghttp2_on_extension_chunk_recv_callback) -> void #foreign nghttp2;

/**
* @function
*
* Sets callback function invoked when library tells error message to
* the application.
*
* This function is deprecated.  The new application should use
* `nghttp2_session_callbacks_set_error_callback2()`.
*
* If both :type:`nghttp2_error_callback` and
* :type:`nghttp2_error_callback2` are set, the latter takes
* precedence.
*/
nghttp2_session_callbacks_set_error_callback :: (cbs: *nghttp2_session_callbacks, error_callback: nghttp2_error_callback) -> void #foreign nghttp2;

/**
* @function
*
* Sets callback function invoked when library tells error code, and
* message to the application.
*
* If both :type:`nghttp2_error_callback` and
* :type:`nghttp2_error_callback2` are set, the latter takes
* precedence.
*/
nghttp2_session_callbacks_set_error_callback2 :: (cbs: *nghttp2_session_callbacks, error_callback2: nghttp2_error_callback2) -> void #foreign nghttp2;

/**
* @functypedef
*
* Custom memory allocator to replace malloc().  The |mem_user_data|
* is the mem_user_data member of :type:`nghttp2_mem` structure.
*/
nghttp2_malloc :: #type (size: size_t, mem_user_data: *void) -> *void #c_call;

/**
* @functypedef
*
* Custom memory allocator to replace free().  The |mem_user_data| is
* the mem_user_data member of :type:`nghttp2_mem` structure.
*/
nghttp2_free :: #type (ptr: *void, mem_user_data: *void) -> void #c_call;

/**
* @functypedef
*
* Custom memory allocator to replace calloc().  The |mem_user_data|
* is the mem_user_data member of :type:`nghttp2_mem` structure.
*/
nghttp2_calloc :: #type (nmemb: size_t, size: size_t, mem_user_data: *void) -> *void #c_call;

/**
* @functypedef
*
* Custom memory allocator to replace realloc().  The |mem_user_data|
* is the mem_user_data member of :type:`nghttp2_mem` structure.
*/
nghttp2_realloc :: #type (ptr: *void, size: size_t, mem_user_data: *void) -> *void #c_call;

/**
* @struct
*
* Custom memory allocator functions and user defined pointer.  The
* |mem_user_data| member is passed to each allocator function.  This
* can be used, for example, to achieve per-session memory pool.
*
* In the following example code, ``my_malloc``, ``my_free``,
* ``my_calloc`` and ``my_realloc`` are the replacement of the
* standard allocators ``malloc``, ``free``, ``calloc`` and
* ``realloc`` respectively::
*
*     void *my_malloc_cb(size_t size, void *mem_user_data) {
*       return my_malloc(size);
*     }
*
*     void my_free_cb(void *ptr, void *mem_user_data) { my_free(ptr); }
*
*     void *my_calloc_cb(size_t nmemb, size_t size, void *mem_user_data) {
*       return my_calloc(nmemb, size);
*     }
*
*     void *my_realloc_cb(void *ptr, size_t size, void *mem_user_data) {
*       return my_realloc(ptr, size);
*     }
*
*     void session_new() {
*       nghttp2_session *session;
*       nghttp2_session_callbacks *callbacks;
*       nghttp2_mem mem = {NULL, my_malloc_cb, my_free_cb, my_calloc_cb,
*                          my_realloc_cb};
*
*       ...
*
*       nghttp2_session_client_new3(&session, callbacks, NULL, NULL, &mem);
*
*       ...
*     }
*/
nghttp2_mem :: struct {
    /**
    * An arbitrary user supplied data.  This is passed to each
    * allocator function.
    */
    mem_user_data: *void;

    /**
    * Custom allocator function to replace malloc().
    */
    malloc:        nghttp2_malloc;

    /**
    * Custom allocator function to replace free().
    */
    free:          nghttp2_free;

    /**
    * Custom allocator function to replace calloc().
    */
    calloc:        nghttp2_calloc;

    /**
    * Custom allocator function to replace realloc().
    */
    realloc:       nghttp2_realloc;
}

nghttp2_option :: struct {}

/**
* @function
*
* Initializes |*option_ptr| with default values.
*
* When the application finished using this object, it can use
* `nghttp2_option_del()` to free its memory.
*
* This function returns 0 if it succeeds, or one of the following
* negative error codes:
*
* :enum:`nghttp2_error.NGHTTP2_ERR_NOMEM`
*     Out of memory.
*/
nghttp2_option_new :: (option_ptr: **nghttp2_option) -> s32 #foreign nghttp2;

/**
* @function
*
* Frees any resources allocated for |option|.  If |option| is
* ``NULL``, this function does nothing.
*/
nghttp2_option_del :: (option: *nghttp2_option) -> void #foreign nghttp2;

/**
* @function
*
* This option prevents the library from sending WINDOW_UPDATE for a
* connection automatically.  If this option is set to nonzero, the
* library won't send WINDOW_UPDATE for DATA until application calls
* `nghttp2_session_consume()` to indicate the consumed amount of
* data.  Don't use `nghttp2_submit_window_update()` for this purpose.
* By default, this option is set to zero.
*/
nghttp2_option_set_no_auto_window_update :: (option: *nghttp2_option, val: s32) -> void #foreign nghttp2;

/**
* @function
*
* This option sets the SETTINGS_MAX_CONCURRENT_STREAMS value of
* remote endpoint as if it is received in SETTINGS frame.  Without
* specifying this option, the maximum number of outgoing concurrent
* streams is initially limited to 100 to avoid issues when the local
* endpoint submits lots of requests before receiving initial SETTINGS
* frame from the remote endpoint, since sending them at once to the
* remote endpoint could lead to rejection of some of the requests.
* This value will be overwritten when the local endpoint receives
* initial SETTINGS frame from the remote endpoint, either to the
* value advertised in SETTINGS_MAX_CONCURRENT_STREAMS or to the
* default value (unlimited) if none was advertised.
*/
nghttp2_option_set_peer_max_concurrent_streams :: (option: *nghttp2_option, val: u32) -> void #foreign nghttp2;

/**
* @function
*
* By default, nghttp2 library, if configured as server, requires
* first 24 bytes of client magic byte string (MAGIC).  In most cases,
* this will simplify the implementation of server.  But sometimes
* server may want to detect the application protocol based on first
* few bytes on clear text communication.
*
* If this option is used with nonzero |val|, nghttp2 library does not
* handle MAGIC.  It still checks following SETTINGS frame.  This
* means that applications should deal with MAGIC by themselves.
*
* If this option is not used or used with zero value, if MAGIC does
* not match :macro:`NGHTTP2_CLIENT_MAGIC`, `nghttp2_session_recv()`
* and `nghttp2_session_mem_recv()` will return error
* :enum:`nghttp2_error.NGHTTP2_ERR_BAD_CLIENT_MAGIC`, which is fatal
* error.
*/
nghttp2_option_set_no_recv_client_magic :: (option: *nghttp2_option, val: s32) -> void #foreign nghttp2;

/**
* @function
*
* By default, nghttp2 library enforces subset of HTTP Messaging rules
* described in `HTTP/2 specification, section 8
* <https://tools.ietf.org/html/rfc7540#section-8>`_.  See
* :ref:`http-messaging` section for details.  For those applications
* who use nghttp2 library as non-HTTP use, give nonzero to |val| to
* disable this enforcement.  Please note that disabling this feature
* does not change the fundamental client and server model of HTTP.
* That is, even if the validation is disabled, only client can send
* requests.
*/
nghttp2_option_set_no_http_messaging :: (option: *nghttp2_option, val: s32) -> void #foreign nghttp2;

/**
* @function
*
* RFC 7540 does not enforce any limit on the number of incoming
* reserved streams (in RFC 7540 terms, streams in reserved (remote)
* state).  This only affects client side, since only server can push
* streams.  Malicious server can push arbitrary number of streams,
* and make client's memory exhausted.  This option can set the
* maximum number of such incoming streams to avoid possible memory
* exhaustion.  If this option is set, and pushed streams are
* automatically closed on reception, without calling user provided
* callback, if they exceed the given limit.  The default value is
* 200.  If session is configured as server side, this option has no
* effect.  Server can control the number of streams to push.
*/
nghttp2_option_set_max_reserved_remote_streams :: (option: *nghttp2_option, val: u32) -> void #foreign nghttp2;

/**
* @function
*
* Sets extension frame type the application is willing to handle with
* user defined callbacks (see
* :type:`nghttp2_on_extension_chunk_recv_callback` and
* :type:`nghttp2_unpack_extension_callback`).  The |type| is
* extension frame type, and must be strictly greater than 0x9.
* Otherwise, this function does nothing.  The application can call
* this function multiple times to set more than one frame type to
* receive.  The application does not have to call this function if it
* just sends extension frames.
*/
nghttp2_option_set_user_recv_extension_type :: (option: *nghttp2_option, type: u8) -> void #foreign nghttp2;

/**
* @function
*
* Sets extension frame type the application is willing to receive
* using builtin handler.  The |type| is the extension frame type to
* receive, and must be strictly greater than 0x9.  Otherwise, this
* function does nothing.  The application can call this function
* multiple times to set more than one frame type to receive.  The
* application does not have to call this function if it just sends
* extension frames.
*
* If same frame type is passed to both
* `nghttp2_option_set_builtin_recv_extension_type()` and
* `nghttp2_option_set_user_recv_extension_type()`, the latter takes
* precedence.
*/
nghttp2_option_set_builtin_recv_extension_type :: (option: *nghttp2_option, type: u8) -> void #foreign nghttp2;

/**
* @function
*
* This option prevents the library from sending PING frame with ACK
* flag set automatically when PING frame without ACK flag set is
* received.  If this option is set to nonzero, the library won't send
* PING frame with ACK flag set in the response for incoming PING
* frame.  The application can send PING frame with ACK flag set using
* `nghttp2_submit_ping()` with :enum:`nghttp2_flag.NGHTTP2_FLAG_ACK`
* as flags parameter.
*/
nghttp2_option_set_no_auto_ping_ack :: (option: *nghttp2_option, val: s32) -> void #foreign nghttp2;

/**
* @function
*
* This option sets the maximum length of header block (a set of
* header fields per one HEADERS frame) to send.  The length of a
* given set of header fields is calculated using
* `nghttp2_hd_deflate_bound()`.  The default value is 64KiB.  If
* application attempts to send header fields larger than this limit,
* the transmission of the frame fails with error code
* :enum:`nghttp2_error.NGHTTP2_ERR_FRAME_SIZE_ERROR`.
*/
nghttp2_option_set_max_send_header_block_length :: (option: *nghttp2_option, val: size_t) -> void #foreign nghttp2;

/**
* @function
*
* This option sets the maximum dynamic table size for deflating
* header fields.  The default value is 4KiB.  In HTTP/2, receiver of
* deflated header block can specify maximum dynamic table size.  The
* actual maximum size is the minimum of the size receiver specified
* and this option value.
*/
nghttp2_option_set_max_deflate_dynamic_table_size :: (option: *nghttp2_option, val: size_t) -> void #foreign nghttp2;

/**
* @function
*
* This option prevents the library from retaining closed streams to
* maintain the priority tree.  If this option is set to nonzero,
* applications can discard closed stream completely to save memory.
*
* If
* :enum:`nghttp2_settings_id.NGHTTP2_SETTINGS_NO_RFC7540_PRIORITIES`
* of value of 1 is submitted via `nghttp2_submit_settings()`, any
* closed streams are not retained regardless of this option.
*/
nghttp2_option_set_no_closed_streams :: (option: *nghttp2_option, val: s32) -> void #foreign nghttp2;

/**
* @function
*
* This function sets the maximum number of outgoing SETTINGS ACK and
* PING ACK frames retained in :type:`nghttp2_session` object.  If
* more than those frames are retained, the peer is considered to be
* misbehaving and session will be closed.  The default value is 1000.
*/
nghttp2_option_set_max_outbound_ack :: (option: *nghttp2_option, val: size_t) -> void #foreign nghttp2;

/**
* @function
*
* This function sets the maximum number of SETTINGS entries per
* SETTINGS frame that will be accepted. If more than those entries
* are received, the peer is considered to be misbehaving and session
* will be closed. The default value is 32.
*/
nghttp2_option_set_max_settings :: (option: *nghttp2_option, val: size_t) -> void #foreign nghttp2;

/**
* @function
*
* This option, if set to nonzero, allows server to fallback to
* :rfc:`7540` priorities if SETTINGS_NO_RFC7540_PRIORITIES was not
* received from client, and server submitted
* :enum:`nghttp2_settings_id.NGHTTP2_SETTINGS_NO_RFC7540_PRIORITIES`
* = 1 via `nghttp2_submit_settings()`.  Most of the advanced
* functionality for RFC 7540 priorities are still disabled.  This
* fallback only enables the minimal feature set of RFC 7540
* priorities to deal with priority signaling from client.
*
* Client session ignores this option.
*/
nghttp2_option_set_server_fallback_rfc7540_priorities :: (option: *nghttp2_option, val: s32) -> void #foreign nghttp2;

/**
* @function
*
* This option, if set to nonzero, turns off RFC 9113 leading and
* trailing white spaces validation against HTTP field value.  Some
* important fields, such as HTTP/2 pseudo header fields, are
* validated more strictly and this option does not apply to them.
*/
nghttp2_option_set_no_rfc9113_leading_and_trailing_ws_validation :: (option: *nghttp2_option, val: s32) -> void #foreign nghttp2;

/**
* @function
*
* Initializes |*session_ptr| for client use.  The all members of
* |callbacks| are copied to |*session_ptr|.  Therefore |*session_ptr|
* does not store |callbacks|.  The |user_data| is an arbitrary user
* supplied data, which will be passed to the callback functions.
*
* The :type:`nghttp2_send_callback` must be specified.  If the
* application code uses `nghttp2_session_recv()`, the
* :type:`nghttp2_recv_callback` must be specified.  The other members
* of |callbacks| can be ``NULL``.
*
* If this function fails, |*session_ptr| is left untouched.
*
* This function returns 0 if it succeeds, or one of the following
* negative error codes:
*
* :enum:`nghttp2_error.NGHTTP2_ERR_NOMEM`
*     Out of memory.
*/
nghttp2_session_client_new :: (session_ptr: **nghttp2_session, callbacks: *nghttp2_session_callbacks, user_data: *void) -> s32 #foreign nghttp2;

/**
* @function
*
* Initializes |*session_ptr| for server use.  The all members of
* |callbacks| are copied to |*session_ptr|. Therefore |*session_ptr|
* does not store |callbacks|.  The |user_data| is an arbitrary user
* supplied data, which will be passed to the callback functions.
*
* The :type:`nghttp2_send_callback` must be specified.  If the
* application code uses `nghttp2_session_recv()`, the
* :type:`nghttp2_recv_callback` must be specified.  The other members
* of |callbacks| can be ``NULL``.
*
* If this function fails, |*session_ptr| is left untouched.
*
* This function returns 0 if it succeeds, or one of the following
* negative error codes:
*
* :enum:`nghttp2_error.NGHTTP2_ERR_NOMEM`
*     Out of memory.
*/
nghttp2_session_server_new :: (session_ptr: **nghttp2_session, callbacks: *nghttp2_session_callbacks, user_data: *void) -> s32 #foreign nghttp2;

/**
* @function
*
* Like `nghttp2_session_client_new()`, but with additional options
* specified in the |option|.
*
* The |option| can be ``NULL`` and the call is equivalent to
* `nghttp2_session_client_new()`.
*
* This function does not take ownership |option|.  The application is
* responsible for freeing |option| if it finishes using the object.
*
* The library code does not refer to |option| after this function
* returns.
*
* This function returns 0 if it succeeds, or one of the following
* negative error codes:
*
* :enum:`nghttp2_error.NGHTTP2_ERR_NOMEM`
*     Out of memory.
*/
nghttp2_session_client_new2 :: (session_ptr: **nghttp2_session, callbacks: *nghttp2_session_callbacks, user_data: *void, option: *nghttp2_option) -> s32 #foreign nghttp2;

/**
* @function
*
* Like `nghttp2_session_server_new()`, but with additional options
* specified in the |option|.
*
* The |option| can be ``NULL`` and the call is equivalent to
* `nghttp2_session_server_new()`.
*
* This function does not take ownership |option|.  The application is
* responsible for freeing |option| if it finishes using the object.
*
* The library code does not refer to |option| after this function
* returns.
*
* This function returns 0 if it succeeds, or one of the following
* negative error codes:
*
* :enum:`nghttp2_error.NGHTTP2_ERR_NOMEM`
*     Out of memory.
*/
nghttp2_session_server_new2 :: (session_ptr: **nghttp2_session, callbacks: *nghttp2_session_callbacks, user_data: *void, option: *nghttp2_option) -> s32 #foreign nghttp2;

/**
* @function
*
* Like `nghttp2_session_client_new2()`, but with additional custom
* memory allocator specified in the |mem|.
*
* The |mem| can be ``NULL`` and the call is equivalent to
* `nghttp2_session_client_new2()`.
*
* This function does not take ownership |mem|.  The application is
* responsible for freeing |mem|.
*
* The library code does not refer to |mem| pointer after this
* function returns, so the application can safely free it.
*
* This function returns 0 if it succeeds, or one of the following
* negative error codes:
*
* :enum:`nghttp2_error.NGHTTP2_ERR_NOMEM`
*     Out of memory.
*/
nghttp2_session_client_new3 :: (session_ptr: **nghttp2_session, callbacks: *nghttp2_session_callbacks, user_data: *void, option: *nghttp2_option, mem: *nghttp2_mem) -> s32 #foreign nghttp2;

/**
* @function
*
* Like `nghttp2_session_server_new2()`, but with additional custom
* memory allocator specified in the |mem|.
*
* The |mem| can be ``NULL`` and the call is equivalent to
* `nghttp2_session_server_new2()`.
*
* This function does not take ownership |mem|.  The application is
* responsible for freeing |mem|.
*
* The library code does not refer to |mem| pointer after this
* function returns, so the application can safely free it.
*
* This function returns 0 if it succeeds, or one of the following
* negative error codes:
*
* :enum:`nghttp2_error.NGHTTP2_ERR_NOMEM`
*     Out of memory.
*/
nghttp2_session_server_new3 :: (session_ptr: **nghttp2_session, callbacks: *nghttp2_session_callbacks, user_data: *void, option: *nghttp2_option, mem: *nghttp2_mem) -> s32 #foreign nghttp2;

/**
* @function
*
* Frees any resources allocated for |session|.  If |session| is
* ``NULL``, this function does nothing.
*/
nghttp2_session_del :: (session: *nghttp2_session) -> void #foreign nghttp2;

/**
* @function
*
* Sends pending frames to the remote peer.
*
* This function retrieves the highest prioritized frame from the
* outbound queue and sends it to the remote peer.  It does this as
* many times as possible until the user callback
* :type:`nghttp2_send_callback` returns
* :enum:`nghttp2_error.NGHTTP2_ERR_WOULDBLOCK`, the outbound queue
* becomes empty or flow control is triggered (remote window size
* becomes depleted or maximum number of concurrent streams is
* reached).  This function calls several callback functions which are
* passed when initializing the |session|.  Here is the simple time
* chart which tells when each callback is invoked:
*
* 1. Get the next frame to send from outbound queue.
*
* 2. Prepare transmission of the frame.
*
* 3. If the control frame cannot be sent because some preconditions
*    are not met (e.g., request HEADERS cannot be sent after GOAWAY),
*    :type:`nghttp2_on_frame_not_send_callback` is invoked.  Abort
*    the following steps.
*
* 4. If the frame is HEADERS, PUSH_PROMISE or DATA,
*    :type:`nghttp2_select_padding_callback` is invoked.
*
* 5. If the frame is request HEADERS, the stream is opened here.
*
* 6. :type:`nghttp2_before_frame_send_callback` is invoked.
*
* 7. If :enum:`nghttp2_error.NGHTTP2_ERR_CANCEL` is returned from
*    :type:`nghttp2_before_frame_send_callback`, the current frame
*    transmission is canceled, and
*    :type:`nghttp2_on_frame_not_send_callback` is invoked.  Abort
*    the following steps.
*
* 8. :type:`nghttp2_send_callback` is invoked one or more times to
*    send the frame.
*
* 9. :type:`nghttp2_on_frame_send_callback` is invoked.
*
* 10. If the transmission of the frame triggers closure of the
*     stream, the stream is closed and
*     :type:`nghttp2_on_stream_close_callback` is invoked.
*
* This function returns 0 if it succeeds, or one of the following
* negative error codes:
*
* :enum:`nghttp2_error.NGHTTP2_ERR_NOMEM`
*     Out of memory.
* :enum:`nghttp2_error.NGHTTP2_ERR_CALLBACK_FAILURE`
*     The callback function failed.
*/
nghttp2_session_send :: (session: *nghttp2_session) -> s32 #foreign nghttp2;

/**
* @function
*
* Returns the serialized data to send.
*
* This function behaves like `nghttp2_session_send()` except that it
* does not use :type:`nghttp2_send_callback` to transmit data.
* Instead, it assigns the pointer to the serialized data to the
* |*data_ptr| and returns its length.  The other callbacks are called
* in the same way as they are in `nghttp2_session_send()`.
*
* If no data is available to send, this function returns 0.
*
* This function may not return all serialized data in one invocation.
* To get all data, call this function repeatedly until it returns 0
* or one of negative error codes.
*
* The assigned |*data_ptr| is valid until the next call of
* `nghttp2_session_mem_send()` or `nghttp2_session_send()`.
*
* The caller must send all data before sending the next chunk of
* data.
*
* This function returns the length of the data pointed by the
* |*data_ptr| if it succeeds, or one of the following negative error
* codes:
*
* :enum:`nghttp2_error.NGHTTP2_ERR_NOMEM`
*     Out of memory.
*
* .. note::
*
*   This function may produce very small byte string.  If that is the
*   case, and application disables Nagle algorithm (``TCP_NODELAY``),
*   then writing this small chunk leads to very small packet, and it
*   is very inefficient.  An application should be responsible to
*   buffer up small chunks of data as necessary to avoid this
*   situation.
*/
nghttp2_session_mem_send :: (session: *nghttp2_session, data_ptr: **u8) -> s32 #foreign nghttp2;

/**
* @function
*
* Receives frames from the remote peer.
*
* This function receives as many frames as possible until the user
* callback :type:`nghttp2_recv_callback` returns
* :enum:`nghttp2_error.NGHTTP2_ERR_WOULDBLOCK`.  This function calls
* several callback functions which are passed when initializing the
* |session|.  Here is the simple time chart which tells when each
* callback is invoked:
*
* 1. :type:`nghttp2_recv_callback` is invoked one or more times to
*    receive frame header.
*
* 2. When frame header is received,
*    :type:`nghttp2_on_begin_frame_callback` is invoked.
*
* 3. If the frame is DATA frame:
*
*    1. :type:`nghttp2_recv_callback` is invoked to receive DATA
*       payload. For each chunk of data,
*       :type:`nghttp2_on_data_chunk_recv_callback` is invoked.
*
*    2. If one DATA frame is completely received,
*       :type:`nghttp2_on_frame_recv_callback` is invoked.  If the
*       reception of the frame triggers the closure of the stream,
*       :type:`nghttp2_on_stream_close_callback` is invoked.
*
* 4. If the frame is the control frame:
*
*    1. :type:`nghttp2_recv_callback` is invoked one or more times to
*       receive whole frame.
*
*    2. If the received frame is valid, then following actions are
*       taken.  If the frame is either HEADERS or PUSH_PROMISE,
*       :type:`nghttp2_on_begin_headers_callback` is invoked.  Then
*       :type:`nghttp2_on_header_callback` is invoked for each header
*       name/value pair.  For invalid header field,
*       :type:`nghttp2_on_invalid_header_callback` is called.  After
*       all name/value pairs are emitted successfully,
*       :type:`nghttp2_on_frame_recv_callback` is invoked.  For other
*       frames, :type:`nghttp2_on_frame_recv_callback` is invoked.
*       If the reception of the frame triggers the closure of the
*       stream, :type:`nghttp2_on_stream_close_callback` is invoked.
*
*    3. If the received frame is unpacked but is interpreted as
*       invalid, :type:`nghttp2_on_invalid_frame_recv_callback` is
*       invoked.
*
* This function returns 0 if it succeeds, or one of the following
* negative error codes:
*
* :enum:`nghttp2_error.NGHTTP2_ERR_EOF`
*     The remote peer did shutdown on the connection.
* :enum:`nghttp2_error.NGHTTP2_ERR_NOMEM`
*     Out of memory.
* :enum:`nghttp2_error.NGHTTP2_ERR_CALLBACK_FAILURE`
*     The callback function failed.
* :enum:`nghttp2_error.NGHTTP2_ERR_BAD_CLIENT_MAGIC`
*     Invalid client magic was detected.  This error only returns
*     when |session| was configured as server and
*     `nghttp2_option_set_no_recv_client_magic()` is not used with
*     nonzero value.
* :enum:`nghttp2_error.NGHTTP2_ERR_FLOODED`
*     Flooding was detected in this HTTP/2 session, and it must be
*     closed.  This is most likely caused by misbehaviour of peer.
*/
nghttp2_session_recv :: (session: *nghttp2_session) -> s32 #foreign nghttp2;

/**
* @function
*
* Processes data |in| as an input from the remote endpoint.  The
* |inlen| indicates the number of bytes to receive in the |in|.
*
* This function behaves like `nghttp2_session_recv()` except that it
* does not use :type:`nghttp2_recv_callback` to receive data; the
* |in| is the only data for the invocation of this function.  If all
* bytes are processed, this function returns.  The other callbacks
* are called in the same way as they are in `nghttp2_session_recv()`.
*
* In the current implementation, this function always tries to
* processes |inlen| bytes of input data unless either an error occurs or
* :enum:`nghttp2_error.NGHTTP2_ERR_PAUSE` is returned from
* :type:`nghttp2_on_header_callback` or
* :type:`nghttp2_on_data_chunk_recv_callback`.  If
* :enum:`nghttp2_error.NGHTTP2_ERR_PAUSE` is used, the return value
* includes the number of bytes which was used to produce the data or
* frame for the callback.
*
* This function returns the number of processed bytes, or one of the
* following negative error codes:
*
* :enum:`nghttp2_error.NGHTTP2_ERR_NOMEM`
*     Out of memory.
* :enum:`nghttp2_error.NGHTTP2_ERR_CALLBACK_FAILURE`
*     The callback function failed.
* :enum:`nghttp2_error.NGHTTP2_ERR_BAD_CLIENT_MAGIC`
*     Invalid client magic was detected.  This error only returns
*     when |session| was configured as server and
*     `nghttp2_option_set_no_recv_client_magic()` is not used with
*     nonzero value.
* :enum:`nghttp2_error.NGHTTP2_ERR_FLOODED`
*     Flooding was detected in this HTTP/2 session, and it must be
*     closed.  This is most likely caused by misbehaviour of peer.
*/
nghttp2_session_mem_recv :: (session: *nghttp2_session, in: *u8, inlen: size_t) -> s32 #foreign nghttp2;

/**
* @function
*
* Puts back previously deferred DATA frame in the stream |stream_id|
* to the outbound queue.
*
* This function returns 0 if it succeeds, or one of the following
* negative error codes:
*
* :enum:`nghttp2_error.NGHTTP2_ERR_INVALID_ARGUMENT`
*     The stream does not exist; or no deferred data exist.
* :enum:`nghttp2_error.NGHTTP2_ERR_NOMEM`
*     Out of memory.
*/
nghttp2_session_resume_data :: (session: *nghttp2_session, stream_id: s32) -> s32 #foreign nghttp2;

/**
* @function
*
* Returns nonzero value if |session| wants to receive data from the
* remote peer.
*
* If both `nghttp2_session_want_read()` and
* `nghttp2_session_want_write()` return 0, the application should
* drop the connection.
*/
nghttp2_session_want_read :: (session: *nghttp2_session) -> s32 #foreign nghttp2;

/**
* @function
*
* Returns nonzero value if |session| wants to send data to the remote
* peer.
*
* If both `nghttp2_session_want_read()` and
* `nghttp2_session_want_write()` return 0, the application should
* drop the connection.
*/
nghttp2_session_want_write :: (session: *nghttp2_session) -> s32 #foreign nghttp2;

/**
* @function
*
* Returns stream_user_data for the stream |stream_id|.  The
* stream_user_data is provided by `nghttp2_submit_request()`,
* `nghttp2_submit_headers()` or
* `nghttp2_session_set_stream_user_data()`.  Unless it is set using
* `nghttp2_session_set_stream_user_data()`, if the stream is
* initiated by the remote endpoint, stream_user_data is always
* ``NULL``.  If the stream does not exist, this function returns
* ``NULL``.
*/
nghttp2_session_get_stream_user_data :: (session: *nghttp2_session, stream_id: s32) -> *void #foreign nghttp2;

/**
* @function
*
* Sets the |stream_user_data| to the stream denoted by the
* |stream_id|.  If a stream user data is already set to the stream,
* it is replaced with the |stream_user_data|.  It is valid to specify
* ``NULL`` in the |stream_user_data|, which nullifies the associated
* data pointer.
*
* It is valid to set the |stream_user_data| to the stream reserved by
* PUSH_PROMISE frame.
*
* This function returns 0 if it succeeds, or one of following
* negative error codes:
*
* :enum:`nghttp2_error.NGHTTP2_ERR_INVALID_ARGUMENT`
*     The stream does not exist
*/
nghttp2_session_set_stream_user_data :: (session: *nghttp2_session, stream_id: s32, stream_user_data: *void) -> s32 #foreign nghttp2;

/**
* @function
*
* Sets |user_data| to |session|, overwriting the existing user data
* specified in `nghttp2_session_client_new()`, or
* `nghttp2_session_server_new()`.
*/
nghttp2_session_set_user_data :: (session: *nghttp2_session, user_data: *void) -> void #foreign nghttp2;

/**
* @function
*
* Returns the number of frames in the outbound queue.  This does not
* include the deferred DATA frames.
*/
nghttp2_session_get_outbound_queue_size :: (session: *nghttp2_session) -> size_t #foreign nghttp2;

/**
* @function
*
* Returns the number of DATA payload in bytes received without
* WINDOW_UPDATE transmission for the stream |stream_id|.  The local
* (receive) window size can be adjusted by
* `nghttp2_submit_window_update()`.  This function takes into account
* that and returns effective data length.  In particular, if the
* local window size is reduced by submitting negative
* window_size_increment with `nghttp2_submit_window_update()`, this
* function returns the number of bytes less than actually received.
*
* This function returns -1 if it fails.
*/
nghttp2_session_get_stream_effective_recv_data_length :: (session: *nghttp2_session, stream_id: s32) -> s32 #foreign nghttp2;

/**
* @function
*
* Returns the local (receive) window size for the stream |stream_id|.
* The local window size can be adjusted by
* `nghttp2_submit_window_update()`.  This function takes into account
* that and returns effective window size.
*
* This function does not take into account the amount of received
* data from the remote endpoint.  Use
* `nghttp2_session_get_stream_local_window_size()` to know the amount
* of data the remote endpoint can send without receiving stream level
* WINDOW_UPDATE frame.  Note that each stream is still subject to the
* connection level flow control.
*
* This function returns -1 if it fails.
*/
nghttp2_session_get_stream_effective_local_window_size :: (session: *nghttp2_session, stream_id: s32) -> s32 #foreign nghttp2;

/**
* @function
*
* Returns the amount of flow-controlled payload (e.g., DATA) that the
* remote endpoint can send without receiving stream level
* WINDOW_UPDATE frame.  It is also subject to the connection level
* flow control.  So the actual amount of data to send is
* min(`nghttp2_session_get_stream_local_window_size()`,
* `nghttp2_session_get_local_window_size()`).
*
* This function returns -1 if it fails.
*/
nghttp2_session_get_stream_local_window_size :: (session: *nghttp2_session, stream_id: s32) -> s32 #foreign nghttp2;

/**
* @function
*
* Returns the number of DATA payload in bytes received without
* WINDOW_UPDATE transmission for a connection.  The local (receive)
* window size can be adjusted by `nghttp2_submit_window_update()`.
* This function takes into account that and returns effective data
* length.  In particular, if the local window size is reduced by
* submitting negative window_size_increment with
* `nghttp2_submit_window_update()`, this function returns the number
* of bytes less than actually received.
*
* This function returns -1 if it fails.
*/
nghttp2_session_get_effective_recv_data_length :: (session: *nghttp2_session) -> s32 #foreign nghttp2;

/**
* @function
*
* Returns the local (receive) window size for a connection.  The
* local window size can be adjusted by
* `nghttp2_submit_window_update()`.  This function takes into account
* that and returns effective window size.
*
* This function does not take into account the amount of received
* data from the remote endpoint.  Use
* `nghttp2_session_get_local_window_size()` to know the amount of
* data the remote endpoint can send without receiving
* connection-level WINDOW_UPDATE frame.  Note that each stream is
* still subject to the stream level flow control.
*
* This function returns -1 if it fails.
*/
nghttp2_session_get_effective_local_window_size :: (session: *nghttp2_session) -> s32 #foreign nghttp2;

/**
* @function
*
* Returns the amount of flow-controlled payload (e.g., DATA) that the
* remote endpoint can send without receiving connection level
* WINDOW_UPDATE frame.  Note that each stream is still subject to the
* stream level flow control (see
* `nghttp2_session_get_stream_local_window_size()`).
*
* This function returns -1 if it fails.
*/
nghttp2_session_get_local_window_size :: (session: *nghttp2_session) -> s32 #foreign nghttp2;

/**
* @function
*
* Returns the remote window size for a given stream |stream_id|.
*
* This is the amount of flow-controlled payload (e.g., DATA) that the
* local endpoint can send without stream level WINDOW_UPDATE.  There
* is also connection level flow control, so the effective size of
* payload that the local endpoint can actually send is
* min(`nghttp2_session_get_stream_remote_window_size()`,
* `nghttp2_session_get_remote_window_size()`).
*
* This function returns -1 if it fails.
*/
nghttp2_session_get_stream_remote_window_size :: (session: *nghttp2_session, stream_id: s32) -> s32 #foreign nghttp2;

/**
* @function
*
* Returns the remote window size for a connection.
*
* This function always succeeds.
*/
nghttp2_session_get_remote_window_size :: (session: *nghttp2_session) -> s32 #foreign nghttp2;

/**
* @function
*
* Returns 1 if local peer half closed the given stream |stream_id|.
* Returns 0 if it did not.  Returns -1 if no such stream exists.
*/
nghttp2_session_get_stream_local_close :: (session: *nghttp2_session, stream_id: s32) -> s32 #foreign nghttp2;

/**
* @function
*
* Returns 1 if remote peer half closed the given stream |stream_id|.
* Returns 0 if it did not.  Returns -1 if no such stream exists.
*/
nghttp2_session_get_stream_remote_close :: (session: *nghttp2_session, stream_id: s32) -> s32 #foreign nghttp2;

/**
* @function
*
* Returns the current dynamic table size of HPACK inflater, including
* the overhead 32 bytes per entry described in RFC 7541.
*/
nghttp2_session_get_hd_inflate_dynamic_table_size :: (session: *nghttp2_session) -> size_t #foreign nghttp2;

/**
* @function
*
* Returns the current dynamic table size of HPACK deflater including
* the overhead 32 bytes per entry described in RFC 7541.
*/
nghttp2_session_get_hd_deflate_dynamic_table_size :: (session: *nghttp2_session) -> size_t #foreign nghttp2;

/**
* @function
*
* Signals the session so that the connection should be terminated.
*
* The last stream ID is the minimum value between the stream ID of a
* stream for which :type:`nghttp2_on_frame_recv_callback` was called
* most recently and the last stream ID we have sent to the peer
* previously.
*
* The |error_code| is the error code of this GOAWAY frame.  The
* pre-defined error code is one of :enum:`nghttp2_error_code`.
*
* After the transmission, both `nghttp2_session_want_read()` and
* `nghttp2_session_want_write()` return 0.
*
* This function should be called when the connection should be
* terminated after sending GOAWAY.  If the remaining streams should
* be processed after GOAWAY, use `nghttp2_submit_goaway()` instead.
*
* This function returns 0 if it succeeds, or one of the following
* negative error codes:
*
* :enum:`nghttp2_error.NGHTTP2_ERR_NOMEM`
*     Out of memory.
*/
nghttp2_session_terminate_session :: (session: *nghttp2_session, error_code: u32) -> s32 #foreign nghttp2;

/**
* @function
*
* Signals the session so that the connection should be terminated.
*
* This function behaves like `nghttp2_session_terminate_session()`,
* but the last stream ID can be specified by the application for fine
* grained control of stream.  The HTTP/2 specification does not allow
* last_stream_id to be increased.  So the actual value sent as
* last_stream_id is the minimum value between the given
* |last_stream_id| and the last_stream_id we have previously sent to
* the peer.
*
* The |last_stream_id| is peer's stream ID or 0.  So if |session| is
* initialized as client, |last_stream_id| must be even or 0.  If
* |session| is initialized as server, |last_stream_id| must be odd or
* 0.
*
* This function returns 0 if it succeeds, or one of the following
* negative error codes:
*
* :enum:`nghttp2_error.NGHTTP2_ERR_NOMEM`
*     Out of memory.
* :enum:`nghttp2_error.NGHTTP2_ERR_INVALID_ARGUMENT`
*     The |last_stream_id| is invalid.
*/
nghttp2_session_terminate_session2 :: (session: *nghttp2_session, last_stream_id: s32, error_code: u32) -> s32 #foreign nghttp2;

/**
* @function
*
* Signals to the client that the server started graceful shutdown
* procedure.
*
* This function is only usable for server.  If this function is
* called with client side session, this function returns
* :enum:`nghttp2_error.NGHTTP2_ERR_INVALID_STATE`.
*
* To gracefully shutdown HTTP/2 session, server should call this
* function to send GOAWAY with last_stream_id (1u << 31) - 1.  And
* after some delay (e.g., 1 RTT), send another GOAWAY with the stream
* ID that the server has some processing using
* `nghttp2_submit_goaway()`.  See also
* `nghttp2_session_get_last_proc_stream_id()`.
*
* Unlike `nghttp2_submit_goaway()`, this function just sends GOAWAY
* and does nothing more.  This is a mere indication to the client
* that session shutdown is imminent.  The application should call
* `nghttp2_submit_goaway()` with appropriate last_stream_id after
* this call.
*
* If one or more GOAWAY frame have been already sent by either
* `nghttp2_submit_goaway()` or `nghttp2_session_terminate_session()`,
* this function has no effect.
*
* This function returns 0 if it succeeds, or one of the following
* negative error codes:
*
* :enum:`nghttp2_error.NGHTTP2_ERR_NOMEM`
*     Out of memory.
* :enum:`nghttp2_error.NGHTTP2_ERR_INVALID_STATE`
*     The |session| is initialized as client.
*/
nghttp2_submit_shutdown_notice :: (session: *nghttp2_session) -> s32 #foreign nghttp2;

/**
* @function
*
* Returns the value of SETTINGS |id| notified by a remote endpoint.
* The |id| must be one of values defined in
* :enum:`nghttp2_settings_id`.
*/
nghttp2_session_get_remote_settings :: (session: *nghttp2_session, id: nghttp2_settings_id) -> u32 #foreign nghttp2;

/**
* @function
*
* Returns the value of SETTINGS |id| of local endpoint acknowledged
* by the remote endpoint.  The |id| must be one of the values defined
* in :enum:`nghttp2_settings_id`.
*/
nghttp2_session_get_local_settings :: (session: *nghttp2_session, id: nghttp2_settings_id) -> u32 #foreign nghttp2;

/**
* @function
*
* Tells the |session| that next stream ID is |next_stream_id|.  The
* |next_stream_id| must be equal or greater than the value returned
* by `nghttp2_session_get_next_stream_id()`.
*
* This function returns 0 if it succeeds, or one of the following
* negative error codes:
*
* :enum:`nghttp2_error.NGHTTP2_ERR_INVALID_ARGUMENT`
*     The |next_stream_id| is strictly less than the value
*     `nghttp2_session_get_next_stream_id()` returns; or
*     |next_stream_id| is invalid (e.g., even integer for client, or
*     odd integer for server).
*/
nghttp2_session_set_next_stream_id :: (session: *nghttp2_session, next_stream_id: s32) -> s32 #foreign nghttp2;

/**
* @function
*
* Returns the next outgoing stream ID.  Notice that return type is
* uint32_t.  If we run out of stream ID for this session, this
* function returns 1 << 31.
*/
nghttp2_session_get_next_stream_id :: (session: *nghttp2_session) -> u32 #foreign nghttp2;

/**
* @function
*
* Tells the |session| that |size| bytes for a stream denoted by
* |stream_id| were consumed by application and are ready to
* WINDOW_UPDATE.  The consumed bytes are counted towards both
* connection and stream level WINDOW_UPDATE (see
* `nghttp2_session_consume_connection()` and
* `nghttp2_session_consume_stream()` to update consumption
* independently).  This function is intended to be used without
* automatic window update (see
* `nghttp2_option_set_no_auto_window_update()`).
*
* This function returns 0 if it succeeds, or one of the following
* negative error codes:
*
* :enum:`nghttp2_error.NGHTTP2_ERR_NOMEM`
*     Out of memory.
* :enum:`nghttp2_error.NGHTTP2_ERR_INVALID_ARGUMENT`
*     The |stream_id| is 0.
* :enum:`nghttp2_error.NGHTTP2_ERR_INVALID_STATE`
*     Automatic WINDOW_UPDATE is not disabled.
*/
nghttp2_session_consume :: (session: *nghttp2_session, stream_id: s32, size: size_t) -> s32 #foreign nghttp2;

/**
* @function
*
* Like `nghttp2_session_consume()`, but this only tells library that
* |size| bytes were consumed only for connection level.  Note that
* HTTP/2 maintains connection and stream level flow control windows
* independently.
*
* This function returns 0 if it succeeds, or one of the following
* negative error codes:
*
* :enum:`nghttp2_error.NGHTTP2_ERR_NOMEM`
*     Out of memory.
* :enum:`nghttp2_error.NGHTTP2_ERR_INVALID_STATE`
*     Automatic WINDOW_UPDATE is not disabled.
*/
nghttp2_session_consume_connection :: (session: *nghttp2_session, size: size_t) -> s32 #foreign nghttp2;

/**
* @function
*
* Like `nghttp2_session_consume()`, but this only tells library that
* |size| bytes were consumed only for stream denoted by |stream_id|.
* Note that HTTP/2 maintains connection and stream level flow control
* windows independently.
*
* This function returns 0 if it succeeds, or one of the following
* negative error codes:
*
* :enum:`nghttp2_error.NGHTTP2_ERR_NOMEM`
*     Out of memory.
* :enum:`nghttp2_error.NGHTTP2_ERR_INVALID_ARGUMENT`
*     The |stream_id| is 0.
* :enum:`nghttp2_error.NGHTTP2_ERR_INVALID_STATE`
*     Automatic WINDOW_UPDATE is not disabled.
*/
nghttp2_session_consume_stream :: (session: *nghttp2_session, stream_id: s32, size: size_t) -> s32 #foreign nghttp2;

/**
* @function
*
* Changes priority of existing stream denoted by |stream_id|.  The
* new priority specification is |pri_spec|.
*
* The priority is changed silently and instantly, and no PRIORITY
* frame will be sent to notify the peer of this change.  This
* function may be useful for server to change the priority of pushed
* stream.
*
* If |session| is initialized as server, and ``pri_spec->stream_id``
* points to the idle stream, the idle stream is created if it does
* not exist.  The created idle stream will depend on root stream
* (stream 0) with weight 16.
*
* Otherwise, if stream denoted by ``pri_spec->stream_id`` is not
* found, we use default priority instead of given |pri_spec|.  That
* is make stream depend on root stream with weight 16.
*
* If
* :enum:`nghttp2_settings_id.NGHTTP2_SETTINGS_NO_RFC7540_PRIORITIES`
* of value of 1 is submitted via `nghttp2_submit_settings()`, this
* function does nothing and returns 0.
*
* This function returns 0 if it succeeds, or one of the following
* negative error codes:
*
* :enum:`nghttp2_error.NGHTTP2_ERR_NOMEM`
*     Out of memory.
* :enum:`nghttp2_error.NGHTTP2_ERR_INVALID_ARGUMENT`
*     Attempted to depend on itself; or no stream exist for the given
*     |stream_id|; or |stream_id| is 0
*/
nghttp2_session_change_stream_priority :: (session: *nghttp2_session, stream_id: s32, pri_spec: *nghttp2_priority_spec) -> s32 #foreign nghttp2;

/**
* @function
*
* Creates idle stream with the given |stream_id|, and priority
* |pri_spec|.
*
* The stream creation is done without sending PRIORITY frame, which
* means that peer does not know about the existence of this idle
* stream in the local endpoint.
*
* RFC 7540 does not disallow the use of creation of idle stream with
* odd or even stream ID regardless of client or server.  So this
* function can create odd or even stream ID regardless of client or
* server.  But probably it is a bit safer to use the stream ID the
* local endpoint can initiate (in other words, use odd stream ID for
* client, and even stream ID for server), to avoid potential
* collision from peer's instruction.  Also we can use
* `nghttp2_session_set_next_stream_id()` to avoid to open created
* idle streams accidentally if we follow this recommendation.
*
* If |session| is initialized as server, and ``pri_spec->stream_id``
* points to the idle stream, the idle stream is created if it does
* not exist.  The created idle stream will depend on root stream
* (stream 0) with weight 16.
*
* Otherwise, if stream denoted by ``pri_spec->stream_id`` is not
* found, we use default priority instead of given |pri_spec|.  That
* is make stream depend on root stream with weight 16.
*
* If
* :enum:`nghttp2_settings_id.NGHTTP2_SETTINGS_NO_RFC7540_PRIORITIES`
* of value of 1 is submitted via `nghttp2_submit_settings()`, this
* function does nothing and returns 0.
*
* This function returns 0 if it succeeds, or one of the following
* negative error codes:
*
* :enum:`nghttp2_error.NGHTTP2_ERR_NOMEM`
*     Out of memory.
* :enum:`nghttp2_error.NGHTTP2_ERR_INVALID_ARGUMENT`
*     Attempted to depend on itself; or stream denoted by |stream_id|
*     already exists; or |stream_id| cannot be used to create idle
*     stream (in other words, local endpoint has already opened
*     stream ID greater than or equal to the given stream ID; or
*     |stream_id| is 0
*/
nghttp2_session_create_idle_stream :: (session: *nghttp2_session, stream_id: s32, pri_spec: *nghttp2_priority_spec) -> s32 #foreign nghttp2;

/**
* @function
*
* Performs post-process of HTTP Upgrade request.  This function can
* be called from both client and server, but the behavior is very
* different in each other.
*
* .. warning::
*
*   This function is deprecated in favor of
*   `nghttp2_session_upgrade2()`, because this function lacks the
*   parameter to tell the library the request method used in the
*   original HTTP request.  This information is required for client
*   to validate actual response body length against content-length
*   header field (see `nghttp2_option_set_no_http_messaging()`).  If
*   HEAD is used in request, the length of response body must be 0
*   regardless of value included in content-length header field.
*
* If called from client side, the |settings_payload| must be the
* value sent in ``HTTP2-Settings`` header field and must be decoded
* by base64url decoder.  The |settings_payloadlen| is the length of
* |settings_payload|.  The |settings_payload| is unpacked and its
* setting values will be submitted using `nghttp2_submit_settings()`.
* This means that the client application code does not need to submit
* SETTINGS by itself.  The stream with stream ID=1 is opened and the
* |stream_user_data| is used for its stream_user_data.  The opened
* stream becomes half-closed (local) state.
*
* If called from server side, the |settings_payload| must be the
* value received in ``HTTP2-Settings`` header field and must be
* decoded by base64url decoder.  The |settings_payloadlen| is the
* length of |settings_payload|.  It is treated as if the SETTINGS
* frame with that payload is received.  Thus, callback functions for
* the reception of SETTINGS frame will be invoked.  The stream with
* stream ID=1 is opened.  The |stream_user_data| is ignored.  The
* opened stream becomes half-closed (remote).
*
* This function returns 0 if it succeeds, or one of the following
* negative error codes:
*
* :enum:`nghttp2_error.NGHTTP2_ERR_NOMEM`
*     Out of memory.
* :enum:`nghttp2_error.NGHTTP2_ERR_INVALID_ARGUMENT`
*     The |settings_payload| is badly formed.
* :enum:`nghttp2_error.NGHTTP2_ERR_PROTO`
*     The stream ID 1 is already used or closed; or is not available.
*/
nghttp2_session_upgrade :: (session: *nghttp2_session, settings_payload: *u8, settings_payloadlen: size_t, stream_user_data: *void) -> s32 #foreign nghttp2;

/**
* @function
*
* Performs post-process of HTTP Upgrade request.  This function can
* be called from both client and server, but the behavior is very
* different in each other.
*
* If called from client side, the |settings_payload| must be the
* value sent in ``HTTP2-Settings`` header field and must be decoded
* by base64url decoder.  The |settings_payloadlen| is the length of
* |settings_payload|.  The |settings_payload| is unpacked and its
* setting values will be submitted using `nghttp2_submit_settings()`.
* This means that the client application code does not need to submit
* SETTINGS by itself.  The stream with stream ID=1 is opened and the
* |stream_user_data| is used for its stream_user_data.  The opened
* stream becomes half-closed (local) state.
*
* If called from server side, the |settings_payload| must be the
* value received in ``HTTP2-Settings`` header field and must be
* decoded by base64url decoder.  The |settings_payloadlen| is the
* length of |settings_payload|.  It is treated as if the SETTINGS
* frame with that payload is received.  Thus, callback functions for
* the reception of SETTINGS frame will be invoked.  The stream with
* stream ID=1 is opened.  The |stream_user_data| is ignored.  The
* opened stream becomes half-closed (remote).
*
* If the request method is HEAD, pass nonzero value to
* |head_request|.  Otherwise, pass 0.
*
* This function returns 0 if it succeeds, or one of the following
* negative error codes:
*
* :enum:`nghttp2_error.NGHTTP2_ERR_NOMEM`
*     Out of memory.
* :enum:`nghttp2_error.NGHTTP2_ERR_INVALID_ARGUMENT`
*     The |settings_payload| is badly formed.
* :enum:`nghttp2_error.NGHTTP2_ERR_PROTO`
*     The stream ID 1 is already used or closed; or is not available.
*/
nghttp2_session_upgrade2 :: (session: *nghttp2_session, settings_payload: *u8, settings_payloadlen: size_t, head_request: s32, stream_user_data: *void) -> s32 #foreign nghttp2;

/**
* @function
*
* Serializes the SETTINGS values |iv| in the |buf|.  The size of the
* |buf| is specified by |buflen|.  The number of entries in the |iv|
* array is given by |niv|.  The required space in |buf| for the |niv|
* entries is ``6*niv`` bytes and if the given buffer is too small, an
* error is returned.  This function is used mainly for creating a
* SETTINGS payload to be sent with the ``HTTP2-Settings`` header
* field in an HTTP Upgrade request.  The data written in |buf| is NOT
* base64url encoded and the application is responsible for encoding.
*
* This function returns the number of bytes written in |buf|, or one
* of the following negative error codes:
*
* :enum:`nghttp2_error.NGHTTP2_ERR_INVALID_ARGUMENT`
*     The |iv| contains duplicate settings ID or invalid value.
*
* :enum:`nghttp2_error.NGHTTP2_ERR_INSUFF_BUFSIZE`
*     The provided |buflen| size is too small to hold the output.
*/
nghttp2_pack_settings_payload :: (buf: *u8, buflen: size_t, iv: *nghttp2_settings_entry, niv: size_t) -> s32 #foreign nghttp2;

/**
* @function
*
* Returns string describing the |lib_error_code|.  The
* |lib_error_code| must be one of the :enum:`nghttp2_error`.
*/
nghttp2_strerror :: (lib_error_code: s32) -> *u8 #foreign nghttp2;

/**
* @function
*
* Returns string representation of HTTP/2 error code |error_code|
* (e.g., ``PROTOCOL_ERROR`` is returned if ``error_code ==
* NGHTTP2_PROTOCOL_ERROR``).  If string representation is unknown for
* given |error_code|, this function returns string ``unknown``.
*/
nghttp2_http2_strerror :: (error_code: u32) -> *u8 #foreign nghttp2;

/**
* @function
*
* Initializes |pri_spec| with the |stream_id| of the stream to depend
* on with |weight| and its exclusive flag.  If |exclusive| is
* nonzero, exclusive flag is set.
*
* The |weight| must be in [:macro:`NGHTTP2_MIN_WEIGHT`,
* :macro:`NGHTTP2_MAX_WEIGHT`], inclusive.
*/
nghttp2_priority_spec_init :: (pri_spec: *nghttp2_priority_spec, stream_id: s32, weight: s32, exclusive: s32) -> void #foreign nghttp2;

/**
* @function
*
* Initializes |pri_spec| with the default values.  The default values
* are: stream_id = 0, weight = :macro:`NGHTTP2_DEFAULT_WEIGHT` and
* exclusive = 0.
*/
nghttp2_priority_spec_default_init :: (pri_spec: *nghttp2_priority_spec) -> void #foreign nghttp2;

/**
* @function
*
* Returns nonzero if the |pri_spec| is filled with default values.
*/
nghttp2_priority_spec_check_default :: (pri_spec: *nghttp2_priority_spec) -> s32 #foreign nghttp2;

/**
* @function
*
* Submits HEADERS frame and optionally one or more DATA frames.
*
* The |pri_spec| is priority specification of this request.  ``NULL``
* means the default priority (see
* `nghttp2_priority_spec_default_init()`).  To specify the priority,
* use `nghttp2_priority_spec_init()`.  If |pri_spec| is not ``NULL``,
* this function will copy its data members.
*
* The ``pri_spec->weight`` must be in [:macro:`NGHTTP2_MIN_WEIGHT`,
* :macro:`NGHTTP2_MAX_WEIGHT`], inclusive.  If ``pri_spec->weight``
* is strictly less than :macro:`NGHTTP2_MIN_WEIGHT`, it becomes
* :macro:`NGHTTP2_MIN_WEIGHT`.  If it is strictly greater than
* :macro:`NGHTTP2_MAX_WEIGHT`, it becomes
* :macro:`NGHTTP2_MAX_WEIGHT`.
*
* If
* :enum:`nghttp2_settings_id.NGHTTP2_SETTINGS_NO_RFC7540_PRIORITIES`
* of value of 1 is received by a remote endpoint, |pri_spec| is
* ignored, and treated as if ``NULL`` is specified.
*
* The |nva| is an array of name/value pair :type:`nghttp2_nv` with
* |nvlen| elements.  The application is responsible to include
* required pseudo-header fields (header field whose name starts with
* ":") in |nva| and must place pseudo-headers before regular header
* fields.
*
* This function creates copies of all name/value pairs in |nva|.  It
* also lower-cases all names in |nva|.  The order of elements in
* |nva| is preserved.  For header fields with
* :enum:`nghttp2_nv_flag.NGHTTP2_NV_FLAG_NO_COPY_NAME` and
* :enum:`nghttp2_nv_flag.NGHTTP2_NV_FLAG_NO_COPY_VALUE` are set,
* header field name and value are not copied respectively.  With
* :enum:`nghttp2_nv_flag.NGHTTP2_NV_FLAG_NO_COPY_NAME`, application
* is responsible to pass header field name in lowercase.  The
* application should maintain the references to them until
* :type:`nghttp2_on_frame_send_callback` or
* :type:`nghttp2_on_frame_not_send_callback` is called.
*
* HTTP/2 specification has requirement about header fields in the
* request HEADERS.  See the specification for more details.
*
* If |data_prd| is not ``NULL``, it provides data which will be sent
* in subsequent DATA frames.  In this case, a method that allows
* request message bodies
* (https://tools.ietf.org/html/rfc7231#section-4) must be specified
* with ``:method`` key in |nva| (e.g. ``POST``).  This function does
* not take ownership of the |data_prd|.  The function copies the
* members of the |data_prd|.  If |data_prd| is ``NULL``, HEADERS have
* END_STREAM set.  The |stream_user_data| is data associated to the
* stream opened by this request and can be an arbitrary pointer,
* which can be retrieved later by
* `nghttp2_session_get_stream_user_data()`.
*
* This function returns assigned stream ID if it succeeds, or one of
* the following negative error codes:
*
* :enum:`nghttp2_error.NGHTTP2_ERR_NOMEM`
*     Out of memory.
* :enum:`nghttp2_error.NGHTTP2_ERR_STREAM_ID_NOT_AVAILABLE`
*     No stream ID is available because maximum stream ID was
*     reached.
* :enum:`nghttp2_error.NGHTTP2_ERR_INVALID_ARGUMENT`
*     Trying to depend on itself (new stream ID equals
*     ``pri_spec->stream_id``).
* :enum:`nghttp2_error.NGHTTP2_ERR_PROTO`
*     The |session| is server session.
*
* .. warning::
*
*   This function returns assigned stream ID if it succeeds.  But
*   that stream is not created yet.  The application must not submit
*   frame to that stream ID before
*   :type:`nghttp2_before_frame_send_callback` is called for this
*   frame.  This means `nghttp2_session_get_stream_user_data()` does
*   not work before the callback.  But
*   `nghttp2_session_set_stream_user_data()` handles this situation
*   specially, and it can set data to a stream during this period.
*
*/
nghttp2_submit_request :: (session: *nghttp2_session, pri_spec: *nghttp2_priority_spec, nva: *nghttp2_nv, nvlen: size_t, data_prd: *nghttp2_data_provider, stream_user_data: *void) -> s32 #foreign nghttp2;

/**
* @function
*
* Submits response HEADERS frame and optionally one or more DATA
* frames against the stream |stream_id|.
*
* The |nva| is an array of name/value pair :type:`nghttp2_nv` with
* |nvlen| elements.  The application is responsible to include
* required pseudo-header fields (header field whose name starts with
* ":") in |nva| and must place pseudo-headers before regular header
* fields.
*
* This function creates copies of all name/value pairs in |nva|.  It
* also lower-cases all names in |nva|.  The order of elements in
* |nva| is preserved.  For header fields with
* :enum:`nghttp2_nv_flag.NGHTTP2_NV_FLAG_NO_COPY_NAME` and
* :enum:`nghttp2_nv_flag.NGHTTP2_NV_FLAG_NO_COPY_VALUE` are set,
* header field name and value are not copied respectively.  With
* :enum:`nghttp2_nv_flag.NGHTTP2_NV_FLAG_NO_COPY_NAME`, application
* is responsible to pass header field name in lowercase.  The
* application should maintain the references to them until
* :type:`nghttp2_on_frame_send_callback` or
* :type:`nghttp2_on_frame_not_send_callback` is called.
*
* HTTP/2 specification has requirement about header fields in the
* response HEADERS.  See the specification for more details.
*
* If |data_prd| is not ``NULL``, it provides data which will be sent
* in subsequent DATA frames.  This function does not take ownership
* of the |data_prd|.  The function copies the members of the
* |data_prd|.  If |data_prd| is ``NULL``, HEADERS will have
* END_STREAM flag set.
*
* This method can be used as normal HTTP response and push response.
* When pushing a resource using this function, the |session| must be
* configured using `nghttp2_session_server_new()` or its variants and
* the target stream denoted by the |stream_id| must be reserved using
* `nghttp2_submit_push_promise()`.
*
* To send non-final response headers (e.g., HTTP status 101), don't
* use this function because this function half-closes the outbound
* stream.  Instead, use `nghttp2_submit_headers()` for this purpose.
*
* This function returns 0 if it succeeds, or one of the following
* negative error codes:
*
* :enum:`nghttp2_error.NGHTTP2_ERR_NOMEM`
*     Out of memory.
* :enum:`nghttp2_error.NGHTTP2_ERR_INVALID_ARGUMENT`
*     The |stream_id| is 0.
* :enum:`nghttp2_error.NGHTTP2_ERR_DATA_EXIST`
*     DATA or HEADERS has been already submitted and not fully
*     processed yet.  Normally, this does not happen, but when
*     application wrongly calls `nghttp2_submit_response()` twice,
*     this may happen.
* :enum:`nghttp2_error.NGHTTP2_ERR_PROTO`
*     The |session| is client session.
*
* .. warning::
*
*   Calling this function twice for the same stream ID may lead to
*   program crash.  It is generally considered to a programming error
*   to commit response twice.
*/
nghttp2_submit_response :: (session: *nghttp2_session, stream_id: s32, nva: *nghttp2_nv, nvlen: size_t, data_prd: *nghttp2_data_provider) -> s32 #foreign nghttp2;

/**
* @function
*
* Submits trailer fields HEADERS against the stream |stream_id|.
*
* The |nva| is an array of name/value pair :type:`nghttp2_nv` with
* |nvlen| elements.  The application must not include pseudo-header
* fields (headers whose names starts with ":") in |nva|.
*
* This function creates copies of all name/value pairs in |nva|.  It
* also lower-cases all names in |nva|.  The order of elements in
* |nva| is preserved.  For header fields with
* :enum:`nghttp2_nv_flag.NGHTTP2_NV_FLAG_NO_COPY_NAME` and
* :enum:`nghttp2_nv_flag.NGHTTP2_NV_FLAG_NO_COPY_VALUE` are set,
* header field name and value are not copied respectively.  With
* :enum:`nghttp2_nv_flag.NGHTTP2_NV_FLAG_NO_COPY_NAME`, application
* is responsible to pass header field name in lowercase.  The
* application should maintain the references to them until
* :type:`nghttp2_on_frame_send_callback` or
* :type:`nghttp2_on_frame_not_send_callback` is called.
*
* For server, trailer fields must follow response HEADERS or response
* DATA without END_STREAM flat set.  The library does not enforce
* this requirement, and applications should do this for themselves.
* If `nghttp2_submit_trailer()` is called before any response HEADERS
* submission (usually by `nghttp2_submit_response()`), the content of
* |nva| will be sent as response headers, which will result in error.
*
* This function has the same effect with `nghttp2_submit_headers()`,
* with flags = :enum:`nghttp2_flag.NGHTTP2_FLAG_END_STREAM` and both
* pri_spec and stream_user_data to NULL.
*
* To submit trailer fields after `nghttp2_submit_response()` is
* called, the application has to specify
* :type:`nghttp2_data_provider` to `nghttp2_submit_response()`.
* Inside of :type:`nghttp2_data_source_read_callback`, when setting
* :enum:`nghttp2_data_flag.NGHTTP2_DATA_FLAG_EOF`, also set
* :enum:`nghttp2_data_flag.NGHTTP2_DATA_FLAG_NO_END_STREAM`.  After
* that, the application can send trailer fields using
* `nghttp2_submit_trailer()`.  `nghttp2_submit_trailer()` can be used
* inside :type:`nghttp2_data_source_read_callback`.
*
* This function returns 0 if it succeeds and |stream_id| is -1.
* Otherwise, this function returns 0 if it succeeds, or one of the
* following negative error codes:
*
* :enum:`nghttp2_error.NGHTTP2_ERR_NOMEM`
*     Out of memory.
* :enum:`nghttp2_error.NGHTTP2_ERR_INVALID_ARGUMENT`
*     The |stream_id| is 0.
*/
nghttp2_submit_trailer :: (session: *nghttp2_session, stream_id: s32, nva: *nghttp2_nv, nvlen: size_t) -> s32 #foreign nghttp2;

/**
* @function
*
* Submits HEADERS frame. The |flags| is bitwise OR of the
* following values:
*
* * :enum:`nghttp2_flag.NGHTTP2_FLAG_END_STREAM`
*
* If |flags| includes :enum:`nghttp2_flag.NGHTTP2_FLAG_END_STREAM`,
* this frame has END_STREAM flag set.
*
* The library handles the CONTINUATION frame internally and it
* correctly sets END_HEADERS to the last sequence of the PUSH_PROMISE
* or CONTINUATION frame.
*
* If the |stream_id| is -1, this frame is assumed as request (i.e.,
* request HEADERS frame which opens new stream).  In this case, the
* assigned stream ID will be returned.  Otherwise, specify stream ID
* in |stream_id|.
*
* The |pri_spec| is priority specification of this request.  ``NULL``
* means the default priority (see
* `nghttp2_priority_spec_default_init()`).  To specify the priority,
* use `nghttp2_priority_spec_init()`.  If |pri_spec| is not ``NULL``,
* this function will copy its data members.
*
* The ``pri_spec->weight`` must be in [:macro:`NGHTTP2_MIN_WEIGHT`,
* :macro:`NGHTTP2_MAX_WEIGHT`], inclusive.  If ``pri_spec->weight``
* is strictly less than :macro:`NGHTTP2_MIN_WEIGHT`, it becomes
* :macro:`NGHTTP2_MIN_WEIGHT`.  If it is strictly greater than
* :macro:`NGHTTP2_MAX_WEIGHT`, it becomes :macro:`NGHTTP2_MAX_WEIGHT`.
*
* If
* :enum:`nghttp2_settings_id.NGHTTP2_SETTINGS_NO_RFC7540_PRIORITIES`
* of value of 1 is received by a remote endpoint, |pri_spec| is
* ignored, and treated as if ``NULL`` is specified.
*
* The |nva| is an array of name/value pair :type:`nghttp2_nv` with
* |nvlen| elements.  The application is responsible to include
* required pseudo-header fields (header field whose name starts with
* ":") in |nva| and must place pseudo-headers before regular header
* fields.
*
* This function creates copies of all name/value pairs in |nva|.  It
* also lower-cases all names in |nva|.  The order of elements in
* |nva| is preserved.  For header fields with
* :enum:`nghttp2_nv_flag.NGHTTP2_NV_FLAG_NO_COPY_NAME` and
* :enum:`nghttp2_nv_flag.NGHTTP2_NV_FLAG_NO_COPY_VALUE` are set,
* header field name and value are not copied respectively.  With
* :enum:`nghttp2_nv_flag.NGHTTP2_NV_FLAG_NO_COPY_NAME`, application
* is responsible to pass header field name in lowercase.  The
* application should maintain the references to them until
* :type:`nghttp2_on_frame_send_callback` or
* :type:`nghttp2_on_frame_not_send_callback` is called.
*
* The |stream_user_data| is a pointer to an arbitrary data which is
* associated to the stream this frame will open.  Therefore it is
* only used if this frame opens streams, in other words, it changes
* stream state from idle or reserved to open.
*
* This function is low-level in a sense that the application code can
* specify flags directly.  For usual HTTP request,
* `nghttp2_submit_request()` is useful.  Likewise, for HTTP response,
* prefer `nghttp2_submit_response()`.
*
* This function returns newly assigned stream ID if it succeeds and
* |stream_id| is -1.  Otherwise, this function returns 0 if it
* succeeds, or one of the following negative error codes:
*
* :enum:`nghttp2_error.NGHTTP2_ERR_NOMEM`
*     Out of memory.
* :enum:`nghttp2_error.NGHTTP2_ERR_STREAM_ID_NOT_AVAILABLE`
*     No stream ID is available because maximum stream ID was
*     reached.
* :enum:`nghttp2_error.NGHTTP2_ERR_INVALID_ARGUMENT`
*     The |stream_id| is 0; or trying to depend on itself (stream ID
*     equals ``pri_spec->stream_id``).
* :enum:`nghttp2_error.NGHTTP2_ERR_DATA_EXIST`
*     DATA or HEADERS has been already submitted and not fully
*     processed yet.  This happens if stream denoted by |stream_id|
*     is in reserved state.
* :enum:`nghttp2_error.NGHTTP2_ERR_PROTO`
*     The |stream_id| is -1, and |session| is server session.
*
* .. warning::
*
*   This function returns assigned stream ID if it succeeds and
*   |stream_id| is -1.  But that stream is not opened yet.  The
*   application must not submit frame to that stream ID before
*   :type:`nghttp2_before_frame_send_callback` is called for this
*   frame.
*
*/
nghttp2_submit_headers :: (session: *nghttp2_session, flags: u8, stream_id: s32, pri_spec: *nghttp2_priority_spec, nva: *nghttp2_nv, nvlen: size_t, stream_user_data: *void) -> s32 #foreign nghttp2;

/**
* @function
*
* Submits one or more DATA frames to the stream |stream_id|.  The
* data to be sent are provided by |data_prd|.  If |flags| contains
* :enum:`nghttp2_flag.NGHTTP2_FLAG_END_STREAM`, the last DATA frame
* has END_STREAM flag set.
*
* This function does not take ownership of the |data_prd|.  The
* function copies the members of the |data_prd|.
*
* This function returns 0 if it succeeds, or one of the following
* negative error codes:
*
* :enum:`nghttp2_error.NGHTTP2_ERR_NOMEM`
*     Out of memory.
* :enum:`nghttp2_error.NGHTTP2_ERR_DATA_EXIST`
*     DATA or HEADERS has been already submitted and not fully
*     processed yet.
* :enum:`nghttp2_error.NGHTTP2_ERR_INVALID_ARGUMENT`
*     The |stream_id| is 0.
* :enum:`nghttp2_error.NGHTTP2_ERR_STREAM_CLOSED`
*     The stream was already closed; or the |stream_id| is invalid.
*
* .. note::
*
*   Currently, only one DATA or HEADERS is allowed for a stream at a
*   time.  Submitting these frames more than once before first DATA
*   or HEADERS is finished results in
*   :enum:`nghttp2_error.NGHTTP2_ERR_DATA_EXIST` error code.  The
*   earliest callback which tells that previous frame is done is
*   :type:`nghttp2_on_frame_send_callback`.  In side that callback,
*   new data can be submitted using `nghttp2_submit_data()`.  Of
*   course, all data except for last one must not have
*   :enum:`nghttp2_flag.NGHTTP2_FLAG_END_STREAM` flag set in |flags|.
*   This sounds a bit complicated, and we recommend to use
*   `nghttp2_submit_request()` and `nghttp2_submit_response()` to
*   avoid this cascading issue.  The experience shows that for HTTP
*   use, these two functions are enough to implement both client and
*   server.
*/
nghttp2_submit_data :: (session: *nghttp2_session, flags: u8, stream_id: s32, data_prd: *nghttp2_data_provider) -> s32 #foreign nghttp2;

/**
* @function
*
* Submits PRIORITY frame to change the priority of stream |stream_id|
* to the priority specification |pri_spec|.
*
* The |flags| is currently ignored and should be
* :enum:`nghttp2_flag.NGHTTP2_FLAG_NONE`.
*
* The |pri_spec| is priority specification of this request.  ``NULL``
* is not allowed for this function. To specify the priority, use
* `nghttp2_priority_spec_init()`.  This function will copy its data
* members.
*
* The ``pri_spec->weight`` must be in [:macro:`NGHTTP2_MIN_WEIGHT`,
* :macro:`NGHTTP2_MAX_WEIGHT`], inclusive.  If ``pri_spec->weight``
* is strictly less than :macro:`NGHTTP2_MIN_WEIGHT`, it becomes
* :macro:`NGHTTP2_MIN_WEIGHT`.  If it is strictly greater than
* :macro:`NGHTTP2_MAX_WEIGHT`, it becomes
* :macro:`NGHTTP2_MAX_WEIGHT`.
*
* If
* :enum:`nghttp2_settings_id.NGHTTP2_SETTINGS_NO_RFC7540_PRIORITIES`
* of value of 1 is received by a remote endpoint, this function does
* nothing and returns 0.
*
* This function returns 0 if it succeeds, or one of the following
* negative error codes:
*
* :enum:`nghttp2_error.NGHTTP2_ERR_NOMEM`
*     Out of memory.
* :enum:`nghttp2_error.NGHTTP2_ERR_INVALID_ARGUMENT`
*     The |stream_id| is 0; or the |pri_spec| is NULL; or trying to
*     depend on itself.
*/
nghttp2_submit_priority :: (session: *nghttp2_session, flags: u8, stream_id: s32, pri_spec: *nghttp2_priority_spec) -> s32 #foreign nghttp2;

/**
* @struct
*
* :type:`nghttp2_extpri` is :rfc:`9218` extensible priorities
* specification for a stream.
*/
nghttp2_extpri :: struct {
    /**
    * :member:`urgency` is the urgency of a stream, it must be in
    * [:macro:`NGHTTP2_EXTPRI_URGENCY_HIGH`,
    * :macro:`NGHTTP2_EXTPRI_URGENCY_LOW`], inclusive, and 0 is the
    * highest urgency.
    */
    urgency: u32;

    /**
    * :member:`inc` indicates that a content can be processed
    * incrementally or not.  If inc is 0, it cannot be processed
    * incrementally.  If inc is 1, it can be processed incrementally.
    * Other value is not permitted.
    */
    inc:     s32;
}

/**
* @function
*
* Submits RST_STREAM frame to cancel/reject the stream |stream_id|
* with the error code |error_code|.
*
* The pre-defined error code is one of :enum:`nghttp2_error_code`.
*
* The |flags| is currently ignored and should be
* :enum:`nghttp2_flag.NGHTTP2_FLAG_NONE`.
*
* This function returns 0 if it succeeds, or one of the following
* negative error codes:
*
* :enum:`nghttp2_error.NGHTTP2_ERR_NOMEM`
*     Out of memory.
* :enum:`nghttp2_error.NGHTTP2_ERR_INVALID_ARGUMENT`
*     The |stream_id| is 0.
*/
nghttp2_submit_rst_stream :: (session: *nghttp2_session, flags: u8, stream_id: s32, error_code: u32) -> s32 #foreign nghttp2;

/**
* @function
*
* Stores local settings and submits SETTINGS frame.  The |iv| is the
* pointer to the array of :type:`nghttp2_settings_entry`.  The |niv|
* indicates the number of :type:`nghttp2_settings_entry`.
*
* The |flags| is currently ignored and should be
* :enum:`nghttp2_flag.NGHTTP2_FLAG_NONE`.
*
* This function does not take ownership of the |iv|.  This function
* copies all the elements in the |iv|.
*
* While updating individual stream's local window size, if the window
* size becomes strictly larger than NGHTTP2_MAX_WINDOW_SIZE,
* RST_STREAM is issued against such a stream.
*
* SETTINGS with :enum:`nghttp2_flag.NGHTTP2_FLAG_ACK` is
* automatically submitted by the library and application could not
* send it at its will.
*
* This function returns 0 if it succeeds, or one of the following
* negative error codes:
*
* :enum:`nghttp2_error.NGHTTP2_ERR_INVALID_ARGUMENT`
*     The |iv| contains invalid value (e.g., initial window size
*     strictly greater than (1 << 31) - 1.
* :enum:`nghttp2_error.NGHTTP2_ERR_NOMEM`
*     Out of memory.
*/
nghttp2_submit_settings :: (session: *nghttp2_session, flags: u8, iv: *nghttp2_settings_entry, niv: size_t) -> s32 #foreign nghttp2;

/**
* @function
*
* Submits PUSH_PROMISE frame.
*
* The |flags| is currently ignored.  The library handles the
* CONTINUATION frame internally and it correctly sets END_HEADERS to
* the last sequence of the PUSH_PROMISE or CONTINUATION frame.
*
* The |stream_id| must be client initiated stream ID.
*
* The |nva| is an array of name/value pair :type:`nghttp2_nv` with
* |nvlen| elements.  The application is responsible to include
* required pseudo-header fields (header field whose name starts with
* ":") in |nva| and must place pseudo-headers before regular header
* fields.
*
* This function creates copies of all name/value pairs in |nva|.  It
* also lower-cases all names in |nva|.  The order of elements in
* |nva| is preserved.  For header fields with
* :enum:`nghttp2_nv_flag.NGHTTP2_NV_FLAG_NO_COPY_NAME` and
* :enum:`nghttp2_nv_flag.NGHTTP2_NV_FLAG_NO_COPY_VALUE` are set,
* header field name and value are not copied respectively.  With
* :enum:`nghttp2_nv_flag.NGHTTP2_NV_FLAG_NO_COPY_NAME`, application
* is responsible to pass header field name in lowercase.  The
* application should maintain the references to them until
* :type:`nghttp2_on_frame_send_callback` or
* :type:`nghttp2_on_frame_not_send_callback` is called.
*
* The |promised_stream_user_data| is a pointer to an arbitrary data
* which is associated to the promised stream this frame will open and
* make it in reserved state.  It is available using
* `nghttp2_session_get_stream_user_data()`.  The application can
* access it in :type:`nghttp2_before_frame_send_callback` and
* :type:`nghttp2_on_frame_send_callback` of this frame.
*
* The client side is not allowed to use this function.
*
* To submit response headers and data, use
* `nghttp2_submit_response()`.
*
* This function returns assigned promised stream ID if it succeeds,
* or one of the following negative error codes:
*
* :enum:`nghttp2_error.NGHTTP2_ERR_NOMEM`
*     Out of memory.
* :enum:`nghttp2_error.NGHTTP2_ERR_PROTO`
*     This function was invoked when |session| is initialized as
*     client.
* :enum:`nghttp2_error.NGHTTP2_ERR_STREAM_ID_NOT_AVAILABLE`
*     No stream ID is available because maximum stream ID was
*     reached.
* :enum:`nghttp2_error.NGHTTP2_ERR_INVALID_ARGUMENT`
*     The |stream_id| is 0; The |stream_id| does not designate stream
*     that peer initiated.
* :enum:`nghttp2_error.NGHTTP2_ERR_STREAM_CLOSED`
*     The stream was already closed; or the |stream_id| is invalid.
*
* .. warning::
*
*   This function returns assigned promised stream ID if it succeeds.
*   As of 1.16.0, stream object for pushed resource is created when
*   this function succeeds.  In that case, the application can submit
*   push response for the promised frame.
*
*   In 1.15.0 or prior versions, pushed stream is not opened yet when
*   this function succeeds.  The application must not submit frame to
*   that stream ID before :type:`nghttp2_before_frame_send_callback`
*   is called for this frame.
*
*/
nghttp2_submit_push_promise :: (session: *nghttp2_session, flags: u8, stream_id: s32, nva: *nghttp2_nv, nvlen: size_t, promised_stream_user_data: *void) -> s32 #foreign nghttp2;

/**
* @function
*
* Submits PING frame.  You don't have to send PING back when you
* received PING frame.  The library automatically submits PING frame
* in this case.
*
* The |flags| is bitwise OR of 0 or more of the following value.
*
* * :enum:`nghttp2_flag.NGHTTP2_FLAG_ACK`
*
* Unless `nghttp2_option_set_no_auto_ping_ack()` is used, the |flags|
* should be :enum:`nghttp2_flag.NGHTTP2_FLAG_NONE`.
*
* If the |opaque_data| is non ``NULL``, then it should point to the 8
* bytes array of memory to specify opaque data to send with PING
* frame.  If the |opaque_data| is ``NULL``, zero-cleared 8 bytes will
* be sent as opaque data.
*
* This function returns 0 if it succeeds, or one of the following
* negative error codes:
*
* :enum:`nghttp2_error.NGHTTP2_ERR_NOMEM`
*     Out of memory.
*/
nghttp2_submit_ping :: (session: *nghttp2_session, flags: u8, opaque_data: *u8) -> s32 #foreign nghttp2;

/**
* @function
*
* Submits GOAWAY frame with the last stream ID |last_stream_id| and
* the error code |error_code|.
*
* The pre-defined error code is one of :enum:`nghttp2_error_code`.
*
* The |flags| is currently ignored and should be
* :enum:`nghttp2_flag.NGHTTP2_FLAG_NONE`.
*
* The |last_stream_id| is peer's stream ID or 0.  So if |session| is
* initialized as client, |last_stream_id| must be even or 0.  If
* |session| is initialized as server, |last_stream_id| must be odd or
* 0.
*
* The HTTP/2 specification says last_stream_id must not be increased
* from the value previously sent.  So the actual value sent as
* last_stream_id is the minimum value between the given
* |last_stream_id| and the last_stream_id previously sent to the
* peer.
*
* If the |opaque_data| is not ``NULL`` and |opaque_data_len| is not
* zero, those data will be sent as additional debug data.  The
* library makes a copy of the memory region pointed by |opaque_data|
* with the length |opaque_data_len|, so the caller does not need to
* keep this memory after the return of this function.  If the
* |opaque_data_len| is 0, the |opaque_data| could be ``NULL``.
*
* After successful transmission of GOAWAY, following things happen.
* All incoming streams having strictly more than |last_stream_id| are
* closed.  All incoming HEADERS which starts new stream are simply
* ignored.  After all active streams are handled, both
* `nghttp2_session_want_read()` and `nghttp2_session_want_write()`
* return 0 and the application can close session.
*
* This function returns 0 if it succeeds, or one of the following
* negative error codes:
*
* :enum:`nghttp2_error.NGHTTP2_ERR_NOMEM`
*     Out of memory.
* :enum:`nghttp2_error.NGHTTP2_ERR_INVALID_ARGUMENT`
*     The |opaque_data_len| is too large; the |last_stream_id| is
*     invalid.
*/
nghttp2_submit_goaway :: (session: *nghttp2_session, flags: u8, last_stream_id: s32, error_code: u32, opaque_data: *u8, opaque_data_len: size_t) -> s32 #foreign nghttp2;

/**
* @function
*
* Returns the last stream ID of a stream for which
* :type:`nghttp2_on_frame_recv_callback` was invoked most recently.
* The returned value can be used as last_stream_id parameter for
* `nghttp2_submit_goaway()` and
* `nghttp2_session_terminate_session2()`.
*
* This function always succeeds.
*/
nghttp2_session_get_last_proc_stream_id :: (session: *nghttp2_session) -> s32 #foreign nghttp2;

/**
* @function
*
* Returns nonzero if new request can be sent from local endpoint.
*
* This function return 0 if request is not allowed for this session.
* There are several reasons why request is not allowed.  Some of the
* reasons are: session is server; stream ID has been spent; GOAWAY
* has been sent or received.
*
* The application can call `nghttp2_submit_request()` without
* consulting this function.  In that case, `nghttp2_submit_request()`
* may return error.  Or, request is failed to sent, and
* :type:`nghttp2_on_stream_close_callback` is called.
*/
nghttp2_session_check_request_allowed :: (session: *nghttp2_session) -> s32 #foreign nghttp2;

/**
* @function
*
* Returns nonzero if |session| is initialized as server side session.
*/
nghttp2_session_check_server_session :: (session: *nghttp2_session) -> s32 #foreign nghttp2;

/**
* @function
*
* Submits WINDOW_UPDATE frame.
*
* The |flags| is currently ignored and should be
* :enum:`nghttp2_flag.NGHTTP2_FLAG_NONE`.
*
* The |stream_id| is the stream ID to send this WINDOW_UPDATE.  To
* send connection level WINDOW_UPDATE, specify 0 to |stream_id|.
*
* If the |window_size_increment| is positive, the WINDOW_UPDATE with
* that value as window_size_increment is queued.  If the
* |window_size_increment| is larger than the received bytes from the
* remote endpoint, the local window size is increased by that
* difference.  If the sole purpose is to increase the local window
* size, consider to use `nghttp2_session_set_local_window_size()`.
*
* If the |window_size_increment| is negative, the local window size
* is decreased by -|window_size_increment|.  If automatic
* WINDOW_UPDATE is enabled
* (`nghttp2_option_set_no_auto_window_update()`), and the library
* decided that the WINDOW_UPDATE should be submitted, then
* WINDOW_UPDATE is queued with the current received bytes count.  If
* the sole purpose is to decrease the local window size, consider to
* use `nghttp2_session_set_local_window_size()`.
*
* If the |window_size_increment| is 0, the function does nothing and
* returns 0.
*
* This function returns 0 if it succeeds, or one of the following
* negative error codes:
*
* :enum:`nghttp2_error.NGHTTP2_ERR_FLOW_CONTROL`
*     The local window size overflow or gets negative.
* :enum:`nghttp2_error.NGHTTP2_ERR_NOMEM`
*     Out of memory.
*/
nghttp2_submit_window_update :: (session: *nghttp2_session, flags: u8, stream_id: s32, window_size_increment: s32) -> s32 #foreign nghttp2;

/**
* @function
*
* Set local window size (local endpoints's window size) to the given
* |window_size| for the given stream denoted by |stream_id|.  To
* change connection level window size, specify 0 to |stream_id|.  To
* increase window size, this function may submit WINDOW_UPDATE frame
* to transmission queue.
*
* The |flags| is currently ignored and should be
* :enum:`nghttp2_flag.NGHTTP2_FLAG_NONE`.
*
* This sounds similar to `nghttp2_submit_window_update()`, but there
* are 2 differences.  The first difference is that this function
* takes the absolute value of window size to set, rather than the
* delta.  To change the window size, this may be easier to use since
* the application just declares the intended window size, rather than
* calculating delta.  The second difference is that
* `nghttp2_submit_window_update()` affects the received bytes count
* which has not acked yet.  By the specification of
* `nghttp2_submit_window_update()`, to strictly increase the local
* window size, we have to submit delta including all received bytes
* count, which might not be desirable in some cases.  On the other
* hand, this function does not affect the received bytes count.  It
* just sets the local window size to the given value.
*
* This function returns 0 if it succeeds, or one of the following
* negative error codes:
*
* :enum:`nghttp2_error.NGHTTP2_ERR_INVALID_ARGUMENT`
*     The |stream_id| is negative.
* :enum:`nghttp2_error.NGHTTP2_ERR_NOMEM`
*     Out of memory.
*/
nghttp2_session_set_local_window_size :: (session: *nghttp2_session, flags: u8, stream_id: s32, window_size: s32) -> s32 #foreign nghttp2;

/**
* @function
*
* Submits extension frame.
*
* Application can pass arbitrary frame flags and stream ID in |flags|
* and |stream_id| respectively.  The |payload| is opaque pointer, and
* it can be accessible though ``frame->ext.payload`` in
* :type:`nghttp2_pack_extension_callback`.  The library will not own
* passed |payload| pointer.
*
* The application must set :type:`nghttp2_pack_extension_callback`
* using `nghttp2_session_callbacks_set_pack_extension_callback()`.
*
* The application should retain the memory pointed by |payload| until
* the transmission of extension frame is done (which is indicated by
* :type:`nghttp2_on_frame_send_callback`), or transmission fails
* (which is indicated by :type:`nghttp2_on_frame_not_send_callback`).
* If application does not touch this memory region after packing it
* into a wire format, application can free it inside
* :type:`nghttp2_pack_extension_callback`.
*
* The standard HTTP/2 frame cannot be sent with this function, so
* |type| must be strictly grater than 0x9.  Otherwise, this function
* will fail with error code
* :enum:`nghttp2_error.NGHTTP2_ERR_INVALID_ARGUMENT`.
*
* This function returns 0 if it succeeds, or one of the following
* negative error codes:
*
* :enum:`nghttp2_error.NGHTTP2_ERR_INVALID_STATE`
*     If :type:`nghttp2_pack_extension_callback` is not set.
* :enum:`nghttp2_error.NGHTTP2_ERR_INVALID_ARGUMENT`
*     If  |type| specifies  standard  HTTP/2 frame  type.  The  frame
*     types  in the  rage [0x0,  0x9], both  inclusive, are  standard
*     HTTP/2 frame type, and cannot be sent using this function.
* :enum:`nghttp2_error.NGHTTP2_ERR_NOMEM`
*     Out of memory
*/
nghttp2_submit_extension :: (session: *nghttp2_session, type: u8, flags: u8, stream_id: s32, payload: *void) -> s32 #foreign nghttp2;

/**
* @struct
*
* The payload of ALTSVC frame.  ALTSVC frame is a non-critical
* extension to HTTP/2.  If this frame is received, and
* `nghttp2_option_set_user_recv_extension_type()` is not set, and
* `nghttp2_option_set_builtin_recv_extension_type()` is set for
* :enum:`nghttp2_frame_type.NGHTTP2_ALTSVC`,
* ``nghttp2_extension.payload`` will point to this struct.
*
* It has the following members:
*/
nghttp2_ext_altsvc :: struct {
    /**
    * The pointer to origin which this alternative service is
    * associated with.  This is not necessarily NULL-terminated.
    */
    origin:          *u8;

    /**
    * The length of the |origin|.
    */
    origin_len:      size_t;

    /**
    * The pointer to Alt-Svc field value contained in ALTSVC frame.
    * This is not necessarily NULL-terminated.
    */
    field_value:     *u8;

    /**
    * The length of the |field_value|.
    */
    field_value_len: size_t;
}

/**
* @function
*
* Submits ALTSVC frame.
*
* ALTSVC frame is a non-critical extension to HTTP/2, and defined in
* `RFC 7383 <https://tools.ietf.org/html/rfc7838#section-4>`_.
*
* The |flags| is currently ignored and should be
* :enum:`nghttp2_flag.NGHTTP2_FLAG_NONE`.
*
* The |origin| points to the origin this alternative service is
* associated with.  The |origin_len| is the length of the origin.  If
* |stream_id| is 0, the origin must be specified.  If |stream_id| is
* not zero, the origin must be empty (in other words, |origin_len|
* must be 0).
*
* The ALTSVC frame is only usable from server side.  If this function
* is invoked with client side session, this function returns
* :enum:`nghttp2_error.NGHTTP2_ERR_INVALID_STATE`.
*
* This function returns 0 if it succeeds, or one of the following
* negative error codes:
*
* :enum:`nghttp2_error.NGHTTP2_ERR_NOMEM`
*     Out of memory
* :enum:`nghttp2_error.NGHTTP2_ERR_INVALID_STATE`
*     The function is called from client side session
* :enum:`nghttp2_error.NGHTTP2_ERR_INVALID_ARGUMENT`
*     The sum of |origin_len| and |field_value_len| is larger than
*     16382; or |origin_len| is 0 while |stream_id| is 0; or
*     |origin_len| is not 0 while |stream_id| is not 0.
*/
nghttp2_submit_altsvc :: (session: *nghttp2_session, flags: u8, stream_id: s32, origin: *u8, origin_len: size_t, field_value: *u8, field_value_len: size_t) -> s32 #foreign nghttp2;

/**
* @struct
*
* The single entry of an origin.
*/
nghttp2_origin_entry :: struct {
    /**
    * The pointer to origin.  No validation is made against this field
    * by the library.  This is not necessarily NULL-terminated.
    */
    origin:     *u8;

    /**
    * The length of the |origin|.
    */
    origin_len: size_t;
}

/**
* @struct
*
* The payload of ORIGIN frame.  ORIGIN frame is a non-critical
* extension to HTTP/2 and defined by `RFC 8336
* <https://tools.ietf.org/html/rfc8336>`_.
*
* If this frame is received, and
* `nghttp2_option_set_user_recv_extension_type()` is not set, and
* `nghttp2_option_set_builtin_recv_extension_type()` is set for
* :enum:`nghttp2_frame_type.NGHTTP2_ORIGIN`,
* ``nghttp2_extension.payload`` will point to this struct.
*
* It has the following members:
*/
nghttp2_ext_origin :: struct {
    /**
    * The number of origins contained in |ov|.
    */
    nov: size_t;

    /**
    * The pointer to the array of origins contained in ORIGIN frame.
    */
    ov:  *nghttp2_origin_entry;
}

/**
* @function
*
* Submits ORIGIN frame.
*
* ORIGIN frame is a non-critical extension to HTTP/2 and defined by
* `RFC 8336 <https://tools.ietf.org/html/rfc8336>`_.
*
* The |flags| is currently ignored and should be
* :enum:`nghttp2_flag.NGHTTP2_FLAG_NONE`.
*
* The |ov| points to the array of origins.  The |nov| specifies the
* number of origins included in |ov|.  This function creates copies
* of all elements in |ov|.
*
* The ORIGIN frame is only usable by a server.  If this function is
* invoked with client side session, this function returns
* :enum:`nghttp2_error.NGHTTP2_ERR_INVALID_STATE`.
*
* :enum:`nghttp2_error.NGHTTP2_ERR_NOMEM`
*     Out of memory
* :enum:`nghttp2_error.NGHTTP2_ERR_INVALID_STATE`
*     The function is called from client side session.
* :enum:`nghttp2_error.NGHTTP2_ERR_INVALID_ARGUMENT`
*     There are too many origins, or an origin is too large to fit
*     into a default frame payload.
*/
nghttp2_submit_origin :: (session: *nghttp2_session, flags: u8, ov: *nghttp2_origin_entry, nov: size_t) -> s32 #foreign nghttp2;

/**
* @struct
*
* The payload of PRIORITY_UPDATE frame.  PRIORITY_UPDATE frame is a
* non-critical extension to HTTP/2.  If this frame is received, and
* `nghttp2_option_set_user_recv_extension_type()` is not set, and
* `nghttp2_option_set_builtin_recv_extension_type()` is set for
* :enum:`nghttp2_frame_type.NGHTTP2_PRIORITY_UPDATE`,
* ``nghttp2_extension.payload`` will point to this struct.
*
* It has the following members:
*/
nghttp2_ext_priority_update :: struct {
    /**
    * The stream ID of the stream whose priority is updated.
    */
    stream_id:       s32;

    /**
    * The pointer to Priority field value.  It is not necessarily
    * NULL-terminated.
    */
    field_value:     *u8;

    /**
    * The length of the :member:`field_value`.
    */
    field_value_len: size_t;
}

/**
* @function
*
* Submits PRIORITY_UPDATE frame.
*
* PRIORITY_UPDATE frame is a non-critical extension to HTTP/2, and
* defined in :rfc:`9218#section-7.1`.
*
* The |flags| is currently ignored and should be
* :enum:`nghttp2_flag.NGHTTP2_FLAG_NONE`.
*
* The |stream_id| is the ID of stream which is prioritized.  The
* |field_value| points to the Priority field value.  The
* |field_value_len| is the length of the Priority field value.
*
* If this function is called by server,
* :enum:`nghttp2_error.NGHTTP2_ERR_INVALID_STATE` is returned.
*
* If
* :enum:`nghttp2_settings_id.NGHTTP2_SETTINGS_NO_RFC7540_PRIORITIES`
* of value of 0 is received by a remote endpoint (or it is omitted),
* this function does nothing and returns 0.
*
* This function returns 0 if it succeeds, or one of the following
* negative error codes:
*
* :enum:`nghttp2_error.NGHTTP2_ERR_NOMEM`
*     Out of memory
* :enum:`nghttp2_error.NGHTTP2_ERR_INVALID_STATE`
*     The function is called from server side session
* :enum:`nghttp2_error.NGHTTP2_ERR_INVALID_ARGUMENT`
*     The |field_value_len| is larger than 16380; or |stream_id| is
*     0.
*/
nghttp2_submit_priority_update :: (session: *nghttp2_session, flags: u8, stream_id: s32, field_value: *u8, field_value_len: size_t) -> s32 #foreign nghttp2;

/**
* @function
*
* Changes the priority of the existing stream denoted by |stream_id|.
* The new priority is |extpri|.  This function is meant to be used by
* server for :rfc:`9218` extensible prioritization scheme.
*
* If |session| is initialized as client, this function returns
* :enum:`nghttp2_error.NGHTTP2_ERR_INVALID_STATE`.  For client, use
* `nghttp2_submit_priority_update()` instead.
*
* If :member:`extpri->urgency <nghttp2_extpri.urgency>` is out of
* bound, it is set to :macro:`NGHTTP2_EXTPRI_URGENCY_LOW`.
*
* If |ignore_client_signal| is nonzero, server starts to ignore
* client priority signals for this stream.
*
* If
* :enum:`nghttp2_settings_id.NGHTTP2_SETTINGS_NO_RFC7540_PRIORITIES`
* of value of 1 is not submitted via `nghttp2_submit_settings()`,
* this function does nothing and returns 0.
*
* :enum:`nghttp2_error.NGHTTP2_ERR_NOMEM`
*     Out of memory.
* :enum:`nghttp2_error.NGHTTP2_ERR_INVALID_STATE`
*     The |session| is initialized as client.
* :enum:`nghttp2_error.NGHTTP2_ERR_INVALID_ARGUMENT`
*     |stream_id| is zero; or a stream denoted by |stream_id| is not
*     found.
*/
nghttp2_session_change_extpri_stream_priority :: (session: *nghttp2_session, stream_id: s32, extpri: *nghttp2_extpri, ignore_client_signal: s32) -> s32 #foreign nghttp2;

/**
* @function
*
* Compares ``lhs->name`` of length ``lhs->namelen`` bytes and
* ``rhs->name`` of length ``rhs->namelen`` bytes.  Returns negative
* integer if ``lhs->name`` is found to be less than ``rhs->name``; or
* returns positive integer if ``lhs->name`` is found to be greater
* than ``rhs->name``; or returns 0 otherwise.
*/
nghttp2_nv_compare_name :: (lhs: *nghttp2_nv, rhs: *nghttp2_nv) -> s32 #foreign nghttp2;

/**
* @function
*
* A helper function for dealing with NPN in client side or ALPN in
* server side.  The |in| contains peer's protocol list in preferable
* order.  The format of |in| is length-prefixed and not
* null-terminated.  For example, ``h2`` and
* ``http/1.1`` stored in |in| like this::
*
*     in[0] = 2
*     in[1..2] = "h2"
*     in[3] = 8
*     in[4..11] = "http/1.1"
*     inlen = 12
*
* The selection algorithm is as follows:
*
* 1. If peer's list contains HTTP/2 protocol the library supports,
*    it is selected and returns 1. The following step is not taken.
*
* 2. If peer's list contains ``http/1.1``, this function selects
*    ``http/1.1`` and returns 0.  The following step is not taken.
*
* 3. This function selects nothing and returns -1 (So called
*    non-overlap case).  In this case, |out| and |outlen| are left
*    untouched.
*
* Selecting ``h2`` means that ``h2`` is written into |*out| and its
* length (which is 2) is assigned to |*outlen|.
*
* For ALPN, refer to https://tools.ietf.org/html/rfc7301
*
* See http://technotes.googlecode.com/git/nextprotoneg.html for more
* details about NPN.
*
* For NPN, to use this method you should do something like::
*
*     static int select_next_proto_cb(SSL* ssl,
*                                     unsigned char **out,
*                                     unsigned char *outlen,
*                                     const unsigned char *in,
*                                     unsigned int inlen,
*                                     void *arg)
*     {
*         int rv;
*         rv = nghttp2_select_next_protocol(out, outlen, in, inlen);
*         if (rv == -1) {
*             return SSL_TLSEXT_ERR_NOACK;
*         }
*         if (rv == 1) {
*             ((MyType*)arg)->http2_selected = 1;
*         }
*         return SSL_TLSEXT_ERR_OK;
*     }
*     ...
*     SSL_CTX_set_next_proto_select_cb(ssl_ctx, select_next_proto_cb, my_obj);
*
*/
nghttp2_select_next_protocol :: (out: **u8, outlen: *u8, in: *u8, inlen: u32) -> s32 #foreign nghttp2;

/**
* @function
*
* Returns a pointer to a nghttp2_info struct with version information
* about the run-time library in use.  The |least_version| argument
* can be set to a 24 bit numerical value for the least accepted
* version number and if the condition is not met, this function will
* return a ``NULL``.  Pass in 0 to skip the version checking.
*/
nghttp2_version :: (least_version: s32) -> *nghttp2_info #foreign nghttp2;

/**
* @function
*
* Returns nonzero if the :type:`nghttp2_error` library error code
* |lib_error| is fatal.
*/
nghttp2_is_fatal :: (lib_error_code: s32) -> s32 #foreign nghttp2;

/**
* @function
*
* Returns nonzero if HTTP header field name |name| of length |len| is
* valid according to http://tools.ietf.org/html/rfc7230#section-3.2
*
* Because this is a header field name in HTTP2, the upper cased alphabet
* is treated as error.
*/
nghttp2_check_header_name :: (name: *u8, len: size_t) -> s32 #foreign nghttp2;

/**
* @function
*
* Returns nonzero if HTTP header field value |value| of length |len|
* is valid according to
* http://tools.ietf.org/html/rfc7230#section-3.2
*
* This function is considered obsolete, and application should
* consider to use `nghttp2_check_header_value_rfc9113()` instead.
*/
nghttp2_check_header_value :: (value: *u8, len: size_t) -> s32 #foreign nghttp2;

/**
* @function
*
* Returns nonzero if HTTP header field value |value| of length |len|
* is valid according to
* http://tools.ietf.org/html/rfc7230#section-3.2, plus
* https://datatracker.ietf.org/doc/html/rfc9113#section-8.2.1
*/
nghttp2_check_header_value_rfc9113 :: (value: *u8, len: size_t) -> s32 #foreign nghttp2;

/**
* @function
*
* Returns nonzero if the |value| which is supposed to be the value of
* the :method header field is valid according to
* https://datatracker.ietf.org/doc/html/rfc7231#section-4 and
* https://datatracker.ietf.org/doc/html/rfc7230#section-3.2.6
*/
nghttp2_check_method :: (value: *u8, len: size_t) -> s32 #foreign nghttp2;

/**
* @function
*
* Returns nonzero if the |value| which is supposed to be the value of
* the :path header field is valid according to
* https://datatracker.ietf.org/doc/html/rfc7540#section-8.1.2.3
*
* |value| is valid if it merely consists of the allowed characters.
* In particular, it does not check whether |value| follows the syntax
* of path.  The allowed characters are all characters valid by
* `nghttp2_check_header_value` minus SPC and HT.
*/
nghttp2_check_path :: (value: *u8, len: size_t) -> s32 #foreign nghttp2;

/**
* @function
*
* Returns nonzero if the |value| which is supposed to be the value of the
* :authority or host header field is valid according to
* https://tools.ietf.org/html/rfc3986#section-3.2
*
* |value| is valid if it merely consists of the allowed characters.
* In particular, it does not check whether |value| follows the syntax
* of authority.
*/
nghttp2_check_authority :: (value: *u8, len: size_t) -> s32 #foreign nghttp2;

/* HPACK API */
nghttp2_hd_deflater :: struct {}

/**
* @function
*
* Initializes |*deflater_ptr| for deflating name/values pairs.
*
* The |max_deflate_dynamic_table_size| is the upper bound of header
* table size the deflater will use.
*
* If this function fails, |*deflater_ptr| is left untouched.
*
* This function returns 0 if it succeeds, or one of the following
* negative error codes:
*
* :enum:`nghttp2_error.NGHTTP2_ERR_NOMEM`
*     Out of memory.
*/
nghttp2_hd_deflate_new :: (deflater_ptr: **nghttp2_hd_deflater, max_deflate_dynamic_table_size: size_t) -> s32 #foreign nghttp2;

/**
* @function
*
* Like `nghttp2_hd_deflate_new()`, but with additional custom memory
* allocator specified in the |mem|.
*
* The |mem| can be ``NULL`` and the call is equivalent to
* `nghttp2_hd_deflate_new()`.
*
* This function does not take ownership |mem|.  The application is
* responsible for freeing |mem|.
*
* The library code does not refer to |mem| pointer after this
* function returns, so the application can safely free it.
*/
nghttp2_hd_deflate_new2 :: (deflater_ptr: **nghttp2_hd_deflater, max_deflate_dynamic_table_size: size_t, mem: *nghttp2_mem) -> s32 #foreign nghttp2;

/**
* @function
*
* Deallocates any resources allocated for |deflater|.
*/
nghttp2_hd_deflate_del :: (deflater: *nghttp2_hd_deflater) -> void #foreign nghttp2;

/**
* @function
*
* Changes header table size of the |deflater| to
* |settings_max_dynamic_table_size| bytes.  This may trigger eviction
* in the dynamic table.
*
* The |settings_max_dynamic_table_size| should be the value received
* in SETTINGS_HEADER_TABLE_SIZE.
*
* The deflater never uses more memory than
* ``max_deflate_dynamic_table_size`` bytes specified in
* `nghttp2_hd_deflate_new()`.  Therefore, if
* |settings_max_dynamic_table_size| >
* ``max_deflate_dynamic_table_size``, resulting maximum table size
* becomes ``max_deflate_dynamic_table_size``.
*
* This function returns 0 if it succeeds, or one of the following
* negative error codes:
*
* :enum:`nghttp2_error.NGHTTP2_ERR_NOMEM`
*     Out of memory.
*/
nghttp2_hd_deflate_change_table_size :: (deflater: *nghttp2_hd_deflater, settings_max_dynamic_table_size: size_t) -> s32 #foreign nghttp2;

/**
* @function
*
* Deflates the |nva|, which has the |nvlen| name/value pairs, into
* the |buf| of length |buflen|.
*
* If |buf| is not large enough to store the deflated header block,
* this function fails with
* :enum:`nghttp2_error.NGHTTP2_ERR_INSUFF_BUFSIZE`.  The caller
* should use `nghttp2_hd_deflate_bound()` to know the upper bound of
* buffer size required to deflate given header name/value pairs.
*
* Once this function fails, subsequent call of this function always
* returns :enum:`nghttp2_error.NGHTTP2_ERR_HEADER_COMP`.
*
* After this function returns, it is safe to delete the |nva|.
*
* This function returns the number of bytes written to |buf| if it
* succeeds, or one of the following negative error codes:
*
* :enum:`nghttp2_error.NGHTTP2_ERR_NOMEM`
*     Out of memory.
* :enum:`nghttp2_error.NGHTTP2_ERR_HEADER_COMP`
*     Deflation process has failed.
* :enum:`nghttp2_error.NGHTTP2_ERR_INSUFF_BUFSIZE`
*     The provided |buflen| size is too small to hold the output.
*/
nghttp2_hd_deflate_hd :: (deflater: *nghttp2_hd_deflater, buf: *u8, buflen: size_t, nva: *nghttp2_nv, nvlen: size_t) -> s32 #foreign nghttp2;

/**
* @function
*
* Deflates the |nva|, which has the |nvlen| name/value pairs, into
* the |veclen| size of buf vector |vec|.  The each size of buffer
* must be set in len field of :type:`nghttp2_vec`.  If and only if
* one chunk is filled up completely, next chunk will be used.  If
* |vec| is not large enough to store the deflated header block, this
* function fails with
* :enum:`nghttp2_error.NGHTTP2_ERR_INSUFF_BUFSIZE`.  The caller
* should use `nghttp2_hd_deflate_bound()` to know the upper bound of
* buffer size required to deflate given header name/value pairs.
*
* Once this function fails, subsequent call of this function always
* returns :enum:`nghttp2_error.NGHTTP2_ERR_HEADER_COMP`.
*
* After this function returns, it is safe to delete the |nva|.
*
* This function returns the number of bytes written to |vec| if it
* succeeds, or one of the following negative error codes:
*
* :enum:`nghttp2_error.NGHTTP2_ERR_NOMEM`
*     Out of memory.
* :enum:`nghttp2_error.NGHTTP2_ERR_HEADER_COMP`
*     Deflation process has failed.
* :enum:`nghttp2_error.NGHTTP2_ERR_INSUFF_BUFSIZE`
*     The provided |buflen| size is too small to hold the output.
*/
nghttp2_hd_deflate_hd_vec :: (deflater: *nghttp2_hd_deflater, vec: *nghttp2_vec, veclen: size_t, nva: *nghttp2_nv, nvlen: size_t) -> s32 #foreign nghttp2;

/**
* @function
*
* Returns an upper bound on the compressed size after deflation of
* |nva| of length |nvlen|.
*/
nghttp2_hd_deflate_bound :: (deflater: *nghttp2_hd_deflater, nva: *nghttp2_nv, nvlen: size_t) -> size_t #foreign nghttp2;

/**
* @function
*
* Returns the number of entries that header table of |deflater|
* contains.  This is the sum of the number of static table and
* dynamic table, so the return value is at least 61.
*/
nghttp2_hd_deflate_get_num_table_entries :: (deflater: *nghttp2_hd_deflater) -> size_t #foreign nghttp2;

/**
* @function
*
* Returns the table entry denoted by |idx| from header table of
* |deflater|.  The |idx| is 1-based, and idx=1 returns first entry of
* static table.  idx=62 returns first entry of dynamic table if it
* exists.  Specifying idx=0 is error, and this function returns NULL.
* If |idx| is strictly greater than the number of entries the tables
* contain, this function returns NULL.
*/
nghttp2_hd_deflate_get_table_entry :: (deflater: *nghttp2_hd_deflater, idx: size_t) -> *nghttp2_nv #foreign nghttp2;

/**
* @function
*
* Returns the used dynamic table size, including the overhead 32
* bytes per entry described in RFC 7541.
*/
nghttp2_hd_deflate_get_dynamic_table_size :: (deflater: *nghttp2_hd_deflater) -> size_t #foreign nghttp2;

/**
* @function
*
* Returns the maximum dynamic table size.
*/
nghttp2_hd_deflate_get_max_dynamic_table_size :: (deflater: *nghttp2_hd_deflater) -> size_t #foreign nghttp2;

nghttp2_hd_inflater :: struct {}

/**
* @function
*
* Initializes |*inflater_ptr| for inflating name/values pairs.
*
* If this function fails, |*inflater_ptr| is left untouched.
*
* This function returns 0 if it succeeds, or one of the following
* negative error codes:
*
* :enum:`nghttp2_error.NGHTTP2_ERR_NOMEM`
*     Out of memory.
*/
nghttp2_hd_inflate_new :: (inflater_ptr: **nghttp2_hd_inflater) -> s32 #foreign nghttp2;

/**
* @function
*
* Like `nghttp2_hd_inflate_new()`, but with additional custom memory
* allocator specified in the |mem|.
*
* The |mem| can be ``NULL`` and the call is equivalent to
* `nghttp2_hd_inflate_new()`.
*
* This function does not take ownership |mem|.  The application is
* responsible for freeing |mem|.
*
* The library code does not refer to |mem| pointer after this
* function returns, so the application can safely free it.
*/
nghttp2_hd_inflate_new2 :: (inflater_ptr: **nghttp2_hd_inflater, mem: *nghttp2_mem) -> s32 #foreign nghttp2;

/**
* @function
*
* Deallocates any resources allocated for |inflater|.
*/
nghttp2_hd_inflate_del :: (inflater: *nghttp2_hd_inflater) -> void #foreign nghttp2;

/**
* @function
*
* Changes header table size in the |inflater|.  This may trigger
* eviction in the dynamic table.
*
* The |settings_max_dynamic_table_size| should be the value
* transmitted in SETTINGS_HEADER_TABLE_SIZE.
*
* This function must not be called while header block is being
* inflated.  In other words, this function must be called after
* initialization of |inflater|, but before calling
* `nghttp2_hd_inflate_hd2()`, or after
* `nghttp2_hd_inflate_end_headers()`.  Otherwise,
* `NGHTTP2_ERR_INVALID_STATE` was returned.
*
* This function returns 0 if it succeeds, or one of the following
* negative error codes:
*
* :enum:`nghttp2_error.NGHTTP2_ERR_NOMEM`
*     Out of memory.
* :enum:`nghttp2_error.NGHTTP2_ERR_INVALID_STATE`
*     The function is called while header block is being inflated.
*     Probably, application missed to call
*     `nghttp2_hd_inflate_end_headers()`.
*/
nghttp2_hd_inflate_change_table_size :: (inflater: *nghttp2_hd_inflater, settings_max_dynamic_table_size: size_t) -> s32 #foreign nghttp2;

/**
* @enum
*
* The flags for header inflation.
*/
nghttp2_hd_inflate_flag :: enum s32 {
    NONE  :: 0;

    FINAL :: 1;

    EMIT  :: 2;

    NGHTTP2_HD_INFLATE_NONE  :: NONE;

    NGHTTP2_HD_INFLATE_FINAL :: FINAL;

    NGHTTP2_HD_INFLATE_EMIT  :: EMIT;
}

/**
* @function
*
* .. warning::
*
*   Deprecated.  Use `nghttp2_hd_inflate_hd2()` instead.
*
* Inflates name/value block stored in |in| with length |inlen|.  This
* function performs decompression.  For each successful emission of
* header name/value pair,
* :enum:`nghttp2_hd_inflate_flag.NGHTTP2_HD_INFLATE_EMIT` is set in
* |*inflate_flags| and name/value pair is assigned to the |nv_out|
* and the function returns.  The caller must not free the members of
* |nv_out|.
*
* The |nv_out| may include pointers to the memory region in the |in|.
* The caller must retain the |in| while the |nv_out| is used.
*
* The application should call this function repeatedly until the
* ``(*inflate_flags) & NGHTTP2_HD_INFLATE_FINAL`` is nonzero and
* return value is non-negative.  This means the all input values are
* processed successfully.  Then the application must call
* `nghttp2_hd_inflate_end_headers()` to prepare for the next header
* block input.
*
* The caller can feed complete compressed header block.  It also can
* feed it in several chunks.  The caller must set |in_final| to
* nonzero if the given input is the last block of the compressed
* header.
*
* This function returns the number of bytes processed if it succeeds,
* or one of the following negative error codes:
*
* :enum:`nghttp2_error.NGHTTP2_ERR_NOMEM`
*     Out of memory.
* :enum:`nghttp2_error.NGHTTP2_ERR_HEADER_COMP`
*     Inflation process has failed.
* :enum:`nghttp2_error.NGHTTP2_ERR_BUFFER_ERROR`
*     The header field name or value is too large.
*
* Example follows::
*
*     int inflate_header_block(nghttp2_hd_inflater *hd_inflater,
*                              uint8_t *in, size_t inlen, int final)
*     {
*         ssize_t rv;
*
*         for(;;) {
*             nghttp2_nv nv;
*             int inflate_flags = 0;
*
*             rv = nghttp2_hd_inflate_hd(hd_inflater, &nv, &inflate_flags,
*                                        in, inlen, final);
*
*             if(rv < 0) {
*                 fprintf(stderr, "inflate failed with error code %zd", rv);
*                 return -1;
*             }
*
*             in += rv;
*             inlen -= rv;
*
*             if(inflate_flags & NGHTTP2_HD_INFLATE_EMIT) {
*                 fwrite(nv.name, nv.namelen, 1, stderr);
*                 fprintf(stderr, ": ");
*                 fwrite(nv.value, nv.valuelen, 1, stderr);
*                 fprintf(stderr, "\n");
*             }
*             if(inflate_flags & NGHTTP2_HD_INFLATE_FINAL) {
*                 nghttp2_hd_inflate_end_headers(hd_inflater);
*                 break;
*             }
*             if((inflate_flags & NGHTTP2_HD_INFLATE_EMIT) == 0 &&
*                inlen == 0) {
*                break;
*             }
*         }
*
*         return 0;
*     }
*
*/
nghttp2_hd_inflate_hd :: (inflater: *nghttp2_hd_inflater, nv_out: *nghttp2_nv, inflate_flags: *s32, in: *u8, inlen: size_t, in_final: s32) -> s32 #foreign nghttp2;

/**
* @function
*
* Inflates name/value block stored in |in| with length |inlen|.  This
* function performs decompression.  For each successful emission of
* header name/value pair,
* :enum:`nghttp2_hd_inflate_flag.NGHTTP2_HD_INFLATE_EMIT` is set in
* |*inflate_flags| and name/value pair is assigned to the |nv_out|
* and the function returns.  The caller must not free the members of
* |nv_out|.
*
* The |nv_out| may include pointers to the memory region in the |in|.
* The caller must retain the |in| while the |nv_out| is used.
*
* The application should call this function repeatedly until the
* ``(*inflate_flags) & NGHTTP2_HD_INFLATE_FINAL`` is nonzero and
* return value is non-negative.  If that happens, all given input
* data (|inlen| bytes) are processed successfully.  Then the
* application must call `nghttp2_hd_inflate_end_headers()` to prepare
* for the next header block input.
*
* In other words, if |in_final| is nonzero, and this function returns
* |inlen|, you can assert that
* :enum:`nghttp2_hd_inflate_final.NGHTTP2_HD_INFLATE_FINAL` is set in
* |*inflate_flags|.
*
* The caller can feed complete compressed header block.  It also can
* feed it in several chunks.  The caller must set |in_final| to
* nonzero if the given input is the last block of the compressed
* header.
*
* This function returns the number of bytes processed if it succeeds,
* or one of the following negative error codes:
*
* :enum:`nghttp2_error.NGHTTP2_ERR_NOMEM`
*     Out of memory.
* :enum:`nghttp2_error.NGHTTP2_ERR_HEADER_COMP`
*     Inflation process has failed.
* :enum:`nghttp2_error.NGHTTP2_ERR_BUFFER_ERROR`
*     The header field name or value is too large.
*
* Example follows::
*
*     int inflate_header_block(nghttp2_hd_inflater *hd_inflater,
*                              uint8_t *in, size_t inlen, int final)
*     {
*         ssize_t rv;
*
*         for(;;) {
*             nghttp2_nv nv;
*             int inflate_flags = 0;
*
*             rv = nghttp2_hd_inflate_hd2(hd_inflater, &nv, &inflate_flags,
*                                         in, inlen, final);
*
*             if(rv < 0) {
*                 fprintf(stderr, "inflate failed with error code %zd", rv);
*                 return -1;
*             }
*
*             in += rv;
*             inlen -= rv;
*
*             if(inflate_flags & NGHTTP2_HD_INFLATE_EMIT) {
*                 fwrite(nv.name, nv.namelen, 1, stderr);
*                 fprintf(stderr, ": ");
*                 fwrite(nv.value, nv.valuelen, 1, stderr);
*                 fprintf(stderr, "\n");
*             }
*             if(inflate_flags & NGHTTP2_HD_INFLATE_FINAL) {
*                 nghttp2_hd_inflate_end_headers(hd_inflater);
*                 break;
*             }
*             if((inflate_flags & NGHTTP2_HD_INFLATE_EMIT) == 0 &&
*                inlen == 0) {
*                break;
*             }
*         }
*
*         return 0;
*     }
*
*/
nghttp2_hd_inflate_hd2 :: (inflater: *nghttp2_hd_inflater, nv_out: *nghttp2_nv, inflate_flags: *s32, in: *u8, inlen: size_t, in_final: s32) -> s32 #foreign nghttp2;

/**
* @function
*
* Signals the end of decompression for one header block.
*
* This function returns 0 if it succeeds. Currently this function
* always succeeds.
*/
nghttp2_hd_inflate_end_headers :: (inflater: *nghttp2_hd_inflater) -> s32 #foreign nghttp2;

/**
* @function
*
* Returns the number of entries that header table of |inflater|
* contains.  This is the sum of the number of static table and
* dynamic table, so the return value is at least 61.
*/
nghttp2_hd_inflate_get_num_table_entries :: (inflater: *nghttp2_hd_inflater) -> size_t #foreign nghttp2;

/**
* @function
*
* Returns the table entry denoted by |idx| from header table of
* |inflater|.  The |idx| is 1-based, and idx=1 returns first entry of
* static table.  idx=62 returns first entry of dynamic table if it
* exists.  Specifying idx=0 is error, and this function returns NULL.
* If |idx| is strictly greater than the number of entries the tables
* contain, this function returns NULL.
*/
nghttp2_hd_inflate_get_table_entry :: (inflater: *nghttp2_hd_inflater, idx: size_t) -> *nghttp2_nv #foreign nghttp2;

/**
* @function
*
* Returns the used dynamic table size, including the overhead 32
* bytes per entry described in RFC 7541.
*/
nghttp2_hd_inflate_get_dynamic_table_size :: (inflater: *nghttp2_hd_inflater) -> size_t #foreign nghttp2;

/**
* @function
*
* Returns the maximum dynamic table size.
*/
nghttp2_hd_inflate_get_max_dynamic_table_size :: (inflater: *nghttp2_hd_inflater) -> size_t #foreign nghttp2;

nghttp2_stream :: struct {}

/**
* @function
*
* Returns pointer to :type:`nghttp2_stream` object denoted by
* |stream_id|.  If stream was not found, returns NULL.
*
* Returns imaginary root stream (see
* `nghttp2_session_get_root_stream()`) if 0 is given in |stream_id|.
*
* Unless |stream_id| == 0, the returned pointer is valid until next
* call of `nghttp2_session_send()`, `nghttp2_session_mem_send()`,
* `nghttp2_session_recv()`, and `nghttp2_session_mem_recv()`.
*/
nghttp2_session_find_stream :: (session: *nghttp2_session, stream_id: s32) -> *nghttp2_stream #foreign nghttp2;

/**
* @enum
*
* State of stream as described in RFC 7540.
*/
nghttp2_stream_proto_state :: enum s32 {
    IDLE               :: 1;

    OPEN               :: 2;

    RESERVED_LOCAL     :: 3;

    RESERVED_REMOTE    :: 4;

    HALF_CLOSED_LOCAL  :: 5;

    HALF_CLOSED_REMOTE :: 6;

    CLOSED             :: 7;

    NGHTTP2_STREAM_STATE_IDLE               :: IDLE;

    NGHTTP2_STREAM_STATE_OPEN               :: OPEN;

    NGHTTP2_STREAM_STATE_RESERVED_LOCAL     :: RESERVED_LOCAL;

    NGHTTP2_STREAM_STATE_RESERVED_REMOTE    :: RESERVED_REMOTE;

    NGHTTP2_STREAM_STATE_HALF_CLOSED_LOCAL  :: HALF_CLOSED_LOCAL;

    NGHTTP2_STREAM_STATE_HALF_CLOSED_REMOTE :: HALF_CLOSED_REMOTE;

    NGHTTP2_STREAM_STATE_CLOSED             :: CLOSED;
}

/**
* @function
*
* Returns state of |stream|.  The root stream retrieved by
* `nghttp2_session_get_root_stream()` will have stream state
* :enum:`nghttp2_stream_proto_state.NGHTTP2_STREAM_STATE_IDLE`.
*/
nghttp2_stream_get_state :: (stream: *nghttp2_stream) -> nghttp2_stream_proto_state #foreign nghttp2;

/**
* @function
*
* Returns root of dependency tree, which is imaginary stream with
* stream ID 0.  The returned pointer is valid until |session| is
* freed by `nghttp2_session_del()`.
*/
nghttp2_session_get_root_stream :: (session: *nghttp2_session) -> *nghttp2_stream #foreign nghttp2;

/**
* @function
*
* Returns the parent stream of |stream| in dependency tree.  Returns
* NULL if there is no such stream.
*/
nghttp2_stream_get_parent :: (stream: *nghttp2_stream) -> *nghttp2_stream #foreign nghttp2;

nghttp2_stream_get_stream_id :: (stream: *nghttp2_stream) -> s32 #foreign nghttp2;

/**
* @function
*
* Returns the next sibling stream of |stream| in dependency tree.
* Returns NULL if there is no such stream.
*/
nghttp2_stream_get_next_sibling :: (stream: *nghttp2_stream) -> *nghttp2_stream #foreign nghttp2;

/**
* @function
*
* Returns the previous sibling stream of |stream| in dependency tree.
* Returns NULL if there is no such stream.
*/
nghttp2_stream_get_previous_sibling :: (stream: *nghttp2_stream) -> *nghttp2_stream #foreign nghttp2;

/**
* @function
*
* Returns the first child stream of |stream| in dependency tree.
* Returns NULL if there is no such stream.
*/
nghttp2_stream_get_first_child :: (stream: *nghttp2_stream) -> *nghttp2_stream #foreign nghttp2;

/**
* @function
*
* Returns dependency weight to the parent stream of |stream|.
*/
nghttp2_stream_get_weight :: (stream: *nghttp2_stream) -> s32 #foreign nghttp2;

/**
* @function
*
* Returns the sum of the weight for |stream|'s children.
*/
nghttp2_stream_get_sum_dependency_weight :: (stream: *nghttp2_stream) -> s32 #foreign nghttp2;

/**
* @functypedef
*
* Callback function invoked when the library outputs debug logging.
* The function is called with arguments suitable for ``vfprintf(3)``
*
* The debug output is only enabled if the library is built with
* ``DEBUGBUILD`` macro defined.
*/
nghttp2_debug_vprintf_callback :: #type (format: *u8, args: va_list) -> void #c_call;

/**
* @function
*
* Sets a debug output callback called by the library when built with
* ``DEBUGBUILD`` macro defined.  If this option is not used, debug
* log is written into standard error output.
*
* For builds without ``DEBUGBUILD`` macro defined, this function is
* noop.
*
* Note that building with ``DEBUGBUILD`` may cause significant
* performance penalty to libnghttp2 because of extra processing.  It
* should be used for debugging purpose only.
*
* .. Warning::
*
*   Building with ``DEBUGBUILD`` may cause significant performance
*   penalty to libnghttp2 because of extra processing.  It should be
*   used for debugging purpose only.  We write this two times because
*   this is important.
*/
nghttp2_set_debug_vprintf_callback :: (debug_vprintf_callback: nghttp2_debug_vprintf_callback) -> void #foreign nghttp2;

#scope_file

nghttp2 :: #library "bin/win/nghttp2";
