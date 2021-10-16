package bo.ucb.edu.ingsoft.model;

public class Activity {
    private Integer activityId;
    private String activity;
    private Integer status;
    private Transaction transaction;

    public Integer getActivityId() {
        return activityId;
    }

    public void setActivityId(Integer activityId) {
        this.activityId = activityId;
    }

    public String getActivity() {
        return activity;
    }

    public void setActivity(String activity) {
        this.activity = activity;
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    public Transaction getTransaction() {
        return transaction;
    }

    public void setTransaction(Transaction transaction) {
        this.transaction = transaction;
    }

    @Override
    public String toString() {
        return "Activity{" +
                "activityId=" + activityId +
                ", activity='" + activity + '\'' +
                ", status=" + status +
                ", transaction=" + transaction +
                '}';
    }
}
