package edu.poly.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;

import edu.poly.domain.FavoriteReport;
import edu.poly.domain.FavoriteUserReport;
import edu.poly.model.Favorite;

public class FavoriteDao extends AbstracEntitytDao<Favorite> {

	public FavoriteDao() {
		super(Favorite.class);
		// TODO Auto-generated constructor stub
	}

	public List<FavoriteReport> reportFavoriteByVideo() {
		String jpql = "SELECT NEW edu.poly.domain.FavoriteReport(f.video.title, count(f),min(f.likeDate),max(f.likeDate)) "
				+ " FROM Favorite f group by f.video.title";

		EntityManager em = JpaUtils.getEntityManager();

		List<FavoriteReport> list = null;

		try {
			TypedQuery<FavoriteReport> query = em.createQuery(jpql, FavoriteReport.class);

			list = query.getResultList();
		} finally {
			em.close();
		}
		return list;
	}

	public List<FavoriteUserReport> reportFavoriteUserByVideo(String videoId) {
		String jpql = "SELECT NEW edu.poly.domain.FavoriteUserReport(f.user.userName, f.user.fullName, "
				+ " f.user.email, f.likeDate) FROM Favorite f WHERE f.video.videoId =:videoId";
		EntityManager em = JpaUtils.getEntityManager();

		List<FavoriteUserReport> list = null;
		try {
			TypedQuery<FavoriteUserReport> query = em.createQuery(jpql, FavoriteUserReport.class);
			query.setParameter("videoId", videoId);

			list = query.getResultList();
		} finally {
			em.close();
		}
		return list;
	}
}
