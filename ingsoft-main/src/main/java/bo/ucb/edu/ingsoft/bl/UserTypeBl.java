package bo.ucb.edu.ingsoft.bl;

import bo.ucb.edu.ingsoft.dao.TransactionDao;
import bo.ucb.edu.ingsoft.dao.UserDao;
import bo.ucb.edu.ingsoft.dao.UserTypeDao;
import bo.ucb.edu.ingsoft.dto.UserResponse;
import bo.ucb.edu.ingsoft.model.Transaction;
import bo.ucb.edu.ingsoft.model.User;
import bo.ucb.edu.ingsoft.model.UserType;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserTypeBl {
    private UserTypeDao userTypeDao;
    private TransactionDao transactionDao;

    @Autowired
    public UserTypeBl(UserTypeDao userTypeDao, TransactionDao transactionDao){
        this.userTypeDao = userTypeDao;
        this.transactionDao=transactionDao;
    }

    public UserType addUserType(UserType user, Transaction transaction){
        UserType userTypeAdd=new UserType();
        userTypeAdd.setType(user.getType());
        userTypeAdd.setTransaction(transaction);
        userTypeDao.addUserType(userTypeAdd);
        Integer userId = transactionDao.getLastInsertId();
        user.setUserTypeId(userId);
        return user;
    }

   /* public UserResponse updateUser(UserResponse user,Transaction transaction){
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
        //userTypeDao.updateUser(userAdd);
        return user;
    }*/
    public List<UserType> getUserTypes(){
        List<UserType> user= userTypeDao.getUserTypes();
        return user;
    }

    /*
    public void userDelete(Integer idUser,Transaction transaction){
        User userAdd=new User();
        userAdd.setIdUser(idUser);
        userAdd.setTransaction(transaction);
        userTypeDao.deleteUser(userAdd);
    }*/

}
