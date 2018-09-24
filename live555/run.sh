#!/usr/bin/with-contenv bash
# ==============================================================================
# SmartHouse Hass.io Add-ons: Live555 RTSP Proxy Server
# Runs the Live555 RTSP Proxy Server
# ==============================================================================

CONFIG_PATH=/data/options.json
STREAMS=$(jq --raw-output ".streams[]" $CONFIG_PATH)

# Run the Live555 RTSP Proxy Server
exec live555ProxyServer ${STREAMS[*]}
