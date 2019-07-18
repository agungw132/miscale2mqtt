# miscale2mqtt

Original script of miscale reading: https://gist.github.com/syssi/4108a54877406dc231d95514e538bde9#file-miscalegw-py-L10-L15

## Get MAC Address of Mi Scale
```
hcitool lescan
```

## How to run it

```
docker run -d --name miscale2mqtt --net host \
  -e MAC_ADDRESS=<mac_adress_mi_scale> \
  -e MQTT_HOST=<mqtt_broker_ip_address> 
  -e MQTT_PORT=<port> \
  -e MQTT_USER=<username> \ 
  -e MQTT_PASSWORD=<password> \
  -e MQTT_DELAY=<timout_in_second> \
  -e MQTT_INPUT=<rf_code_topic> \
  -e MQTT_OUTPUT=<published_topic>  \
  -v /etc/localtime:/etc/localtime:ro 
  agungw132/ble-miscale2
```
