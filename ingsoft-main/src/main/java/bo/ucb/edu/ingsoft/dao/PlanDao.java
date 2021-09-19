package bo.ucb.edu.ingsoft.dao;

import bo.ucb.edu.ingsoft.model.Plan;
import bo.ucb.edu.ingsoft.model.UserType;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface PlanDao {
    public void addPlan(Plan plan);
    public List<Plan> getPlans();
    public void deletePlan(Plan plan);
    public void updatePlan(Plan plan);
}
