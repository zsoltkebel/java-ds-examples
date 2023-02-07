package examples.auction;

public class Timer extends Thread {
    private long millis;
    private Runnable onEnd;

    public Timer(long millis, Runnable callback) {
        this.millis = millis;
        this.onEnd = callback;
    }

    public void run() {
        try {
            sleep(this.millis);
            this.onEnd.run();
        }
        catch (InterruptedException e) {
            System.err.println( "Thread sleep interruption in EndAuction thread." );
            e.printStackTrace( System.err );
        }
    }
}
