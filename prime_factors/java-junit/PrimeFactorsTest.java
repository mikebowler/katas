import java.util.*;
import org.junit.jupiter.api.*;
import static org.junit.jupiter.api.Assertions.*;

import static org.junit.Assert.*;
import static org.assertj.core.api.Assertions.assertThat;

public class PrimeFactorsTest {

    @Test
    public void factoringTwoShouldReturn2() {
        PrimeFactors primeFactors = new PrimeFactors();
        assertEquals(Arrays.asList(2), primeFactors.factor(2));
    }
}