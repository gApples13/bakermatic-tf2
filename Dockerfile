FROM cm2network/cm2network/steamcmd
WORKDIR /home/steam
RUN steamcmd +force_install_dir tf2ds +login anonymous +app_update 232250 +quit
COPY tf2ds/tf/cfg* tf2ds/tf/cfg/
CMD [ "tf2ds/run_srcds -console -game tf +sv_pure 1 +randommap +maxplayers 24 +sv_setsteamaccount [HENRY'S API TOKEN!!!!!!!!!!]" ]