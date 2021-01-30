package criteria;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.criterion.Order;

import basics.Employee;
import basics.HibernateUtil;

public class TestCriteriaOrderBy3 {
	public static void main(String[] args) {
		Session session = HibernateUtil.getSessionFactory().openSession();

		Criteria empCriteria = session.createCriteria(Employee.class);

		empCriteria.addOrder(Order.asc("userName"));
		empCriteria.setMaxResults(20);
		List<Employee> employees = empCriteria.list();
		for(Employee e : employees){
			System.out.println(e);
		}
		session.close();
	}
} 
