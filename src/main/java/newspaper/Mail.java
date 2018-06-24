package newspaper;


import javax.mail.*;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Properties;

@WebServlet(name = "Mail", urlPatterns = {"/newspaper/mail"})
public class Mail extends HttpServlet {


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String email = request.getParameter("clientEmail");
        String topic = request.getParameter("mainTopic");
        String subject = request.getParameter("subject");

        String to = "daniel97111@wp.pl";

        String from = "psj8@wp.pl";
        String username = from;
        String password = "dupa.8gHr-3Das1";

        String host = "smtp.wp.pl";

        Properties props = new Properties();


        // Ustawienia dla SSL
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.socketFactory.port", "465");
        props.put("mail.smtp.socketFactory.class",
                "javax.net.ssl.SSLSocketFactory");
        props.put("mail.smtp.host", host);
        props.put("mail.smtp.port", "465");

        Session session = Session.getInstance(props,
                new javax.mail.Authenticator() {
                    protected PasswordAuthentication getPasswordAuthentication() {
                        return new PasswordAuthentication(username, password);
                    }
                });

        try {
            Message message = new MimeMessage(session);

            message.setFrom(new InternetAddress(from));

            message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(to));

            message.setSubject("Temat wiadomości");


            //Sending massage HTML
            message.setContent(

                    "<h1>Hi!</h1>" +
                            "<p> user:" + email + " sent message</p>" +
                            "<p> Topic: " + topic + "</p>" +
                            "<p>" + subject + "<p>",
                    "text/html");


            // Sending mail <--

            Transport.send(message);

        } catch (MessagingException e) {
            throw new RuntimeException(e);
        }
        /*   Session session = new Session().*/


        response.sendRedirect("/newspaper/homepage");

    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("/view/Mail.jsp");

        dispatcher.forward(request, response);
    }
}
