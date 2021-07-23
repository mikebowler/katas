package primefactors

import io.kotlintest.specs.StringSpec
import io.kotlintest.shouldBe
import io.kotlintest.shouldNotBe

class PrimeFactorsTest: StringSpec() {

    init {
        "factors of 2 are 2" {
            listOf(2).shouldBe(factor(2));
        }
    }
}

