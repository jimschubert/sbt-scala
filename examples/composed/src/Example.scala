import java.net._
import java.io._
import scala.io._

object Example { 
    def qotd(server: String): Unit = {
        val s = new Socket(InetAddress.getByName(server), 17)
        val in = new BufferedSource(s.getInputStream()).getLines()
        println(in.next())
        s.close()
    }
    
    def main(args: Array[String]): Unit = args.foreach(qotd) 
}