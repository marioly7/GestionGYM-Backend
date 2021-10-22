package bo.ucb.edu.ingsoft.api;

import bo.ucb.edu.ingsoft.bl.ActivityBl;
import bo.ucb.edu.ingsoft.bl.PlanBl;
import bo.ucb.edu.ingsoft.bl.TransactionBl;
import bo.ucb.edu.ingsoft.dto.ActivityResponse;
import bo.ucb.edu.ingsoft.model.Activity;
import bo.ucb.edu.ingsoft.model.Plan;
import bo.ucb.edu.ingsoft.model.Transaction;
import bo.ucb.edu.ingsoft.util.TransactionUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@RestController
@RequestMapping(value = "/activity")
public class ActivityApi {
    private ActivityBl planBl;
    private TransactionBl transactionBl;

    @Autowired
    public ActivityApi(ActivityBl planBl, TransactionBl transactionBl){
        this.planBl = planBl;
        this.transactionBl=transactionBl;
    }

    @RequestMapping(value = "/activityDetails", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
    public List<ActivityResponse> activityDetails(@RequestParam Integer activityId, HttpServletRequest request) {
        return planBl.activityDetails(activityId);
    }
}