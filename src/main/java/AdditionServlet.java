import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "AdditionServlet", urlPatterns = "/add")
public class AdditionServlet extends HttpServlet {

//    @Override
//    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException{
//        try {
//            int num1 = Integer.parseInt(req.getParameter("num1"));
//        } catch (NumberFormatException nfe) {
//            out.println("You done goofed... num1 was not properly formatted");
//        }
//        try {
//            int num2 = Integer.parseInt(req.getParameter("num2"));
//        } catch (NumberFormatException nfe) {
//            out.println("You done goofed... num2 was not properly formatted");
//        }
//
//        resp.setContentType("text/html");
//        PrintWriter out = resp.getWriter();
//        out.println("<h1>" + num1 + " + " + num2 + " = " + (num1 + num2) + "</h1>");
//    }
}