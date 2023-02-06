# Exmaples
## RMI (Remote Method Invokation) Shout

Instructions to build:

3 separate terminal windows:
1. `make rmishout`

2. Run the Server code ports between 50010 - 50019 \
`rmiregistry XXXXX` \
`java cs3534.examples.rmishout.ShoutServerMainline XXXXXX YYYYYY`

3. Run the Client code
hostname to find machine name \
`java cs3534.examples.rmishout.ShoutClient <yourmachine-name> XXXXXX`

## [Socket SPS (Scissors-Paper-Stone)](/cs3534/examples/socketsps/)

1. Build with \
`make socketsps`

2. Open a terminal (Server) at reposity root and run \
`java cs3524.examples.socketsps.SPSServer XXXXXX`

3. Open another terminal (Client) at reposity root and run \
`java cs3524.examples.socketsps.SPSClient localhost XXXXXX`
