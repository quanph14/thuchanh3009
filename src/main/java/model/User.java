package model;

import java.sql.SQLException;
import java.util.List;

public class User {
    protected int id;
    protected String name;
    protected String email;
    protected String country;

    public User() {}

    public User(String name, String email, String country) {
        super();
        this.name = name;
        this.email = email;
        this.country = country;
    }

    public User(int id, String name, String email, String country) {
        super();
        this.id = id;
        this.name = name;
        this.email = email;
        this.country = country;
    }

    public int getId() {
        return id;
    }
    public void setId(int id) {
        this.id = id;
    }
    public String getName() {
        return name;
    }
    public void setName(String name) {
        this.name = name;
    }
    public String getEmail() {
        return email;
    }
    public void setEmail(String email) {
        this.email = email;
    }
    public String getCountry() {
        return country;
    }
    public void setCountry(String country) {
        this.country = country;
    }

    public static interface IUserDAO {
        public void insertUser(User user) throws SQLException;

        public User selectUser(int id);

        public List<User> selectAllUsers();

        public boolean deleteUser(int id) throws SQLException;

        public boolean updateUser(User user) throws SQLException;
    }
}
