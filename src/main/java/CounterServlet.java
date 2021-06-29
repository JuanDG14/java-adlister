import java.io.*;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import javax.servlet.http.HttpServlet;

@WebServlet(name = "CounterServlet", urlPatterns = "/count")
public class CounterServlet extends HttpServlet {
    int counter = 0;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        counter++;
        res.setContentType("text/html");
        PrintWriter out = res.getWriter();
        if (req.getParameter("reset") != null){
            counter = 1;
        }
        out.println(
                "<h1 align = \"center\">" + "Total Number of Hits" + "</h1>\n" +
                        "<h2 align = \"center\">" + counter + "</h2>\n"
        );

    }
}
