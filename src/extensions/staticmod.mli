val dir : string Ocsigen_server.Vhost.Config.key
val regexp : string Ocsigen_server.Vhost.Config.key
val code : string Ocsigen_server.Vhost.Config.key
val dest :
  Ocsigen_extensions.ud_string Ocsigen_server.Vhost.Config.key
val root_checks :
  Ocsigen_extensions.ud_string Ocsigen_server.Vhost.Config.key

val register : Ocsigen_server.Vhost.t -> unit
