'use strict';

const fizzbuzz = require('./fizzbuzz.js');

describe('fizzbuzz', () => {
  it('print all', () => {
    for(var i=1;i<=100;i++) {
      console.log("fizzbuzz("+i+")="+fizzbuzz.fizzbuzz(i));
    }
  });
});