/*******************************************************************
 * cs3515.examples.auction.BidderImpl                              *
 *******************************************************************/

package examples.auction;

import java.rmi.RemoteException;

/**
 * An implementation of the AuctioneerInterface remote interface.

 * @see BidderInterface

 * @author Tim Norman, University of Aberdeen
 * @version 1.0
 */

public class BidderImpl implements BidderInterface {
    public BidderImpl() throws RemoteException {}

    @Override
    public void won( String item, float price ) throws RemoteException {
        System.out.println("Congratulations!  You have bought " + item + ".");
        System.out.println("You paid " + price + ".");
    }

    @Override
    public void lost(String item, String msg) throws RemoteException {
	    System.out.println("Sorry, your bid for " + item + " was not successful.\n" + msg);
    }

    @Override
    public void inform(float highestBid) throws RemoteException {
	    System.out.println( "A new highest bid was registered: " + highestBid);        
    }
}

