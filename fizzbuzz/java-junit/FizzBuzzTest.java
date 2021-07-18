import org.junit.jupiter.api.*;
import static org.junit.jupiter.api.Assertions.*;

@DisplayNameGeneration(DisplayNameGenerator.ReplaceUnderscores.class)
public class FizzBuzzTest {

    @Test
    void printAllResults() {
        for( int i=1; i<=100; i++ ) {
            System.out.println("convert(" + i + ")=" + FizzBuzz.convert(i));
        }
    }
}