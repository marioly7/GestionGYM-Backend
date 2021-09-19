package bo.ucb.edu.ingsoft.api;

import bo.ucb.edu.ingsoft.bl.TransactionBl;
import bo.ucb.edu.ingsoft.bl.UserBl;
import bo.ucb.edu.ingsoft.bl.UserTypeBl;
import bo.ucb.edu.ingsoft.dto.UserResponse;
import bo.ucb.edu.ingsoft.model.Transaction;
import bo.ucb.edu.ingsoft.model.UserType;
import bo.ucb.edu.ingsoft.util.TransactionUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@RestController
@RequestMapping(value = "/userType")
public class UserTypeApi {
    private UserTypeBl userTypeBl;
    private TransactionBl transactionBl;

    @Autowired
    public UserTypeApi(UserTypeBl userTypeBl, TransactionBl transactionBl){
        this.userTypeBl= userTypeBl;
        this.transactionBl=transactionBl;
    }
    @RequestMapping(value = "/addUserType",method = RequestMethod.POST, produces = MediaType.APPLICATION_JSON_VALUE,
            consumes = MediaType.APPLICATION_JSON_VALUE)
    public UserType addUserType(@RequestBody UserType user, HttpServletRequest request){
        Transaction transaction = TransactionUtil.createTransaction(request);
        transactionBl.createTransaction(transaction);
        UserType userRes=userTypeBl.addUserType(user,transaction);
        return userRes;
    }

    @RequestMapping(value="/allUserTypes", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
    public List<UserType> allusers(HttpServletRequest request) {
        List<UserType> user=userTypeBl.getUserTypes();
        return user;
    }
}
