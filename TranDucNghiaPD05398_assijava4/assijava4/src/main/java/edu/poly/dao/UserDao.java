package edu.poly.dao;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.TypedQuery;

import edu.poly.model.User;

public class UserDao extends AbstracEntitytDao<User> {

	public UserDao() {
		super(User.class);
		// TODO Auto-generated constructor stub
	}

	public void changePassword(String username, String oldPassword, String newPassword) throws Exception {
		EntityManager em = JpaUtils.getEntityManager();

		EntityTransaction trans = em.getTransaction();

		String jpql = "SELECT u FROM User u WHERE u.userName =: userName AND u.password =: password";
		try {
			trans.begin();
			TypedQuery<User> query = em.createQuery(jpql, User.class);
			query.setParameter("userName", username);
			query.setParameter("password", oldPassword);

			User user = query.getSingleResult();

			if (user == null) {
				throw new Exception("Current password or Username are incorrect");
			}
			user.setPassword(newPassword);
			em.merge(user);

			trans.commit();
		} catch (Exception e) {
			// TODO: handle exception
			trans.rollback();
			e.printStackTrace();
			throw e;
		} finally {
			em.close();
		}
	}

	public User findByUserNameAndEmail(String username, String email) {
		EntityManager em = JpaUtils.getEntityManager();

		String jpql = "SELECT u FROM User u  where u.userName=:username AND u.email=:email";

		try {
			TypedQuery<User> query = em.createQuery(jpql, User.class);
			query.setParameter("username", username);
			query.setParameter("email", email);

			return query.getSingleResult();
		} finally {
			em.close();
		}
	}

}
