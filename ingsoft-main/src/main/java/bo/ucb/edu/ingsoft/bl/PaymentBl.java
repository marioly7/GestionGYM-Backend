package bo.ucb.edu.ingsoft.bl;

import bo.ucb.edu.ingsoft.dao.PaymentDao;
import bo.ucb.edu.ingsoft.dao.PlanDao;
import bo.ucb.edu.ingsoft.dao.TransactionDao;
import bo.ucb.edu.ingsoft.dto.PaymentResponse;
import bo.ucb.edu.ingsoft.model.Payment;
import bo.ucb.edu.ingsoft.model.Plan;
import bo.ucb.edu.ingsoft.model.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class PaymentBl {
    private PaymentDao paymentDao;
    private TransactionDao transactionDao;

    @Autowired
    public PaymentBl(PaymentDao paymentDao, TransactionDao transactionDao){
        this.paymentDao = paymentDao;
        this.transactionDao=transactionDao;
    }

    public Payment addPayment(Payment payment1, Transaction transaction){
        Payment payment=new Payment();
        payment.setUserId(payment1.getUserId());
        payment.setTransaction(transaction);
        paymentDao.addPayment(payment);
        Integer paymentId = transactionDao.getLastInsertId();
        payment1.setPaymentId(paymentId);
        return payment1;
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
    public List<PaymentResponse> getPayments(){
        List<PaymentResponse> payments= paymentDao.getPayments();
        return payments;
    }
}
