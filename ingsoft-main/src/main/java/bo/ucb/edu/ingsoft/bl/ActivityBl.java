package bo.ucb.edu.ingsoft.bl;

import bo.ucb.edu.ingsoft.dao.ActivityDao;
import bo.ucb.edu.ingsoft.dao.PlanDao;
import bo.ucb.edu.ingsoft.dao.TransactionDao;
import bo.ucb.edu.ingsoft.dto.ActivityResponse;
import bo.ucb.edu.ingsoft.model.*;
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
    public Integer userInActivity(Integer activityId, Integer userId) {
        return planDao.userInActivity(activityId, userId);
    }


    public ActivityResponse activityScheduleById(Integer activityId) {
        return planDao.activityScheduleById(activityId);
    }

    public List<ActivityResponse> activityByUserId(Integer userId) {
        return planDao.activityByUserId(userId);
    }

    public List<ActivityResponse> activityDetails(Integer activityId) {
        return planDao.activityDetails(activityId);
    }

    public UserActivity activityRegister(UserActivity user, Transaction transaction) {

        UserActivity userAdd=new UserActivity();
        userAdd.setUserId(user.getUserId());
        userAdd.setActivityId(user.getActivityId());
        userAdd.setTransaction(transaction);
        planDao.activityRegister(userAdd);
        Integer userId = transactionDao.getLastInsertId();
        user.setUserActivityId(userId);
        planDao.updateEspacios(userAdd);
        return user;
    }

}
