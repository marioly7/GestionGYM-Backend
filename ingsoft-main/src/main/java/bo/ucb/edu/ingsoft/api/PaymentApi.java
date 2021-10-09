package bo.ucb.edu.ingsoft.api;

import bo.ucb.edu.ingsoft.bl.PaymentBl;
import bo.ucb.edu.ingsoft.bl.PlanBl;
import bo.ucb.edu.ingsoft.bl.TransactionBl;
import bo.ucb.edu.ingsoft.dto.PaymentResponse;
import bo.ucb.edu.ingsoft.model.Payment;
import bo.ucb.edu.ingsoft.model.Plan;
import bo.ucb.edu.ingsoft.model.Transaction;
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
@RequestMapping(value = "/payment")
public class PaymentApi {
    private PaymentBl paymentBl;
    private TransactionBl transactionBl;

    @Autowired
    public PaymentApi(PaymentBl paymentBl, TransactionBl transactionBl){
        this.paymentBl = paymentBl;
        this.transactionBl=transactionBl;
    }
    @RequestMapping(value = "/addPayment",method = RequestMethod.POST, produces = MediaType.APPLICATION_JSON_VALUE,
            consumes = MediaType.APPLICATION_JSON_VALUE)
    public Payment addPayment(@RequestBody Payment payment, HttpServletRequest request){
        Transaction transaction = TransactionUtil.createTransaction(request);
        transactionBl.createTransaction(transaction);
        Payment planRes= paymentBl.addPayment(payment,transaction);
        return planRes;
    }

    @RequestMapping(value="/allPayments", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
    public List<PaymentResponse> allPayments(HttpServletRequest request) {
        List<PaymentResponse> payments= paymentBl.getPayments();
        return payments;
    }
}
