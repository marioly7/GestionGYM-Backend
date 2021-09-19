package bo.ucb.edu.ingsoft.model;

public class UserType {
    private Integer userTypeId;
    private String type;
    private Integer status;
    private Transaction transaction;

    public UserType(){

    }

    public Integer getUserTypeId() {
        return userTypeId;
    }

    public void setUserTypeId(Integer userTypeId) {
        this.userTypeId = userTypeId;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
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
        return "UserType{" +
                "userTypeId=" + userTypeId +
                ", type='" + type + '\'' +
                ", status=" + status +
                ", transaction=" + transaction +
                '}';
    }
}
