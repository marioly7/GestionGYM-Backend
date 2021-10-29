package bo.ucb.edu.ingsoft.model;

public class UserActivity {
    Integer userId, activityId, userActivityId;
    Transaction transaction;

    public Integer getUserActivityId() {
        return userActivityId;
    }

    public void setUserActivityId(Integer userActivityId) {
        this.userActivityId = userActivityId;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public Integer getActivityId() {
        return activityId;
    }

    public void setActivityId(Integer activityId) {
        this.activityId = activityId;
    }

    public Transaction getTransaction() {
        return transaction;
    }

    public void setTransaction(Transaction transaction) {
        this.transaction = transaction;
    }

    @Override
    public String toString() {
        return "UserActivity{" +
                "userId=" + userId +
                ", activityId=" + activityId +
                ", userActivityId=" + userActivityId +
                ", transaction=" + transaction +
                '}';
    }
}
