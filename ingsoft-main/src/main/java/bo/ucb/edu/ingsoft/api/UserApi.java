package bo.ucb.edu.ingsoft.api;

import bo.ucb.edu.ingsoft.bl.TransactionBl;
import bo.ucb.edu.ingsoft.bl.UserBl;
import bo.ucb.edu.ingsoft.dto.UserDataRequest;
import bo.ucb.edu.ingsoft.dto.UserResponse;
import bo.ucb.edu.ingsoft.model.Transaction;
import bo.ucb.edu.ingsoft.model.User;
import bo.ucb.edu.ingsoft.util.TransactionUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@RestController
@RequestMapping(value = "/user")
public class UserApi {
    private UserBl userBl;
    private TransactionBl transactionBl;

    @Autowired
    public UserApi(UserBl userBl, TransactionBl transactionBl){
        this.userBl= userBl;
        this.transactionBl=transactionBl;
    }
    @RequestMapping(value = "/addUser",method = RequestMethod.POST, produces = MediaType.APPLICATION_JSON_VALUE,
            consumes = MediaType.APPLICATION_JSON_VALUE)
    public User addUser(@RequestBody User user, HttpServletRequest request){
        Transaction transaction = TransactionUtil.createTransaction(request);
        transactionBl.createTransaction(transaction);
        User userRes=userBl.addUser(user,transaction);
        return userRes;
    }
    @RequestMapping(method = RequestMethod.PUT, produces = MediaType.APPLICATION_JSON_VALUE,
            consumes = MediaType.APPLICATION_JSON_VALUE)
    public UserResponse updateUser(@RequestBody UserResponse user, HttpServletRequest request){
        Transaction transaction = TransactionUtil.createTransaction(request);
        transactionBl.createTransaction(transaction);
        UserResponse userRes=userBl.updateUser(user,transaction);
        return userRes;
    }
    @RequestMapping(method = RequestMethod.DELETE, produces = MediaType.APPLICATION_JSON_VALUE)
    public void deleteUser(@RequestParam Integer userId, HttpServletRequest request){
        Transaction transaction = TransactionUtil.createTransaction(request);
        transactionBl.createTransaction(transaction);
        userBl.userDelete(userId,transaction);
    }

    @RequestMapping(value="/allUsers", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
    public List<UserResponse> allusers(HttpServletRequest request) {
        List<UserResponse> user=userBl.getUsers();
        return user;
    }

    @RequestMapping(value = "/login", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
    public Integer findUserByEmailPassword(@RequestParam String email, @RequestParam String password, HttpServletRequest request) {

        return userBl.findUserByEmailPassword(email, password);
    }

    @RequestMapping(value = "/userType", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
    public Integer findUserById(@RequestParam Integer userId, HttpServletRequest request) {

        return userBl.findUserById(userId);
    }

}
