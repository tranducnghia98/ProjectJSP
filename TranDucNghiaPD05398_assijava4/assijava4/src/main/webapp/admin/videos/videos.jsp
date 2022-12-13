<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<div class="col mt-4">
	<ul class="nav nav-tabs" id="myTab" role="tablist">
		<li class="nav-item"><a class="nav-link active"
			id="videoEditing-tab" data-toggle="tab" href="#videoEditing"
			role="tab" aria-controls="videoEditing" aria-selected="true">Video
				Editting</a></li>
		<li class="nav-item"><a class="nav-link" id="videolist-tab"
			data-toggle="tab" href="#videolist" role="tab"
			aria-controls="videolist" aria-selected="false">Video List</a></li>

	</ul>
	<div class="tab-content" id="myTabContent">
		<div class="tab-pane fade show active" id="videoEditing"
			role="tabpanel" aria-labelledby="home-tab">
			<form action="" method="post" enctype="multipart/form-data">
				<div class="card">
					<div class="card-header">
					<jsp:include page="/common/inform.jsp"></jsp:include></div>
					<div class="card-body">
						<div class="row">
							<div class="col-3">
								<div class="border p-3">
									<img class="img-fluid" src="${video.poster != null?video.poster: '../image/th2.jpg' }" alt="">
									<div class="input-group mb-3 mt-3">
										<div class="input-group-prepend">
											<span class="input-group-text">Upload</span>
										</div>
										<div class="custom-file">
												<input class="custom-file-input" type="file" name="cover" id="cover" >	
												<label for="cover">Choose file </label>									
										</div>
									</div>
								</div>

							</div>
							<div class="col-9">
								<div class="form-group">
									<label for="youtubeid">Youtube Id</label> <input type="text"
										class="form-control" name="videoId" id="youtubeid"
										aria-describedby="helpId" placeholder="youtbeid" value="${video.videoId }"> <small
										id="helpId" class="form-text text-muted">Youtube id is
										rquired</small>
								</div>
								<div class="form-group">
									<label for="videotitle">Video title</label> <input value="${video.title }" type="text"
										class="form-control" name="title" id="videotitle"
										aria-describedby="helpId" placeholder="videotitle"> <small
										id="helpId" class="form-text text-muted">Video Title
										is rquired</small>
								</div>
								<div class="form-group">
									<label for="viewcount">View Count</label> <input value="${video.views }" type="text"
										class="form-control" name="views" id="viewcount"
										aria-describedby="helpId" placeholder="views"> <small
										id="helpId" class="form-text text-muted">ViewCount is
										requied</small>
								</div>
								.
								<div class="form-check form-check-inline">
									<label for=""> <input type="radio" value="true"
										class="form-check-input" name="active" id="status">Active
									</label> <label for=""> <input type="radio" value="false"
										class="form-check-input" name="active" id="status">Inactive
									</label>

								</div>
							</div>
						</div>
						<div class="row">
							<div class="col">
								<label for="description">Description</label>
								<textarea value="${video.description }" class="form-control" name="description"
									id="description" cols="30" rows="4"></textarea>
							</div>
						</div>
					</div>
					<div class="card-footer text-muted">
						<button class="btn btn-primary" formaction="Admin/VideosManagementServlet/create">Create</button>
						<button class="btn btn-warning" formaction="Admin/VideosManagementServlet/update" >Update</button>
						<button class="btn btn-danger" formaction="Admin/VideosManagementServlet/delete" >Delete</button>
						<button class="btn btn-info" formaction="Admin/VideosManagementServlet/reset" >Resert</button>
					</div>
				</div>
			</form>
		</div>
		<div class="tab-pane fade" id="videolist" role="tabpanel"
			aria-labelledby="profile-tab">
			<table class="table table-strip">
				<tr>
					<td>Youtube ID</td>
					<td>Video Title</td>
					<td>View Count</td>
					<td>Status</td>
					<td>&nbsp;</td>
				</tr>
				<c:forEach var="item" items="${videos }" >
				<tr>
					<td>${item.videoId }</td>
					<td>${item.title }</td>
					<td>${item.views }</td>
					<td>${item.active? 'Active':'Deactive' }</td>
					<td><a href="Admin/VideosManagementServlet/edit?videoId=${item.videoId }"><i class="fa fa-edit" aria-hidden="true"></i>
							Edit</a>
							 <a href="Admin/VideosManagementServlet/delete?videoId=${item.videoId }"><i class="fa fa-remove" aria-hidden="true"></i>
							Delete</a></td>
				</tr>
				</c:forEach>
			</table>
		</div>
	</div>
</div>