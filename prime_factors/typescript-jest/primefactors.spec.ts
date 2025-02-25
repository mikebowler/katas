import {PrimeFactors} from './primefactors'

describe('PrimeFactors', () => {
  it('factors 2', () => {
    expect(new PrimeFactors().answer(2)).toEqual([2]);
  })
})