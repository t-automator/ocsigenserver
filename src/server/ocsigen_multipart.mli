val scan_multipart_body_from_stream:
  ?max_size : Int64.t ->
  boundary : string ->
  create : ((string * string) list -> 'a) ->
  add : ('a -> string -> unit Lwt.t) ->
  stop : (int64 -> 'a -> 'b Lwt.t) ->
  string Ocsigen_stream.stream ->
  unit Lwt.t

type file_info = {
  tmp_filename : string ;
  filesize : int64 ;
  raw_original_filename : string ;
  file_content_type : ((string * string) * (string * string) list) option
}

val post_params :
  ?content_type : ((string * string) * (string * string) list) ->
  string Ocsigen_stream.t ->
  (string option *
   Int64.t option ->
   ((string * string) list * (string * file_info) list) Lwt.t)  option
