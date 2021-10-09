package bo.ucb.edu.ingsoft.dao;

import bo.ucb.edu.ingsoft.dto.PaymentResponse;
import bo.ucb.edu.ingsoft.model.Payment;
import bo.ucb.edu.ingsoft.model.Plan;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface PaymentDao {
    public void addPayment(Payment payment);
    public List<PaymentResponse> getPayments();
}
