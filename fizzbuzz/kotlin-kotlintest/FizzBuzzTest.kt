package fizzbuzz

import io.kotlintest.specs.StringSpec
import io.kotlintest.shouldBe
import io.kotlintest.shouldNotBe

class FizzBuzzTest /*[X]*/ : StringSpec() {

    init {
        "printAll" {
            for (index in 1..100) { 
                println("convert($index)=${fizzbuzz(index)}")
            }

         }

        "Other example test" {
            "a" shouldNotBe "b"
        }
    }
}

