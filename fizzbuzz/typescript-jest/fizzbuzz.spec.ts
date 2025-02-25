import {FizzBuzz} from '../src/fizzbuzz'

describe('Sample', () => {
  it('does something', () => {
    for(var i=1;i<=100;i++) {
      console.log("fizzbuzz("+i+")="+fizzbuzz.fizzbuzz(i));
      console.log("foo")
    }
  })
})