object HelloWorld extends App {
  (1 to 1000).toList.par.foreach(println)
  println("end")
}
