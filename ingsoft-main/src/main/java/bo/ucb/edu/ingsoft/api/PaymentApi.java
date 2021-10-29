package bo.ucb.edu.ingsoft.api;

import bo.ucb.edu.ingsoft.bl.PaymentBl;
import bo.ucb.edu.ingsoft.bl.PlanBl;
import bo.ucb.edu.ingsoft.bl.TransactionBl;
import bo.ucb.edu.ingsoft.dto.PaymentReportResponse;
import bo.ucb.edu.ingsoft.dto.PaymentResponse;
import bo.ucb.edu.ingsoft.dto.UserResponse;
import bo.ucb.edu.ingsoft.model.Payment;
import bo.ucb.edu.ingsoft.model.Plan;
import bo.ucb.edu.ingsoft.model.Transaction;
import bo.ucb.edu.ingsoft.model.User;
import bo.ucb.edu.ingsoft.util.TransactionUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.*;

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

    @RequestMapping(value = "/addPaymentCard",method = RequestMethod.POST, produces = MediaType.APPLICATION_JSON_VALUE,
            consumes = MediaType.APPLICATION_JSON_VALUE)
    public Payment addPaymentCard(@RequestBody Payment payment, HttpServletRequest request){
        Transaction transaction = TransactionUtil.createTransaction(request);
        transactionBl.createTransaction(transaction);
        Payment planRes= paymentBl.addPaymentCard(payment,transaction);
        return planRes;
    }

    @RequestMapping(value="/allPayments", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
    public List<PaymentResponse> allPayments(HttpServletRequest request) {
        List<PaymentResponse> payments= paymentBl.getPayments();
        return payments;
    }
    @RequestMapping(value = "/updatePayment", method = RequestMethod.PUT, produces = MediaType.APPLICATION_JSON_VALUE,
            consumes = MediaType.APPLICATION_JSON_VALUE)
    public Payment updatePayment(@RequestBody Payment payment, HttpServletRequest request){
        Transaction transaction = TransactionUtil.createTransaction(request);
        transactionBl.createTransaction(transaction);
        Payment payment1=paymentBl.updatePayment(payment,transaction);
        return payment1;
    }

    @RequestMapping(value = "/paymentByUserId", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
    public Integer findUserById(@RequestParam Integer userId, HttpServletRequest request) {
        return paymentBl.findPaymentByUserId(userId);
    }

    @RequestMapping(value = "/paymentReport", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
    public PaymentReportResponse paymentReport(HttpServletRequest request) {
        return paymentBl.paymentReport();
    }

}
