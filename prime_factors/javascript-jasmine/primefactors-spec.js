'use strict';

const primefactors = require('./primefactors.js');

describe('primefactors', () => {
  it('should factor 2 into [2]', () => {
    expect(primefactors.factor(2)).toEqual([2]);
  });
});