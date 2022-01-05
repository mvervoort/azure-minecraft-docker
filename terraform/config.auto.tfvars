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
      #ICON                     = "https://minecraftstorcas1.blob.core.windows.net/images/cas.png?sp=r&st=2022-01-05T18:21:41Z&se=2032-01-06T02:21:41Z&spr=https&sv=2020-08-04&sr=b&sig=f6pxET%2BP1eRt9U3GG7%2BedXfj2zfGaNT5lxg9DUC5fuU%3D" #"https://raw.githubusercontent.com/geekzter/azure-minecraft-docker/main/visuals/aci.png"
      MAX_PLAYERS              = 10
      MODS                     = null
      MODE                     = "creative"
      MOTD                     = "ZeroShino server1"
      OVERRIDE_SERVER_PROPERTIES = true # Use these settings over server.roperties every time the container starts
      SNOOPER_ENABLED          = "false"
      TYPE                     = "PAPER"
      VERSION                  = "1.18.1"
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
    "User1",
    "User2",
    "User3"
]
subscription_id                = "fa9aad52-e3ac-4a57-a851-fae41f1c870f"
tenant_id                      = "83fbe6ff-2b94-43d8-913f-98c63084e1eb"
#vanity_dns_zone_id             = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/mySharedRG/providers/Microsoft.Network/dnszones/mydomain.com"
