package bo.ucb.edu.ingsoft.dto;

import io.swagger.models.auth.In;

public class ActivityResponse {
    private Integer activityScheduleId;
    private Integer activityId;
    private String activity;
    private Integer scheduleId;
    private String  day;
    private String hour;
    private Integer capacity;
    private String instructor;

    public Integer getActivityScheduleId() {
        return activityScheduleId;
    }

    public void setActivityScheduleId(Integer activityScheduleId) {
        this.activityScheduleId = activityScheduleId;
    }

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

    public Integer getScheduleId() {
        return scheduleId;
    }

    public void setScheduleId(Integer scheduleId) {
        this.scheduleId = scheduleId;
    }

    public String getDay() {
        return day;
    }

    public void setDay(String day) {
        this.day = day;
    }

    public String getHour() {
        return hour;
    }

    public void setHour(String hour) {
        this.hour = hour;
    }

    public Integer getCapacity() {
        return capacity;
    }

    public void setCapacity(Integer capacity) {
        this.capacity = capacity;
    }

    public String getInstructor() {
        return instructor;
    }

    public void setInstructor(String instructor) {
        this.instructor = instructor;
    }

    @Override
    public String toString() {
        return "ActivityResponse{" +
                "activityScheduleId=" + activityScheduleId +
                ", activityId=" + activityId +
                ", activity='" + activity + '\'' +
                ", scheduleId=" + scheduleId +
                ", day='" + day + '\'' +
                ", hour='" + hour + '\'' +
                ", capacity=" + capacity +
                ", instructor='" + instructor + '\'' +
                '}';
    }
}
