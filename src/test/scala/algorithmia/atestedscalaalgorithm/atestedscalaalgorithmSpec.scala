package algorithmia.atestedscalaalgorithm

import org.scalatest._

class atestedscalaalgorithmSpec extends FlatSpec with Matchers {
  "Initial atestedscalaalgorithm algorithm" should "return Hello plus input" in {
    val algorithm = new atestedscalaalgorithm()
    "Hello Bob" shouldEqual algorithm.apply("Bob")
  }
}
