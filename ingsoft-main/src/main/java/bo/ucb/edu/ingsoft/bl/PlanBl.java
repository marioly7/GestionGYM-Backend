package bo.ucb.edu.ingsoft.bl;

import bo.ucb.edu.ingsoft.dao.PlanDao;
import bo.ucb.edu.ingsoft.dao.TransactionDao;
import bo.ucb.edu.ingsoft.dao.UserTypeDao;
import bo.ucb.edu.ingsoft.model.Plan;
import bo.ucb.edu.ingsoft.model.Transaction;
import bo.ucb.edu.ingsoft.model.UserType;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class PlanBl {
    private PlanDao planDao;
    private TransactionDao transactionDao;

    @Autowired
    public PlanBl(PlanDao planDao, TransactionDao transactionDao){
        this.planDao = planDao;
        this.transactionDao=transactionDao;
    }

    public Plan addPlan(Plan plan, Transaction transaction){
        Plan planAdd=new Plan();
        planAdd.setPlan(plan.getPlan());
        planAdd.setPrice(plan.getPrice());
        planAdd.setTransaction(transaction);
        planDao.addPlan(planAdd);
        Integer userId = transactionDao.getLastInsertId();
        plan.setPlanId(userId);
        return plan;
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
    public List<Plan> getPlans(){
        List<Plan> plan= planDao.getPlans();
        return plan;
    }

    /*
    public void userDelete(Integer idUser,Transaction transaction){
        User userAdd=new User();
        userAdd.setIdUser(idUser);
        userAdd.setTransaction(transaction);
        userTypeDao.deleteUser(userAdd);
    }*/

}
