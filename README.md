# Exmaples
## RMI (Remote Method Invokation) Shout

Instructions to build:

3 separate terminal windows:
1. `make rmishout`

2. Run the Server code ports between 50010 - 50019 \
`rmiregistry XXXXX` \
`java examples.rmishout.ShoutServerMainline XXXXXX YYYYYY`

3. Run the Client code
hostname to find machine name \
`java examples.rmishout.ShoutClient <yourmachine-name> XXXXXX`

## [Socket SPS (Scissors-Paper-Stone)](/examples/socketsps/) (Practical 2)

1. Build with \
`make socketsps`

2. Open a terminal (Server) at reposity root and run \
`java examples.socketsps.SPSServer XXXXXX`

3. Open another terminal (Client) at reposity root and run \
`java examples.socketsps.SPSClient localhost XXXXXX`

## [Auction](/examples/auction/) (Practical 2)

1. `make auction`

2. `rmiregistry XXXXX`

3. New Terminal \
`java examples.auction.AuctioneerMainline XXXXX 50014 laptop`

4. New Termial \
`java examples.auction.BidderMainline oa-edu-188-66.wireless.abdn.ac.uk XXXXX 50016 30`