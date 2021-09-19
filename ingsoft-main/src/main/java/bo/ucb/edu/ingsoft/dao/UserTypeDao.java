package bo.ucb.edu.ingsoft.dao;

import bo.ucb.edu.ingsoft.dto.UserResponse;
import bo.ucb.edu.ingsoft.model.User;
import bo.ucb.edu.ingsoft.model.UserType;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface UserTypeDao {
    public void addUserType(UserType type);
    public List<UserType> getUserTypes();
    public void deleteUserType(UserType type);
    public void updateUserType(UserType type);
}
