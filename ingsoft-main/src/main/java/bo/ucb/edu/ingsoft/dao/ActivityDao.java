package bo.ucb.edu.ingsoft.dao;

import bo.ucb.edu.ingsoft.dto.ActivityResponse;
import bo.ucb.edu.ingsoft.model.*;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface ActivityDao {
    public List<ActivityResponse> activityByUserId(Integer userId);
    public Integer userInActivity(Integer activityId, Integer userId);
    public List<ActivityResponse> activityDetails(Integer activityId);
    public ActivityResponse activityScheduleById(Integer activityId);
    public void activityRegister(UserActivity user);
    public void updateEspacios(UserActivity user);
    public void updateEspaciosCancelados(UserActivity user);
    public void cancelActivity(UserActivity user);
}
