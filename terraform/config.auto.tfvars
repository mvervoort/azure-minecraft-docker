# enable_log_filter              = true # Chat privacy

resource_suffix                = "cas1"

enable_auto_startstop          = true
enable_backup                  = true
enable_log_filter              = false

minecraft_config               = {
  server1                      = {
    allow_ops_only             = "false"
    container_image_tag        = ""
    icon_file_png              = "visuals/cas1_server1.png" 
    environment_variables      = {
      ALLOW_NETHER             = true
      ANNOUNCE_PLAYER_ACHIEVEMENTS = "true"
      DIFFICULTY               = "easy"
      ENABLE_COMMAND_BLOCK     = true
      EULA                     = true
      ICON                     = "https://zuivelonline.nl/media/uploads/2020/10/Kaas_weetjes1.jpg"
      MAX_PLAYERS              = 10
      MODS                     = null
      MODE                     = "survival"
      MOTD                     = "ZeroShino server1"
      OVERRIDE_SERVER_PROPERTIES = true # Use these settings over server.roperties every time the container starts
      SNOOPER_ENABLED          = "false"
      TYPE                     = "VANILLA"
      VERSION                  = "1.18.1"
      MEMORY                   = "3G"
    }
    minecraft_server_port      = 25565
    start_time                 = "12:00"
    stop_time                  = "00:01"
    vanity_hostname_prefix     = "mc-cas"
  }
}

minecraft_bedrock_config       = { }

provisoner_email_address       = "mpj.vervoort@gmail.com"

minecraft_ops                  = ["ZeroShino"]
minecraft_users                = [
    "ZeroShino",
    "ZeroShuki",
    "OneShuki",
    "Tobias2006",
    "Aryqnto_",
    "Wrench07",
    "KasqerPK"
]
subscription_id                = "fa9aad52-e3ac-4a57-a851-fae41f1c870f"
tenant_id                      = "83fbe6ff-2b94-43d8-913f-98c63084e1eb"
#vanity_dns_zone_id             = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/mySharedRG/providers/Microsoft.Network/dnszones/mydomain.com"
