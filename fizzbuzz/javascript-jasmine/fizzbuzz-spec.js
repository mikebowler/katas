'use strict';

const fizzbuzz = require('./fizzbuzz.js');

describe('answer', () => {
  it('to life the universe and everything', () => {
    for(var i=1;i<=100;i++) {
      console.log("fizzbuzz("+i+")="+fizzbuzz.fizzbuzz(i));
    }
  });
});