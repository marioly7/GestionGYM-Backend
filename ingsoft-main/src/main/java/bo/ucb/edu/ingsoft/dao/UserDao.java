package bo.ucb.edu.ingsoft.dao;

import bo.ucb.edu.ingsoft.dto.UserDataRequest;
import bo.ucb.edu.ingsoft.dto.UserResponse;
import bo.ucb.edu.ingsoft.model.User;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface UserDao {
    public void addUser(User user);
    public List<UserResponse> getUsers();
    public void deleteUser(User user);
    public void updateUser(User user);

}
