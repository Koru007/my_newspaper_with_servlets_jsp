package newspaper;

import model.Article;
import model.DataBaseNews;
import org.json.JSONObject;
import org.json.JSONTokener;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.net.URL;

@WebServlet(name = "ArticleController", urlPatterns = {"/newspaper/ArticleController/*"})
public class ArticleController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        URL news = new URL("https://newsapi.org/v2/top-headlines?sources=bbc-news&apiKey=6e000da444b2410999ef38a7a81c624e");
        JSONObject root = new JSONObject(new JSONTokener(news.openStream()));

        String articleTitleEN = root.getJSONArray("articles").getJSONObject(0).getString("title");
        String articleDescriptionEN = root.getJSONArray("articles").getJSONObject(0).getString("description");
        String articleLinkEN = root.getJSONArray("articles").getJSONObject(0).getString("url");

        String articleTitleEN2 = root.getJSONArray("articles").getJSONObject(1).getString("title");
        String articleDescriptionEN2 = root.getJSONArray("articles").getJSONObject(1).getString("description");
        String articleLinkEN2 = root.getJSONArray("articles").getJSONObject(1).getString("url");

        String articleTitleEN3 = root.getJSONArray("articles").getJSONObject(2).getString("title");
        String articleDescriptionEN3 = root.getJSONArray("articles").getJSONObject(2).getString("description");
        String articleLinkEN3 = root.getJSONArray("articles").getJSONObject(2).getString("url");


        Article[] articles = DataBaseNews.getAllArticles();

        System.out.println(request.getPathInfo().substring(1));
        String a = request.getPathInfo().substring(1);
        int number = Integer.parseInt(a);

        request.setAttribute("articles", articles[number]);

        request.setAttribute("liveTit", articleTitleEN);
        request.setAttribute("liveDes", articleDescriptionEN);
        request.setAttribute("liveUrl", articleLinkEN);

        request.setAttribute("liveTit2", articleTitleEN2);
        request.setAttribute("liveDes2", articleDescriptionEN2);
        request.setAttribute("liveUrl2", articleLinkEN2);

        request.setAttribute("liveTit3", articleTitleEN3);
        request.setAttribute("liveDes3", articleDescriptionEN3);
        request.setAttribute("liveUrl3", articleLinkEN3);

        RequestDispatcher dispatcher = request.getRequestDispatcher("/view/ArticlePage.jsp");

        dispatcher.forward(request, response);
    }
}
