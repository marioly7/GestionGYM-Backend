package bo.ucb.edu.ingsoft.bl;

import bo.ucb.edu.ingsoft.dao.ActivityDao;
import bo.ucb.edu.ingsoft.dao.PlanDao;
import bo.ucb.edu.ingsoft.dao.TransactionDao;
import bo.ucb.edu.ingsoft.dto.ActivityResponse;
import bo.ucb.edu.ingsoft.model.Activity;
import bo.ucb.edu.ingsoft.model.Plan;
import bo.ucb.edu.ingsoft.model.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ActivityBl {
    private ActivityDao planDao;
    private TransactionDao transactionDao;

    @Autowired
    public ActivityBl(ActivityDao planDao, TransactionDao transactionDao){
        this.planDao = planDao;
        this.transactionDao=transactionDao;
    }

    public List<ActivityResponse> activityDetails(Integer activityId) {
        return planDao.activityDetails(activityId);
    }

}
