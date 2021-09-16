package bo.ucb.edu.ingsoft.bl;

import bo.ucb.edu.ingsoft.dao.TransactionDao;
import bo.ucb.edu.ingsoft.dao.UserDao;
import bo.ucb.edu.ingsoft.dto.UserDataRequest;
import bo.ucb.edu.ingsoft.dto.UserResponse;
import bo.ucb.edu.ingsoft.model.Transaction;
import bo.ucb.edu.ingsoft.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserBl {
    private UserDao userDao;
    private TransactionDao transactionDao;

    @Autowired
    public UserBl(UserDao userDao, TransactionDao transactionDao){
        this.userDao = userDao;
        this.transactionDao=transactionDao;
    }

    public UserResponse addUser(UserResponse user,Transaction transaction){
        User userAdd=new User();
        userAdd.setUserName(user.getUserName());
        userAdd.setLastName(user.getLastName());
        userAdd.setEmail(user.getEmail());
        userAdd.setPassword(user.getPassword());
        userAdd.setTransaction(transaction);
        userDao.addUser(userAdd);
        Integer userId = transactionDao.getLastInsertId();
        user.setIdUser(userId);
        return user;
    }

    public UserResponse updateUser(UserResponse user,Transaction transaction){
        User userAdd=new User();
        userAdd.setIdUser(user.getIdUser());
        userAdd.setUserName(user.getUserName());
        userAdd.setLastName(user.getLastName());
        userAdd.setEmail(user.getEmail());
        if(user.getPassword()!=null&&user.getPassword()!=""&&user.getPassword().length()>6){
            userAdd.setPassword(user.getPassword());
        }
        else{
            userAdd.setPassword(null);
        }
        userAdd.setTransaction(transaction);
        userDao.updateUser(userAdd);
        return user;
    }
    public List<UserResponse> getUsers(){
        List<UserResponse> user=userDao.getUsers();
        return user;
    }

    public void userDelete(Integer idUser,Transaction transaction){
        User userAdd=new User();
        userAdd.setIdUser(idUser);
        userAdd.setTransaction(transaction);
        userDao.deleteUser(userAdd);
    }

}
