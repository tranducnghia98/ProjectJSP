package edu.poly.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;

import edu.poly.model.Video;

public class VideoDao extends AbstracEntitytDao<Video> {
EntityManager em = JpaUtils.getEntityManager();
	public VideoDao() {
		super(Video.class);
		// TODO Auto-generated constructor stub
	}
	public List<Video> findVideoByKeyword(String keyword) {
		String jpql = "SELECT DISTINCT o.video FROM Favorite o " + " WHERE o.video.title LIKE :keyword";
		TypedQuery<Video> query = em.createQuery(jpql, Video.class);
		query.setParameter("keyword", "%" + keyword + "%");
		List<Video> list = query.getResultList();

		return list;
	}
}
