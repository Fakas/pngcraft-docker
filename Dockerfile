FROM fakas/pngcraft

RUN git clone --single-branch --branch core  https://github.com/Fakas/PNGCraft .
COPY forge_installer.jar "./forge_installer.jar"
RUN java -jar forge_installer.jar --installServer
RUN rm -f forge_installer.jar
RUN mv forge-*.jar forge_server.jar
ENTRYPOINT ./launch_server.sh
CMD []

