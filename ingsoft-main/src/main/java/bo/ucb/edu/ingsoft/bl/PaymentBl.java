package bo.ucb.edu.ingsoft.bl;

import bo.ucb.edu.ingsoft.dao.PaymentDao;
import bo.ucb.edu.ingsoft.dao.PlanDao;
import bo.ucb.edu.ingsoft.dao.TransactionDao;
import bo.ucb.edu.ingsoft.dto.PaymentReportResponse;
import bo.ucb.edu.ingsoft.dto.PaymentResponse;
import bo.ucb.edu.ingsoft.dto.UserResponse;
import bo.ucb.edu.ingsoft.model.Payment;
import bo.ucb.edu.ingsoft.model.Plan;
import bo.ucb.edu.ingsoft.model.Transaction;
import bo.ucb.edu.ingsoft.model.User;
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

    public Payment addPaymentCard(Payment payment1, Transaction transaction){
        Payment payment=new Payment();
        payment.setUserId(payment1.getUserId());
        payment.setTransaction(transaction);
        paymentDao.addPaymentCard(payment);
        Integer paymentId = transactionDao.getLastInsertId();
        payment1.setPaymentId(paymentId);
        return payment1;
    }

    public List<PaymentResponse> getPayments(){
        List<PaymentResponse> payments= paymentDao.getPayments();
        return payments;
    }

    public PaymentReportResponse paymentReport(){
        PaymentReportResponse payments= paymentDao.getPaymentReport();
        return payments;
    }

    public Payment updatePayment(Payment payment, Transaction transaction){
        Payment paymentUpdate=new Payment();
        paymentUpdate.setStatus(payment.getStatus());
        paymentUpdate.setPaymentId(payment.getPaymentId());
        paymentDao.updatePayment(paymentUpdate);
        return paymentUpdate;
    }
    public Integer findPaymentByUserId(Integer userId) {
        return paymentDao.findPaymentByUserId(userId);
    }
}
