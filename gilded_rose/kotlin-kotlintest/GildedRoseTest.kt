package com.gildedrose

import io.kotlintest.specs.StringSpec
import io.kotlintest.shouldBe
import io.kotlintest.shouldNotBe

class GildedRoseTest: StringSpec() {

    init {
        "foo" {
            val items = arrayOf<Item>(Item("foo", 0, 0))
            val app = GildedRose(items)
            app.updateQuality()
            app.items[0].name.shouldBe("fixme");
        }
    }
    
}

