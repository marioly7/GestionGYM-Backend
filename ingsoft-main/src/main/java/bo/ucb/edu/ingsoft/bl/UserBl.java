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

    public User addUser(User user,Transaction transaction){
        User userAdd=new User();
        userAdd.setIdUser(user.getIdUser());
        userAdd.setUserName(user.getUserName());
        userAdd.setLastName(user.getLastName());
        userAdd.setEmail(user.getEmail());
        userAdd.setPassword(user.getPassword());
        userAdd.setRegistrantId(user.getRegistrantId());
        userAdd.setUserTypeId(user.getUserTypeId());
        userAdd.setPlanId(user.getPlanId());
        userAdd.setTransaction(transaction);
        userDao.addUser(userAdd);
        Integer userId = transactionDao.getLastInsertId();
        user.setIdUser(userId);
        return user;
    }

    public User updateUser(User user,Transaction transaction){
        User userAdd=new User();
        userAdd.setIdUser(user.getIdUser());
        userAdd.setUserName(user.getUserName());
        userAdd.setLastName(user.getLastName());
        userAdd.setEmail(user.getEmail());
        userAdd.setPassword(user.getPassword());
        userAdd.setRegistrantId(user.getRegistrantId());
        userAdd.setUserTypeId(user.getUserTypeId());
        userAdd.setPlanId(user.getPlanId());
        userAdd.setTransaction(transaction);
        userDao.updateUser(userAdd);
        return userAdd;
    }


    public User userEnable(User user){
        userDao.enableUser(user);
        return user;
    }


    public List<UserResponse> getUsers(){
        List<UserResponse> user=userDao.getUsers();
        return user;
    }

    public List<UserResponse> getUsersDisabled(){
        List<UserResponse> user=userDao.getUsersDisabled();
        return user;
    }

    public User userDelete(User user){
        userDao.deleteUser(user);
        return user;
    }

    public User findUserByEmailPassword(String email, String password) {
        return userDao.findUserByEmailPassword(email, password);
    }


    public String findUserPlanById(Integer userId) {
        return userDao.findUserPlanById(userId);
    }

    public Integer findUserTypeById(Integer userId) {
        return userDao.findUserTypeById(userId);
    }

    public UserResponse findUserById(Integer userId) {
        return userDao.findUserById(userId);
    }


}
