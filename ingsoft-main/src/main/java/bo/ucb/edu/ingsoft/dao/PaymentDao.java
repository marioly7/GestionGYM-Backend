package bo.ucb.edu.ingsoft.dao;

import bo.ucb.edu.ingsoft.dto.PaymentDetails;
import bo.ucb.edu.ingsoft.dto.PaymentReportResponse;
import bo.ucb.edu.ingsoft.dto.PaymentResponse;
import bo.ucb.edu.ingsoft.model.Payment;
import bo.ucb.edu.ingsoft.model.Plan;
import bo.ucb.edu.ingsoft.model.User;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface PaymentDao {
    public void addPayment(Payment payment);
    public void addPaymentCard(Payment payment);
    public List<PaymentResponse> getPayments();
    public void updatePayment(Payment payment);
    public PaymentReportResponse getPaymentReport();
    public Integer findPaymentByUserId(Integer userId);
    public PaymentDetails findPaymentByUserIdDetails(Integer userId);
}
