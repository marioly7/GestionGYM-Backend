package bo.ucb.edu.ingsoft.dao;

import bo.ucb.edu.ingsoft.dto.ActivityResponse;
import bo.ucb.edu.ingsoft.model.Activity;
import bo.ucb.edu.ingsoft.model.Plan;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface ActivityDao {
    public List<ActivityResponse> activityDetails(Integer activityId);
}
