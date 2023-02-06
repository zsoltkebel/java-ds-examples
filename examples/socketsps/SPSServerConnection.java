package examples.socketsps;

import java.util.Random;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.IOException;

import java.net.Socket;
import java.net.SocketException;

public class SPSServerConnection extends Thread {
	Random _gen;

	private Socket _clientSocket;
    private ObjectInputStream _clientIn;
    private ObjectOutputStream _clientOut;

	public SPSServerConnection( Socket client ) throws SocketException, IOException {
		_gen = new Random(System.currentTimeMillis());
		
		_clientSocket = client;
		// Open I/O steams
		_clientIn = new ObjectInputStream( _clientSocket.getInputStream() );
		_clientOut = new ObjectOutputStream( _clientSocket.getOutputStream() );

		setPriority( NORM_PRIORITY - 1 );
	}
	
	public void run() {
	try {
	    Object cc;
	    while (true) {
		cc = _clientIn.readObject();
		if (cc instanceof SPS) {
		    _clientOut.writeObject( ((SPS)cc).serverMove( myChoice() ) );
		    _clientOut.flush();
		}
		else {
		    _clientOut.writeObject( null );
		    _clientOut.flush();
		}
	    }
	}
	catch (ServerHasAlreadyMovedException e) {
	    System.err.println( "ServerAlreadyMovedException caught." );
	}
	catch (ClassNotFoundException e) {
	    System.err.println( "Can't find the class of the instance sent to the server." );
	    e.printStackTrace( System.err );
	}		
	catch (IOException e) {
	    // An IOException is thown when the client closes the
	    // connection, so do nothing here.
	}
    }
	
    /**
     * Implements the server's move using the pseudo-random number
     * generator.
     */
    private Choice myChoice()
    {
	int sel = _gen.nextInt( 3 );
	Choice theChoice = null ;
	switch (sel) {
	case 0:
	    theChoice = new Scissors();
	    break;
	case 1:
	    theChoice = new Paper();
	    break;
	default:
	    theChoice = new Stone();
	}
	return theChoice;
    }
}


