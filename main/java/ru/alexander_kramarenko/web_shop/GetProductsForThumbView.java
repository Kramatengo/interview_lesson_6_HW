package ru.alexander_kramarenko.web_shop;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

@WebServlet(name = "GetProductsForThumbView", urlPatterns = "/show_products")
public class GetProductsForThumbView extends HttpServlet {
    List<Product> products = new ArrayList<>(Arrays.asList(
            new Product(10001, "TV 16\"-22\" (40см-55см)", 12000f),
            new Product(10002, "TV 23\"-24\" (58см-60см)", 15000f),
            new Product(10003, "TV 26\"-29\" (66см-73см)", 18000f),
            new Product(10004, "TV 30\"-32\" (76см-81см)", 22000f),
            new Product(10005, "TV 38\"-39\" (96см-99см)", 32000f),
            new Product(10006, "TV 40\"-43\" (101см-109см)", 42000f),
            new Product(10007, "TV 46\"-49\" (116см-124см)", 52000f),
            new Product(10008, "TV 49\"-55\" (127см-139см)", 62000f),
            new Product(10009, "TV 60\"-70\" (152см-178см)", 72000f),
            new Product(10010, "TV 70\"-80\" (178см-203см)", 82000f)
    ));

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {


        request.setAttribute("products", products);
        getServletContext().getRequestDispatcher("/frontpage.jsp").forward(request, response);
    }
}
