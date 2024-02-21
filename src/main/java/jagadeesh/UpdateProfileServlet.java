package jagadeesh;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/UpdateProfileServlet")
public class UpdateProfileServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    // Database connection parameters (replace with your actual database details)
    private static final String JDBC_URL = "jdbc:mysql://localhost:3306/userprofile";
    private static final String DB_USER = "root";
    private static final String DB_PASSWORD = "Shan@8889";

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String username = request.getParameter("username");
        String Email = request.getParameter("Email");


        boolean updated = updateProfile(username, Email);

        if (updated) {

            response.sendRedirect("index.jsp");
        } else {
            response.sendRedirect("editProfile.jsp");
        }
    }

    private boolean updateProfile(String username, String Email) {

        try  {
            Class.forName("com.mysql.jdbc.Driver");
            Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/userprofile", "root", "Shan@8889");
            String sql = "UPDATE userprofile SET username = ?, Email = ? WHERE username = ? AND Email = ?";

            try (PreparedStatement statement = connection.prepareStatement(sql)) {
                statement.setString(1, username);
                statement.setString(2, Email);
                statement.setString(3, "jagadeesh");
                statement.setString(4, "jagadeeshak2002@gmail.com");

                int rowsUpdated = statement.executeUpdate();
                return rowsUpdated > 0; // If rowsUpdated > 0, the update was successful
            } catch (SQLException e) {
                // Handle SQL exception
                e.printStackTrace();
                return false;
            }

        } catch (SQLException e) {
            e.printStackTrace(); 
            return false;
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        }
    }
}