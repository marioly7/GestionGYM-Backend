package bo.ucb.edu.ingsoft.api;

import bo.ucb.edu.ingsoft.bl.PlanBl;
import bo.ucb.edu.ingsoft.bl.TransactionBl;
import bo.ucb.edu.ingsoft.bl.UserTypeBl;
import bo.ucb.edu.ingsoft.model.Plan;
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
@RequestMapping(value = "/plan")
public class PlanApi {
    private PlanBl planBl;
    private TransactionBl transactionBl;

    @Autowired
    public PlanApi(PlanBl planBl, TransactionBl transactionBl){
        this.planBl = planBl;
        this.transactionBl=transactionBl;
    }
    @RequestMapping(value = "/addPlan",method = RequestMethod.POST, produces = MediaType.APPLICATION_JSON_VALUE,
            consumes = MediaType.APPLICATION_JSON_VALUE)
    public Plan addPlan(@RequestBody Plan plan, HttpServletRequest request){
        Transaction transaction = TransactionUtil.createTransaction(request);
        transactionBl.createTransaction(transaction);
        Plan planRes= planBl.addPlan(plan,transaction);
        return planRes;
    }

    @RequestMapping(value="/allPlans", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
    public List<Plan> allPlans(HttpServletRequest request) {
        List<Plan> plan= planBl.getPlans();
        return plan;
    }
}
