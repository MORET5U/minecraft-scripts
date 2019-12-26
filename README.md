# Instroduction

This repository is considered to be used if your VPS has at least 4GB of RAM, your paper.jar (can be server.jar or etc.) placed into `/home/minecraft`.

If you want, you can always fork it and change any values if you'd like.

## NOTICE

In order to use restart script you'll need `crontab`, so your server automatically restart every day at 3:30 AM.

1. Run `crontab -e`
2. Paste `30 3 * * * /minecraft/restart.sh > /dev/null 2>&1`

I created this just for myself, so I don't forget how to do those things lol.

## Links
Spigot forum post: [go to url](https://www.spigotmc.org/threads/cron-job-to-restart-servers.156728/)
MinecraftForum post: [go to url](https://www.minecraftforum.net/forums/support/server-support-and/1917504-auto-restart-script-linux-bukkit-maintenance-cron)
