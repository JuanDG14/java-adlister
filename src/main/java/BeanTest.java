import java.util.ArrayList;

public class BeanTest {
    public static void main(String[] args) {
        Album humanz = new Album(1, "Gorillaz", "Humanz", 2017, .65, "Trip hop, Contemporary R&B");

        Author hDT = new Author(1, "Henry David", "Thoreau");
        Quote quteOfTheDay = new Quote(1, "Destroy Everything", hDT);

        System.out.println(quteOfTheDay.getContent());
        System.out.println(quteOfTheDay.getAuthor().getFirstName());
        System.out.println(humanz.getGenre());

        ArrayList<Quote> quotes = new ArrayList<>();
        quotes.add(quteOfTheDay);
        quotes.add(new Quote(2, "I hate everyone equally, you can't tear that out of me", new Author(2, "Tom", "Araya")));
        quotes.add(new Quote(3, "Take a look to the sky just before you die, it's the last time you will", new Author(3, "James", "Hetfield")));

        for (Quote quote : quotes) {
            System.out.println("Here's a quote for ya'll! ***");
            System.out.printf("" %s"%n    - %s %s%n", quote.getContent(), quote.getAuthor().getFirstName(), quote.getAuthor().getLastName());
        }

    }
}
